#ifndef __SPI_H
/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : spi.h
* @brief      : SPIÇý¶¯´úÂë
* @autor      : Captain
* @emil:      : 
* @version    : 1.0.0.0
* @date       : 2023/8/9
******************************************************************************************************************/

#define __SPI_H
#include "sys.h"
#include "stm32f4xx_hal_spi.h"


u8 SPI1_ReadWriteByte(SPI_HandleTypeDef *SPI_Handler , u8 TxData);
#endif
