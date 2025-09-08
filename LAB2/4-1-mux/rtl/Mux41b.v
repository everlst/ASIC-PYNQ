module Mux41b (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    input wire [1:0] sel,
    output reg q
);

  always @(*) begin
    case (sel)
      2'd0: q = a;
      2'd1: q = b;
      2'd2: q = c;
      2'd3: q = d;
      default: q = d;
    endcase
  end

endmodule
