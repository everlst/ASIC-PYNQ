// 第三层全连接层模块 (32 -> 2)
// 功能：实现 32 输入到 2 输出的全连接层（输出层），无ReLU激活
module fc_3 #(
  parameter INPUT_DIM  = 32,  // 输入维度32
  parameter OUTPUT_DIM = 2,   // 输出维度2
  parameter GROUP_SIZE = 32   // 每组处理32个输入（一次性处理全部输入）
) (
  input  wire clk_i,    // 时钟信号
  input  wire rst_n_i,  // 异步复位信号，低电平有效
  input  wire start_i,  // 启动信号
  output reg  done_o,   // 完成信号

  // 输入来自 fc_2 的 output_mem（32个8位数据）
  input wire [255:0] input_data_i,  // 32×8位 = 256位

  // 权重和偏置 RAM
  output reg          weight_addr_o,  // 1位地址，覆盖2个输出通道的权重
  input  wire [255:0] weight_i,       // 32×8位 = 256位

  output reg        bias_addr_o,  // 1位地址，覆盖2个偏置
  input  wire [7:0] bias_i,       // 偏置数据

  // 乘法器接口
  output wire [255:0] mul_data1_o,  // 32×8位 = 256位
  output wire [255:0] mul_data2_o,  // 32×8位 = 256位
  input  wire [511:0] mul_result_i, // 32×16位 = 512位

  // 输出接口
  output reg       fc_output_wren_o,  // 输出写使能
  output reg [7:0] fc_output_data_o,  // 输出数据
  output reg [0:0] fc_output_addr_o   // 输出地址（1位）
);

  // 状态机
  reg [1:0] state;
  localparam IDLE = 2'd0;  // 空闲状态
  localparam LOAD = 2'd1;  // 加载状态
  localparam COMPUTE = 2'd2;  // 计算状态
  localparam DONE = 2'd3;  // 完成状态

  // 计数器
  reg [1:0] out_channel;  // 输出通道索引：0..1
  reg       running;  // 运行标志

  // === 运行控制状态机 ===
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      state   <= IDLE;
      running <= 1'b0;
    end else begin
      case (state)
        IDLE: begin
          if (start_i) begin
            state   <= LOAD;  // 接收到启动信号后进入加载状态
            running <= 1'b1;
          end
        end
        LOAD: begin
          // 加载完成后立刻进入计算状态
          state <= COMPUTE;
        end
        COMPUTE: begin
          if (out_channel == OUTPUT_DIM) state <= DONE;  // 所有通道计算完成
        end
        DONE: begin
          state   <= IDLE;  // 回到空闲状态
          running <= 1'b0;
        end
      endcase
    end
  end

  // 输出通道递增
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) out_channel <= 2'd0;
    else if (state == COMPUTE)
      out_channel <= (out_channel == OUTPUT_DIM) ? 2'd0 : (out_channel + 1'b1);
  end

  // === 延迟链 ===
  reg     [1:0] out_channel_dly[0:13];  // 通道索引延迟链
  integer       i;

  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i <= 13; i = i + 1) out_channel_dly[i] <= 0;
    end else begin
      out_channel_dly[0] <= out_channel;
      for (i = 1; i <= 13; i = i + 1) out_channel_dly[i] <= out_channel_dly[i-1];
    end
  end

  // === t1: 地址生成 ===
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      weight_addr_o <= 1'd0;
      bias_addr_o   <= 1'd0;
    end else if (state == COMPUTE) begin
      // 每个输出通道需要32个权重（8位宽）
      weight_addr_o <= out_channel;  // 输出通道0使用地址0，通道1使用地址1
      bias_addr_o   <= out_channel;
    end
  end

  // === 乘法器输入 ===
  assign mul_data1_o = input_data_i;  // 输入数据（32个8位）
  assign mul_data2_o = weight_i;  // 权重数据（32个8位）

  // === 加法树 ===
  wire [17:0] final_sum;
  adder_tree3 #(
    .DATA_WIDTH(16),  // 单个乘法结果位宽
    .NUM_INPUTS(32)   // 32个输入求和
  ) u_adder_3 (
    .clk    (clk_i),
    .rst_n  (rst_n_i),
    .data   (mul_result_i),  // 乘法结果
    .sum_out(final_sum)      // t10 得到求和结果
  );

  // === 通道累加 ===
  reg [16:0] channel_accum[0:OUTPUT_DIM-1];  // 每个输出通道的累加器
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i < OUTPUT_DIM; i = i + 1) channel_accum[i] <= 17'sd0;
    end else begin
      // 由于GROUP_SIZE=32，一次处理完所有输入，直接赋值
      channel_accum[out_channel_dly[9]] <= final_sum;
    end
  end

  // === 偏置对齐 ===
  reg [7:0] bias_pipe[0:7];  // 偏置延迟链
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i <= 7; i = i + 1) bias_pipe[i] <= 8'd0;
    end else begin
      bias_pipe[0] <= bias_i;
      for (i = 1; i <= 7; i = i + 1) bias_pipe[i] <= bias_pipe[i-1];
    end
  end

  // === t12：加偏置 ===
  reg [16:0] acc_with_bias;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) acc_with_bias <= 17'sd0;
    else
      acc_with_bias <= channel_accum[out_channel_dly[11]] + {{9{bias_pipe[7][7]}}, bias_pipe[7]};  // 符号扩展
  end


  // 输出写使能/地址/数据（t12）
  // 注意：输出层不使用ReLU激活
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      fc_output_wren_o <= 1'b0;
      fc_output_data_o <= 8'd0;
      fc_output_addr_o <= 1'd0;
    end else begin
      fc_output_wren_o <= (out_channel_dly[11] != 0);  // 跳过第0个通道
      fc_output_data_o <= acc_with_bias[16:9];  // 量化：取高8位
      fc_output_addr_o <= out_channel_dly[12];
    end
  end

  // done信号
  reg done_r;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) done_o <= 1'b0;
    else done_o <= (out_channel_dly[13] == 1);  // 通道1输出完成即整个层完成
  end

endmodule
