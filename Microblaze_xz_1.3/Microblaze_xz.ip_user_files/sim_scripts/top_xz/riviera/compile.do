vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v10_0_7
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_14
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_17
vlib riviera/fifo_generator_v13_2_2
vlib riviera/axi_data_fifo_v2_1_16
vlib riviera/axi_crossbar_v2_1_18
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_15
vlib riviera/blk_mem_gen_v8_4_1
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_19

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v10_0_7 riviera/microblaze_v10_0_7
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_14 riviera/mdm_v3_2_14
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_17 riviera/axi_register_slice_v2_1_17
vmap fifo_generator_v13_2_2 riviera/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_16 riviera/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 riviera/axi_crossbar_v2_1_18
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 riviera/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_1 riviera/blk_mem_gen_v8_4_1
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 riviera/axi_gpio_v2_0_19

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_7 -93 \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/b649/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/top_xz/ip/top_xz_microblaze_0_0/sim/top_xz_microblaze_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" \
"../../../bd/top_xz/ipshared/f680/hdl/AXI4_ADI_SPI_15_8BIT_v1_0_S00_AXI.v" \
"../../../bd/top_xz/ipshared/f680/src/adi_spi_driver_15_8bit.v" \
"../../../bd/top_xz/ipshared/f680/hdl/AXI4_ADI_SPI_15_8BIT_v1_0.v" \
"../../../bd/top_xz/ip/top_xz_AXI4_ADI_SPI_15_8BIT_0_0/sim/top_xz_AXI4_ADI_SPI_15_8BIT_0_0.v" \
"../../../bd/top_xz/ip/top_xz_AXI4_ADI_SPI_15_8BIT_0_1/sim/top_xz_AXI4_ADI_SPI_15_8BIT_0_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_14 -93 \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/5125/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/top_xz/ip/top_xz_mdm_1_0/sim/top_xz_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/top_xz/ip/top_xz_rst_clk_wiz_1_100M_0/sim/top_xz_rst_clk_wiz_1_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18  -v2k5 "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" \
"../../../bd/top_xz/ip/top_xz_xbar_0/sim/top_xz_xbar_0.v" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/top_xz/ip/top_xz_dlmb_v10_0/sim/top_xz_dlmb_v10_0.vhd" \
"../../../bd/top_xz/ip/top_xz_ilmb_v10_0/sim/top_xz_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -93 \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/top_xz/ip/top_xz_dlmb_bram_if_cntlr_0/sim/top_xz_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/top_xz/ip/top_xz_ilmb_bram_if_cntlr_0/sim/top_xz_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" "+incdir+../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl" \
"../../../bd/top_xz/ip/top_xz_lmb_bram_0/sim/top_xz_lmb_bram_0.v" \
"../../../bd/top_xz/sim/top_xz.v" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -93 \
"../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/top_xz/ip/top_xz_axi_gpio_0_0/sim/top_xz_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

