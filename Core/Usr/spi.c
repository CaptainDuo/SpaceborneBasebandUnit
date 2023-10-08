/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : spi.c
* @brief      : SPI驱动代码
* @autor      : Captain
* @emil:      : 
* @version    : 1.0.0.0
* @date       : 2023/8/9
******************************************************************************************************************/

#include "spi.h"


SPI_HandleTypeDef SPI1_Handler;  //SPI1句柄

//SPI1 读写一个字节
//TxData:要写入的字节
//返回值:读取到的字节
u8 SPI1_ReadWriteByte(SPI_HandleTypeDef *SPI_Handler , u8 TxData)
{
    u8 Rxdata;
    HAL_SPI_TransmitReceive(SPI_Handler,&TxData,&Rxdata,1, 1000);       
 	return Rxdata;          		    //返回收到的数据		
}
/** 
  * @brief  16位，1字节数据传输
  */
u8 SPI2_ReadWriteByte(SPI_HandleTypeDef *SPI_Handler , u8 *TxData , u8 *RxData )
{
    u8 status;
    status = HAL_SPI_TransmitReceive(SPI_Handler,TxData,RxData,3, 1000);       
 	return status;          		    //返回收到的数据		
}

