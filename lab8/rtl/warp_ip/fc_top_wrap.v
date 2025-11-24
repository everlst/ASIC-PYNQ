`timescale 1ns / 1ps

//==============================================================================
// 模块名称: fc_top_wrap
// 模块功能: 全连接层(FC)顶层封装模块
//          1. 将64位AXI-Stream数据流打包成1024位宽字(word)
//          2. 缓存4个1024位word作为一帧输入数据
//          3. 调用fc_top_ip核心进行全连接计算
//          4. 将输出的8位字节数据两两拼接成64位输出
//          5. 实现输入/输出流控和背压机制
//==============================================================================
module fc_top_wrap #(
  parameter integer AXIS_W         = 64,               // AXI-Stream数据位宽
  parameter integer IN_WORDS       = 4,                // 每帧输入包含的word数量
  parameter integer WORD_W         = 1024,             // 每个word的位宽
  parameter integer BEATS_PER_WORD = WORD_W / AXIS_W,  // 每个word需要的beat数 = 16
  parameter integer OUT_BYTES      = 2                 // 每次输出的字节数
) (
  // 全局信号
  input wire rst_n,    // 复位信号（低电平有效）
  input wire core_clk, // 核心处理时钟

  // ==================== 来自读接口的输入流 ====================
  input wire [AXIS_W-1:0] din,       // 输入数据（64位）
  input wire              din_valid, // 输入数据有效信号

  // ==================== 来自写接口的背压信号 ====================
  input wire outfifo_almost_full,  // 输出FIFO将满标志

  // ==================== 输出流到写接口 ====================
  output reg [AXIS_W-1:0] output_data,     // 输出数据（64位）
  output reg              output_data_vld, // 输出数据有效信号

  // ==================== 反压输入流 ====================
  output wire in_almost_full  // 反压信号：为1时停止接收输入数据
);

  // ==================== 第1部分: 输入数据打包 (64bit beats -> 1024bit word x4) ====================

  // 输入缓冲区：存储4个1024位的word
  reg  [                WORD_W-1:0] input_buf                         [0:IN_WORDS-1];

  // 移位寄存器：用于将多个64位beat拼接成1024位word
  reg  [                WORD_W-1:0] pack_shift;

  // beat计数器：记录当前word已接收的beat数 (0..15)
  reg  [$clog2(BEATS_PER_WORD)-1:0] beat_cnt;

  // word计数器：记录当前帧已接收的word数 (0..3)
  reg  [      $clog2(IN_WORDS)-1:0] word_cnt;

  // 核心控制信号
  reg                               core_start;  // 启动核心计算
  wire                              core_done;  // 核心计算完成

  // ==================== 输入打包状态机 ====================
  // 状态定义
  localparam P_IDLE = 2'd0,  // 空闲状态：等待第一个beat
  P_RECV = 2'd1,  // 接收状态：持续接收并打包数据
  P_RUN = 2'd2;  // 运行状态：核心正在计算
  reg [1:0] pstate;

  // 背压控制：当核心在运行时(P_RUN)，停止接收新数据
  assign in_almost_full = (pstate == P_RUN);

  // 组合逻辑：计算下一个pack_shift的值
  // 新的beat插入到对应位置（第一个beat放在最低位）
  reg [WORD_W-1:0] pack_shift_next;
  always @(*) begin
    pack_shift_next                          = pack_shift;
    pack_shift_next[beat_cnt*AXIS_W+:AXIS_W] = din;  // 将din放入对应的64位段
  end

  // 输入打包状态机主逻辑
  always @(posedge core_clk or negedge rst_n) begin
    if (!rst_n) begin
      // 复位初始化
      pstate     <= P_IDLE;
      beat_cnt   <= 0;
      word_cnt   <= 0;
      pack_shift <= 0;
      core_start <= 0;
    end else begin
      core_start <= 0;  // 默认不启动核心

      case (pstate)
        // ===== 空闲状态 =====
        P_IDLE: begin
          beat_cnt   <= 0;
          word_cnt   <= 0;
          pack_shift <= 0;
          if (din_valid) begin
            // 收到第一个beat，进入接收状态
            pack_shift <= pack_shift_next;
            beat_cnt   <= 1;
            pstate     <= P_RECV;
          end
        end

        // ===== 接收状态 =====
        P_RECV: begin
          if (din_valid) begin
            pack_shift <= pack_shift_next;

            if (beat_cnt == BEATS_PER_WORD - 1) begin
              // 一个1024位word收集完成（收满16个beat）
              input_buf[word_cnt] <= pack_shift_next;  // 保存到缓冲区
              pack_shift          <= 0;  // 清空移位寄存器
              beat_cnt            <= 0;  // 重置beat计数

              if (word_cnt == IN_WORDS - 1) begin
                // 一帧数据收集完成（收满4个word），启动核心计算
                word_cnt   <= 0;
                core_start <= 1'b1;
                pstate     <= P_RUN;
              end else begin
                // 继续接收下一个word
                word_cnt <= word_cnt + 1'b1;
              end
            end else begin
              // 继续接收当前word的下一个beat
              beat_cnt <= beat_cnt + 1'b1;
            end
          end
        end

        // ===== 运行状态 =====
        P_RUN: begin
          if (core_done) begin
            // 核心计算完成，返回空闲状态
            pstate <= P_IDLE;
          end
        end

        default: pstate <= P_IDLE;
      endcase
    end
  end

  // ==================== 第2部分: 为fc_top_ip提供RAM式输入复用 ====================

  // fc_top_ip通过地址访问输入数据
  wire [       1:0] in_addr_o;  // 输入地址（0-3，选择4个word之一）
  wire [WORD_W-1:0] in_data_i_mux;  // 多路复用后的输入数据
  assign in_data_i_mux = input_buf[in_addr_o];

  // ==================== 第3部分: 实例化fc_top_ip核心 ====================

  // 核心输出信号
  wire [7:0] fc_byte;  // 全连接层输出字节（8位）
  wire       fc_byte_vld;  // 输出字节有效信号

  fc_top_ip u_core (
    .clk_i  (core_clk),    // 时钟
    .rst_n_i(rst_n),       // 复位
    .start_i(core_start),  // 启动信号
    .done_o (core_done),   // 完成信号

    .in_addr_o(in_addr_o),     // 输入地址输出
    .in_data_i(in_data_i_mux), // 输入数据输入

    .final_out_wdata(fc_byte),     // 最终输出数据
    .fc_out_en      (fc_byte_vld)  // 输出使能
  );

  // ==================== 第4部分: 输出打包 (2×8bit -> 1×64bit) ====================

  // 字节缓存：暂存第一个8位字节
  reg        have_b0;  // 标志：是否已缓存第一个字节
  reg [ 7:0] b0;  // 缓存的第一个字节

  // 输出挂起机制：当输出FIFO满时，暂存待发送的数据
  reg        out_pending;  // 标志：有待发送的数据
  reg [63:0] out_pending_data;  // 待发送的数据

  always @(posedge core_clk or negedge rst_n) begin
    if (!rst_n) begin
      // 复位初始化
      have_b0          <= 1'b0;
      b0               <= 8'd0;
      output_data      <= 64'd0;
      output_data_vld  <= 1'b0;
      out_pending      <= 1'b0;
      out_pending_data <= 64'd0;
    end else begin
      output_data_vld <= 1'b0;  // 默认输出无效

      // 如果上次因为outfifo_almost_full没发出去，等FIFO不满时再发送
      if (out_pending && !outfifo_almost_full) begin
        output_data     <= out_pending_data;
        output_data_vld <= 1'b1;
        out_pending     <= 1'b0;
      end

      // 处理核心输出的字节
      if (fc_byte_vld) begin
        if (!have_b0) begin
          // 接收第1个字节，暂存
          b0      <= fc_byte;
          have_b0 <= 1'b1;
        end else begin
          // 接收第2个字节，与第1个字节拼接成16位
          // 拼接顺序：[15:8]=fc_byte(第2个), [7:0]=b0(第1个)
          // 填充到64位：高48位为0，低16位为有效数据

          if (!outfifo_almost_full && !out_pending) begin
            // 输出FIFO未满且无挂起数据，直接发送
            output_data     <= {48'd0, fc_byte, b0};
            output_data_vld <= 1'b1;
          end else begin
            // 输出FIFO满或有挂起数据，暂存待发送
            out_pending_data <= {48'd0, fc_byte, b0};
            out_pending      <= 1'b1;
          end

          have_b0 <= 1'b0;  // 清除字节缓存标志
        end
      end

      // 新一帧开始时清除状态，避免跨帧残留数据
      if (core_start) begin
        have_b0 <= 1'b0;
      end
    end
  end

endmodule
