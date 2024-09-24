onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib design_ann_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {design_ann.udo}

run -all

quit -force
