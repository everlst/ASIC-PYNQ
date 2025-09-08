module Counter (
    input rst,
    input clk,
    output reg [2:0] count
);

  always @(negedge clk) begin
    if (rst) count <= 4'b0000;
    else count <= count + 1;
  end

endmodule
