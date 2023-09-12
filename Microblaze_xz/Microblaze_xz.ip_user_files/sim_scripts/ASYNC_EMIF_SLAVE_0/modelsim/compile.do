vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../../../../ASYNC_EMIF_SLAVE_0/src/async_emif_slave_driver.v" \
"../../../../../../ASYNC_EMIF_SLAVE_0/src/x_ibuf.v" \
"../../../../../../ASYNC_EMIF_SLAVE_0/src/x_iobuf.v" \
"../../../../../../ASYNC_EMIF_SLAVE_0/src/async_emif_slave.v" \
"../../../../../../ASYNC_EMIF_SLAVE_0/sim/ASYNC_EMIF_SLAVE_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

