module syn_fifo #(
  parameter integer DATA_WIDTH = 1024,
  parameter integer ADDR_WIDTH = 3,     // depth = 2^ADDR_WIDTH
  parameter integer REMAIN_NUM = 3
) (
  input wire clk,
  input wire rst_n,

  input  wire                  rd_en,
  output reg  [DATA_WIDTH-1:0] rd_data,
  output reg                   valid,

  input wire                  wr_en,
  input wire [DATA_WIDTH-1:0] wr_data,

  output wire full,
  output wire near_full,
  output wire empty
);

  localparam integer DEPTH = (1 << ADDR_WIDTH);

  reg [ADDR_WIDTH:0] rd_ptr, wr_ptr;  // 多一位作wrap
  wire [ADDR_WIDTH-1:0] rd_addr = rd_ptr[ADDR_WIDTH-1:0];
  wire [ADDR_WIDTH-1:0] wr_addr = wr_ptr[ADDR_WIDTH-1:0];

  // 推断 BRAM 的写法（无reset清mem）
  (* ram_style = "block" *)reg  [DATA_WIDTH-1:0] mem                              [0:DEPTH-1];

  // used words
  wire [  ADDR_WIDTH:0] usedw = wr_ptr - rd_ptr;

  assign empty     = (usedw == 0);
  assign full      = (usedw == DEPTH);
  assign near_full = (usedw >= (DEPTH - REMAIN_NUM));

  // 写
  always @(posedge clk) begin
    if (wr_en && !full) begin
      mem[wr_addr] <= wr_data;
      wr_ptr       <= wr_ptr + 1'b1;
    end
    if (!rst_n) wr_ptr <= 1'b0;
  end

  // 读指针推进
  always @(posedge clk) begin
    if (!rst_n) begin
      rd_ptr <= 1'b0;
    end else if (rd_en && !empty) begin
      rd_ptr <= rd_ptr + 1'b1;
    end
  end

  // FWFT读口：头部数据持续输出
  always @(posedge clk) begin
    if (!rst_n) begin
      rd_data <= 1'b0;
      valid   <= 1'b0;
    end else begin
      rd_data <= mem[rd_addr];
      valid   <= (!empty);  // FIFO非空即数据有效
    end
  end

endmodule
