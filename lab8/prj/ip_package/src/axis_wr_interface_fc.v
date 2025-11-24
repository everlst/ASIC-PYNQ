`timescale 1ns / 1ps

module axis_wr_interface_fc #(
  parameter integer DATA_WIDTH = 64,
  parameter integer FIFO_AW    = 4    // depth=16 beats
) (
  input wire rst_n,
  input wire core_clk,

  // from core
  input  wire [DATA_WIDTH-1:0] din,
  input  wire                  din_valid,
  output wire                  almost_full,

  // AXI-Stream master (S2MM)
  input  wire                    s_axis_aclk,
  input  wire                    m_axis_tready,
  output wire [  DATA_WIDTH-1:0] m_axis_tdata,
  output wire [DATA_WIDTH/8-1:0] m_axis_tkeep,
  output wire                    m_axis_tlast,
  output wire                    m_axis_tvalid
);

  wire out_full, out_empty;
  wire dout_valid;

  wire wr_en = din_valid && ~out_full;

  // hold tvalid if tready low
  reg  dout_valid_keep;

  // 关键：只有当不在“keep住旧数据”时才弹FIFO
  wire rd_en = m_axis_tready && ~dout_valid_keep && ~out_empty;

  // async fifo: core clk -> axi clk
  asy_fifo #(
    .data_width(DATA_WIDTH),
    .addr_width(FIFO_AW)
  ) u_outfifo (
    .rst_n (rst_n),
    .wr_clk(core_clk),
    .wr_en (wr_en),
    .din   (din),

    .rd_clk(s_axis_aclk),
    .rd_en (rd_en),
    .valid (dout_valid),
    .dout  (m_axis_tdata),

    .full (out_full),
    .empty(out_empty)
  );

  assign almost_full   = out_full;



  assign m_axis_tvalid = dout_valid | dout_valid_keep;

  // 仅低2字节有效（2×8bit输出）
  assign m_axis_tkeep  = m_axis_tvalid ? 8'b0000_0011 : 8'b0;

  // 一帧就一个beat，所以tlast=tvalid
  assign m_axis_tlast  = m_axis_tvalid;

  always @(posedge s_axis_aclk or negedge rst_n) begin
    if (!rst_n) begin
      dout_valid_keep <= 1'b0;
    end else begin
      if (dout_valid && ~m_axis_tready) begin
        dout_valid_keep <= 1'b1;
      end else if (dout_valid_keep && m_axis_tready) begin
        dout_valid_keep <= 1'b0;
      end
    end
  end

endmodule
