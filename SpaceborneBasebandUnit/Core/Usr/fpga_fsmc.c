#include "fpga_fsmc.h"

void wr_fpga_reg(u32 addr, u16 data)
{
	*((volatile unsigned short int *)(0x60000000 + (addr << 1))) = data;
	__ASM("NOP");
}

u16 rd_fpga_reg(u32 addr)
{
	u16 data;
	data = *((volatile unsigned short int *)(0x60000000 + (addr << 1)));
	return data;
}

void wr_fpga_bram(u32 addr, u16 data)
{
	*((volatile unsigned short int *)(0x60020000 + (addr << 1))) = data;
	__ASM("NOP");
}

u16 rd_fpga_bram(u32 addr)
{
	u16 data;
	data = *((volatile unsigned short int *)(0x60020000 + (addr << 1)));
	return data;
}

void wr_fpga_reg_rec(u32 addr, u16 data)
{
	wr_fpga_reg((addr << 16), data);
}

u16 rd_fpga_reg_rec(u32 addr)
{
	u16 data;
	data = rd_fpga_reg(addr << 16);
	return data;
}

