module fc_top_ip_with_control (
  input  wire        clk_i,
  input  wire        rst_n_i,
  
  // 外部指令接口
  input  wire        cmd_i,
  input  wire [1:0]  ctrl_cmd_i,
  
  // FIFO接口
  output wire        fifo_rd_en_o,
  input  wire [1023:0] fifo_data_i,
  input  wire        fifo_empty_i,
  
  output wire        out_fifo_wr_en_o,
  output wire [7:0]  out_fifo_data_o,
  
  // 原有输出信号
  output wire [7:0]  final_out_wdata,
  output wire [7:0]  fc_out,
  output wire        fc_out_en
);

  // 控制单元信号
  wire        fc_start;
  wire        fc_done;
  
  // fc_top内部信号
  wire [1:0]  fc_in_addr;
  wire [1023:0] fc_in_data;
  
  // 三层输出信号
  wire [7:0]  fc1_out_data;
  wire        fc1_out_valid;
  wire [7:0]  fc2_out_data;
  wire        fc2_out_valid;
  wire [7:0]  fc3_out_data;
  wire        fc3_out_valid;

  // ===== 控制单元实例化 =====
  fc_control_unit u_control_unit (
    .clk_i          (clk_i),
    .rst_n_i        (rst_n_i),
    .cmd_i          (cmd_i),
    .ctrl_cmd_i     (ctrl_cmd_i),
    .fc_start_o     (fc_start),
    .fc_done_i      (fc_done),
    .fifo_rd_en     (fifo_rd_en_o),
    .fifo_dout      (fifo_data_i),
    .fifo_empty     (fifo_empty_i),
    .out_fifo_wr_en (out_fifo_wr_en_o),
    .out_fifo_din   (out_fifo_data_o),
    .fc1_out_data   (fc1_out_data),
    .fc1_out_valid  (fc1_out_valid),
    .fc2_out_data   (fc2_out_data),
    .fc2_out_valid  (fc2_out_valid),
    .fc3_out_data   (fc3_out_data),
    .fc3_out_valid  (fc3_out_valid),
    .fc_in_data_o   (fc_in_data),
    .fc_in_addr_i   (fc_in_addr)
  );

  // ===== 原有fc_top实例化 =====
  fc_top_ip u_fc_top (
    .clk_i          (clk_i),
    .rst_n_i        (rst_n_i),
    .start_i        (fc_start),
    .done_o         (fc_done),
    
    // 外部输入RAM接口（现在由控制单元提供）
    .in_addr_o      (fc_in_addr),
    .in_data_i      (fc_in_data),
    
    // 最终输出
    .final_out_wdata(final_out_wdata),
    .fc_out         (fc_out),
    .fc_out_en      (fc_out_en),
    
    // 三层中间输出
    .fc1_out_data   (fc1_out_data),
    .fc1_out_valid  (fc1_out_valid),
    .fc2_out_data   (fc2_out_data),
    .fc2_out_valid  (fc2_out_valid),
    .fc3_out_data   (fc3_out_data),
    .fc3_out_valid  (fc3_out_valid)
  );

endmodule