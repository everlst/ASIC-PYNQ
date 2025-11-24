onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+bias_ram_fc2 -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.bias_ram_fc2 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {bias_ram_fc2.udo}

run -all

endsim

quit -force
