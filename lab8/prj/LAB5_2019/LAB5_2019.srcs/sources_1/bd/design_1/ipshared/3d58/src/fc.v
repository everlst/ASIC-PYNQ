// 第一层全连接层模块 (512 -> 128)
// 功能：实现 512 输入到 128 输出的全连接层，包含乘累加和ReLU激活
module fc_1 #(
  parameter INPUT_DIM  = 512,  // 输入维度
  parameter OUTPUT_DIM = 128,  // 输出维度
  parameter GROUP_SIZE = 128,  // 每组处理的元素数量
  parameter GROUPS     = 4     // 分组数量（512/128=4）
) (
  input  wire clk_i,    // 时钟信号
  input  wire rst_n_i,  // 异步复位信号，低电平有效
  input  wire start_i,  // 启动信号
  output reg  done_o,   // 完成信号，最后一个通道输出时拉高

  // RAM IP 地址 & 数据（RAM 自带3拍延迟）
  output reg  [   1:0] input_data_addr_o,  // t1 给地址，t4 得 1024b 数据
  input  wire [1023:0] input_data_i,       // 输入数据（128个8位）

  output reg  [   9:0] weight_addr_o,  // t1 给地址，t4 得 1024b 权重
  input  wire [1023:0] weight_i,       // 权重数据（128个8位）

  output reg  [6:0] bias_addr_o,  // t1 给地址，t4 得 8b 偏置
  input  wire [7:0] bias_i,       // 偏置数据

  // 乘法器（外部 IP，3拍延迟）
  output wire [1023:0] mul_data1_o,  // 直接接 RAM 输出
  output wire [1023:0] mul_data2_o,  // 直接接 RAM 输出
  input  wire [2047:0] mul_result_i, // t7 得到乘法结果

  // 输出接口
  output reg       fc_output_wren_o,  // t13 当 group==3 时有效
  output reg [7:0] fc_output_data_o,  // ReLU 结果
  output reg [6:0] fc_output_addr_o   // 输出地址
);

  // 计数器
  reg [6:0] out_channel;  // 输出通道索引：0..127
  reg [1:0] group_idx;  // 组索引：0..3
  reg       running;  // 运行标志

  // === 运行控制 ===
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) running <= 1'b0;
    else if (start_i && !running) running <= 1'b1;  // 启动后开始运行
    else if (running && (out_channel == OUTPUT_DIM - 1) && (group_idx == GROUPS - 1))
      running <= 1'b0;  // 最后一组的最后通道已输出，停止流水线
  end

  // 组索引递增（每拍递增）
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) group_idx <= 2'd0;
    else if (!running) group_idx <= 2'd0;
    else begin
      if (group_idx == GROUPS - 1) group_idx <= 0;  // 循环计数0->1->2->3->0
      else group_idx <= group_idx + 1'b1;
    end
  end

  // 通道索引递增（仅当 group=3 时递增）
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) out_channel <= 7'd0;
    else if (!running) out_channel <= 7'd0;
    else if (group_idx == GROUPS - 1)  // 完成一个输出通道的所有组
      out_channel <= (out_channel == OUTPUT_DIM - 1) ? 7'd0 : (out_channel + 1'b1);
  end

  // === 延迟链：对齐到流水线阶段 ===
  // dly[0] 对应 t1（给地址时刻）
  reg     [6:0] out_channel_dly[0:16];  // 通道索引延迟链
  reg     [1:0] group_idx_dly  [0:16];  // 组索引延迟链
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
      input_data_addr_o <= group_idx;  // 输入数据按组索引访问
      weight_addr_o     <= {1'b0, out_channel, group_idx};  // 权重地址 = 通道*4 + 组
      bias_addr_o       <= out_channel;  // 偏置按通道索引访问
    end
  end

  // === RAM→乘法器 ===
  // RAM 本身有 3 拍延迟，t4 data 有效，直接送给乘法器
  assign mul_data1_o = input_data_i;  // 128×int8 输入数据
  assign mul_data2_o = weight_i;  // 128×int8 权重数据

  // === 乘法器结果 → 加法树 ===
  // 乘法器 IP 3 拍，t7 mul_result_i 有效
  // 加法树：组合逻辑 + 2 拍寄存器，t10 sum_valid
  wire [17:0] final_sum;
  adder_tree #(
    .DATA_WIDTH(16),  // 单个乘法结果位宽
    .NUM_INPUTS(128)  // 128个输入求和
  ) u_adder (
    .clk    (clk_i),
    .rst_n  (rst_n_i),
    .data   (mul_result_i),  // 2048位乘法结果
    .sum_out(final_sum)      // t10 得到求和结果
  );

  // === t10：通道累加（将四个 group 的和累加到 channel_accum[oc]）===
  reg [17:0] channel_accum[0:OUTPUT_DIM-1];  // 每个输出通道的累加器
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i < OUTPUT_DIM; i = i + 1) channel_accum[i] <= 16'sd0;
    end else begin
      if (group_idx_dly[9] == 2'd0)
        channel_accum[out_channel_dly[9]] <= final_sum;  // 第一次覆盖
      else
        channel_accum[out_channel_dly[9]] <= channel_accum[out_channel_dly[9]] + final_sum; // 后续累加
    end
  end

  // === 偏置对齐：RAM t4 出数据向后延 8 拍 → t12 使用 ===
  reg [7:0] bias_pipe[0:8];  // bias_pipe[0] 对应 t4，bias_pipe[8] 对应 t12
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i <= 8; i = i + 1) bias_pipe[i] <= 8'd0;
    end else begin
      bias_pipe[0] <= bias_i;  // t4 从RAM读出
      for (i = 1; i <= 8; i = i + 1) bias_pipe[i] <= bias_pipe[i-1];
    end
  end

  // === t12：加偏置 ===
  reg [17:0] acc_with_bias;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) acc_with_bias <= 18'sd0;
    else begin
      acc_with_bias <= channel_accum[out_channel_dly[11]]
                     + {{10{bias_pipe[8][7]}}, bias_pipe[8]};  // 符号扩展后相加
    end
  end

  // === t13：ReLU & 输出 ===
  reg [17:0] relu_result;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) relu_result <= 17'd0;
    else begin
      relu_result <= acc_with_bias[17] ? 16'd0 : acc_with_bias;  // 负数截断为0
    end
  end

  // 输出写使能/地址/数据（t13）
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      fc_output_wren_o <= 1'b0;
      fc_output_data_o <= 8'd0;
      fc_output_addr_o <= 7'd0;
    end else begin
      fc_output_wren_o <= (group_idx_dly[12] == (GROUPS - 1));  // 最后一组时输出
      fc_output_data_o <= relu_result[17:10];  // 量化：取高8位
      fc_output_addr_o <= out_channel_dly[12];
    end
  end

  // done信号：最后一个通道输出时拉高（t13）
  reg done_r;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) done_r <= 1'b0;
    else begin
      done_r <= (group_idx_dly[12] == (GROUPS - 1)) && (out_channel_dly[12] == (OUTPUT_DIM - 1));
    end
  end

  // done 延迟一拍输出
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) done_o <= 1'b0;
    else begin
      done_o <= done_r;
    end
  end

endmodule


