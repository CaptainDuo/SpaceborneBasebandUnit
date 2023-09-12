vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../../../ASYNC_EMIF_SLAVE_0/src/async_emif_slave_driver.v" \
"../../../../../../ASYNC_EMIF_SLAVE_0/src/x_ibuf.v" \
"../../../../../../ASYNC_EMIF_SLAVE_0/src/x_iobuf.v" \
"../../../../../../ASYNC_EMIF_SLAVE_0/src/async_emif_slave.v" \
"../../../../../../ASYNC_EMIF_SLAVE_0/sim/ASYNC_EMIF_SLAVE_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

