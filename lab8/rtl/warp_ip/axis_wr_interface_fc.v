`timescale 1ns / 1ps

//==============================================================================
// 模块名称: axis_wr_interface_fc
// 模块功能: AXI-Stream写接口模块，用于全连接层(FC)数据输出
//          将核心处理时钟域的数据通过异步FIFO跨时钟域传输到AXI-Stream总线
//          支持AXI-Stream握手协议，当tready为低时保持tvalid和tdata有效
//==============================================================================
module axis_wr_interface_fc #(
  parameter integer DATA_WIDTH = 64,  // 数据位宽，默认64位
  parameter integer FIFO_AW    = 4    // FIFO地址位宽，深度=2^4=16个数据
) (
  // 全局复位信号（低电平有效）
  input wire rst_n,
  // 核心处理时钟
  input wire core_clk,

  // ==================== 来自核心的输入数据 ====================
  input  wire [DATA_WIDTH-1:0] din,        // 核心输出的数据
  input  wire                  din_valid,  // 核心数据有效信号
  output wire                  almost_full, // FIFO将满标志，用于背压控制

  // ==================== AXI-Stream主接口 (S2MM方向) ====================
  input  wire                    s_axis_aclk,   // AXI-Stream时钟
  input  wire                    m_axis_tready, // 从设备准备接收信号
  output wire [  DATA_WIDTH-1:0] m_axis_tdata,  // AXI-Stream数据输出
  output wire [DATA_WIDTH/8-1:0] m_axis_tkeep,  // 字节有效标志
  output wire                    m_axis_tlast,  // 传输结束标志
  output wire                    m_axis_tvalid  // 数据有效信号
);

  // ==================== 内部信号定义 ====================
  wire out_full, out_empty;  // 异步FIFO的满/空标志
  wire dout_valid;           // FIFO读出数据有效信号

  // FIFO写使能：只有当核心数据有效且FIFO未满时才写入
  wire wr_en = din_valid && ~out_full;

  // 数据保持寄存器：用于符合AXI-Stream协议
  // 当tvalid有效但tready为低时，必须保持tvalid和tdata不变
  reg  dout_valid_keep;

  // FIFO读使能控制：
  // 关键：只有当不在"keep住旧数据"时才能从FIFO读取新数据
  // 条件：1) 下游准备好(tready高)
  //       2) 没有正在保持的旧数据
  //       3) FIFO非空
  wire rd_en = m_axis_tready && ~dout_valid_keep && ~out_empty;

  // ==================== 异步FIFO例化 ====================
  // 功能：实现跨时钟域数据传输（从core_clk到s_axis_aclk）
  asy_fifo #(
    .data_width(DATA_WIDTH),  // 数据位宽
    .addr_width(FIFO_AW)      // 地址位宽
  ) u_outfifo (
    .rst_n (rst_n),           // 复位信号
    
    // 写端口（核心处理时钟域）
    .wr_clk(core_clk),        // 写时钟
    .wr_en (wr_en),           // 写使能
    .din   (din),             // 写数据

    // 读端口（AXI-Stream时钟域）
    .rd_clk(s_axis_aclk),     // 读时钟
    .rd_en (rd_en),           // 读使能
    .valid (dout_valid),      // 读数据有效
    .dout  (m_axis_tdata),    // 读数据（直接连接到AXI-Stream输出）

    // 状态标志
    .full (out_full),         // FIFO满标志
    .empty(out_empty)         // FIFO空标志
  );

  // 背压信号：直接使用FIFO满标志
  // 当FIFO满时，核心侧应停止写入数据
  assign almost_full   = out_full;

  // ==================== AXI-Stream输出信号控制 ====================
  
  // tvalid信号：当FIFO有新数据或正在保持旧数据时有效
  // 符合AXI-Stream协议：一旦拉高tvalid，必须保持直到tready响应
  assign m_axis_tvalid = dout_valid | dout_valid_keep;

  // tkeep信号：指示哪些字节有效
  // 仅低2字节有效（2×8bit输出），对应64位数据的bit[15:0]
  // 当tvalid有效时，tkeep=8'b0000_0011（bit[1:0]有效）
  assign m_axis_tkeep  = m_axis_tvalid ? 8'b0000_0011 : 8'b0;

  // tlast信号：指示传输结束
  // 一帧数据只有一个beat，所以tlast始终等于tvalid
  assign m_axis_tlast  = m_axis_tvalid;

  // ==================== AXI-Stream握手协议状态机 ====================
  // 功能：确保符合AXI-Stream握手协议
  // 规则：当tvalid拉高后，如果tready未响应，必须保持tvalid和tdata不变
  always @(posedge s_axis_aclk or negedge rst_n) begin
    if (!rst_n) begin
      // 复位时清除保持标志
      dout_valid_keep <= 1'b0;
    end else begin
      // 情况1：FIFO输出了新数据(dout_valid高)，但下游未准备好(tready低)
      // 动作：设置保持标志，锁存当前数据
      if (dout_valid && ~m_axis_tready) begin
        dout_valid_keep <= 1'b1;
      end 
      // 情况2：正在保持数据(dout_valid_keep高)，且下游现在准备好了(tready高)
      // 动作：清除保持标志，完成本次握手
      else if (dout_valid_keep && m_axis_tready) begin
        dout_valid_keep <= 1'b0;
      end
      // 其他情况：保持当前状态不变
    end
  end

endmodule
