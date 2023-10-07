#include "sys.h"

void wr_fpga_reg(u32 addr, u16 data);
u16 rd_fpga_reg(u32 addr);
void wr_fpga_bram(u32 addr, u16 data);
u16 rd_fpga_bram(u32 addr);
void wr_fpga_reg_rec(u32 addr, u16 data);
u16 rd_fpga_reg_rec(u32 addr);

