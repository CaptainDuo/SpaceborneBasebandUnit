#ifndef __FPGA_FSMC_H
#define __FPGA_FSMC_H															    
#include "sys.h"  
											  
void FSMC_FPGA_Init(void);
void wr_to_fpga_reg(u32 addr,u16 data);
u16 rd_from_fpga_reg(u32 addr);
void wr_to_fpga_bram(u32 addr,u16 data);
u16 rd_from_fpga_bram(u32 addr);
void wr_to_fpga_reg_rec(u32 addr,u16 data);
u16 rd_from_fpga_reg_rec(u32 addr);

#endif



