-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/microblaze_v10_0_7 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/b649/hdl/microblaze_v10_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top_xz/ip/top_xz_microblaze_0_0/sim/top_xz_microblaze_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top_xz/ipshared/f680/hdl/AXI4_ADI_SPI_15_8BIT_v1_0_S00_AXI.v" \
  "../../../bd/top_xz/ipshared/f680/src/adi_spi_driver_15_8bit.v" \
  "../../../bd/top_xz/ipshared/f680/hdl/AXI4_ADI_SPI_15_8BIT_v1_0.v" \
  "../../../bd/top_xz/ip/top_xz_AXI4_ADI_SPI_15_8BIT_0_0/sim/top_xz_AXI4_ADI_SPI_15_8BIT_0_0.v" \
  "../../../bd/top_xz/ip/top_xz_AXI4_ADI_SPI_15_8BIT_0_1/sim/top_xz_AXI4_ADI_SPI_15_8BIT_0_1.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mdm_v3_2_14 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/5125/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top_xz/ip/top_xz_mdm_1_0/sim/top_xz_mdm_1_0.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_12 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top_xz/ip/top_xz_rst_clk_wiz_1_100M_0/sim/top_xz_rst_clk_wiz_1_100M_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_17 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_16 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_18 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top_xz/ip/top_xz_xbar_0/sim/top_xz_xbar_0.v" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_9 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top_xz/ip/top_xz_dlmb_v10_0/sim/top_xz_dlmb_v10_0.vhd" \
  "../../../bd/top_xz/ip/top_xz_ilmb_v10_0/sim/top_xz_ilmb_v10_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top_xz/ip/top_xz_dlmb_bram_if_cntlr_0/sim/top_xz_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/top_xz/ip/top_xz_ilmb_bram_if_cntlr_0/sim/top_xz_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_1 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top_xz/ip/top_xz_lmb_bram_0/sim/top_xz_lmb_bram_0.v" \
  "../../../bd/top_xz/sim/top_xz.v" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_19 \
  "../../../../Microblaze_xz.srcs/sources_1/bd/top_xz/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top_xz/ip/top_xz_axi_gpio_0_0/sim/top_xz_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

