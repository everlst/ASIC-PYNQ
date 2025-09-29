onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib input_ram_rd3_opt

do {wave.do}

view wave
view structure
view signals

do {input_ram_rd3.udo}

run -all

quit -force
