from pynq import Overlay
from pynq import allocate
import time
import numpy as np

ol = Overlay("design_1.bit")
print("Bitstream loaded successfully")

for ip in ol.ip_dict:
    print(f"Found IP: {ip}")

dma = ol.axi_dma_0
dma_send = dma.sendchannel
dma_recv = dma.recvchannel

input_data_len = 1
output_data_len = 1 
input_buffer = allocate(shape=(input_data_len,), dtype=np.uint64)
output_buffer = allocate(shape=(output_data_len,), dtype=np.uint64)

print("Waiting for switch up event from PL...")
while True:
    output_buffer[:] = 0
    dma_recv.transfer(output_buffer)
    dma_recv.wait()
    
    recv_val = output_buffer[0]
    print(f"Received: 0x{recv_val:016x}")

    if (int(recv_val) >> 63) & 0x1:  
        print("Detected switch rising edge, sending LED pattern...")
        
        led_pattern = 0x0A
        input_buffer[0] = led_pattern

        dma_send.transfer(input_buffer)
        dma_send.wait()

        print(f"Sent LED pattern: 0x{led_pattern:016x}")
        
        break

print("Done.")