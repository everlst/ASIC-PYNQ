module syn_fifo #(
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 5,

    parameter remain_num = 'd3
) (
    input clk,
    input rst_n, // active low

    input rd_en,
    output reg [DATA_WIDTH-1:0] rd_data,
    output reg valid,

    input wr_en,
    input [DATA_WIDTH-1:0] wr_data,

    output full,
    output near_full,
    output empty
);

  wire [ADDR_WIDTH-1:0] rd_addr;
  wire [ADDR_WIDTH-1:0] wr_addr;
  reg  [  ADDR_WIDTH:0] rd_addr_ptr;
  reg  [  ADDR_WIDTH:0] wr_addr_ptr;

  assign rd_addr = rd_addr_ptr[ADDR_WIDTH-1:0];
  assign wr_addr = wr_addr_ptr[ADDR_WIDTH-1:0];

  reg [DATA_WIDTH-1:0] fifo_mem[{ADDR_WIDTH{1'b1}} : 0];
  integer i;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      for (i = 0; i < {ADDR_WIDTH{1'b1}}; i = i + 1) begin
        fifo_mem[i] <= {ADDR_WIDTH{1'b0}};
      end
    end else if (wr_en && !full) begin
      fifo_mem[wr_addr] <= wr_data;
    end else begin
      fifo_mem[wr_addr] <= fifo_mem[wr_addr];
    end
  end

  always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rd_data <= {DATA_WIDTH{1'b0}};
        valid <= 1'b0;
    end else begin
        if(rd_en && !empty) begin
            rd_data <= fifo_mem[rd_addr];
            valid <= 1'b1;
        end else begin
            rd_data <= rd_data;
            valid <= 1'b0;
        end
    end
  end


  always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        wr_addr_ptr <= {(ADDR_WIDTH+1){1'b0}};
    end else if(wr_en && !full) begin
        wr_addr_ptr <= wr_addr_ptr + 1'b1;
    end else begin
        wr_addr_ptr <= wr_addr_ptr;
    end
  end


  always @(posedge clk or negedge rst_n ) begin
    if(!rst_n) begin
        rd_addr_ptr <= {(ADDR_WIDTH+1){1'b0}};
    end else if(rd_en && !empty) begin
        rd_addr_ptr <= rd_addr_ptr + 1'b1;
    end else begin
        rd_addr_ptr <= rd_addr_ptr;
    end
  end

  assign full = ((rd_addr == wr_addr) && (rd_addr_ptr[ADDR_WIDTH] != wr_addr_ptr[ADDR_WIDTH])) ? 1'b1 : 1'b0;

  assign near_full = ((rd_addr + remain_num) >= wr_addr && (rd_addr_ptr[ADDR_WIDTH] != wr_addr_ptr[ADDR_WIDTH])) ? 1'b1 : 1'b0;

  assign empty = (rd_addr_ptr == wr_addr_ptr) ? 1'b1 : 1'b0;

endmodule
