onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ASYNC_EMIF_SLAVE_0_opt

do {wave.do}

view wave
view structure
view signals

do {ASYNC_EMIF_SLAVE_0.udo}

run -all

quit -force
