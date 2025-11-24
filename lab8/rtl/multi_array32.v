// 乘法器阵列模块32（32个乘法器，26×8位）
// 功能：实例化32个26×8乘法器，并行计算32对数据的乘法
module multi_array32 #(
  parameter NUM_MULTIPLIERS = 32  // 乘法器数量，默认32个
) (
  input  wire                          clk_i,  // 时钟信号
  input  wire [NUM_MULTIPLIERS*26-1:0] mul_a,  // 乘数A（32×26位）
  input  wire [ NUM_MULTIPLIERS*8-1:0] mul_b,  // 乘数B（32×8位）
  output wire [NUM_MULTIPLIERS*34-1:0] mul_p   // 乘积输出（32×34位）
);

  // 实例化乘法器阵列
  genvar i;
  generate
    for (i = 0; i < NUM_MULTIPLIERS; i = i + 1) begin : mult_array
      // 实例化单个26×8乘法器
      multi_24 mul_inst (
        .CLK(clk_i),
        .A  (mul_a[26*i+25 : 26*i]),  // 每26bit一组，从mul_a中取出第i个乘数
        .B  (mul_b[8*i+7 : 8*i]),     // 每8bit一组，从mul_b中取出第i个乘数
        .P  (mul_p[34*i+33 : 34*i])   // 每34bit一组输出第i个乘积
      );
    end
  endgenerate

endmodule
