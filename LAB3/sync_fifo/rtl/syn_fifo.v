// 同步FIFO模块
// 功能：实现先进先出队列，读写操作在同一时钟域下进行
module syn_fifo #(
  parameter DATA_WIDTH = 1024,  // 数据位宽
  parameter ADDR_WIDTH = 2,   // 地址位宽，FIFO深度为2^ADDR_WIDTH

  parameter remain_num = 'd3  // near_full信号的剩余空间阈值
) (
  input clk,   // 时钟信号
  input rst_n, // 复位信号，低电平有效

  input                       rd_en,    // 读使能信号
  output reg [DATA_WIDTH-1:0] rd_data,  // 读出的数据
  output reg                  valid,    // 读数据有效标志

  input                  wr_en,   // 写使能信号
  input [DATA_WIDTH-1:0] wr_data, // 写入的数据

  output full,       // FIFO满标志
  output near_full,  // FIFO接近满标志
  output empty       // FIFO空标志
);

  // 读写地址（指针的低ADDR_WIDTH位）
  wire [ADDR_WIDTH-1:0] rd_addr;
  wire [ADDR_WIDTH-1:0] wr_addr;
  // 读写地址指针（ADDR_WIDTH+1位，最高位用于区分满空状态）
  reg  [  ADDR_WIDTH:0] rd_addr_ptr;
  reg  [  ADDR_WIDTH:0] wr_addr_ptr;

  // 取地址指针的低ADDR_WIDTH位作为实际访问地址
  assign rd_addr = rd_addr_ptr[ADDR_WIDTH-1:0];
  assign wr_addr = wr_addr_ptr[ADDR_WIDTH-1:0];

  // FIFO存储器：深度为2^ADDR_WIDTH
  reg     [DATA_WIDTH-1:0] fifo_mem[{ADDR_WIDTH{1'b1}} : 0];
  integer                  i;

  // 写数据逻辑
  // 当写使能有效且FIFO未满时，将数据写入存储器
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      // 复位时清空FIFO存储器
      for (i = 0; i < {ADDR_WIDTH{1'b1}}; i = i + 1) begin
        fifo_mem[i] <= {ADDR_WIDTH{1'b0}};
      end
    end else if (wr_en && !full) begin
      // 写使能且未满时，写入数据
      fifo_mem[wr_addr] <= wr_data;
    end else begin
      // 保持原值
      fifo_mem[wr_addr] <= fifo_mem[wr_addr];
    end
  end

  // 读数据逻辑
  // 当读使能有效且FIFO非空时，读取数据并拉高valid信号
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_data <= {DATA_WIDTH{1'b0}};  // 复位时清空读数据
      valid   <= 1'b0;  // 复位时valid无效
    end else begin
      if (rd_en && !empty) begin
        rd_data <= fifo_mem[rd_addr];  // 从FIFO读取数据
        valid   <= 1'b1;  // 读取有效，拉高valid
      end else begin
        rd_data <= rd_data;  // 保持上一次读取的数据
        valid   <= 1'b0;  // 未读取时valid无效
      end
    end
  end


  // 写地址指针更新逻辑
  // 当写使能有效且FIFO未满时，写指针加1
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_addr_ptr <= {(ADDR_WIDTH + 1) {1'b0}};  // 复位时写指针清零
    end else if (wr_en && !full) begin
      wr_addr_ptr <= wr_addr_ptr + 1'b1;  // 写指针递增
    end else begin
      wr_addr_ptr <= wr_addr_ptr;  // 保持不变
    end
  end


  // 读地址指针更新逻辑
  // 当读使能有效且FIFO非空时，读指针加1
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_addr_ptr <= {(ADDR_WIDTH + 1) {1'b0}};  // 复位时读指针清零
    end else if (rd_en && !empty) begin
      rd_addr_ptr <= rd_addr_ptr + 1'b1;  // 读指针递增
    end else begin
      rd_addr_ptr <= rd_addr_ptr;  // 保持不变
    end
  end

  // FIFO满标志
  // 当读写地址相同但最高位不同时，表示写指针比读指针多绕了一圈，FIFO已满
  assign full = ((rd_addr == wr_addr) && (rd_addr_ptr[ADDR_WIDTH] != wr_addr_ptr[ADDR_WIDTH])) ? 1'b1 : 1'b0;

  // FIFO接近满标志
  // 当剩余空间小于等于remain_num时，拉高near_full信号
  assign near_full = ((rd_addr + remain_num) >= wr_addr && (rd_addr_ptr[ADDR_WIDTH] != wr_addr_ptr[ADDR_WIDTH])) ? 1'b1 : 1'b0;

  // FIFO空标志
  // 当读写指针完全相同时，表示FIFO为空
  assign empty = (rd_addr_ptr == wr_addr_ptr) ? 1'b1 : 1'b0;

endmodule
