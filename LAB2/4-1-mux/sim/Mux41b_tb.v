module Mux41b_tb ();

  reg a;
  reg b;
  reg c;
  reg d;
  reg [1:0] sel;
  wire q;

  Mux41b u_Mux41b (
      .a  (a),
      .b  (b),
      .c  (c),
      .d  (d),
      .sel(sel),
      .q  (q)
  );

  initial begin
    sel = 2'd0;
    a   = 1'b1;
    b   = 1'b0;
    c   = 1'b1;
    d   = 1'b0;
    #10;
    sel = 2'd1;
    #10;
    sel = 2'd2;
    #10;
    sel = 2'd3;
    #10;
    $stop;
  end

endmodule
