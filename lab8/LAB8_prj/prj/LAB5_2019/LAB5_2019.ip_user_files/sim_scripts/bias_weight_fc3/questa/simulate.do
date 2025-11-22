onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib bias_weight_fc3_opt

do {wave.do}

view wave
view structure
view signals

do {bias_weight_fc3.udo}

run -all

quit -force
