module tb_asy_fifo #(
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 5
);

  reg rst_n;

  reg wr_clk, wr_en;
  reg [DATA_WIDTH-1:0] din;


  reg rd_clk, rd_en;
  wire [DATA_WIDTH-1:0] dout;

  wire valid;

  wire full, empty;

  asy_fifo u_asy_fifo (
      .rst_n(rst_n),

      .wr_clk(wr_clk),
      .wr_en(wr_en),
      .din(din),

      .rd_clk(rd_clk),
      .rd_en (rd_en),
      .dout  (dout),

      .valid(valid),

      .full (full),
      .empty(empty)
  );

  initial begin
    wr_clk = 1;
    forever begin
      #5 wr_clk = ~wr_clk;
    end
  end

  initial begin
    rd_clk = 1;
    forever begin
      #10 rd_clk = ~rd_clk;
    end
  end

  initial begin
    rst_n = 'd1;
    rd_en = 'd0;
    wr_en = 'd0;
    din   = 'd0;
    #10 rst_n = 'd0;
    #10 rst_n = 'd1;
  end

  reg [DATA_WIDTH-1:0] input_data[9:0];

  initial begin
    #500;
    $readmemb("F:/GitHub/ASIC-PYNQ/LAB3/input_asy_data_b.txt", input_data);
  end

  integer cnt_rd_data;
  integer fp_rd_data;
  initial begin
    cnt_rd_data = 0;
    fp_rd_data  = $fopen("F:/GitHub/ASIC-PYNQ/LAB3/async_fifo/sim/asy_fifo_output_data.txt", "w");
  end

  integer ii;
  initial begin
    #1000;
    for (ii = 0; ii < 10; ii = ii + 1) begin
      @(negedge wr_clk) begin
        wr_en <= 'd1;
        din   <= input_data[ii];
      end
      @(negedge wr_clk) begin
        wr_en <= 'd0;
      end
      repeat (10) @(negedge wr_clk);
    end


    for (ii = 0; ii < 10; ii = ii + 1) begin
      @(negedge rd_clk) begin
        rd_en <= 'd1;
      end
      @(negedge rd_clk) begin
        rd_en <= 'd0;
      end
      repeat (10) @(negedge rd_clk);
    end
  end

  always @(negedge rd_clk) begin
    if (asy_fifo.valid) begin
      cnt_rd_data <= cnt_rd_data + 1;

      $fwrite(fp_rd_data, "%b\n", asy_fifo.dout);
      if (cnt_rd_data == 'd9) begin
        $fclose(fp_rd_data);
      end
    end
  end



endmodule
