module fc_top_ip_array (
  input  wire        clk_i,
  input  wire        rst_n_i,
  input  wire        start_i,
  output wire        done_o,
  output wire        out_wren,
  output wire [31:0] out_wdata
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


  wire [   6:0] out_waddr;

  // --------- RAM IP（3拍；.coe 初始化）---------
  input_ram_rd3 u_input_ram (
    .clka (clk_i),
    .ena  (1'b1),
    .addra(in_addr),
    .douta(in_data)
  );
  weight_ram_rd3 u_weight_ram (
    .clka (clk_i),
    .ena  (1'b1),
    .addra(w_addr),
    .douta(w_data)
  );
  bias_ram_rd3 u_bias_ram (
    .clka (clk_i),
    .ena  (1'b1),
    .addra(b_addr),
    .douta(b_data)
  );

  // --------- 乘法器阵列（由单个乘法IP generate 出 128 路）---------
  vecmul128_ip_array u_vecmul_array (
    .clk  (clk_i),
    .a_vec(mul_a),
    .b_vec(mul_b),
    .p_vec(mul_p)
  );

  // --------- 核心 fc ---------
  fc u_fc (
    .clk_i  (clk_i),
    .rst_n_i(rst_n_i),
    .start_i(start_i),
    .done_o (done_o),

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

  // 这里你可以把 out_wren/out_waddr/out_wdata 接到外部存储或 AXI 写口
  // 示例：写到简单寄存阵列
  // reg [31:0] output_mem [0:127];
  // always @(posedge clk_i) if (out_wren) output_mem[out_waddr] <= out_wdata;

endmodule
