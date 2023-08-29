/**
  *  单片机STM32F407与FPGA通过FSMC总线进行通信的示例
  */
#include "sys.h"
#include "delay.h"
#include "fpga_fsmc.h"

/*
 * 定义写入地址和写入数据
 */
#define FSMC_WRITE_ADDR    0xAA
#define FSMC_WRITE_DATA    0xAA55

int main(void)
{ 

	u16 reg_from_fpga = 0x0;

	/* Initializes the FSMC bus */
	FSMC_FPGA_Init();

	/* Write data though FSMC */	
	wr_to_fpga_reg_rec(FSMC_WRITE_ADDR, FSMC_WRITE_DATA);
	
	/* Read data though FSMC */
	reg_from_fpga = rd_from_fpga_reg_rec(FSMC_WRITE_ADDR);

	while(1);


}




