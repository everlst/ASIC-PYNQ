from pynq import Overlay, allocate
import numpy as np
import re
import time

# -------------------------------
# 0. 载入 bitstream
# -------------------------------
ol = Overlay("design_1.bit")
print("Bitstream loaded successfully")

dma = ol.axi_dma_0
dma_send = dma.sendchannel  # MM2S
dma_recv = dma.recvchannel  # S2MM

# -------------------------------
# 1. 参数
# -------------------------------
TXT_PATH = "sel_data_processed.txt"  # 与本代码在同一目录
LABELS_PATH = "sel_labels.txt"  # 标签文件路径
NUM_GROUPS = 42
LINES_PER_GROUP = 4
BITS_PER_LINE = 1024

BYTES_PER_LINE = BITS_PER_LINE // 8  # 128B
BYTES_PER_GROUP = BYTES_PER_LINE * 4  # 512B
BEATS_PER_GROUP = BYTES_PER_GROUP // 8  # 64个uint64

OUT_BEATS_PER_GROUP = 1  # 每组返回1个uint64
PRINT_RAW = True  # 是否打印raw 64位输出

# 如果你发现“结果不对/顺序反了”，把 LSB_FIRST_BEATS 改成 False 再试
LSB_FIRST_BEATS = True

# -------------------------------
# 2. 读 txt 并清洗每行（只保留0/1）
# -------------------------------
with open(TXT_PATH, "r") as f:
    raw_lines = f.read().splitlines()

clean_lines = [re.sub(r"[^01]", "", ln) for ln in raw_lines if ln.strip() != ""]

assert (
    len(clean_lines) == NUM_GROUPS * LINES_PER_GROUP
), f"行数不对：读到 {len(clean_lines)} 行，应该是 {NUM_GROUPS*LINES_PER_GROUP}"

for i, ln in enumerate(clean_lines):
    assert len(ln) == BITS_PER_LINE, f"第{i}行长度={len(ln)}，不是1024"

print(f"Loaded txt OK: {len(clean_lines)} lines, {NUM_GROUPS} groups.")

# -------------------------------
# 2.5. 读取标签文件
# -------------------------------
with open(LABELS_PATH, "r") as f:
    label_lines = f.read().splitlines()

# 清洗标签，去除逗号和空格
labels = []
for ln in label_lines:
    ln_clean = ln.strip().replace(",", "")
    if ln_clean != "":
        labels.append(int(ln_clean))

assert (
    len(labels) == NUM_GROUPS
), f"标签数量不对：读到 {len(labels)} 个标签，应该是 {NUM_GROUPS}"
print(f"Loaded labels OK: {len(labels)} labels.")


# -------------------------------
# 3. 工具函数：1024bit字符串 -> 16个uint64 beat
# -------------------------------
def line_bits_to_u64beats(bitstr, lsb_first=True):
    """
    bitstr: 1024位 '0/1' 字符串，默认认为左边是MSB
    lsb_first=True 表示 DMA beat0 对应该1024位的最低64位
    """
    val = int(bitstr, 2)
    b_big = val.to_bytes(BYTES_PER_LINE, "big")  # MSB->LSB

    if lsb_first:
        # 反转字节，让最先送出的 beat 对应最低位
        b_use = b_big[::-1]
    else:
        b_use = b_big

    beats = np.frombuffer(b_use, dtype=np.uint64)
    return beats  # shape=(16,)


# -------------------------------
# 4. 预先把 42 组输入打成 (42,64) 的 uint64
# -------------------------------
all_groups_u64 = np.zeros((NUM_GROUPS, BEATS_PER_GROUP), dtype=np.uint64)

for g in range(NUM_GROUPS):
    base = g * LINES_PER_GROUP
    beats_list = []
    for k in range(LINES_PER_GROUP):
        beats16 = line_bits_to_u64beats(
            clean_lines[base + k], lsb_first=LSB_FIRST_BEATS
        )
        beats_list.append(beats16)
    all_groups_u64[g, :] = np.concatenate(beats_list)

print("All groups packed into uint64 beats.")


# -------------------------------
# 5. 输出解析：取低2字节为两个有符号int8
# -------------------------------
def parse_two_int8(u64_val):
    b0 = int(u64_val & 0xFF)
    b1 = int((u64_val >> 8) & 0xFF)

    if b0 >= 128:
        b0 -= 256
    if b1 >= 128:
        b1 -= 256
    return b0, b1


# -------------------------------
# 6. 分配 DMA buffer
# -------------------------------
input_buffer = allocate(shape=(BEATS_PER_GROUP,), dtype=np.uint64)
output_buffer = allocate(shape=(OUT_BEATS_PER_GROUP,), dtype=np.uint64)

# -------------------------------
# 7. 主循环：42组依次下发并打印
# -------------------------------
print("Start FC inference for 42 groups...")

# 用于统计正确率
predictions = []
correct_count = 0

# 用于统计计算时间
computation_times = []

for g in range(NUM_GROUPS):
    input_buffer[:] = all_groups_u64[g, :]
    output_buffer[:] = 0

    # 先挂 recv 再 send，避免回包太快丢
    dma_recv.transfer(output_buffer)

    # 开始计时：数据下发开始
    start_time = time.time()
    dma_send.transfer(input_buffer)

    dma_send.wait()
    dma_recv.wait()

    # 结束计时：收到数据
    end_time = time.time()
    elapsed_time = (end_time - start_time) * 1000  # 转换为毫秒
    computation_times.append(elapsed_time)

    out_word = int(output_buffer[0])
    y0, y1 = parse_two_int8(out_word)

    # 根据 y0 和 y1 的大小进行预测：y0 > y1 -> 预测为 0，否则为 1
    prediction = 0 if y0 > y1 else 1
    predictions.append(prediction)

    # 判断预测是否正确
    is_correct = prediction == labels[g]
    if is_correct:
        correct_count += 1

    correct_mark = "✓" if is_correct else "✗"

    if PRINT_RAW:
        print(
            f"[Group {g:02d}] raw=0x{out_word:016x} -> out0={y0}, out1={y1} | 预测={prediction}, 标签={labels[g]} {correct_mark} | 用时={elapsed_time:.3f}ms"
        )
    else:
        print(
            f"[Group {g:02d}] out0={y0}, out1={y1} | 预测={prediction}, 标签={labels[g]} {correct_mark} | 用时={elapsed_time:.3f}ms"
        )

print("All groups done.")

# -------------------------------
# 8. 统计并输出正确率
# -------------------------------
accuracy = correct_count / NUM_GROUPS * 100

# 计算时间统计
avg_time = np.mean(computation_times)
min_time = np.min(computation_times)
max_time = np.max(computation_times)
total_time = np.sum(computation_times)

print("\n" + "=" * 60)
print(f"分类结果统计:")
print(f"  总样本数: {NUM_GROUPS}")
print(f"  正确数量: {correct_count}")
print(f"  错误数量: {NUM_GROUPS - correct_count}")
print(f"  正确率: {accuracy:.2f}% ({correct_count}/{NUM_GROUPS})")
print("-" * 60)
print(f"PL端计算时间统计:")
print(f"  总计算时间: {total_time:.3f} ms")
print(f"  平均每组用时: {avg_time:.3f} ms")
print(f"  最短用时: {min_time:.3f} ms")
print(f"  最长用时: {max_time:.3f} ms")
print("=" * 60)
