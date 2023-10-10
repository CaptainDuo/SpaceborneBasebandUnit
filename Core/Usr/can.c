/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : can.c
* @brief      : CAN驱动代码
* @autor      : Captain
* @emil:      : 
* @version    : 1.0.0.0
* @date       : 2023/8/9
******************************************************************************************************************/

#include "can.h"
#include "main.h"

extern CAN_HandleTypeDef hcan1;
extern CAN_HandleTypeDef hcan2;
extern CAN_TxHeaderTypeDef	CAN1TxHeader;      //CAN1发送结构体
extern CAN_TxHeaderTypeDef	CAN2TxHeader;      //CAN2发送结构体
extern CAN_RxHeaderTypeDef	CAN1RxHeader;      //CAN1接收结构体
extern CAN_RxHeaderTypeDef	CAN2RxHeader;      //CAN2接收结构体
extern u8	CAN1TxData[8];    //CAN1发送的数据
extern u8	CAN2TxData[8];    //CAN2发送的数据
extern u8	CAN1RxData[8];    //CAN1接收的数据
extern u8	CAN2RxData[8];    //CAN2接收的数据

void CAN_Config(CAN_HandleTypeDef *hcan,CAN_TxHeaderTypeDef *TxHeader, u32 Rec_Interrupts)
{
  CAN_FilterTypeDef  sFilterConfig;

  /*##-2- Configure the CAN Filter ###########################################*/
  sFilterConfig.FilterBank = 0;
  sFilterConfig.FilterMode = CAN_FILTERMODE_IDMASK;
  sFilterConfig.FilterScale = CAN_FILTERSCALE_32BIT;
  sFilterConfig.FilterIdHigh = 0x0000;
  sFilterConfig.FilterIdLow = 0x0000;
  sFilterConfig.FilterMaskIdHigh = 0x0000;
  sFilterConfig.FilterMaskIdLow = 0x0000;
  sFilterConfig.FilterFIFOAssignment = CAN_RX_FIFO0;
  sFilterConfig.FilterActivation = ENABLE;
  sFilterConfig.SlaveStartFilterBank = 14;

  if (HAL_CAN_ConfigFilter(hcan, &sFilterConfig) != HAL_OK)
  {
    /* Filter configuration Error */
    while(1)
	  {
	  }
  }

  /*##-3- Start the CAN peripheral ###########################################*/
  if (HAL_CAN_Start(hcan) != HAL_OK)
  {
    /* Start Error */
    while(1)
	  {
	  }
  }

  /*##-4- Activate CAN RX notification #######################################*/
  if (HAL_CAN_ActivateNotification(hcan, Rec_Interrupts) != HAL_OK)
  {
    /* Notification Error */
    while(1)
	  {
	  }
  }

  /*##-5- Configure Transmission process #####################################*/
  TxHeader->StdId = 0x321;
  TxHeader->ExtId = 0x01;
  TxHeader->RTR = CAN_RTR_DATA;
  TxHeader->IDE = CAN_ID_STD;
  TxHeader->DLC = 2;
  TxHeader->TransmitGlobalTime = DISABLE;
}

//can发送一组数据(固定格式:ID为0X12,标准帧,数据帧)	
//len:数据长度(最大为8)				     
//msg:数据指针,最大为8个字节.
//返回值:0,成功;
//		 其他,失败;
u8 CAN_Send_Msg(CAN_HandleTypeDef *hcan,CAN_TxHeaderTypeDef *TxHeader,u8* msg,u8 len)
{	
    u8 i=0;
	u32 TxMailbox;
	u8 message[8];
    TxHeader->StdId=0X12;        //标准标识符
    TxHeader->ExtId=0x12;        //扩展标识符(29位)
    TxHeader->IDE=CAN_ID_STD;    //使用标准帧
    TxHeader->RTR=CAN_RTR_DATA;  //数据帧
    TxHeader->DLC=len;                
    for(i=0;i<len;i++)
    {
		message[i]=msg[i];
	}
    if(HAL_CAN_AddTxMessage(hcan, TxHeader, message, &TxMailbox) != HAL_OK)//发送
	{
		return 1;
	}
	while(HAL_CAN_GetTxMailboxesFreeLevel(hcan) != 3) {}
    return 0;
}

void HAL_CAN_RxFifo1MsgPendingCallback(CAN_HandleTypeDef *hcan)
{
	  // CAN数据接收
	  if (hcan->Instance == hcan2.Instance)
	  {
		  if (HAL_CAN_GetRxMessage( hcan, CAN_RX_FIFO0, &CAN2RxHeader, CAN2RxData) == HAL_OK)
		  {
			 HAL_CAN_ActivateNotification(hcan, CAN_IT_RX_FIFO0_MSG_PENDING);						  // 再次使能FIFO0接收中断
		  }
	  }
}

