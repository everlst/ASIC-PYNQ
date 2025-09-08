module Encoder_case_tb ();
  reg  [7:0] Data;
  wire [2:0] Code;

  Encoder_case u_Encoder_case (
      .Data(Data),
      .Code(Code)
  );

  initial begin
    Data = 8'b0;
    #10;

    Data = 8'b00000001;
    #10;
    Data = 8'b00000010;
    #10;
    Data = 8'b00000100;
    #10;
    Data = 8'b00001000;
    #10;
    Data = 8'b00010000;
    #10;
    Data = 8'b00100000;
    #10;
    Data = 8'b01000000;
    #10;
    Data = 8'b10000000;
    #10;
    Data = 8'b1000_0001;
    #10;  // invalid input
    $stop;
  end
endmodule
