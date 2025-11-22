onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib bias_ram_rd3_opt

do {wave.do}

view wave
view structure
view signals

do {bias_ram_rd3.udo}

run -all

quit -force
