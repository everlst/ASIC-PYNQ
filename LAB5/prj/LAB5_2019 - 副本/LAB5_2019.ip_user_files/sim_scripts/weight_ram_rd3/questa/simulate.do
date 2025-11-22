onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib weight_ram_rd3_opt

do {wave.do}

view wave
view structure
view signals

do {weight_ram_rd3.udo}

run -all

quit -force
