onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+weight_ram_rd3 -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.weight_ram_rd3 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {weight_ram_rd3.udo}

run -all

endsim

quit -force
