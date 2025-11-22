module fc_3 #(
  parameter INPUT_DIM  = 32,  // 输入维度32
  parameter OUTPUT_DIM = 2,   // 输出维度2
  parameter GROUP_SIZE = 32   // 每组处理32个输�?
) (
  input  wire clk_i,
  input  wire rst_n_i,
  input  wire start_i,
  output reg  done_o,

  // 输入来自 fc_2 �? output_mem�?32�?24位数据）
  input wire [255:0] input_data_i,  // 32×24�? = 768�?

  // 权重和偏�? RAM
  output reg          weight_addr_o,  // 1位地�?，覆�?2*256个权重组
  input  wire [255:0] weight_i,       // 32×8�? = 256�?

  output reg        bias_addr_o,  // 1位地�?，覆�?2个偏�?
  input  wire [7:0] bias_i,

  // 乘法器接�?
  output wire [ 255:0] mul_data1_o,  // 32×24�? = 768�?
  output wire [ 255:0] mul_data2_o,  // 64×8�? = 512�?
  input  wire [511:0] mul_result_i, // 32×32�? = 1024�?

  // 输出写回
  output reg        fc_output_wren_o,
  output reg [7:0] fc_output_data_o,  //修改：修改为36�?
  output reg [ 0:0] fc_output_addr_o
);

  // 状�?�机
  reg [1:0] state;
  localparam IDLE = 2'd0;
  localparam LOAD = 2'd1;
  localparam COMPUTE = 2'd2;
  localparam DONE = 2'd3;

  // 计数�?
  reg [1:0] out_channel;  // 0..1
  reg       running;

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
          // 加载完成后立即进入计算状�?
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

  // 输出通道递增
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) out_channel <= 2'd0;
    else if (state == COMPUTE)
      out_channel <= (out_channel == OUTPUT_DIM) ? 2'd0 : (out_channel + 1'b1);
  end

  // === 延迟�? ===
  reg     [1:0] out_channel_dly[0:13];
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
      // 每个输出通道�?�?32个权重（8位宽�?
      weight_addr_o <= out_channel;  // 输出通道0使用地址0-15，�?�道1使用地址16-31
      bias_addr_o   <= out_channel;
    end
  end

  // === 乘法器输�? ===
  assign mul_data1_o = input_data_i;  // 831位输入数�?
  assign mul_data2_o = weight_i;  // 512位权重数�?

  // === 加法�? ===
  wire [17:0] final_sum;
  adder_tree3 #(
    .DATA_WIDTH(16),
    .NUM_INPUTS(32)   // 32个输�?
  ) u_adder_3 (
    .clk    (clk_i),
    .rst_n  (rst_n_i),
    .data   (mul_result_i),
    .sum_out(final_sum)      // t10 有效
  );

  // === 通道累加 ===
  reg [16:0] channel_accum[0:OUTPUT_DIM-1];
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i < OUTPUT_DIM; i = i + 1) channel_accum[i] <= 17'sd0;
    end else begin
      // 由于GROUP_SIZE=32，一次处理完�?有输入，直接赋�??
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
  reg [16:0] acc_with_bias;  //修改：修改为35�?
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) acc_with_bias <= 17'sd0;
    else
      acc_with_bias <= channel_accum[out_channel_dly[11]] + {{9{bias_pipe[7][7]}}, bias_pipe[7]};
  end


  // 写使�?/地址/数据（t12�?
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      fc_output_wren_o <= 1'b0;
      fc_output_data_o <= 8'd0;
      fc_output_addr_o <= 1'd0;
    end else begin
      fc_output_wren_o <= (out_channel_dly[11] != 0);
      fc_output_data_o <=  acc_with_bias[16:9];
      // fc_output_data_o <= acc_with_bias;
      fc_output_addr_o <= out_channel_dly[12];
    end
  end

  // done信号
  reg done_r;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) done_o <= 1'b0;
    else done_o <= (out_channel_dly[13] == 1);
  end

endmodule
