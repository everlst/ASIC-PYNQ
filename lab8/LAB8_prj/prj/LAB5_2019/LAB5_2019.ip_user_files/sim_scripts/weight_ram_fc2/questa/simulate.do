onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib weight_ram_fc2_opt

do {wave.do}

view wave
view structure
view signals

do {weight_ram_fc2.udo}

run -all

quit -force
