`timescale 1ns / 1ps

//==============================================================================
// 模块名称: asy_fifo
// 模块功能: 异步FIFO（使用格雷码进行跨时钟域同步）
//          实现不同时钟域之间的数据传输，避免亚稳态问题
//          注意：复位时不清除RAM内容
//==============================================================================
module asy_fifo #(
  parameter integer data_width = 64,  // 数据位宽
  parameter integer addr_width = 4    // 地址位宽，深度 = 2^addr_width
) (
  // 全局复位信号（低电平有效）
  input wire rst_n,

  // ==================== 写端口（写时钟域）====================
  input wire                  wr_clk,  // 写时钟
  input wire                  wr_en,   // 写使能
  input wire [data_width-1:0] din,     // 写入数据

  // ==================== 读端口（读时钟域）====================
  input  wire                  rd_clk,  // 读时钟
  input  wire                  rd_en,   // 读使能
  output reg                   valid,   // 读数据有效标志
  output reg  [data_width-1:0] dout,    // 读出数据

  // ==================== 状态标志 ====================
  output wire full,  // FIFO满标志（在写时钟域有效）
  output wire empty  // FIFO空标志（在读时钟域有效）
);

  // FIFO深度计算
  localparam integer data_depth = 1 << addr_width;

  // ==================== 地址指针 ====================
  // 写地址指针和读地址指针（位宽+1是为了区分满和空）
  reg [addr_width:0] wr_addr_ptr, rd_addr_ptr;

  // 实际用于访问RAM的地址（去掉最高位）
  wire [addr_width-1:0] wr_addr = wr_addr_ptr[addr_width-1:0];
  wire [addr_width-1:0] rd_addr = rd_addr_ptr[addr_width-1:0];

  // ==================== 格雷码转换 ====================
  // 将二进制地址指针转换为格雷码
  // 格雷码特性：相邻两个数只有1位不同，可减少跨时钟域同步时的亚稳态风险
  wire [  addr_width:0] wr_addr_gray = (wr_addr_ptr >> 1) ^ wr_addr_ptr;
  wire [  addr_width:0] rd_addr_gray = (rd_addr_ptr >> 1) ^ rd_addr_ptr;

  // ==================== 跨时钟域同步寄存器 ====================
  // 使用两级寄存器进行跨时钟域同步，减少亚稳态
  reg [addr_width:0] rd_addr_gray_d1, rd_addr_gray_d2;  // 读地址同步到写时钟域
  reg [addr_width:0] wr_addr_gray_d1, wr_addr_gray_d2;  // 写地址同步到读时钟域

  // ==================== FIFO存储器 ====================
  // 使用寄存器数组实现FIFO存储
  reg [data_width-1:0] fifo_ram[0:data_depth-1];

  // ==================== 写操作逻辑（工作在写时钟域）====================
  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      // 复位时清零写地址指针
      wr_addr_ptr <= 'd0;
    end else begin
      // 写使能有效且FIFO未满时，执行写操作
      if (wr_en && !full) begin
        fifo_ram[wr_addr] <= din;  // 将数据写入RAM
        wr_addr_ptr       <= wr_addr_ptr + 1'b1;  // 写指针加1
      end
    end
  end

  // ==================== 读操作逻辑（工作在读时钟域）====================
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      // 复位时清零读地址指针和输出
      rd_addr_ptr <= 'd0;
      dout        <= 'd0;
      valid       <= 1'b0;
    end else begin
      // 读使能有效且FIFO非空时，执行读操作
      if (rd_en && !empty) begin
        dout        <= fifo_ram[rd_addr];  // 从RAM读出数据
        valid       <= 1'b1;  // 数据有效标志拉高
        rd_addr_ptr <= rd_addr_ptr + 1'b1;  // 读指针加1
      end else begin
        // 未读取时，valid拉低
        valid <= 1'b0;
      end
    end
  end

  // ==================== 读地址格雷码同步到写时钟域 ====================
  // 用于生成写侧的full信号
  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_addr_gray_d1 <= 'd0;
      rd_addr_gray_d2 <= 'd0;
    end else begin
      // 两级寄存器打拍，同步读地址格雷码
      rd_addr_gray_d1 <= rd_addr_gray;
      rd_addr_gray_d2 <= rd_addr_gray_d1;
    end
  end

  // ==================== 写地址格雷码同步到读时钟域 ====================
  // 用于生成读侧的empty信号
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_addr_gray_d1 <= 'd0;
      wr_addr_gray_d2 <= 'd0;
    end else begin
      // 两级寄存器打拍，同步写地址格雷码
      wr_addr_gray_d1 <= wr_addr_gray;
      wr_addr_gray_d2 <= wr_addr_gray_d1;
    end
  end

  // ==================== FIFO满/空判断 ====================

  // FIFO满判断（在写时钟域）：
  // 当写指针追上读指针且绕了一圈时为满
  // 格雷码判断：最高2位不同，其余位相同
  assign full  =
    (wr_addr_gray == {~rd_addr_gray_d2[addr_width:addr_width-1],
                      rd_addr_gray_d2[addr_width-2:0]});

  // FIFO空判断（在读时钟域）：
  // 当读指针追上写指针时为空
  // 格雷码判断：所有位都相同
  assign empty = (rd_addr_gray == wr_addr_gray_d2);

endmodule
