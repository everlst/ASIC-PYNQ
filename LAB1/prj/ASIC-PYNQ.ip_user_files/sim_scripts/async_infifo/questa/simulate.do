onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib async_infifo_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {async_infifo.udo}

run -all

quit -force
