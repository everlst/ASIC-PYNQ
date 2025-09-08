module Counter_tb ();
  reg rst, clk;
  wire [2:0] count;
  Counter u_Counter (
      .rst  (rst),
      .clk  (clk),
      .count(count)
  );

  initial begin
    rst = 1'b0;
    clk = 1'b0;
    #10;
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #10;
    //rst = 1'b1;
    #10;
    //rst = 1'b0;
    #100;
    $finish;
  end

  always #5 clk = ~clk;
endmodule
