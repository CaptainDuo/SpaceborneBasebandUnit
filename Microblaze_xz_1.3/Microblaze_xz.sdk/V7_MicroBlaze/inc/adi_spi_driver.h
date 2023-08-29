/*
 * adi_spi_driver.h
 *
 *  Created on: 2022年6月9日
 *      Author: zhangduo
 */

/***************************** Include Files ********************************/
#include "xil_io.h"


#ifndef INCLUDE_ADI_SPI_15_8BIT_H_
#define INCLUDE_ADI_SPI_15_8BIT_H_


/************************** Constant Definitions *****************************/
#define ADI_SPI_WriteAddrReg	0x0000		//ADI_SPI写地址寄存器，地址长度为15bit
#define ADI_SPI_WriteDataReg	0x0004		//ADI_SPI写数据寄存器，数据长度8bit
#define ADI_SPI_WriteCmdReg		0x0008		//ADI_SPI写命令寄存器，分两次先后写入0xCCCCCCCC和0x0000
#define ADI_SPI_ReadAddrReg		0x000C		//ADI_SPI读地址寄存器，地址长度为15bit
#define ADI_SPI_ReadDataReg		0x0014		//ADI_SPI读数据寄存器（只读），数据长度为8bit
#define ADI_SPI_ReadCmdReg		0x0010		//ADI_SPI读命令寄存器，分两次先后写入0xDDDDDDDD和0x0000
#define ADI_SPI_StatusReg		0x0018		//ADI_SPI总线状态寄存器（只读）

/***************** Macros (Inline Functions) Definitions *********************/
	/*ADI SPI 获取总线状态*/
#define ADI_Spi_Status(BaseAddress) \
	Xil_In32((BaseAddress) + (ADI_SPI_StatusReg))

	/*ADI SPI 与写数据有关的寄存器操作函数*/
#define ADI_Spi_WriteAddr(BaseAddress,Addr) \
	Xil_Out32(((BaseAddress) + (ADI_SPI_WriteAddrReg)),(u32)Addr)
#define ADI_Spi_WriteData(BaseAddress, Data) \
	Xil_Out32(((BaseAddress) + (ADI_SPI_WriteDataReg)),(u32)Data)
#define ADI_Spi_WriteCmd_CCCC(BaseAddress) \
	Xil_Out32(((BaseAddress) + (ADI_SPI_WriteCmdReg)),(u32)0xCCCCCCCC)
#define ADI_Spi_WriteCmd_0000(BaseAddress) \
	Xil_Out32(((BaseAddress) + (ADI_SPI_WriteCmdReg)),(u32)0x00000000)

	/*ADI SPI 与读数据有关的寄存器操作函数*/
#define ADI_Spi_ReadAddr(BaseAddress,Addr) \
	Xil_Out32(((BaseAddress) + (ADI_SPI_ReadAddrReg)),(u32)Addr)
#define ADI_Spi_ReadData(BaseAddress) \
	Xil_In32((BaseAddress) + (ADI_SPI_ReadDataReg))
#define ADI_Spi_ReadCmd_DDDD(BaseAddress) \
	Xil_Out32(((BaseAddress) + (ADI_SPI_ReadCmdReg)),(u32)0xDDDDDDDD)
#define ADI_Spi_ReadCmd_0000(BaseAddress) \
	Xil_Out32(((BaseAddress) + (ADI_SPI_ReadCmdReg)),(u32)0x00000000)

/************************** Function Prototypes ****************************/
int app_adi_spi_send(uint32_t BaseAddr, uint16_t WriteAddr, uint8_t WriteData);
int app_adi_spi_read(uint32_t       BaseAddr, uint16_t ReadAddr, uint32_t *ReadData);




#endif /* INCLUDE_ADI_SPI_15_8BIT_H_ */
