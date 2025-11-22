import numpy as np
import struct
import sys

class TeeOutput:
    def __init__(self, filename):
        self.console = sys.stdout
        self.file = open(filename, 'w', encoding='utf-8')
    
    def write(self, message):
        self.console.write(message)
        self.file.write(message)
    
    def flush(self):
        self.console.flush()
        self.file.flush()
    
    def close(self):
        self.file.close()

def read_coe_file(filename, data_type='int8'):
    data = []
    with open(filename, 'r') as f:
        for line in f:
            line = line.strip()
            if line and not line.startswith(';') and not line.startswith('memory'):
                if line.endswith(','):
                    line = line[:-1]
                value = int(line, 2)
                if data_type == 'int8':
                    if value > 127:  
                        value = value - 256
                data.append(value)
    return np.array(data, dtype=np.int32)  

def read_labels(filename):
    labels = []
    with open(filename, 'r') as f:
        for line in f:
            line = line.strip().rstrip(',')
            if line:
                labels.append(int(line))
    return np.array(labels)

def relu(x):
    return np.maximum(0, x)

def truncate_to_signed_bits(x, bits):
    if bits == 4:
        return np.clip(x, -8, 7).astype(np.int32)
    elif bits == 8:
        return np.clip(x, -128, 127).astype(np.int32)
    elif bits == 16:
        return np.clip(x, -32768, 32767).astype(np.int32)
    else:
        return x  

def shift_truncate_signed(x, shift_bits, target_bits):
    x_shifted = x >> shift_bits
    return truncate_to_signed_bits(x_shifted, target_bits)

def forward_pass(sample, weights, biases, target_bits, shift_bits_list):
    x = sample.reshape(1, -1)
    w1 = weights[0].reshape(128, 512)
    b1 = biases[0].reshape(128)
    
    layer1_out = np.dot(x, w1.T) + b1
    layer1_act = relu(layer1_out)
    
    layer1_trunc = shift_truncate_signed(layer1_act, shift_bits_list[0], target_bits)
    
    w2 = weights[1].reshape(32, 128)
    b2 = biases[1].reshape(32)
    
    layer2_out = np.dot(layer1_trunc, w2.T) + b2
    layer2_act = relu(layer2_out)

    layer2_trunc = shift_truncate_signed(layer2_act, shift_bits_list[1], target_bits)
    
    w3 = weights[2].reshape(2, 32)
    b3 = biases[2].reshape(2)
    
    layer3_out = np.dot(layer2_trunc, w3.T) + b3
    
    layer3_trunc = shift_truncate_signed(layer3_out, shift_bits_list[2], target_bits)
    
    return layer3_trunc[0]  

def main():
    tee = TeeOutput('FCNET_output.txt')
    sys.stdout = tee
    
    try:
        print("正在读取参数文件...")
        
        w1 = read_coe_file('fc1.0.weight.coe')
        b1 = read_coe_file('fc1.0.bias.coe')
        
        w2 = read_coe_file('fc2.0.weight.coe')
        b2 = read_coe_file('fc2.0.bias.coe')
        
        w3 = read_coe_file('fc3.0.weight.coe')
        b3 = read_coe_file('fc3.0.bias.coe')
        
        print(f"第一层权重形状: {w1.shape}, 期望: {128*512}")
        print(f"第一层偏置形状: {b1.shape}, 期望: {128}")
        print(f"第二层权重形状: {w2.shape}, 期望: {32*128}")
        print(f"第二层偏置形状: {b2.shape}, 期望: {32}")
        print(f"第三层权重形状: {w3.shape}, 期望: {2*32}")
        print(f"第三层偏置形状: {b3.shape}, 期望: {2}")
        
        weights = [w1, w2, w3]
        biases = [b1, b2, b3]
        
        print("正在读取样本文件...")
        all_samples_data = read_coe_file('sel_data.coe')
        
        samples = all_samples_data.reshape(42, 512)
        print(f"样本数据形状: {samples.shape}")
        
        print("正在读取标签文件...")
        labels = read_labels('sel_labels.txt')
        print(f"标签数量: {len(labels)}")
        
        truncation_modes = [
            # 格式: (模式名称, 目标位宽, [第一层移位, 第二层移位, 第三层移位])
            ('全局4位有符号移位', 4, [14, 9, 8]),
            ('全局8位有符号移位', 8, [10, 9, 8]),
            ('全局16位有符号移位', 16, [2, 9, 8])
        ]
        
        results = {}
        
        print("\n开始前向传播计算...")
        for mode_name, target_bits, shift_bits in truncation_modes:
            print(f"\n=== {mode_name} ===")
            print(f"移位位数: 第一层={shift_bits[0]}, 第二层={shift_bits[1]}, 第三层={shift_bits[2]}")
            
            mode_results = []
            correct_predictions = 0
            
            for i, sample in enumerate(samples):
                output = forward_pass(sample, weights, biases, target_bits, shift_bits)
                
                if output[0] > output[1]:
                    prediction = 0  
                else:
                    prediction = 1 
                
                is_correct = (prediction == labels[i])
                if is_correct:
                    correct_predictions += 1
                
                mode_results.append({
                    'sample_id': i,
                    'output': output.copy(),
                    'prediction': prediction,
                    'label': labels[i],
                    'correct': is_correct
                })
                
                status = "✓" if is_correct else "✗"
                print(f"样本 {i:2d}: 输出=({output[0]:8.2f}, {output[1]:8.2f}), 预测={prediction}, 标签={labels[i]} {status}")
            
            accuracy = correct_predictions / len(samples) * 100
            results[mode_name] = {
                'results': mode_results,
                'accuracy': accuracy,
                'correct_count': correct_predictions
            }
            
            print(f"准确率: {correct_predictions}/{len(samples)} = {accuracy:.2f}%")
        
        print("\n" + "="*50)
        print("结果对比总结:")
        print("="*50)
        
        print("\n准确率汇总:")
        for mode_name, target_bits, shift_bits in truncation_modes:
            result = results[mode_name]
            print(f"{mode_name:25}: {result['correct_count']:2d}/{len(samples)} = {result['accuracy']:.2f}%")
        
        
        return results
        
    finally:
        sys.stdout = tee.console
        tee.close()

if __name__ == "__main__":
    results = main()