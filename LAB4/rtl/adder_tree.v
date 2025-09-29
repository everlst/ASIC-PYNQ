module adder_tree #(
  parameter DATA_WIDTH = 16,
  parameter NUM_INPUTS = 128  // 2 的幂
) (
  input  wire                             clk,
  input  wire                             rst_n,
  input  wire [NUM_INPUTS*DATA_WIDTH-1:0] data,    // 128×16b（有符号）
  output reg  [                     31:0] sum_out  // 组合和延2拍
);
  // 拆分 & 扩展为 32 位
  wire signed [15:0] d[0:NUM_INPUTS-1];
  wire signed [31:0] e[0:NUM_INPUTS-1];
  genvar i;
  generate
    for (i = 0; i < NUM_INPUTS; i = i + 1) begin : G_SPLIT_EXT
      assign d[i] = data[i*DATA_WIDTH+:DATA_WIDTH];
      assign e[i] = {{16{d[i][15]}}, d[i]};
    end
  endgenerate

  // 纯组合 pairwise 树：128→64→32→16→8→4→2→1
  localparam S1 = NUM_INPUTS / 2;
  localparam S2 = NUM_INPUTS / 4;
  localparam S3 = NUM_INPUTS / 8;
  localparam S4 = NUM_INPUTS / 16;
  localparam S5 = NUM_INPUTS / 32;
  localparam S6 = NUM_INPUTS / 64;

  wire signed [31:0] s1 [0:S1-1];
  wire signed [31:0] s2 [0:S2-1];
  wire signed [31:0] s3 [0:S3-1];
  wire signed [31:0] s4 [0:S4-1];
  wire signed [31:0] s5 [0:S5-1];
  wire signed [31:0] s6 [0:S6-1];
  wire signed [31:0] s7;

  genvar j;
  generate
    for (j = 0; j < S1; j = j + 1) assign s1[j] = e[2*j] + e[2*j+1];
    for (j = 0; j < S2; j = j + 1) assign s2[j] = s1[2*j] + s1[2*j+1];
    for (j = 0; j < S3; j = j + 1) assign s3[j] = s2[2*j] + s2[2*j+1];
    for (j = 0; j < S4; j = j + 1) assign s4[j] = s3[2*j] + s3[2*j+1];
    for (j = 0; j < S5; j = j + 1) assign s5[j] = s4[2*j] + s4[2*j+1];
    for (j = 0; j < S6; j = j + 1) assign s6[j] = s5[2*j] + s5[2*j+1];
  endgenerate
  assign s7 = s6[0] + s6[1];

  // 两拍寄存（t8 捕获，t9 过度，t10 输出）
  reg [31:0] r0, r1;
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      r0      <= 0;
      r1      <= 0;
      sum_out <= 0;
    end else begin
      r0      <= s7;
      r1      <= r0;
      sum_out <= r1;
    end
  end
endmodule
