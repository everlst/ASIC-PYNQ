module fc_control_unit (
  input  wire        clk_i,
  input  wire        rst_n_i,
  
  // 外部指令接口
  input  wire        cmd_i,          // 0:不动, 1:等待控制指令
  input  wire [1:0]  ctrl_cmd_i,     // 控制指令: 0-等待, 1-推理, 2-输出
  
  // 与fc_top的接口
  output wire        fc_start_o,     // 启动fc_top推理
  input  wire        fc_done_i,      // fc_top完成信号
  
  // 输入数据FIFO接口
  output wire        fifo_rd_en,     // FIFO读使能
  input  wire [1023:0] fifo_dout,    // FIFO输出数据
  input  wire        fifo_empty,     // FIFO空标志
  
  // 输出数据FIFO接口  
  output wire        out_fifo_wr_en, // 输出FIFO写使能
  output wire [7:0]  out_fifo_din,   // 输出FIFO数据
  
  // 来自fc_top的三层输出数据
  input  wire [7:0]  fc1_out_data,
  input  wire        fc1_out_valid,
  input  wire [7:0]  fc2_out_data,
  input  wire        fc2_out_valid,
  input  wire [7:0]  fc3_out_data,
  input  wire        fc3_out_valid,
  
  // 提供给fc_top的输入数据和地址
  output reg  [1023:0] fc_in_data_o,
  input  wire [7:0]    fc_in_addr_i   // 来自fc_top的地址
);

  // ===== 状态定义 =====
  localparam S_IDLE        = 3'd0;  // 空闲状态
  localparam S_WAIT_CTRL   = 3'd1;  // 等待控制指令
  localparam S_PREFETCH    = 3'd2;  // 预取数据到缓存
  localparam S_INFER       = 3'd3;  // 推理状态
  localparam S_OUTPUT      = 3'd4;  // 输出状态
  localparam S_OUTPUT_FC1  = 3'd5;  // 输出FC1结果
  localparam S_OUTPUT_FC2  = 3'd6;  // 输出FC2结果
  localparam S_OUTPUT_FC3  = 3'd7;  // 输出FC3结果
  
  reg [2:0] current_state, next_state;
  reg [2:0] state_delay[0:1];
    // ===== 输出状态机控制 =====
  reg [7:0] output_counter;
  wire      fc1_output_done = (output_counter >= 8'd127);
  wire      fc2_output_done = (output_counter >= 8'd159);  // 127+32
  wire      fc3_output_done = (output_counter >= 8'd162);  // 159+1
  
    // 输出完成标志
  wire output_done = (current_state == S_OUTPUT_FC1 && fc1_output_done) ||
                    (current_state == S_OUTPUT_FC2 && fc2_output_done) ||
                    (current_state == S_OUTPUT_FC3 && fc3_output_done);
                    
  // ===== 输入数据缓存 =====
  reg [1023:0] input_cache [0:3];  // 4个1024位缓存
  reg [1:0]    prefetch_count;     // 预取计数器
  reg          cache_ready;        // 缓存就绪标志
  
  // ===== 状态寄存器 =====
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i)
      current_state <= S_IDLE;
    else
      current_state <= next_state;
  end
  
  // ===== 下一状态逻辑 =====
  always @(*) begin
    case (current_state)
      S_IDLE: begin
        if (cmd_i == 1'b1)
          next_state = S_WAIT_CTRL;
        else
          next_state = S_IDLE;
      end
      
      S_WAIT_CTRL: begin
        case (ctrl_cmd_i)
          2'd1: next_state = S_PREFETCH;   // 开始预取数据
          2'd2: next_state = S_OUTPUT;     // 开始输出
          default: next_state = S_WAIT_CTRL; // 继续等待
        endcase
      end
      
      S_PREFETCH: begin
        if (cache_ready)
          next_state = S_INFER;
        else
          next_state = S_PREFETCH;
      end
      
      S_INFER: begin
        if (fc_done_i)
          next_state = S_IDLE;
        else
          next_state = S_INFER;
      end
      
      S_OUTPUT: begin
        next_state = S_OUTPUT_FC1;
      end
      
      S_OUTPUT_FC1: begin
        if (fc1_output_done)
          next_state = S_OUTPUT_FC2;
        else
          next_state = S_OUTPUT_FC1;
      end
      
      S_OUTPUT_FC2: begin
        if (fc2_output_done)
          next_state = S_OUTPUT_FC3;
        else
          next_state = S_OUTPUT_FC2;
      end
      
      S_OUTPUT_FC3: begin
        if (fc3_output_done)
          next_state = S_IDLE;
        else
          next_state = S_OUTPUT_FC3;
      end
      
      default: next_state = S_IDLE;
    endcase
  end
  
  // ===== 预取数据到缓存 =====
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      prefetch_count <= 2'd0;
      cache_ready <= 1'b0;
    end else if (current_state == S_PREFETCH) begin
      if (fifo_rd_en) begin
        input_cache[prefetch_count] <= fifo_dout;
        if (prefetch_count == 2'd3) begin
          cache_ready <= 1'b1;
          prefetch_count <= 2'd0;
        end else begin
          prefetch_count <= prefetch_count + 1;
        end
      end
    end else begin
      cache_ready <= 1'b0;
    end
  end
  
  // FIFO读控制：在预取状态下读取数据
  assign fifo_rd_en = (state_delay[1] == S_INFER) && !fifo_empty && !cache_ready;
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      state_delay[0] <= 3'd0;
      state_delay[1] <= 3'd0;
    end else begin
      state_delay[0] <= current_state;
      state_delay[1] <= state_delay[0];
    end
  end
  // ===== 输入数据选择 =====
  // 根据fc_top产生的地址从缓存中选择数据
  always @(*) begin
    if (current_state == S_INFER) begin
      // 使用fc_in_addr_i的低2位作为缓存索引（因为只有4个数据块）
      case (fc_in_addr_i[1:0])
        2'd0: fc_in_data_o = input_cache[0];
        2'd1: fc_in_data_o = input_cache[1];
        2'd2: fc_in_data_o = input_cache[2];
        2'd3: fc_in_data_o = input_cache[3];
        default: fc_in_data_o = input_cache[0];
      endcase
    end else begin
      fc_in_data_o = 1024'd0;
    end
  end
  
  // ===== 输出控制信号 =====
  assign fc_start_o = (current_state == S_PREFETCH && cache_ready);
  
  // ===== 输出数据处理 =====
  reg [7:0] output_buffer [0:160];  // 128(FC1) + 32(FC2) + 1(FC3) = 161字节
  reg [7:0] output_addr;
  
  // 捕获推理结果
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      output_addr <= 8'd0;
    end else if (fc1_out_valid) begin
      output_buffer[output_addr] <= fc1_out_data;
      output_addr <= output_addr + 1;
    end else if (fc2_out_valid) begin
      output_buffer[output_addr] <= fc2_out_data;
      output_addr <= output_addr + 1;
    end else if (fc3_out_valid) begin
      output_buffer[output_addr] <= fc3_out_data;
      output_addr <= 8'd0;  // 重置地址，为下次推理准备
    end
  end
  

  // 输出计数器
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i)
      output_counter <= 8'd0;
    else if (current_state == S_OUTPUT_FC1 && out_fifo_wr_en)
      output_counter <= output_counter + 1;
    else if (current_state == S_OUTPUT_FC2 && out_fifo_wr_en)
      output_counter <= output_counter + 1;
    else if (current_state == S_OUTPUT_FC3 && out_fifo_wr_en)
      output_counter <= output_counter + 1;
    else if (current_state == S_IDLE)
      output_counter <= 8'd0;
  end
  
  // 输出FIFO写使能
  assign out_fifo_wr_en = ((current_state == S_OUTPUT_FC1) || 
                          (current_state == S_OUTPUT_FC2) || 
                          (current_state == S_OUTPUT_FC3)) && 
                          !output_done;
  
  // 输出FIFO数据
  assign out_fifo_din = output_buffer[output_counter];
  


endmodule