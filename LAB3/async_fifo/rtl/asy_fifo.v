// 异步FIFO模块
// 功能：实现跨时钟域的数据传输，通过格雷码同步解决亚稳态问题
module asy_fifo #(
  parameter data_width = 1024,  // 数据位宽
  parameter addr_width = 2      // 地址位宽
) (
  input rst_n,   // 异步复位信号，低电平有效
  input wr_clk,  // 写时钟
  input wr_en,   // 写使能

  input [data_width-1:0] din,     // 写入数据
  input                  rd_clk,  // 读时钟
  input                  rd_en,   // 读使能

  output reg                  valid,  // 读数据有效标志
  output reg [data_width-1:0] dout,   // 读出数据
  output                      full,   // FIFO满标志
  output                      empty   // FIFO空标志
);

  localparam data_depth = 1 << addr_width;  // FIFO深度，2的addr_width次方

  // 写地址指针和读地址指针（二进制）
  reg [addr_width:0] wr_addr_ptr;
  reg [addr_width:0] rd_addr_ptr;
  wire [addr_width-1:0] wr_addr;
  wire [addr_width-1:0] rd_addr;

  // 写地址格雷码
  wire [addr_width:0] wr_addr_gray;
  reg [addr_width:0] rd_addr_gray_d1;  // 读地址格雷码在写时钟域的第一级同步
  reg [addr_width:0] rd_addr_gray_d2;  // 读地址格雷码在写时钟域的第二级同步

  // 读地址格雷码
  wire [addr_width:0] rd_addr_gray;
  reg [addr_width:0] wr_addr_gray_d1;  // 写地址格雷码在读时钟域的第一级同步
  reg [addr_width:0] wr_addr_gray_d2;  // 写地址格雷码在读时钟域的第二级同步

  // FIFO存储器
  reg [data_width-1:0] fifo_ram[data_depth-1 : 0];

  // 写操作：当写使能有效且FIFO未满时，将数据写入FIFO
  integer i;
  always @(posedge wr_clk or negedge rst_n) begin
    if (rst_n == 1'b0) begin
      // 复位时清空FIFO
      for (i = 0; i < data_depth; i = i + 1) begin
        fifo_ram[i] <= 'h0;
      end
    end else begin
      if (wr_en && !full) begin
        fifo_ram[wr_addr] <= din;  // 写入数据
      end else begin
        fifo_ram[wr_addr] <= fifo_ram[wr_addr];  // 保持数据不变
      end
    end
  end

  // 读操作：当读使能有效且FIFO非空时，从FIFO读取数据
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      dout  <= 'h0;
      valid <= 1'b0;
    end else begin
      if (rd_en && !empty) begin
        dout  <= fifo_ram[rd_addr];  // 读出数据
        valid <= 1'b1;  // 数据有效标志置1
      end else begin
        dout  <= dout;  // 保持数据不变
        valid <= 1'b0;  // 数据无效
      end
    end
  end

  // 从指针中提取实际的读写地址
  assign wr_addr = wr_addr_ptr[addr_width-1-:addr_width];
  assign rd_addr = rd_addr_ptr[addr_width-1-:addr_width];

  // 将读地址格雷码同步到写时钟域（两级触发器消除亚稳态）
  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_addr_gray_d1 <= 'h0;
      rd_addr_gray_d2 <= 'h0;
    end else begin
      rd_addr_gray_d1 <= rd_addr_gray;  // 第一级同步
      rd_addr_gray_d2 <= rd_addr_gray_d1;  // 第二级同步
    end
  end

  // 写地址指针更新（在写时钟域）
  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_addr_ptr <= 'h0;
    end else begin
      if (wr_en && !full) begin
        wr_addr_ptr <= wr_addr_ptr + 1'b1;  // 写指针递增
      end else begin
        wr_addr_ptr <= wr_addr_ptr;
      end
    end
  end

  // 将写地址格雷码同步到读时钟域（两级触发器消除亚稳态）
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_addr_gray_d1 <= 'h0;
      wr_addr_gray_d2 <= 'h0;
    end else begin
      wr_addr_gray_d1 <= wr_addr_gray;  // 第一级同步
      wr_addr_gray_d2 <= wr_addr_gray_d1;  // 第二级同步
    end
  end

  // 读地址指针更新（在读时钟域）
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_addr_ptr <= 'h0;
    end else begin
      if (rd_en && !empty) begin
        rd_addr_ptr <= rd_addr_ptr + 1'b1;  // 读指针递增
      end else begin
        rd_addr_ptr <= rd_addr_ptr;
      end
    end
  end

  // 二进制转格雷码（只有相邻位变化，避免多位同时变化导致的亚稳态）
  assign wr_addr_gray = (wr_addr_ptr >> 1) ^ wr_addr_ptr;
  assign rd_addr_gray = (rd_addr_ptr >> 1) ^ rd_addr_ptr;

  // FIFO满判断：写指针格雷码的最高两位取反后与读指针格雷码相等
  assign full = (wr_addr_gray == {~(rd_addr_gray_d2[addr_width-:2]), rd_addr_gray_d2[addr_width-2:0]}) ? 1'b1 : 1'b0;

  // FIFO空判断：读指针格雷码等于写指针格雷码
  assign empty = (rd_addr_gray == wr_addr_gray_d2) ? 1'b1 : 1'b0;

endmodule
