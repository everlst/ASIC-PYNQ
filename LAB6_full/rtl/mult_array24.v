module multi_array24 #(
  parameter NUM_MULTIPLIERS = 128  // 乘法器数量，默认128个
) (
  input  wire                     clk_i,
  input  wire [NUM_MULTIPLIERS*17-1:0] mul_a,
  input  wire [NUM_MULTIPLIERS*8-1:0] mul_b,
  output wire [NUM_MULTIPLIERS*25-1:0] mul_p
);

  // 实例化乘法器阵列
  genvar i;
  generate
    for (i = 0; i < NUM_MULTIPLIERS; i = i + 1) begin : mult_array
      // 实例化单个8×8乘法器
      mult_16 mul_inst (
        .CLK(clk_i),
        .A(mul_a[17*i+16 : 17*i]),    // 每8bit一组，从mul_a中取
        .B(mul_b[8*i+7 : 8*i]),    // 每8bit一组，从mul_b中取
        .P(mul_p[25*i+24 : 25*i])  // 每16bit一组输出
      );
    end
  endgenerate

endmodule