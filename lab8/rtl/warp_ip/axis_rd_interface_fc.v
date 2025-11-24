`timescale 1ns / 1ps

//==============================================================================
// 模块名称: axis_rd_interface_fc
// 模块功能: AXI-Stream读接口模块，用于全连接层(FC)数据输入
//          将AXI-Stream总线的数据通过异步FIFO跨时钟域传输到核心处理时钟域
//          支持背压机制，防止数据丢失
//==============================================================================
module axis_rd_interface_fc #(
  parameter integer DATA_WIDTH = 64,  // 数据位宽，默认64位
  parameter integer FIFO_AW    = 5    // FIFO地址位宽，深度=2^5=32个数据
) (
  // 全局复位信号（低电平有效）
  input wire rst_n,
  // 核心处理时钟
  input wire core_clk,

  // ==================== AXI-Stream从接口信号 (MM2S方向) ====================
  input  wire                    s_axis_aclk,    // AXI-Stream时钟
  input  wire [  DATA_WIDTH-1:0] s_axis_tdata,   // AXI-Stream数据
  input  wire [DATA_WIDTH/8-1:0] s_axis_tkeep,   // 字节有效标志（本模块未使用）
  input  wire                    s_axis_tlast,   // 传输结束标志（本模块未使用）
  input  wire                    s_axis_tvalid,  // 数据有效信号
  output wire                    s_axis_tready,  // 准备接收信号（背压）

  // ==================== 来自核心的背压信号 ====================
  input wire almost_full,  // 核心侧FIFO将满标志，用于流控

  // ==================== 输出到core_clk时钟域的数据 ====================
  output wire [DATA_WIDTH-1:0] dout,       // 输出数据
  output wire                  dout_valid  // 输出数据有效信号
);

  // ==================== 内部信号定义 ====================
  wire in_full, in_empty;  // 异步FIFO的满/空标志

  // FIFO写使能：只有当AXI-Stream数据有效且模块准备好接收时才写入
  wire wr_en = s_axis_tvalid && s_axis_tready;

  // AXI-Stream准备信号：只要FIFO不满就可以接收数据
  assign s_axis_tready = ~in_full;

  // FIFO读使能信号（由状态机控制）
  reg rd_en;

  // ==================== 异步FIFO例化 ====================
  // 功能：实现跨时钟域数据传输（从s_axis_aclk到core_clk）
  asy_fifo #(
    .data_width(DATA_WIDTH),  // 数据位宽
    .addr_width(FIFO_AW)      // 地址位宽
  ) u_infifo (
    .rst_n(rst_n),  // 复位信号

    // 写端口（AXI-Stream时钟域）
    .wr_clk(s_axis_aclk),  // 写时钟
    .wr_en (wr_en),        // 写使能
    .din   (s_axis_tdata), // 写数据

    // 读端口（核心处理时钟域）
    .rd_clk(core_clk),    // 读时钟
    .rd_en (rd_en),       // 读使能
    .valid (dout_valid),  // 读数据有效
    .dout  (dout),        // 读数据

    // 状态标志
    .full (in_full),  // FIFO满标志
    .empty(in_empty)  // FIFO空标志
  );

  // ==================== 读控制状态机（工作在core_clk时钟域）====================
  // 状态定义：使用独热码编码
  localparam IDLE = 2'b01;  // 空闲状态：等待FIFO有数据
  localparam FETCH = 2'b10;  // 取数状态：从FIFO读取数据

  reg [1:0] c_state, n_state;  // 当前状态和下一状态

  // 状态寄存器：时序逻辑，在时钟上升沿更新状态
  always @(posedge core_clk or negedge rst_n) begin
    if (!rst_n) c_state <= IDLE;  // 复位时进入空闲状态
    else c_state <= n_state;  // 正常工作时更新到下一状态
  end

  // 状态转移逻辑：组合逻辑，根据当前状态和输入条件决定下一状态
  always @(*) begin
    case (c_state)
      IDLE: begin
        // 空闲状态：如果FIFO非空，转到取数状态；否则保持空闲
        n_state = (~in_empty) ? FETCH : IDLE;
      end

      FETCH: begin
        // 取数状态：如果FIFO空了，返回空闲状态；否则继续取数
        n_state = (in_empty) ? IDLE : FETCH;
      end

      default: n_state = IDLE;  // 默认返回空闲状态
    endcase
  end

  // 读使能控制逻辑：组合逻辑，根据当前状态和背压信号控制FIFO读使能
  always @(posedge core_clk or negedge rst_n) begin
    if (!rst_n) rd_en <= 1'b0;  // 复位时禁止读取
    else begin
      case (c_state)
        IDLE: begin
          // 空闲状态：不读取数据
          rd_en <= 1'b0;
        end

        FETCH: begin
          // 取数状态：只要核心侧不是将满状态就持续读取数据
          // 这样可以最大化数据吞吐量，同时避免核心侧溢出
          rd_en <= (~almost_full);
        end

        default: rd_en <= 1'b0;  // 默认不读取
      endcase
    end
  end

endmodule
