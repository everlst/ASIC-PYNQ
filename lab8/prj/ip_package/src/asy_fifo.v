`timescale 1ns / 1ps

// ============================================================
// Async FIFO (Gray-code) - NO RAM CLEAR ON RESET
// ============================================================
module asy_fifo #(
  parameter integer data_width = 64,
  parameter integer addr_width = 4    // depth = 2^addr_width
) (
  input wire                  rst_n,
  input wire                  wr_clk,
  input wire                  wr_en,
  input wire [data_width-1:0] din,

  input  wire                  rd_clk,
  input  wire                  rd_en,
  output reg                   valid,
  output reg  [data_width-1:0] dout,

  output wire full,
  output wire empty
);

  localparam integer data_depth = 1 << addr_width;

  reg [addr_width:0] wr_addr_ptr, rd_addr_ptr;
  wire [addr_width-1:0] wr_addr = wr_addr_ptr[addr_width-1:0];
  wire [addr_width-1:0] rd_addr = rd_addr_ptr[addr_width-1:0];

  wire [  addr_width:0] wr_addr_gray = (wr_addr_ptr >> 1) ^ wr_addr_ptr;
  wire [  addr_width:0] rd_addr_gray = (rd_addr_ptr >> 1) ^ rd_addr_ptr;

  reg [addr_width:0] rd_addr_gray_d1, rd_addr_gray_d2;
  reg [addr_width:0] wr_addr_gray_d1, wr_addr_gray_d2;

  // FIFO RAM
  reg [data_width-1:0] fifo_ram[0:data_depth-1];

  // write
  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_addr_ptr <= 'd0;
    end else begin
      if (wr_en && !full) begin
        fifo_ram[wr_addr] <= din;
        wr_addr_ptr       <= wr_addr_ptr + 1'b1;
      end
    end
  end

  // read
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_addr_ptr <= 'd0;
      dout        <= 'd0;
      valid       <= 1'b0;
    end else begin
      if (rd_en && !empty) begin
        dout        <= fifo_ram[rd_addr];
        valid       <= 1'b1;
        rd_addr_ptr <= rd_addr_ptr + 1'b1;
      end else begin
        valid <= 1'b0;
      end
    end
  end

  // sync rd gray into wr clk
  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_addr_gray_d1 <= 'd0;
      rd_addr_gray_d2 <= 'd0;
    end else begin
      rd_addr_gray_d1 <= rd_addr_gray;
      rd_addr_gray_d2 <= rd_addr_gray_d1;
    end
  end

  // sync wr gray into rd clk
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_addr_gray_d1 <= 'd0;
      wr_addr_gray_d2 <= 'd0;
    end else begin
      wr_addr_gray_d1 <= wr_addr_gray;
      wr_addr_gray_d2 <= wr_addr_gray_d1;
    end
  end

  // full / empty
  assign full  =
    (wr_addr_gray == {~wr_addr_gray_d2[addr_width:addr_width-1],
                      wr_addr_gray_d2[addr_width-2:0]});

  assign empty = (rd_addr_gray == wr_addr_gray_d2);

endmodule
