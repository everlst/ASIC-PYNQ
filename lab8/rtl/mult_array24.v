// 乘法器阵列模块24（128个乘法器，17×8位）
// 功能：实例化128个17×8乘法器，并行计算128对数据的乘法
module multi_array24 #(
  parameter NUM_MULTIPLIERS = 128  // 乘法器数量，默认128个
) (
  input  wire                          clk_i,  // 时钟信号
  input  wire [NUM_MULTIPLIERS*17-1:0] mul_a,  // 乘数A（128×17位）
  input  wire [ NUM_MULTIPLIERS*8-1:0] mul_b,  // 乘数B（128×8位）
  output wire [NUM_MULTIPLIERS*25-1:0] mul_p   // 乘积输出（128×25位）
);

  // 实例化乘法器阵列
  genvar i;
  generate
    for (i = 0; i < NUM_MULTIPLIERS; i = i + 1) begin : mult_array
      // 实例化单个17×8乘法器
      mult_16 mul_inst (
        .CLK(clk_i),
        .A  (mul_a[17*i+16 : 17*i]),  // 每17bit一组，从mul_a中取出第i个乘数
        .B  (mul_b[8*i+7 : 8*i]),     // 每8bit一组，从mul_b中取出第i个乘数
        .P  (mul_p[25*i+24 : 25*i])   // 每25bit一组输出第i个乘积
      );
    end
  endgenerate

endmodule
