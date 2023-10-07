#ifndef __W25QXX_H
/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : cs25wq256.h
* @brief      : CS25WQ256 Flash驱动程序头文件
* @autor      : Captain
* @emil:      : 
* @version    : 1.0.0.0
* @date       : 2023/8/9
******************************************************************************************************************/

#define __W25QXX_H
#include "sys.h"

//W25X系列/Q系列芯片列表	   
#define CS25WQ256 0XEF18

extern u16 CS25WQXX_TYPE;					//定义CS25WQXX芯片型号		   

//CS25QXX的片选信号 PB11
#define	cs25wqxx_CS(value) 		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_11, value); 
////////////////////////////////////////////////////////////////////////////////// 
//指令表
#define CS25WQX_WriteEnable			0x06 
#define CS25WQX_WriteDisable		0x04 
#define CS25WQX_ReadStatusReg1		0x05 
#define CS25WQX_ReadStatusReg2		0x35 
#define CS25WQX_ReadStatusReg3		0x15 
#define CS25WQX_WriteStatusReg1		0x01 
#define CS25WQX_WriteStatusReg2		0x31 
#define CS25WQX_WriteStatusReg3		0x11 
#define CS25WQX_ReadData			0x03 
#define CS25WQX_FastReadData		0x0B 
#define CS25WQX_FastReadDual		0x3B 
#define CS25WQX_PageProgram			0x02 
#define CS25WQX_BlockErase			0xD8 
#define CS25WQX_SectorErase			0x20 
#define CS25WQX_ChipErase			0xC7 
#define CS25WQX_PowerDown			0xB9 
#define CS25WQX_ReleasePowerDown	0xAB 
#define CS25WQX_DeviceID			0xAB 
#define CS25WQX_ManufactDeviceID	0x90 
#define CS25WQX_JedecDeviceID		0x9F 
#define CS25WQX_Enable4ByteAddr		0xB7
#define CS25WQX_Exit4ByteAddr		0xE9

void delay_us(u32 nus);
void CS25WQXX_Init(SPI_HandleTypeDef *SPI_Handler);
u16  CS25WQXX_ReadID(SPI_HandleTypeDef *SPI_Handler);  	    		//读取FLASH ID
u8   CS25WQXX_ReadSR(SPI_HandleTypeDef *SPI_Handler,u8 regno);             //读取状态寄存器 
void CS25WQXX_Write_SR(SPI_HandleTypeDef *SPI_Handler,u8 regno,u8 sr);   //写状态寄存器
void CS25WQXX_Write_Enable(SPI_HandleTypeDef *SPI_Handler);  		//写使能 
void CS25WQXX_Write_Disable(SPI_HandleTypeDef *SPI_Handler);		//写保护
void CS25WQXX_Write_NoCheck(SPI_HandleTypeDef *SPI_Handler,u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite);
void CS25WQXX_Read(SPI_HandleTypeDef *SPI_Handler,u8* pBuffer,u32 ReadAddr,u16 NumByteToRead);   //读取flash
void CS25WQXX_Write(SPI_HandleTypeDef *SPI_Handler,u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite);//写入flash
void CS25WQXX_Write_Page(SPI_HandleTypeDef *SPI_Handler,u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite);
void CS25WQXX_Erase_Chip(SPI_HandleTypeDef *SPI_Handler);    	  	//整片擦除
void CS25WQXX_Erase_Sector(SPI_HandleTypeDef *SPI_Handler , u32 Dst_Addr);	//扇区擦除
void CS25WQXX_Wait_Busy(SPI_HandleTypeDef *SPI_Handler );           	//等待空闲
void CS25WQXX_PowerDown(SPI_HandleTypeDef *SPI_Handler);        	//进入掉电模式
void CS25WQXX_WAKEUP(SPI_HandleTypeDef *SPI_Handler);				//唤醒

#endif
