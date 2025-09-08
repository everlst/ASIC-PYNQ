module ShiftRegister_tb ();
  reg clk, rst, E;
  wire A, B, C, D;
  ShiftRegister u_ShiftRegister (
      .clk(clk),
      .rst(rst),
      .E  (E),
      .A  (A),
      .B  (B),
      .C  (C),
      .D  (D)
  );
  initial begin
    clk = 1;
    forever #5 clk = ~clk;
  end

  initial begin
    rst = 1;
    E   = 0;
    #50;
    rst = 0;
    #10 E = 1'b1;
    #10 E = 1'b0;
    #10 E = 1'b1;
    #10 E = 1'b0;
    #10 E = 1'b1;
    $finish;
  end
endmodule
