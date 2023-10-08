/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : spi.c
* @brief      : SPI��������
* @autor      : Captain
* @emil:      : 
* @version    : 1.0.0.0
* @date       : 2023/8/9
******************************************************************************************************************/

#include "spi.h"


SPI_HandleTypeDef SPI1_Handler;  //SPI1���

//SPI1 ��дһ���ֽ�
//TxData:Ҫд����ֽ�
//����ֵ:��ȡ�����ֽ�
u8 SPI1_ReadWriteByte(SPI_HandleTypeDef *SPI_Handler , u8 TxData)
{
    u8 Rxdata;
    HAL_SPI_TransmitReceive(SPI_Handler,&TxData,&Rxdata,1, 1000);       
 	return Rxdata;          		    //�����յ�������		
}
/** 
  * @brief  16λ��1�ֽ����ݴ���
  */
u8 SPI2_ReadWriteByte(SPI_HandleTypeDef *SPI_Handler , u8 *TxData , u8 *RxData )
{
    u8 status;
    status = HAL_SPI_TransmitReceive(SPI_Handler,TxData,RxData,3, 1000);       
 	return status;          		    //�����յ�������		
}

