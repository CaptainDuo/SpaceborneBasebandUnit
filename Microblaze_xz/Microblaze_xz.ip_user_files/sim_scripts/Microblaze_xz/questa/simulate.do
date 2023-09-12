onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Microblaze_xz_opt

do {wave.do}

view wave
view structure
view signals

do {Microblaze_xz.udo}

run -all

quit -force
