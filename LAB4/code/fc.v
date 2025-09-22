//本module实现的是全连接网络第一层，输入通道512，输出通道128。
//为提高计算效率，每次输入数据为1024位，即128维，进行128个并行乘法,4次即可完成一个输出通道的计算
//不做截位处理
module fc (
  input  wire clk_i,    // 时钟信号输入
  input  wire rst_n_i,  // 低电平有效的复位信号
  input  wire start_i,  // 启动信号
  output wire done_o,   // 完成信号

  output reg [1:0] input_data_addr_o,  // 输入数据地址，2位可寻址4个分组
  input wire [1023:0] input_data_i,  // 输入数据，每次读取128个8位数据(128*8=1024位)

  output reg  [   9:0] weight_addr_o,  // 权重地址，10位可寻址512*128个权重
  input  wire [1023:0] weight_i,       // 权重数据，每次读取128个8位权重

  output reg  [6:0] bias_addr_o,  // 偏置地址，7位可寻址128个偏置
  input  wire [7:0] bias_i,       // 偏置数据，8位

  output reg        fc_output_wren_o,  // 输出数据写使能
  output reg [31:0] fc_output_data_o,  // 输出数据，32位
  output reg [ 6:0] fc_output_addr_o,  // 输出地址，7位可寻址128个输出

  output wire [1023:0] mul_data1_o,  // 乘法器输入数据1
  output wire [1023:0] mul_data2_o,  // 乘法器输入数据2
  input  wire [2047:0] mul_result_i  // 乘法结果输入，宽度为2048位(128个16位结果)
);

  parameter INPUT_DIM = 512;  // 输入维度
  parameter OUTPUT_DIM = 128;  // 输出维度
  parameter GROUP_SIZE = 128;  // 每组处理的输入数据量
  parameter GROUPS = 4;  // 输入分组数 (512/128)
  parameter MULT_LATENCY = 3;  // 乘法器延迟周期
  parameter RAM_LATENCY = 3;  // RAM读取延迟周期

  reg [6:0] out_channel;  // 输出通道索引 (0-127)
  reg [1:0] group_idx;  // 输入分组索引 (0-3)

  reg [6:0] out_channel_dly[0:20];  // 输出通道索引延迟链，20级
  reg [1:0] group_idx_dly[0:20];  // 分组索引延迟链，20级

  reg [31:0] accumulator;  // 最终累加结果
  wire [31:0] final_sum;  // 加法树输出的单次计算和

  reg [31:0] channel_accum[0:127];  // 每个输出通道的累加结果

  reg running;  // 模块运行状态标志
  reg finish_r;  // 完成标志寄存器

  integer h, i;  // 循环变量


  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      group_idx <= 0;
    end else begin
      //更新group_idx
      // 需要补充: 当running时，每个时钟周期增加group_idx
      // 如果group_idx达到GROUPS-1，则重置为0
    end
  end

  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      out_channel <= 0;
    end
    begin
      //更新out_channel
      // 需要补充: 当group_idx循环一轮后，out_channel应该+1
      // 当out_channel达到OUTPUT_DIM-1时需要重置
    end
  end

  // 运行状态控制逻辑
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      running <= 0;
    end else begin
      if (start_i && !running) begin
        running <= 1;  // 接收到开始信号且当前未运行，则开始运行
      end else if ((group_idx == GROUPS - 1) && (out_channel == OUTPUT_DIM - 1) && running) begin
        running <= 0;  // 当处理完最后一个输出通道的最后一组数据时，停止运行
      end
    end
  end

  // 完成标志控制逻辑
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      finish_r <= 0;
    end else begin
      if (out_channel == OUTPUT_DIM - 1) begin
        finish_r <= 1;  // 当处理完最后一个输出通道时，设置完成标志
      end else begin
        finish_r <= finish_r;  // 保持当前状态
      end
    end
  end


  // 延迟链 - 传递控制信号
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i <= 20; i = i + 1) begin
        out_channel_dly[i] <= 0;
        group_idx_dly[i]   <= 0;
      end
    end else begin
      //根据流水线级数传递两个循环参数
      // 需要补充: 实现移位寄存器，将当前的out_channel和group_idx向后传递
      // out_channel_dly[0] <= out_channel;
      // group_idx_dly[0] <= group_idx;
      // 然后依次传递到延迟链的后续级
    end
  end

  // 流水线阶段1: 地址生成 
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      input_data_addr_o <= 0;
      weight_addr_o     <= 0;
      bias_addr_o       <= 0;
    end else if (running) begin
      //计算输入数据、权重和偏置的地址
      // 需要补充:
      // 1. input_data_addr_o应该等于group_idx
      // 2. weight_addr_o应该基于out_channel和group_idx计算
      // 3. bias_addr_o应该等于out_channel
    end
  end

  // 流水线阶段2-4: RAM读取延迟 
  reg [1023:0] input_data_reg [ 0:2];  // 输入数据延迟寄存器组
  reg [1023:0] weight_data_reg[ 0:2];  // 权重数据延迟寄存器组
  reg [   7:0] bias_reg       [0:12];  // 偏置数据延迟寄存器组，延迟较长

  always @(posedge clk_i) begin
    //输入样本、权重和偏置的输入延迟处理
    // 需要补充: 实现数据流通过延迟寄存器
    // 输入数据: input_data_reg[0] <= input_data_i;
    // 权重数据: weight_data_reg[0] <= weight_i;
    // 偏置数据: bias_reg[0] <= bias_i;
    // 然后依次传递到后续级
  end

  // 乘法器输入连接
  assign mul_data1_o = input_data_reg[2];  // 延迟3个周期后的输入数据
  assign mul_data2_o = weight_data_reg[2];  // 延迟3个周期后的权重数据

  // 流水线阶段5-7: 乘法器延迟 
  reg [2047:0] mul_result_reg[0:2];  // 乘法结果延迟寄存器组

  always @(posedge clk_i) begin
    mul_result_reg[0] <= mul_result_i;  // 存储乘法器的输出
    mul_result_reg[1] <= mul_result_reg[0];  // 延迟1周期
    mul_result_reg[2] <= mul_result_reg[1];  // 延迟2周期
  end

  // 流水线阶段8-10: 加法树 
  parameter DATA_WIDTH = 16;  // 乘法结果位宽
  parameter NUM_INPUTS = 128;  // 需要累加的输入数量

  adder_tree #(
    .DATA_WIDTH(DATA_WIDTH),
    .NUM_INPUTS(NUM_INPUTS)
  ) adder (
    .clk    (clk_i),
    .rst_n  (rst_n_i),
    .data   (mul_result_reg[2]),  // 延迟后的乘法结果
    .sum_out(final_sum)           // 累加后的结果
  );

  // 流水线阶段11: 通道累加 (15级延迟) 
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      for (i = 0; i < 128; i = i + 1) begin
        channel_accum[i] <= 0;
      end
    end else begin
      // 需要补充: 基于group_idx_dly[10]的值决定是否累加
      // 如果是组的第一次计算，直接赋值: channel_accum[out_channel_dly[10]] <= final_sum;
      // 否则累加: channel_accum[out_channel_dly[10]] <= channel_accum[out_channel_dly[10]] + final_sum;
    end
  end

  // 流水线阶段12: 添加偏置 (16级延迟)
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      accumulator <= 0;
    end else begin
      // 需要补充:
      // accumulator <= channel_accum[out_channel_dly[15]] + {{24{bias_reg[?][7]}}, bias_reg[?]};
      // 将合适延迟的偏置值符号扩展后加到累加结果上
    end
  end

  // 流水线阶段13: ReLU激活 
  reg [31:0] relu_result;

  always @(posedge clk_i) begin
    if (accumulator[31]) begin
      relu_result <= 0;  // 如果结果为负，ReLU输出为0
    end else begin
      relu_result <= accumulator;  // 如果结果为正，保持原值
    end
  end

  // 输出控制逻辑
  always @(posedge clk_i or negedge rst_n_i) begin
    if (!rst_n_i) begin
      fc_output_wren_o <= 0;
      fc_output_data_o <= 0;
      fc_output_addr_o <= 0;
    end else begin
      //定义fc_output_wren_o，fc_output_data_o，fc_output_addr_o
      // 需要补充:
      // 1. 何时启用写使能(可能是当group_idx_dly[17]为最后一组时)
      // 2. 输出数据应该等于relu_result
      // 3. 输出地址应该等于out_channel_dly[17]或类似延迟值
    end
  end


  //请自行定义done_o信号
  // 需要补充: 完成信号的生成逻辑
  // 可能是基于finish_r和某些延迟条件的组合

