module Encoder_if (
    input  wire [7:0] Data,
    output reg  [2:0] Code
);

  always @(Data) begin
    if (Data == 8'b00000001) Code = 3'b000;
    else if (Data == 8'b00000010) Code = 3'b001;
    else if (Data == 8'b00000100) Code = 3'b010;
    else if (Data == 8'b00001000) Code = 3'b011;
    else if (Data == 8'b00010000) Code = 3'b100;
    else if (Data == 8'b00100000) Code = 3'b101;
    else if (Data == 8'b01000000) Code = 3'b110;
    else if (Data == 8'b10000000) Code = 3'b111;
    else Code = 3'bxxx;  // invalid input
  end

endmodule
