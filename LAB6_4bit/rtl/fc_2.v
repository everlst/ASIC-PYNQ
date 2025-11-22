module fc_2 #(
  parameter INPUT_DIM  = 128,  // 输入维度128
  parameter OUTPUT_DIM = 32,   // 输出维度32
  parameter GROUP_SIZE = 128   // 每组处理128个输入
) (
  input  wire clk_i,
  input  wire rst_n_i,
  input  wire start_i,
  output reg  done_o,

  // 输入来自 fc_1 的 output_mem（128个16位数据）
  input wire [2175:0] input_data_i,  // 直接连接寄存器数组

  // 权重和偏置 RAM
  output reg  [   4:0] weight_addr_o,  // 5位地址，覆盖128*32个权重
  input  wire [1023:0] weight_i,

  output reg  [4:0] bias_addr_o,  // 5位地址，覆盖32个偏置
  input  wire [7:0] bias_i,

  // 乘法器接口
  output wire [2175:0] mul_data1_o, //修改
  output wire [1023:0] mul_data2_o,
  input  wire [3199:0] mul_result_i, //修改

  // 输出写回
  output reg        fc_output_wren_o,
  output reg [25:0] fc_output_data_o, //修改：修改为25位
  output reg [ 4:0] fc_output_addr_o
);

  // 状态机
  reg [1:0] state;
  localparam IDLE = 2'd0;
  localparam LOAD = 2'd1;
  localparam COMPUTE = 2'd2;
  localparam DONE = 2'd3;

  // 计数器
  reg [5:0] out_channel;  // 0..31
  reg       running;


  // 输出通道递增
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) out_channel <= 6'd0;
    else if (state == COMPUTE)
      out_channel <= (out_channel == OUTPUT_DIM) ? 6'd0 : (out_channel + 1'b1);
  end

  // === 延迟链 ===
  reg     [5:0] out_channel_dly[0:13];
  integer       i;

  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i <= 13; i = i + 1) out_channel_dly[i] <= 0;
    end else begin
      out_channel_dly[0] <= out_channel;
      for (i = 1; i <= 13; i = i + 1) out_channel_dly[i] <= out_channel_dly[i-1];
    end
  end

  // === 运行控制 ===
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      state   <= IDLE;
      running <= 1'b0;
    end else begin
      case (state)
        IDLE: begin
          if (start_i) begin
            state   <= LOAD;
            running <= 1'b1;
          end
        end
        LOAD: begin
          // 加载完成后立即进入计算状态
          state <= COMPUTE;
        end
        COMPUTE: begin
          if (out_channel == OUTPUT_DIM) state <= DONE;
        end
        DONE: begin
          state   <= IDLE;
          running <= 1'b0;
        end
      endcase
    end
  end

  // === t1: 地址生成 ===
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      weight_addr_o <= 5'd0;
      bias_addr_o   <= 5'd0;
    end else if (state == COMPUTE) begin
      // 每个输出通道需要128个权重
      weight_addr_o <= out_channel;
      bias_addr_o   <= out_channel;
    end
  end

  // === 乘法器输入 ===

  assign mul_data1_o = input_data_i;
  assign mul_data2_o = weight_i;

  // === 加法树 ===  
  wire [31:0] final_sum;
  adder_tree2 #(
    .DATA_WIDTH(25),
    .NUM_INPUTS(128)
  ) u_adder2 (
    .clk    (clk_i),
    .rst_n  (rst_n_i),
    .data   (mul_result_i),
    .sum_out(final_sum)      // t10 有效
  );

  // === 通道累加 ===
  reg [31:0] channel_accum[0:OUTPUT_DIM-1];
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i < OUTPUT_DIM; i = i + 1) channel_accum[i] <= 32'sd0;
    end else begin
      // 由于GROUP_SIZE=128，一次处理完所有输入，直接赋值
      channel_accum[out_channel_dly[9]] <= final_sum;
    end
  end

  // === 偏置对齐 ===
  reg [7:0] bias_pipe[0:7];
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i <= 7; i = i + 1) bias_pipe[i] <= 8'd0;
    end else begin
      bias_pipe[0] <= bias_i;
      for (i = 1; i <= 7; i = i + 1) bias_pipe[i] <= bias_pipe[i-1];
    end
  end

  // === t12：加偏置 ===
  reg [31:0] acc_with_bias;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) acc_with_bias <= 32'sd0;
    else
      acc_with_bias <= channel_accum[out_channel_dly[11]] + {{24{bias_pipe[7][7]}}, bias_pipe[7]};
  end

  // === t13：ReLU & 输出 ===
  reg [31:0] relu_result;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) relu_result <= 32'd0;
    else relu_result <= acc_with_bias[31] ? 32'd0 : acc_with_bias;
  end

  // 写使能/地址/数据（t13）
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      fc_output_wren_o <= 1'b0;
      fc_output_data_o <= 32'd0;
      fc_output_addr_o <= 5'd0;
    end else begin
      fc_output_wren_o <= (out_channel_dly[12] != 0);
      fc_output_data_o <= relu_result[10:7]; 
      fc_output_addr_o <= out_channel_dly[13];
    end
  end

  // done信号
  assign done_r = (out_channel_dly[13] == 31);
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) done_o <= 1'b0;
    else begin
      done_o <= done_r;
    end
  end
endmodule

