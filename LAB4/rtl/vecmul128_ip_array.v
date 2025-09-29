// 由单个 8x8->16 (3拍延迟) 乘法IP生成的 128 路并行阵列
module vecmul128_ip_array (
  input  wire         clk,               // 时钟给到每个IP
  input  wire [1023:0] a_vec,            // 128×int8 拼接
  input  wire [1023:0] b_vec,            // 128×int8 拼接
  output wire [2047:0] p_vec             // 128×int16 拼接（3拍后有效）
);
  // 拆分输入到各 Lane
  wire signed [7:0] a_lane [0:127];
  wire signed [7:0] b_lane [0:127];
  wire signed [15:0] p_lane[0:127];

  genvar i;
  generate
    for (i = 0; i < 128; i = i + 1) begin : G_LANE
      assign a_lane[i] = a_vec[i*8 +: 8];
      assign b_lane[i] = b_vec[i*8 +: 8];

      // 单个乘法器 IP（有符号 8×8→16，3拍延迟）
      mult_gen_0 u_mul (
        .CLK (clk),
        .A   (a_lane[i]),
        .B   (b_lane[i]),
        .P   (p_lane[i])
      );

      // 重拼输出
      assign p_vec[i*16 +: 16] = p_lane[i];
    end
  endgenerate
endmodule
