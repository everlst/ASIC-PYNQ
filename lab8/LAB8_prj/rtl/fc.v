module fc_1 #(
  parameter INPUT_DIM  = 512,
  parameter OUTPUT_DIM = 128,
  parameter GROUP_SIZE = 128,
  parameter GROUPS     = 4
) (
  input  wire clk_i,
  input  wire rst_n_i,
  input  wire start_i,
  output reg  done_o,   // �?后一个�?�道写出时单�?

  // RAM IP 地址 & 数据（RAM 自带3拍延迟）
  output reg  [   1:0] input_data_addr_o,  // t1 给地�?，t4 �? 1024b
  input  wire [1023:0] input_data_i,

  output reg  [   9:0] weight_addr_o,  // t1 给地�?，t4 �? 1024b
  input  wire [1023:0] weight_i,

  output reg  [6:0] bias_addr_o,  // t1 给地�?，t4 �? 8b
  input  wire [7:0] bias_i,

  // 乘法器（外部 IP�?3拍延迟）
  output wire [1023:0] mul_data1_o,  // 直接�? RAM 输出
  output wire [1023:0] mul_data2_o,
  input  wire [2047:0] mul_result_i, // t7 有效

  // 输出写回
  output reg        fc_output_wren_o,  // t13 �? group==3
  output reg [ 7:0] fc_output_data_o,  // ReLU 结果 //修改：修改为17�?
  output reg [ 6:0] fc_output_addr_o
);

  // 计数�?
  reg [6:0] out_channel;  // 0..127
  reg [1:0] group_idx;  // 0..3
  reg       running;

  // === 运行控制 ===
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) running <= 1'b0;
    else if (start_i && !running) running <= 1'b1;
    else if (running && (out_channel == OUTPUT_DIM - 1) && (group_idx == GROUPS - 1))
      running <= 1'b0;  // �?后一组的地址已发出，随后流水线自行冲�?
  end

  // group 递增
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) group_idx <= 2'd0;
    else if (!running) group_idx <= 2'd0;
    else begin
      if (group_idx == GROUPS - 1) group_idx <= 0;
      else group_idx <= group_idx + 1'b1;
    end
  end

  // 通道�? group=3 后滚�?
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) out_channel <= 7'd0;
    else if (!running) out_channel <= 7'd0;
    else if (group_idx == GROUPS - 1)
      out_channel <= (out_channel == OUTPUT_DIM - 1) ? 7'd0 : (out_channel + 1'b1);
  end

  // === 延迟链（对齐到各阶段�? ===
  // dly[0] 对应 t1（给地址当拍�?
  reg     [6:0] out_channel_dly[0:16];
  reg     [1:0] group_idx_dly  [0:16];
  integer       i;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i <= 16; i = i + 1) begin
        out_channel_dly[i] <= 0;
        group_idx_dly[i]   <= 0;
      end
    end else begin
      out_channel_dly[0] <= out_channel;
      group_idx_dly[0]   <= group_idx;
      for (i = 1; i <= 16; i = i + 1) begin
        out_channel_dly[i] <= out_channel_dly[i-1];
        group_idx_dly[i]   <= group_idx_dly[i-1];
      end
    end
  end

  // === t1: 地址生成 ===
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      input_data_addr_o <= 2'd0;
      weight_addr_o     <= 10'd0;
      bias_addr_o       <= 7'd0;
    end else if (running) begin
      input_data_addr_o <= group_idx;
      weight_addr_o     <= {1'b0, out_channel, group_idx};  // out*4 + group
      bias_addr_o       <= out_channel;
    end
  end

  // === RAM→乘法器 ===
  // RAM 本身�? 3 拍延迟：t4 data 有效，直接喂给乘法器
  assign mul_data1_o = input_data_i;  // 128×int8
  assign mul_data2_o = weight_i;  // 128×int8

  // === 乘法器结�? �? 加法�? ===
  // 乘法�? IP 3 拍：t7 mul_result_i 有效
  // 加法树：组合 + 2 拍寄存，t10 sum_valid
  wire [17:0] final_sum;
  adder_tree #(
    .DATA_WIDTH(16),
    .NUM_INPUTS(128)
  ) u_adder (
    .clk    (clk_i),
    .rst_n  (rst_n_i),
    .data   (mul_result_i),
    .sum_out(final_sum)      // t10 有效
  );

  // === t10：�?�道累加（把四个 group 的和累到 channel_accum[oc]�?===
  reg [17:0] channel_accum[0:OUTPUT_DIM-1];
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i < OUTPUT_DIM; i = i + 1) channel_accum[i] <= 16'sd0;
    end else begin
      if (group_idx_dly[9] == 2'd0)
        channel_accum[out_channel_dly[9]] <= final_sum;  // 第一次覆�?
      else
        channel_accum[out_channel_dly[9]] <= channel_accum[out_channel_dly[9]] + final_sum; // 后续累加
    end
  end

  // === 偏置对齐：RAM t4 出数后再�? 8 �? �? t12 使用 ===
  reg [7:0] bias_pipe[0:8];  // bias_pipe[0] 对应 t4，bias_pipe[8] 对应 t12
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i <= 8; i = i + 1) bias_pipe[i] <= 8'd0;
    end else begin
      bias_pipe[0] <= bias_i;  // t4
      for (i = 1; i <= 8; i = i + 1) bias_pipe[i] <= bias_pipe[i-1];
    end
  end

  // === t12：加偏置 ===
  reg [17:0] acc_with_bias;  //修改：修改为17�?
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) acc_with_bias <= 18'sd0;  //修改：修改为17�?
    else begin
      acc_with_bias <= channel_accum[out_channel_dly[11]]
                     + {{10{bias_pipe[8][7]}}, bias_pipe[8]};  // 有符号扩�?
    end
  end

  // === t13：ReLU & 输出 ===
  reg [17:0] relu_result;  //修改：修改为17�?
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) relu_result <= 17'd0;  //修改：修改为17�?
    else begin
      relu_result <= acc_with_bias[17] ? 16'd0 : acc_with_bias;
    end
  end

  // 写使�?/地址/数据（t13�?
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      fc_output_wren_o <= 1'b0;
      fc_output_data_o <= 8'd0; //修改：修改为17�?
      fc_output_addr_o <= 7'd0;
    end else begin
      fc_output_wren_o <= (group_idx_dly[12] == (GROUPS - 1));  // �?后一组时�?
      fc_output_data_o <= relu_result[17:10];
      fc_output_addr_o <= out_channel_dly[12];
    end
  end

  // done：最后一个�?�道写出时单拍（t13�?
  reg done_r;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) done_r <= 1'b0;
    else begin
      done_r <= (group_idx_dly[12] == (GROUPS - 1)) && (out_channel_dly[12] == (OUTPUT_DIM - 1));
    end
  end

  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) done_o <= 1'b0;
    else begin
      done_o <= done_r;
    end
  end

endmodule


