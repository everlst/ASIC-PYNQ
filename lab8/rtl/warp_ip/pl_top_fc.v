`timescale 1ns / 1ps

//==============================================================================
// 模块名称: pl_top_fc
// 模块功能: 全连接层(FC)可编程逻辑(PL)顶层模块
//          整合AXI-Stream读写接口和fc_top_wrap核心
//          实现完整的数据流通路：
//          AXI-Stream输入 -> 异步FIFO -> 核心处理 -> 异步FIFO -> AXI-Stream输出
//          支持跨时钟域传输和流控机制
//==============================================================================
module pl_top_fc #(
  parameter integer DATA_WIDTH = 64  // AXI-Stream数据位宽
) (
  // ==================== 全局信号 ====================
  input wire rst_n,    // 全局复位信号（低电平有效）
  input wire core_clk, // 核心处理时钟（可与s_axis_aclk同源）

  // ==================== AXI-Stream从接口 (MM2S方向) ====================
  // 用于接收来自PS端的输入数据
  input  wire                    s_axis_aclk,    // AXI-Stream时钟
  input  wire [  DATA_WIDTH-1:0] s_axis_tdata,   // 输入数据
  input  wire [DATA_WIDTH/8-1:0] s_axis_tkeep,   // 字节有效标志
  input  wire                    s_axis_tlast,   // 最后一个数据标志
  input  wire                    s_axis_tvalid,  // 数据有效信号
  output wire                    s_axis_tready,  // 准备接收信号（背压）

  // ==================== AXI-Stream主接口 (S2MM方向) ====================
  // 用于发送处理结果到PS端
  input  wire                    m_axis_tready,  // 从设备准备接收信号
  output wire [  DATA_WIDTH-1:0] m_axis_tdata,   // 输出数据
  output wire [DATA_WIDTH/8-1:0] m_axis_tkeep,   // 字节有效标志
  output wire                    m_axis_tlast,   // 最后一个数据标志
  output wire                    m_axis_tvalid   // 数据有效信号
);

  // ==================== 内部信号定义 ====================

  // 读接口到核心的信号
  wire [DATA_WIDTH-1:0] rd_dout;  // 读FIFO输出数据
  wire                  rd_dout_vld;  // 读FIFO输出有效
  wire                  in_almost_full;  // 输入FIFO将满标志（背压）

  // 核心到写接口的信号
  wire [DATA_WIDTH-1:0] wr_din;  // 写FIFO输入数据
  wire                  wr_din_vld;  // 写FIFO输入有效
  wire                  outfifo_almost_full;  // 输出FIFO将满标志（背压）

  // ==================== 模块1: AXI-Stream读接口 ====================
  // 功能：将AXI-Stream输入数据通过异步FIFO传输到核心时钟域
  axis_rd_interface_fc #(
    .DATA_WIDTH(DATA_WIDTH),
    .FIFO_AW   (6)            // FIFO深度=2^6=64个beat，一帧数据刚好64 beats
  ) u_rd (
    .rst_n   (rst_n),
    .core_clk(core_clk),

    // AXI-Stream从接口
    .s_axis_aclk  (s_axis_aclk),
    .s_axis_tdata (s_axis_tdata),
    .s_axis_tkeep (s_axis_tkeep),
    .s_axis_tlast (s_axis_tlast),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),

    // 背压信号
    .almost_full(in_almost_full),

    // 输出到核心时钟域
    .dout      (rd_dout),
    .dout_valid(rd_dout_vld)
  );

  // ==================== 模块2: 核心封装模块 ====================
  // 功能：数据打包、全连接计算、结果拆包
  fc_top_wrap #(
    .AXIS_W(DATA_WIDTH)
  ) u_wrap (
    .rst_n   (rst_n),
    .core_clk(core_clk),

    // 输入数据（来自读接口）
    .din      (rd_dout),
    .din_valid(rd_dout_vld),

    // 背压输入（来自写接口）
    .outfifo_almost_full(outfifo_almost_full),

    // 输出数据（发送到写接口）
    .output_data    (wr_din),
    .output_data_vld(wr_din_vld),

    // 背压输出（反馈到读接口）
    .in_almost_full(in_almost_full)
  );

  // ==================== 模块3: AXI-Stream写接口 ====================
  // 功能：将核心时钟域的输出数据通过异步FIFO传输到AXI-Stream总线
  axis_wr_interface_fc #(
    .DATA_WIDTH(DATA_WIDTH),
    .FIFO_AW   (4)            // FIFO深度=2^4=16个beat
  ) u_wr (
    .rst_n   (rst_n),
    .core_clk(core_clk),

    // 输入数据（来自核心）
    .din        (wr_din),
    .din_valid  (wr_din_vld),
    .almost_full(outfifo_almost_full),

    // AXI-Stream主接口
    .s_axis_aclk  (s_axis_aclk),
    .m_axis_tready(m_axis_tready),

    .m_axis_tdata (m_axis_tdata),
    .m_axis_tkeep (m_axis_tkeep),
    .m_axis_tlast (m_axis_tlast),
    .m_axis_tvalid(m_axis_tvalid)
  );

endmodule
