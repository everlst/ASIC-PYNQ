module Flop_sync_tb ();
  reg  reset;
  reg  clk;
  reg  din;
  wire qout;


  Flop_sync u_Flop_sync (
      .reset(reset),
      .clk  (clk),
      .din  (din),
      .qout (qout)
  );

  initial begin
    reset = 1'b0;
    clk   = 1'b0;
    din   = 1'b1;
    #10;
    reset = 1'b1;
    #10;
    reset = 1'b0;
    #10;
    din = 1'b0;
    #10;
    $finish;
  end

  always #5 clk = ~clk;

endmodule
