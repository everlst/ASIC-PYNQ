module tb_syn_fifo #(
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 5,
    parameter remain_num = 'd6
);

  reg clk, rst_n;

  reg rd_en;
  wire [DATA_WIDTH-1:0] rd_data;
  wire valid;

  reg wr_en;
  reg [DATA_WIDTH-1:0] wr_data;

  wire full, near_full, empty;

  syn_fifo u_syn_fifo (
      .clk  (clk),
      .rst_n(rst_n),

      .rd_en  (rd_en),
      .rd_data(rd_data),
      .valid  (valid),

      .wr_en  (wr_en),
      .wr_data(wr_data),

      .full     (full),
      .near_full(near_full),
      .empty    (empty)
  );

  initial begin
    clk = 1'b1;
    forever begin
      #5 clk = ~clk;
    end
  end

  initial begin
    rst_n   = 'd1;
    rd_en   = 'd0;
    wr_en   = 'd0;
    wr_data = 'd0;
    #10 rst_n = 'd0;
    #10 rst_n = 'd1;
  end

  reg [DATA_WIDTH-1:0] input_data[9:0];

  initial begin
    #500;
    $readmemb("F:/GitHub/ASIC-PYNQ/LAB3/input_syn_data_b.txt", input_data);
  end

  integer cnt_rd_data;
  integer fp_rd_data;
  initial begin
    cnt_rd_data = 0;
    fp_rd_data  = $fopen("F:/GitHub/ASIC-PYNQ/LAB3/sync_fifo/sim/syn_fifo_output_data.txt", "w");
  end

  integer ii;
  initial begin
    #1000;
    for (ii = 0; ii < 10; ii = ii + 1) begin
      @(negedge clk) begin
        wr_en   <= 'd1;
        wr_data <= input_data[ii];
      end
      @(negedge clk) begin
        wr_en <= 'd0;
      end
      repeat (10) @(negedge clk);
    end


    for (ii = 0; ii < 10; ii = ii + 1) begin
      @(negedge clk) begin
        rd_en <= 'd1;
      end
      @(negedge clk) begin
        rd_en <= 'd0;
      end
      repeat (10) @(negedge clk);
    end
  end

  always @(negedge clk) begin
    if (syn_fifo.valid) begin
      cnt_rd_data <= cnt_rd_data + 1;

      $fwrite(fp_rd_data, "%b\n", syn_fifo.rd_data);
      if (cnt_rd_data == 'd9) begin
        $fclose(fp_rd_data);
      end
    end
  end

endmodule
