// 加法树模块3（32输入）
// 功能：将32个16位有符号数相加，采用树形结构减少延迟，包含3级流水线
module adder_tree3 #(
  parameter DATA_WIDTH = 16,  // 单个数据位宽
  parameter NUM_INPUTS = 32   // 输入数量（2的幂次）
) (
  input  wire                             clk,     // 时钟信号
  input  wire                             rst_n,   // 异步复位信号，低电平有效
  input  wire [NUM_INPUTS*DATA_WIDTH-1:0] data,    // 32×16b（有符号数）
  output reg  [                     17:0] sum_out  // 流水线输出
);

  // 拆分 & 扩展到 18 位（符号扩展）
  wire signed [15:0] d[0:NUM_INPUTS-1];  // 原始16位数据
  wire signed [17:0] e[0:NUM_INPUTS-1];  // 扩展后的18位数据
  genvar i;
  generate
    for (i = 0; i < NUM_INPUTS; i = i + 1) begin : G_SPLIT_EXT
      assign d[i] = data[i*DATA_WIDTH+:DATA_WIDTH];
      assign e[i] = {{2{d[i][15]}}, d[i]};  // 符号位扩展
    end
  endgenerate

  // 定义加法树的各层大小
  localparam S1 = NUM_INPUTS / 2;  // 16 (第1级)
  localparam S2 = NUM_INPUTS / 4;  // 8  (第2级)
  localparam S3 = NUM_INPUTS / 8;  // 4  (第3级)
  localparam S5 = NUM_INPUTS / 16;  // 2  (第5级)

  // 声明各层信号（s2和s5为寄存器，形成流水线）
  wire signed [17:0] s1[0:S1-1];  // 第1级：组合逻辑
  reg signed [17:0] s2[0:S2-1];  // 第2级：寄存器（流水线第1级）
  wire signed [17:0] s3[0:S3-1];  // 第3级：组合逻辑
  reg signed [17:0] s5[0:S5-1];  // 第5级：寄存器（流水线第2级）
  wire signed [17:0] s7;  // 第7级：组合逻辑

  // 第一级加法（32→16）组合逻辑
  genvar j;
  generate
    for (j = 0; j < S1; j = j + 1) begin
      assign s1[j] = e[2*j] + e[2*j+1];
    end
  endgenerate

  // s2寄存器（8个18位寄存器） - 第一层流水线
  integer k;
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      for (k = 0; k < S2; k = k + 1) s2[k] <= 0;
    end else begin
      for (k = 0; k < S2; k = k + 1) s2[k] <= s1[2*k] + s1[2*k+1];  // 16→8
    end
  end

  // 第三级加法（8→4）组合逻辑
  generate
    for (j = 0; j < S3; j = j + 1) begin
      assign s3[j] = s2[2*j] + s2[2*j+1];
    end
  endgenerate


  // s5寄存器（2个18位寄存器） - 第二层流水线
  integer m;
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      for (m = 0; m < S5; m = m + 1) s5[m] <= 0;
    end else begin
      for (m = 0; m < S5; m = m + 1) s5[m] <= s3[2*m] + s3[2*m+1];  // 4→2
    end
  end


  // 第七级加法（2→1）组合逻辑
  assign s7 = s5[0] + s5[1];

  // 输出寄存器 - 第三层流水线
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      sum_out <= 0;
    end else begin
      sum_out <= s7;
    end
  end

endmodule
