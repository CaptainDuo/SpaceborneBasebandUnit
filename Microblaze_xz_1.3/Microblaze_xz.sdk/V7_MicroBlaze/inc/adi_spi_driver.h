/*
 * adi_spi_driver.h
 *
 *  Created on: 2022��6��9��
 *      Author: zhangduo
 */

/***************************** Include Files ********************************/
#include "xil_io.h"


#ifndef INCLUDE_ADI_SPI_15_8BIT_H_
#define INCLUDE_ADI_SPI_15_8BIT_H_


/************************** Constant Definitions *****************************/
#define ADI_SPI_WriteAddrReg	0x0000		//ADI_SPIд��ַ�Ĵ�������ַ����Ϊ15bit
#define ADI_SPI_WriteDataReg	0x0004		//ADI_SPIд���ݼĴ��������ݳ���8bit
#define ADI_SPI_WriteCmdReg		0x0008		//ADI_SPIд����Ĵ������������Ⱥ�д��0xCCCCCCCC��0x0000
#define ADI_SPI_ReadAddrReg		0x000C		//ADI_SPI����ַ�Ĵ�������ַ����Ϊ15bit
#define ADI_SPI_ReadDataReg		0x0014		//ADI_SPI�����ݼĴ�����ֻ���������ݳ���Ϊ8bit
#define ADI_SPI_ReadCmdReg		0x0010		//ADI_SPI������Ĵ������������Ⱥ�д��0xDDDDDDDD��0x0000
#define ADI_SPI_StatusReg		0x0018		//ADI_SPI����״̬�Ĵ�����ֻ����

/***************** Macros (Inline Functions) Definitions *********************/
	/*ADI SPI ��ȡ����״̬*/
#define ADI_Spi_Status(BaseAddress) \
	Xil_In32((BaseAddress) + (ADI_SPI_StatusReg))

	/*ADI SPI ��д�����йصļĴ�����������*/
#define ADI_Spi_WriteAddr(BaseAddress,Addr) \
	Xil_Out32(((BaseAddress) + (ADI_SPI_WriteAddrReg)),(u32)Addr)
#define ADI_Spi_WriteData(BaseAddress, Data) \
	Xil_Out32(((BaseAddress) + (ADI_SPI_WriteDataReg)),(u32)Data)
#define ADI_Spi_WriteCmd_CCCC(BaseAddress) \
	Xil_Out32(((BaseAddress) + (ADI_SPI_WriteCmdReg)),(u32)0xCCCCCCCC)
#define ADI_Spi_WriteCmd_0000(BaseAddress) \
	Xil_Out32(((BaseAddress) + (ADI_SPI_WriteCmdReg)),(u32)0x00000000)

	/*ADI SPI ��������йصļĴ�����������*/
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
