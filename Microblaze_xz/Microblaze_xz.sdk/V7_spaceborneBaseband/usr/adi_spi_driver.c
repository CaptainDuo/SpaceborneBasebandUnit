/*
 * ADI_SPI_15BIT.c
 *
 *  Created on: 2022年6月9日
 *      Author: captain
 */
/***************************** Include Files ********************************/
#include "adi_spi_driver.h"






/************************** Constant Definitions ****************************/

/**************************** Type Definitions ******************************/


/***************** Macros (Inline Functions) Definitions *******************/


/************************** Function Prototypes ****************************/


/************************** Variable Definitions **************************/

/*****************************************************************************/
/**
* ADI SPI 发送函数
*
*
* @param	BaseAddr	当前SPI的基地址
* 			WriteAddr	当前发送数据的地址，地址线为0~15bit
* 			WriteData	当前发送数据的值，数据线0~7bit
*
* @return
*		- XST_SUCCESS if successful
*		- XST_FAILURE if unsuccessful
*
* @note		None
*
******************************************************************************/
int app_adi_spi_send(uint32_t BaseAddr, uint16_t WriteAddr, uint8_t WriteData)
{
	/*1.发送之前需要先判断总线状态*/
	while (ADI_Spi_Status(BaseAddr))
		{
		if (0x00 == ADI_Spi_Status(BaseAddr))
			{
			break;
			}
		}
	/*2.写入写数据的地址*/
	ADI_Spi_WriteAddr(BaseAddr, WriteAddr);
	/*3.写入写数据*/
	ADI_Spi_WriteData(BaseAddr, WriteData);
	/*4.写入写命令*/
	ADI_Spi_WriteCmd_CCCC(BaseAddr);
	ADI_Spi_WriteCmd_0000(BaseAddr);

	return 0;
	
}

/*****************************************************************************/
/**
* ADI SPI 接收函数
*
*
* @param	BaseAddr	当前SPI的基地址
* 			ReadAddr	接收数据的地址，地址线为0~15bit
* 			ReadData	接收数据的值，数据线0~7bit
*
* @return
*		- XST_SUCCESS if successful
*		- XST_FAILURE if unsuccessful
*
* @note		None
*
******************************************************************************/
int app_adi_spi_read(uint32_t BaseAddr, uint16_t ReadAddr, uint32_t *ReadData)
{
	/*1.发送之前需要先判断总线状态*/
	while (ADI_Spi_Status(BaseAddr))
		{
		if (0x00 == ADI_Spi_Status(BaseAddr))
			{
			break;
			}
		}
	/*2.写入读数据的地址*/
	ADI_Spi_ReadAddr(BaseAddr, ReadAddr);

	/*3.写入读命令*/
	ADI_Spi_ReadCmd_DDDD(BaseAddr);
	ADI_Spi_ReadCmd_0000(BaseAddr);
	/*4.读取数据前判断总线状态*/
	while (ADI_Spi_Status(BaseAddr))
		{
		if (0x00 == ADI_Spi_Status(BaseAddr))
			{
			break;
			}
		}
	/*5.读取读数据*/
	*ReadData = ADI_Spi_ReadData(BaseAddr);

	return 0;

}
