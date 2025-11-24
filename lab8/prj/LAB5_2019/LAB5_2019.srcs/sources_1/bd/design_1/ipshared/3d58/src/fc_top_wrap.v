`timescale 1ns / 1ps

module fc_top_wrap #(
  parameter integer AXIS_W         = 64,
  parameter integer IN_WORDS       = 4,
  parameter integer WORD_W         = 1024,
  parameter integer BEATS_PER_WORD = WORD_W / AXIS_W,  // 16
  parameter integer OUT_BYTES      = 2
) (
  input wire rst_n,
  input wire core_clk,

  // input stream from rd_interface
  input wire [AXIS_W-1:0] din,
  input wire              din_valid,

  // backpressure from wr_interface
  input wire outfifo_almost_full,

  // output stream to wr_interface
  output reg [AXIS_W-1:0] output_data,
  output reg              output_data_vld,

  // to rd_interface: if 1, stop pulling input beats
  output wire in_almost_full
);

  // ----------------------------------------------------------
  // 1) 64b beats -> 1024b word x4 (pack)
  // ----------------------------------------------------------
  reg  [                WORD_W-1:0] input_buf          [0:IN_WORDS-1];

  reg  [                WORD_W-1:0] pack_shift;
  reg  [$clog2(BEATS_PER_WORD)-1:0] beat_cnt;  // 0..15
  reg  [      $clog2(IN_WORDS)-1:0] word_cnt;  // 0..3

  reg                               core_start;
  wire                              core_done;

  localparam P_IDLE = 2'd0, P_RECV = 2'd1, P_RUN = 2'd2;
  reg [1:0] pstate;

  // 用 almost_full 反压输入：RUN 时不接收新 beat
  assign in_almost_full = (pstate == P_RUN);

  reg [WORD_W-1:0] pack_shift_next;
  always @(*) begin
    pack_shift_next                          = pack_shift;
    pack_shift_next[beat_cnt*AXIS_W+:AXIS_W] = din;  // 第一个beat放低位
  end

  always @(posedge core_clk or negedge rst_n) begin
    if (!rst_n) begin
      pstate     <= P_IDLE;
      beat_cnt   <= 0;
      word_cnt   <= 0;
      pack_shift <= 0;
      core_start <= 0;
    end else begin
      core_start <= 0;

      case (pstate)
        P_IDLE: begin
          beat_cnt   <= 0;
          word_cnt   <= 0;
          pack_shift <= 0;
          if (din_valid) begin
            // 收到第一个beat就进入RECV
            pack_shift <= pack_shift_next;
            beat_cnt   <= 1;
            pstate     <= P_RECV;
          end
        end

        P_RECV: begin
          if (din_valid) begin
            pack_shift <= pack_shift_next;

            if (beat_cnt == BEATS_PER_WORD - 1) begin
              // 一个1024b word 收满
              input_buf[word_cnt] <= pack_shift_next;
              pack_shift          <= 0;
              beat_cnt            <= 0;

              if (word_cnt == IN_WORDS - 1) begin
                // 一帧4个word收满，启动core
                word_cnt   <= 0;
                core_start <= 1'b1;
                pstate     <= P_RUN;
              end else begin
                word_cnt <= word_cnt + 1'b1;
              end
            end else begin
              beat_cnt <= beat_cnt + 1'b1;
            end
          end
        end

        P_RUN: begin
          if (core_done) begin
            pstate <= P_IDLE;
          end
        end

        default: pstate <= P_IDLE;
      endcase
    end
  end

  // ----------------------------------------------------------
  // 2) 给 fc_top_ip 提供 RAM式输入复用
  // ----------------------------------------------------------
  wire [       1:0] in_addr_o;
  wire [WORD_W-1:0] in_data_i_mux;
  assign in_data_i_mux = input_buf[in_addr_o];

  // ----------------------------------------------------------
  // 3) 实例化你的 fc_top_ip
  // ----------------------------------------------------------
  wire [7:0] fc_byte;
  wire       fc_byte_vld;

  fc_top_ip u_core (
    .clk_i  (core_clk),
    .rst_n_i(rst_n),
    .start_i(core_start),
    .done_o (core_done),

    .in_addr_o(in_addr_o),
    .in_data_i(in_data_i_mux),

    .final_out_wdata(fc_byte),
    .fc_out_en      (fc_byte_vld)
  );

  // ----------------------------------------------------------
  // 4) 2×8bit 输出 -> 1个64b beat (unpack)
  // ----------------------------------------------------------
  reg [ 1:0] out_cnt;
  reg [15:0] out16;
  reg        out_pending;
  reg [63:0] out_pending_data;

  always @(posedge core_clk or negedge rst_n) begin
    if (!rst_n) begin
      out_cnt          <= 0;
      out16            <= 0;

      output_data      <= 0;
      output_data_vld  <= 0;

      out_pending      <= 0;
      out_pending_data <= 0;
    end else begin
      output_data_vld <= 0;

      // 若之前因为almost_full没发出去，等空了再发
      if (out_pending && !outfifo_almost_full) begin
        output_data     <= out_pending_data;
        output_data_vld <= 1'b1;
        out_pending     <= 1'b0;
      end

      if (fc_byte_vld) begin
        out16[8*out_cnt+:8] <= fc_byte;

        if (out_cnt == OUT_BYTES - 1) begin
          // 收满2字节
          if (!outfifo_almost_full && !out_pending) begin
            output_data     <= {48'd0, out16[15:8], fc_byte};  // 低16位有效
            output_data_vld <= 1'b1;
          end else begin
            out_pending_data <= {48'd0, out16[15:8], fc_byte};
            out_pending      <= 1'b1;
          end
          out_cnt <= 0;
        end else begin
          out_cnt <= out_cnt + 1'b1;
        end
      end

      // 每次新一帧启动时清 out_cnt
      if (core_start) begin
        out_cnt <= 0;
      end
    end
  end

endmodule
