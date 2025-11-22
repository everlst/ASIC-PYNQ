module fc_top_ip (
  input  wire clk_i,
  input  wire rst_n_i,
  input  wire start_i,
  output wire done_o
);
  // fc <-> 存储/乘法器连线
  wire [   1:0] in_addr;
  wire [   9:0] w_addr;
  wire [   6:0] b_addr;

  wire [1023:0] in_data;  // t4
  wire [1023:0] w_data;  // t4
  wire [   7:0] b_data;  // t4

  wire [1023:0] mul_a;
  wire [1023:0] mul_b;
  wire [2047:0] mul_p;  // t7

  wire          out_wren;
  wire [  15:0] out_wdata;
  wire [   6:0] out_waddr;

  // --------- RAM IP（3拍；.coe 初始化）---------
  input_ram_rd3 u_input_ram (
    .clka (clk_i),
    .addra(in_addr),
    .douta(in_data)
  );
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

  // --------- 乘法器阵列（由单个乘法IP generate 出 128 路）---------
  multiplier_array #(
    .NUM_MULTIPLIERS(128)  // 32个乘法器
  ) u_mult_array_32 (
    .clk_i(clk_i),
    .mul_a(mul_a),
    .mul_b(mul_b),
    .mul_p(mul_p)   // 32×16=512位输出
  );
  wire done_o_1;
  // --------- 核心 fc ---------
  fc_1 u_fc_1 (
    .clk_i  (clk_i),
    .rst_n_i(rst_n_i),
    .start_i(start_i),
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

  reg [15:0] output_mem[0:127];
  always @(posedge clk_i) if (out_wren) output_mem[out_waddr] <= out_wdata;

  wire          done_o_2;
  wire [   4:0] w_addr_2;
  wire [   4:0] b_addr_2;

  wire [2047:0] in_data_2;  // t4
  wire [1023:0] w_data_2;  // t4
  wire [   7:0] b_data_2;  // t4

  wire [2047:0] mul_a_2;
  wire [1023:0] mul_b_2;
  wire [3071:0] mul_p_2;  // t7

  wire          out_wren_2;
  wire [  23:0] out_wdata_2;
  wire [   4:0] out_waddr_2;

  generate
    genvar j;
    for (j = 0; j < 128; j = j + 1) begin : INPUT_TO_VECTOR
      assign in_data_2[2047-16*j:2032-16*j] = output_mem[j];
    end
  endgenerate
  // --------- RAM IP（3拍；.coe 初始化）---------
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

  multi_array24 #(
    .NUM_MULTIPLIERS(128)  // 128个乘法器
  ) u_mult_array_24 (
    .clk_i(clk_i),
    .mul_a(mul_a_2),
    .mul_b(mul_b_2),
    .mul_p(mul_p_2)   // 32×16=512位输出
  );
  fc_2 u_fc_2 (
    .clk_i           (clk_i),
    .rst_n_i         (rst_n_i),
    .start_i         (done_o_1),
    .done_o          (done_o_2),
    .input_data_i    (in_data_2),
    .weight_addr_o   (w_addr_2),     // 9位地址，覆盖512个权重
    .weight_i        (w_data_2),
    .bias_addr_o     (b_addr_2),     // 5位地址，覆盖32个偏置
    .bias_i          (b_data_2),
    .mul_data1_o     (mul_a_2),
    .mul_data2_o     (mul_b_2),
    .mul_result_i    (mul_p_2),
    .fc_output_wren_o(out_wren_2),
    .fc_output_data_o(out_wdata_2),
    .fc_output_addr_o(out_waddr_2)
  );

  reg [23:0] output_mem_2[0:31];
  always @(posedge clk_i) if (out_wren_2) output_mem_2[out_waddr_2] <= out_wdata_2;

  wire          done_o_3;
  wire          w_addr_3;
  wire          b_addr_3;

  wire [ 767:0] in_data_3;  // t4
  wire [ 255:0] w_data_3;  // t4
  wire [   7:0] b_data_3;  // t4

  wire [ 767:0] mul_a_3;
  wire [ 255:0] mul_b_3;
  wire [1023:0] mul_p_3;  // t7

  wire          out_wren_3;
  wire [  31:0] out_wdata_3;
  wire          out_waddr_3;

  generate
    for (j = 0; j < 32; j = j + 1) begin : INPUT_TO_VECTOR2
      assign in_data_3[767-24*j:744-24*j] = output_mem_2[j];
    end
  endgenerate
  // --------- RAM IP（3拍；.coe 初始化）---------
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

  multi_array32 #(
    .NUM_MULTIPLIERS(32)  // 32个乘法器
  ) u_mult_array_final (
    .clk_i(clk_i),
    .mul_a(mul_a_3),
    .mul_b(mul_b_3),
    .mul_p(mul_p_3)   // 32×16=512位输出
  );
  fc_3 u_fc_3 (
    .clk_i           (clk_i),
    .rst_n_i         (rst_n_i),
    .start_i         (done_o_2),
    .done_o          (done_o),
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


endmodule
