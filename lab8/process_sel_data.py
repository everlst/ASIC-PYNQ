"""
将sel_data.coe文件从第3行开始，每128行合并成一行
取消中间的逗号，在合并行最后添加一个逗号
"""


def process_coe_file(input_file, output_file):
    with open(input_file, "r", encoding="utf-8") as f:
        lines = f.readlines()

    # 保留前两行（header）
    header = lines[:2]

    # 从第3行开始处理数据（索引为2）
    data_lines = lines[2:]

    # 存储处理后的数据
    processed_data = []

    # 每128行合并成一行
    for i in range(0, len(data_lines), 128):
        # 取128行数据
        chunk = data_lines[i : i + 128]

        # 去除每行的逗号和换行符，只保留二进制数据
        binary_values = [line.strip().rstrip(",") for line in chunk if line.strip()]

        # 合并成一行，并在末尾添加逗号
        merged_line = "".join(binary_values) + ",\n"
        processed_data.append(merged_line)

    # 写入输出文件
    with open(output_file, "w", encoding="utf-8") as f:
        # 写入header
        f.writelines(header)
        # 写入处理后的数据
        f.writelines(processed_data)

    print(f"处理完成！")
    print(f"输入文件: {input_file}")
    print(f"输出文件: {output_file}")
    print(f"原始数据行数: {len(data_lines)}")
    print(f"合并后数据行数: {len(processed_data)}")


if __name__ == "__main__":
    input_file = r"y:\Code\github\ASIC-PYNQ\LAB6\input_data\sel_data.coe"
    output_file = r"y:\Code\github\ASIC-PYNQ\LAB6\input_data\sel_data_processed.coe"

    process_coe_file(input_file, output_file)
