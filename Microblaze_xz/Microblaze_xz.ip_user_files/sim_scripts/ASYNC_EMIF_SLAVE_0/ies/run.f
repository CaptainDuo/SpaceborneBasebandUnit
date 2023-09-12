-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../../../ASYNC_EMIF_SLAVE_0/src/async_emif_slave_driver.v" \
  "../../../../../../ASYNC_EMIF_SLAVE_0/src/x_ibuf.v" \
  "../../../../../../ASYNC_EMIF_SLAVE_0/src/x_iobuf.v" \
  "../../../../../../ASYNC_EMIF_SLAVE_0/src/async_emif_slave.v" \
  "../../../../../../ASYNC_EMIF_SLAVE_0/sim/ASYNC_EMIF_SLAVE_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

