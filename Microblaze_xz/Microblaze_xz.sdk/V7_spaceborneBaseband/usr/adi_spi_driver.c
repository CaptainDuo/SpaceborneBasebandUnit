/*
 * ADI_SPI_15BIT.c
 *
 *  Created on: 2022��6��9��
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
* ADI SPI ���ͺ���
*
*
* @param	BaseAddr	��ǰSPI�Ļ���ַ
* 			WriteAddr	��ǰ�������ݵĵ�ַ����ַ��Ϊ0~15bit
* 			WriteData	��ǰ�������ݵ�ֵ��������0~7bit
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
	/*1.����֮ǰ��Ҫ���ж�����״̬*/
	while (ADI_Spi_Status(BaseAddr))
		{
		if (0x00 == ADI_Spi_Status(BaseAddr))
			{
			break;
			}
		}
	/*2.д��д���ݵĵ�ַ*/
	ADI_Spi_WriteAddr(BaseAddr, WriteAddr);
	/*3.д��д����*/
	ADI_Spi_WriteData(BaseAddr, WriteData);
	/*4.д��д����*/
	ADI_Spi_WriteCmd_CCCC(BaseAddr);
	ADI_Spi_WriteCmd_0000(BaseAddr);

	return 0;
	
}

/*****************************************************************************/
/**
* ADI SPI ���պ���
*
*
* @param	BaseAddr	��ǰSPI�Ļ���ַ
* 			ReadAddr	�������ݵĵ�ַ����ַ��Ϊ0~15bit
* 			ReadData	�������ݵ�ֵ��������0~7bit
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
	/*1.����֮ǰ��Ҫ���ж�����״̬*/
	while (ADI_Spi_Status(BaseAddr))
		{
		if (0x00 == ADI_Spi_Status(BaseAddr))
			{
			break;
			}
		}
	/*2.д������ݵĵ�ַ*/
	ADI_Spi_ReadAddr(BaseAddr, ReadAddr);

	/*3.д�������*/
	ADI_Spi_ReadCmd_DDDD(BaseAddr);
	ADI_Spi_ReadCmd_0000(BaseAddr);
	/*4.��ȡ����ǰ�ж�����״̬*/
	while (ADI_Spi_Status(BaseAddr))
		{
		if (0x00 == ADI_Spi_Status(BaseAddr))
			{
			break;
			}
		}
	/*5.��ȡ������*/
	*ReadData = ADI_Spi_ReadData(BaseAddr);

	return 0;

}
