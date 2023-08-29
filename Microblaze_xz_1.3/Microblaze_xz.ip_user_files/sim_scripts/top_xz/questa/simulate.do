onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib top_xz_opt

do {wave.do}

view wave
view structure
view signals

do {top_xz.udo}

run -all

quit -force
