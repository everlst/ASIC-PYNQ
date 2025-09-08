module Flop_sync (
    input reset,
    input clk,
    input din,
    output reg qout
);

  always @(posedge clk) begin
    if (reset) qout <= 1'b0;
    else qout <= din;
  end

endmodule
