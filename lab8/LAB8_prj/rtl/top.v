module fc_top_ip (
  input  wire        clk_i,
  input  wire        rst_n_i,
  input  wire        start_i,
  output reg         done_o,

  // === 外部输入RAM接口（从控制单元提供） ===
  output wire [1:0]  in_addr_o,
  input  wire [1023:0] in_data_i,

  // === 原有最终输出 ===
  output wire [7:0]  final_out_wdata,
  output wire [7:0]  fc_out,
  output wire        fc_out_en,

  // === 三层中间输出 ===
  output wire [7:0]  fc1_out_data,
  output wire        fc1_out_valid,
  output wire [7:0]  fc2_out_data,
  output wire        fc2_out_valid,
  output wire [7:0]  fc3_out_data,
  output wire        fc3_out_valid
);
  // === 原有信号（保留） ===
  wire [   1:0] in_addr;
  wire [   9:0] w_addr;
  wire [   6:0] b_addr;

  wire [1023:0] in_data;  // t4
  wire [1023:0] w_data;  // t4
  wire [   7:0] b_data;  // t4

  wire [1023:0] mul_a;   // fc_1 的乘数输入
  wire [1023:0] mul_b;
  wire [2047:0] mul_p;   // fc_1 的乘法结果（2048位）

  wire          out_wren;
  wire [  7:0] out_wdata;
  wire [   6:0] out_waddr;

  // === round_cnt 保留 ===
  reg  [   7:0] round_cnt;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) round_cnt <= 0;
    else if (done_o) begin
      if (round_cnt <= 8'd41) begin
        round_cnt <= round_cnt + 1'b1;
      end
    end
  end
  localparam INPUT_BLOCK_SIZE = 4;


  // start 保留兼容（顶层启动）
  wire start;
  assign start = start_i; // 用顶层 start_i 触发 FSM

  // ---------- RAM IP (输入/权重/偏置) ----------

  weight_ram_rd3 u_weight_ram (
    .clka (clk_i),
    .addra(w_addr),
    .douta(w_data)
  );
  bias_ram_rd3 u_bias_ram (
    .clka (clk_i),
    .addra(b_addr),
    .douta(b_data)
  );
  // 来自外部控制单元的输入数据
  assign in_data = in_data_i;
  assign in_addr_o = in_addr;
  // === 第一层 FC (保持接口) ===
  wire done_o_1;
  fc_1 u_fc_1 (
    .clk_i  (clk_i),
    .rst_n_i(rst_n_i),
    .start_i(start),
    .done_o (done_o_1),

    .input_data_addr_o(in_addr),
    .input_data_i     (in_data),

    .weight_addr_o(w_addr),
    .weight_i     (w_data),

    .bias_addr_o(b_addr),
    .bias_i     (b_data),

    .mul_data1_o (mul_a),
    .mul_data2_o (mul_b),
    .mul_result_i(mul_p),

    .fc_output_wren_o(out_wren),
    .fc_output_data_o(out_wdata),
    .fc_output_addr_o(out_waddr)
  );

  // === 第一层输出写到 output_mem（保持） ===
  reg [7:0] output_mem[0:127];
  always @(posedge clk_i) if (out_wren) output_mem[out_waddr] <= out_wdata[7:0];

  // === 第二层信号（保留） ===
  wire          done_o_2;
  wire [   4:0] w_addr_2;
  wire [   4:0] b_addr_2;

  wire [1023:0] in_data_2;  // 混接 output_mem -> vector
  wire [1023:0] w_data_2;
  wire [   7:0] b_data_2;

  wire [1023:0] mul_a_2;
  wire [1023:0] mul_b_2;
  wire [2047:0] mul_p_2;

  wire          out_wren_2;
  wire [  7:0] out_wdata_2;
  wire [   4:0] out_waddr_2;

  genvar j;
  generate
    for (j = 0; j < 128; j = j + 1) begin : INPUT_TO_VECTOR
      // 逐字节展开，注意 index 顺序与原始保持一致
      assign in_data_2[1023-8*j:1016-8*j] = output_mem[j];
    end
  endgenerate

  weight_ram_fc2 u_weight_ram_fc2 (
    .clka (clk_i),
    .addra(w_addr_2),
    .douta(w_data_2)
  );
  bias_ram_fc2 u_bias_ram_fc2 (
    .clka (clk_i),
    .addra(b_addr_2),
    .douta(b_data_2)
  );

  fc_2 u_fc_2 (
    .clk_i           (clk_i),
    .rst_n_i         (rst_n_i),
    .start_i         (done_o_1),
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

  reg [7:0] output_mem_2[0:31];
  always @(posedge clk_i) if (out_wren_2) output_mem_2[out_waddr_2] <= out_wdata_2[7:0];

  // === 第三层信号（保留） ===
  wire          done_o_3;
  wire          w_addr_3;
  wire          b_addr_3;

  wire [ 255:0] in_data_3;
  wire [ 255:0] w_data_3;
  wire [   7:0] b_data_3;

  wire [ 255:0] mul_a_3;
  wire [ 255:0] mul_b_3;
  wire [511:0]  mul_p_3;  // 原来为 512 位，这里保持原始位宽

  wire          out_wren_3;
  wire [  7:0] out_wdata_3;
  wire          out_waddr_3;

  generate
    for (j = 0; j < 32; j = j + 1) begin : INPUT_TO_VECTOR2
      assign in_data_3[255-8*j:248-8*j] = output_mem_2[j];
    end
  endgenerate

  weight_ram_fc3 u_weight_ram_fc3 (
    .clka (clk_i),
    .addra(w_addr_3),
    .douta(w_data_3)
  );
  bias_weight_fc3 u_bias_ram_fc3 (
    .clka (clk_i),
    .addra(b_addr_3),
    .douta(b_data_3)
  );

  fc_3 u_fc_3 (
    .clk_i           (clk_i),
    .rst_n_i         (rst_n_i),
    .start_i         (done_o_2),
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
  assign fc1_out_data  = out_wdata[7:0];
  assign fc1_out_valid = out_wren;
  assign fc2_out_data  = out_wdata_2[7:0];
  assign fc2_out_valid = out_wren_2;
  assign fc3_out_data  = out_wdata_3[7:0];
  assign fc3_out_valid = out_wren_3;

  assign final_out_wdata = out_wdata_3;
  assign fc_out_en = out_wren_3;
  assign fc_out    = out_wdata_3;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) done_o <= 0;
    else  begin
      done_o     = done_o_3;
    end
  end

  // ===================================================
  // ========== 共享乘法器 + FSM 复用逻辑 ================
  // ===================================================
  // 我们使用一个 NUM_MULTIPLIERS = 128 的 multiplier_array 作为共享乘法器
  // mul_a_shared/mul_b_shared 宽度为 1024 (与原 128 个乘器的输入一致)
  // mul_p_shared 宽度为 2048 (与原 128 个乘器的输出一致)
  // fc_1 / fc_2 期待 2048 位结果 -> 直接使用 mul_p_shared
  // fc_3 期待较小的结果 (512 位) -> 使用 mul_p_shared[511:0] 作为其输入

  // FSM 状态定义
  localparam S_IDLE = 2'd0,
             S_FC1  = 2'd1,
             S_FC2  = 2'd2,
             S_FC3  = 2'd3;

  reg [1:0] fc_state, fc_state_next;

  // 状态寄存
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) fc_state <= S_IDLE;
    else fc_state <= fc_state_next;
  end

  // 下一状态组合逻辑（优先使用各层 done 信号）
  always @(*) begin
    fc_state_next = fc_state;
    case (fc_state)
      S_IDLE: begin
        if (start) fc_state_next = S_FC1;
        else fc_state_next = S_IDLE;
      end
      S_FC1: begin
        if (done_o_1) fc_state_next = S_FC2;
        else fc_state_next = S_FC1;
      end
      S_FC2: begin
        if (done_o_2) fc_state_next = S_FC3;
        else fc_state_next = S_FC2;
      end
      S_FC3: begin
        if (done_o_3) fc_state_next = S_IDLE;
        else fc_state_next = S_FC3;
      end
      default: fc_state_next = S_IDLE;
    endcase
  end

  // 共享乘法器的输入（1024 位 each）
  reg  [1023:0] mul_a_shared;
  reg  [1023:0] mul_b_shared;
  wire [2047:0] mul_p_shared;

  // 根据当前状态把对应层的 mul_a_x/mul_b_x 送入共享乘法器
  // 对较窄的第三层输入做零扩展到 1024 位
  always @(*) begin
    case (fc_state)
      S_FC1: begin
        mul_a_shared = mul_a;     // fc_1 原始 1024 位输入
        mul_b_shared = mul_b;
      end
      S_FC2: begin
        mul_a_shared = mul_a_2;   // fc_2 原始 1024 位输入
        mul_b_shared = mul_b_2;
      end
      S_FC3: begin
        // fc_3 只有 256 位输入 (mul_a_3 / mul_b_3)
        // 将低位放到 shared 的低 256 位， 高位填 0
        mul_a_shared = {768'd0, mul_a_3};
        mul_b_shared = {768'd0, mul_b_3};
      end
      default: begin
        mul_a_shared = 1024'd0;
        mul_b_shared = 1024'd0;
      end
    endcase
  end

  // 共享乘法器实例（仅一个）
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
  // 注意：原来 fc_3 mul_p_3 宽度写作 [512:0] (513 bits)，为了兼容我们这里截为 513 位（低位）
  // 如果原始 fc_3 仅使用 512 位，请相应调整子模块
  assign mul_p  = mul_p_shared;              // 2048 位 -> fc_1
  assign mul_p_2 = mul_p_shared;             // 2048 位 -> fc_2
  
  // 把低 512 位给 fc_3（原先定义 mul_p_3 是 [512:0]）
  // 如果你的 fc_3 实际接受 512 位，请把下面的索引改为 [511:0]
  assign mul_p_3 =  mul_p_shared[511:0]; // 高位 padding 0 -> 总宽度 513 位

  // ===================================================
  // End of shared multiplier + FSM
  // ===================================================

endmodule

