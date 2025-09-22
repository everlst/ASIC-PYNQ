module asy_fifo #(
    parameter data_width = 16,
    parameter addr_width = 5
) (
    input rst_n,
    input wr_clk,
    input wr_en,

    input [data_width-1:0] din,
    input rd_clk,
    input rd_en,

    output reg valid,
    output reg [data_width-1:0] dout,
    output full,
    output empty
);

  localparam data_depth = 1 << addr_width;

  reg [addr_width:0] wr_addr_ptr;
  reg [addr_width:0] rd_addr_ptr;
  wire [addr_width-1:0] wr_addr;
  wire [addr_width-1:0] rd_addr;

  wire [addr_width:0] wr_addr_gray;
  reg [addr_width:0] rd_addr_gray_d1;
  reg [addr_width:0] rd_addr_gray_d2;

  wire [addr_width:0] rd_addr_gray;
  reg [addr_width:0] wr_addr_gray_d1;
  reg [addr_width:0] wr_addr_gray_d2;

  reg [data_width-1:0] fifo_ram[data_depth-1 : 0];

  integer i;
  always @(posedge wr_clk or negedge rst_n) begin
    if (rst_n == 1'b0) begin
      for (i = 0; i < data_depth; i = i + 1) begin
        fifo_ram[i] <= 'h0;
      end
    end else begin
      if (wr_en && !full) begin
        fifo_ram[wr_addr] <= din;
      end else begin
        fifo_ram[wr_addr] <= fifo_ram[wr_addr];
      end
    end
  end

  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      dout  <= 'h0;
      valid <= 1'b0;
    end else begin
      if (rd_en && !empty) begin
        dout  <= fifo_ram[rd_addr];
        valid <= 1'b1;
      end else begin
        dout  <= dout;
        valid <= 1'b0;
      end
    end
  end

  assign wr_addr = wr_addr_ptr[addr_width-1-:addr_width];
  assign rd_addr = rd_addr_ptr[addr_width-1-:addr_width];

  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_addr_gray_d1 <= 'h0;
      rd_addr_gray_d2 <= 'h0;
    end else begin
      rd_addr_gray_d1 <= rd_addr_gray;
      rd_addr_gray_d2 <= rd_addr_gray_d1;
    end
  end

  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_addr_ptr <= 'h0;
    end else begin
      if (wr_en && !full) begin
        wr_addr_ptr <= wr_addr_ptr + 1'b1;
      end else begin
        wr_addr_ptr <= wr_addr_ptr;
      end
    end
  end

  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_addr_gray_d1 <= 'h0;
      wr_addr_gray_d2 <= 'h0;
    end else begin
      wr_addr_gray_d1 <= wr_addr_gray;
      wr_addr_gray_d2 <= wr_addr_gray_d1;
    end
  end

  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_addr_ptr <= 'h0;
    end else if (wr_en & !full) begin
      wr_addr_ptr <= wr_addr_ptr + 1'b1;
    end else begin
      wr_addr_ptr <= wr_addr_ptr;
    end
  end

  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_addr_ptr <= 'h0;
    end else begin
      if (rd_en && !empty) begin
        rd_addr_ptr <= rd_addr_ptr + 1'b1;
      end else begin
        rd_addr_ptr <= rd_addr_ptr;
      end
    end
  end

  assign wr_addr_gray = (wr_addr_ptr >> 1) ^ wr_addr_ptr;
  assign rd_addr_gray = (rd_addr_ptr >> 1) ^ rd_addr_ptr;

  assign full = (wr_addr_gray == {~(rd_addr_gray_d2[addr_width-:2]), rd_addr_gray_d2[addr_width-2:0]}) ? 1'b1 : 1'b0;

  assign empty = (rd_addr_gray == wr_addr_gray_d2) ? 1'b1 : 1'b0;

endmodule
