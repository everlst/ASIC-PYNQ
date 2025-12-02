// 全连接神经网络顶层模块
// 功能：实现三层全连接网络的硬件加速，包含输入层、两个隐藏层和输出层

module fc_top_ip (
  input  wire clk_i,    // 系统时钟
  input  wire rst_n_i,  // 异步复位信号，低电平有效
  input  wire start_i,  // 启动信号
  output reg  done_o,   // 完成信号

  // === 外部输入RAM接口（从控制单元提供） ===
  output wire [   1:0] in_addr_o,  // 输入数据地址（4个块）
  input  wire [1023:0] in_data_i,  // 输入数据（1024位）

  output wire [7:0] fc_out,  // 测试信号

  // === 原有最终输出 ===
  output wire [7:0] final_out_wdata,  // 最终输出数据
  output wire       fc_out_en         // 输出有效信号

  // === 三层中间输出（已注释） ===
  // output wire [7:0]  fc1_out_data,
  // output wire        fc1_out_valid,
  // output wire [7:0]  fc2_out_data,
  // output wire        fc2_out_valid,
  // output wire [7:0]  fc3_out_data,
  // output wire        fc3_out_valid

);
  // === 原有信号（保留） ===
  wire [   1:0] in_addr;  // 输入数据地址
  wire [   9:0] w_addr;  // 权重地址
  wire [   6:0] b_addr;  // 偏置地址

  wire [1023:0] in_data;  // 输入数据（1024位）
  wire [1023:0] w_data;  // 权重数据（1024位）
  wire [   7:0] b_data;  // 偏置数据（8位）

  wire [1023:0] mul_a;  // fc_1 的乘数输入A
  wire [1023:0] mul_b;  // fc_1 的乘数输入B
  wire [2047:0] mul_p;  // fc_1 的乘法结果（2048位）

  wire          out_wren;  // 输出写使能
  wire [   7:0] out_wdata;  // 输出数据
  wire [   6:0] out_waddr;  // 输出地址


  // === 轮次计数器（保留） ===
  reg  [   7:0] round_cnt;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) round_cnt <= 0;
    else if (done_o) begin
      if (round_cnt <= 8'd41) begin
        round_cnt <= round_cnt + 1'b1;  // 轮次递增
      end
    end
  end
  localparam INPUT_BLOCK_SIZE = 4;  // 输入分块大小

  // 启动信号连接（顶层启动）
  wire start;
  assign start = start_i;  // 用顶层 start_i 触发状态机

  // ---------- RAM IP (输入/权重/偏置) ----------
  // 权重RAM实例化
  weight_ram_rd3 u_weight_ram (
    .clka (clk_i),
    .addra(w_addr),
    .douta(w_data)
  );

  // 偏置RAM实例化
  bias_ram_rd3 u_bias_ram (
    .clka (clk_i),
    .addra(b_addr),
    .douta(b_data)
  );

  // 来自外部控制单元的输入数据
  assign in_data = in_data_i;

  reg [1:0] in_addr_d0;
  reg [1:0] in_addr_d1;
  reg [1:0] in_addr_d2;
  always @(posedge clk_i) begin
    in_addr_d0 <= in_addr;
    in_addr_d1 <= in_addr_d0;
    in_addr_d2 <= in_addr_d1;
  end
  assign in_addr_o = in_addr_d2;


  // === 第一层全连接层 (512 -> 128) ===
  wire done_o_1;  // 第一层完成信号
  fc_1 u_fc_1 (
    .clk_i  (clk_i),
    .rst_n_i(rst_n_i),
    .start_i(start),
    .done_o (done_o_1),

    .input_data_addr_o(in_addr),  // 输入数据地址
    .input_data_i     (in_data),  // 输入数据

    .weight_addr_o(w_addr),  // 权重地址
    .weight_i     (w_data),  // 权重数据

    .bias_addr_o(b_addr),  // 偏置地址
    .bias_i     (b_data),  // 偏置数据

    .mul_data1_o (mul_a),  // 乘法器输入A
    .mul_data2_o (mul_b),  // 乘法器输入B
    .mul_result_i(mul_p),  // 乘法器结果

    .fc_output_wren_o(out_wren),   // 输出写使能
    .fc_output_data_o(out_wdata),  // 输出数据
    .fc_output_addr_o(out_waddr)   // 输出地址
  );

  // === 第一层输出写入output_mem ===
  reg [7:0] output_mem[0:127];  // 128个8位输出
  always @(posedge clk_i) if (out_wren) output_mem[out_waddr] <= out_wdata[7:0];

  // === 第二层信号 (128 -> 32) ===
  wire          done_o_2;  // 第二层完成信号
  wire [   4:0] w_addr_2;  // 权重地址
  wire [   4:0] b_addr_2;  // 偏置地址

  wire [1023:0] in_data_2;  // 输入数据（从output_mem组装）
  wire [1023:0] w_data_2;  // 权重数据
  wire [   7:0] b_data_2;  // 偏置数据


  wire [1023:0] mul_a_2;  // 乘法器输入A
  wire [1023:0] mul_b_2;  // 乘法器输入B
  wire [2047:0] mul_p_2;  // 乘法器结果


  wire          out_wren_2;  // 输出写使能
  wire [   7:0] out_wdata_2;  // 输出数据
  wire [   4:0] out_waddr_2;  // 输出地址


  // 将output_mem转换为向量形式
  genvar j;
  generate
    for (j = 0; j < 128; j = j + 1) begin : INPUT_TO_VECTOR
      // 逐字节展开，将128个8位数据组装成1024位向量
      assign in_data_2[1023-8*j:1016-8*j] = output_mem[j];
    end
  endgenerate

  // 第二层权重RAM
  weight_ram_fc2 u_weight_ram_fc2 (
    .clka (clk_i),
    .addra(w_addr_2),
    .douta(w_data_2)
  );

  // 第二层偏置RAM
  bias_ram_fc2 u_bias_ram_fc2 (
    .clka (clk_i),
    .addra(b_addr_2),
    .douta(b_data_2)
  );

  // 第二层全连接层实例化
  fc_2 u_fc_2 (
    .clk_i  (clk_i),
    .rst_n_i(rst_n_i),
    .start_i(done_o_1), // 第一层完成后启动

    .done_o          (done_o_2),
    .input_data_i    (in_data_2),
    .weight_addr_o   (w_addr_2),
    .weight_i        (w_data_2),
    .bias_addr_o     (b_addr_2),
    .bias_i          (b_data_2),
    .mul_data1_o     (mul_a_2),
    .mul_data2_o     (mul_b_2),
    .mul_result_i    (mul_p_2),
    .fc_output_wren_o(out_wren_2),
    .fc_output_data_o(out_wdata_2),
    .fc_output_addr_o(out_waddr_2)
  );

  // 第二层输出存储
  reg [7:0] output_mem_2[0:31];  // 32个8位输出
  always @(posedge clk_i) if (out_wren_2) output_mem_2[out_waddr_2] <= out_wdata_2[7:0];

  // === 第三层信号 (32 -> 2) ===
  wire         done_o_3;  // 第三层完成信号
  wire         w_addr_3;  // 权重地址（1位）
  wire         b_addr_3;  // 偏置地址（1位）


  wire [255:0] in_data_3;  // 输入数据（256位）
  wire [255:0] w_data_3;  // 权重数据（256位）
  wire [  7:0] b_data_3;  // 偏置数据

  wire [255:0] mul_a_3;  // 乘法器输入A
  wire [255:0] mul_b_3;  // 乘法器输入B
  wire [511:0] mul_p_3;  // 乘法器结果（512位）


  wire         out_wren_3;  // 输出写使能
  wire [  7:0] out_wdata_3;  // 输出数据
  wire         out_waddr_3;  // 输出地址（1位）


  // 将output_mem_2转换为向量形式
  generate
    for (j = 0; j < 32; j = j + 1) begin : INPUT_TO_VECTOR2
      // 逐字节展开，将32个8位数据组装成256位向量
      assign in_data_3[255-8*j:248-8*j] = output_mem_2[j];
    end
  endgenerate

  // 第三层权重RAM
  weight_ram_fc3 u_weight_ram_fc3 (
    .clka (clk_i),
    .addra(w_addr_3),
    .douta(w_data_3)
  );

  // 第三层偏置RAM
  bias_weight_fc3 u_bias_ram_fc3 (
    .clka (clk_i),
    .addra(b_addr_3),
    .douta(b_data_3)
  );

  // 第三层全连接层实例化
  fc_3 u_fc_3 (
    .clk_i  (clk_i),
    .rst_n_i(rst_n_i),
    .start_i(done_o_2), // 第二层完成后启动

    .done_o          (done_o_3),
    .input_data_i    (in_data_3),
    .weight_addr_o   (w_addr_3),
    .weight_i        (w_data_3),
    .bias_addr_o     (b_addr_3),
    .bias_i          (b_data_3),
    .mul_data1_o     (mul_a_3),
    .mul_data2_o     (mul_b_3),
    .mul_result_i    (mul_p_3),
    .fc_output_wren_o(out_wren_3),
    .fc_output_data_o(out_wdata_3),
    .fc_output_addr_o(out_waddr_3)
  );

  // 连接最终输出
  // assign fc1_out_data  = out_wdata[7:0];
  // assign fc1_out_valid = out_wren;
  // assign fc2_out_data  = out_wdata_2[7:0];
  // assign fc2_out_valid = out_wren_2;
  // assign fc3_out_data  = out_wdata_3[7:0];
  // assign fc3_out_valid = out_wren_3;

  assign final_out_wdata = out_wdata_3;
  assign fc_out_en       = out_wren_3;
  assign fc_out          = out_wdata_3;

  // 完成信号生成
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) done_o <= 0;
    else begin
      done_o = done_o_3;  // 第三层完成即整个网络完成
    end
  end

  // ===================================================
  // ========== 共享乘法器 + 状态机复用逻辑 ============
  // ===================================================
  // 使用一个 NUM_MULTIPLIERS = 128 的 multiplier_array 作为共享乘法器
  // mul_a_shared/mul_b_shared 宽度为 1024 位（与原128个乘法器的输入一致）
  // mul_p_shared 宽度为 2048 位（与原128个乘法器的输出一致）
  // fc_1 / fc_2 期待 2048 位结果 -> 直接使用 mul_p_shared
  // fc_3 期待较小的结果 (512 位) -> 使用 mul_p_shared[511:0] 作为其输入

  // 状态机状态定义
  localparam S_IDLE = 2'd0,  // 空闲状态
  S_FC1 = 2'd1,  // 第一层计算状态
  S_FC2 = 2'd2,  // 第二层计算状态
  S_FC3 = 2'd3;  // 第三层计算状态


  reg [1:0] fc_state, fc_state_next;

  // 状态寄存器
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) fc_state <= S_IDLE;
    else fc_state <= fc_state_next;
  end

  // 下一状态组合逻辑（优先使用各层 done 信号）
  always @(*) begin
    fc_state_next = fc_state;
    case (fc_state)
      S_IDLE: begin
        if (start) fc_state_next = S_FC1;  // 启动后进入第一层
        else fc_state_next = S_IDLE;
      end
      S_FC1: begin
        if (done_o_1) fc_state_next = S_FC2;  // 第一层完成后进入第二层
        else fc_state_next = S_FC1;
      end
      S_FC2: begin
        if (done_o_2) fc_state_next = S_FC3;  // 第二层完成后进入第三层
        else fc_state_next = S_FC2;
      end
      S_FC3: begin
        if (done_o_3) fc_state_next = S_IDLE;  // 第三层完成后回到空闲
        else fc_state_next = S_FC3;
      end
      default: fc_state_next = S_IDLE;
    endcase
  end

  // 共享乘法器的输入（1024 位每个）
  reg  [1023:0] mul_a_shared;
  reg  [1023:0] mul_b_shared;
  wire [2047:0] mul_p_shared;

  // 根据当前状态将对应层的 mul_a_x/mul_b_x 送入共享乘法器
  // 对较窄的第三层输入做零扩展到 1024 位
  always @(*) begin
    case (fc_state)
      S_FC1: begin
        mul_a_shared = mul_a;  // fc_1 原始 1024 位输入
        mul_b_shared = mul_b;
      end
      S_FC2: begin
        mul_a_shared = mul_a_2;  // fc_2 原始 1024 位输入
        mul_b_shared = mul_b_2;
      end
      S_FC3: begin
        // fc_3 只有 256 位输入 (mul_a_3 / mul_b_3)
        // 将低位放到 shared 的低 256 位，高位填 0
        mul_a_shared = {768'd0, mul_a_3};
        mul_b_shared = {768'd0, mul_b_3};
      end
      default: begin
        mul_a_shared = 1024'd0;
        mul_b_shared = 1024'd0;
      end
    endcase
  end

  // 共享乘法器实例（仅一个，复用于三层）
  multiplier_array #(
    .NUM_MULTIPLIERS(128)
  ) u_mult_array_shared (
    .clk_i(clk_i),
    .mul_a(mul_a_shared),
    .mul_b(mul_b_shared),
    .mul_p(mul_p_shared)
  );

  // 将共享乘法器结果分发回各层的 mul_result 接口
  // fc_1 和 fc_2 需要完整的 2048 位结果
  // fc_3 期望较小的结果，取低位部分（512 位）
  assign mul_p   = mul_p_shared;  // 2048 位 -> fc_1
  assign mul_p_2 = mul_p_shared;  // 2048 位 -> fc_2

  // 将低 512 位给 fc_3
  assign mul_p_3 = mul_p_shared[511:0];  // 512 位 -> fc_3


  // ===================================================
  // 共享乘法器 + 状态机结束
  // ===================================================

endmodule