endmodule


// 需要补齐的部分
// 循环控制逻辑:

// group_idx的更新逻辑
// out_channel的更新逻辑
// 延迟链传递逻辑:

// 将out_channel和group_idx正确地向延迟链传递
// 地址生成逻辑:

// 输入数据地址计算
// 权重地址计算（需要考虑out_channel和group_idx）
// 偏置地址计算
// 数据延迟处理:

// 输入数据、权重和偏置的延迟寄存器传递
// 通道累加逻辑:

// 基于group_idx_dly值决定是第一次累加还是累积累加
// 偏置添加逻辑:

// 选择正确延迟的偏置值并添加到累加结果中
// 输出控制逻辑:

// 输出写使能、数据和地址的生成逻辑
// 完成信号生成:

// done_o信号的完整定义和逻辑
// 需要注意的地方
// 延迟链的正确匹配:

// 要确保每个流水线阶段使用正确延迟的控制信号
// 需要精确计算每个信号需要延迟的周期数
// 初始化和重置:

// 确保所有寄存器在复位时正确初始化
// 流水线时序:

// 各个流水线阶段的时序匹配，确保数据流正确传递
// 地址计算:

// 权重地址计算可能比较复杂，要确保按正确的顺序访问权重内存
// 输出控制:

// 只在处理完一个输出通道的所有分组后才生成有效输出
// 数据位宽:

// 注意数据的位宽变化，特别是乘法结果和累加结果的位宽
