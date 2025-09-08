module ShiftRegister (
    input E,
    input clk,
    input rst,

    output reg A,
    output reg B,
    output reg C,
    output reg D
);

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      A <= 1'b0;
      B <= 1'b0;
      C <= 1'b0;
      D <= 1'b0;
    end else begin
      A <= B;
      B <= C;
      C <= D;
      D <= E;
    end
  end

endmodule
