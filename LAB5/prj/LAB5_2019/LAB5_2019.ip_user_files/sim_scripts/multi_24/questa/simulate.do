onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib multi_24_opt

do {wave.do}

view wave
view structure
view signals

do {multi_24.udo}

run -all

quit -force
