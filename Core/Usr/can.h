/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : can.h
* @brief      : 函数声明
* @autor      : Captain
* @emil:      : 
* @version    : 1.0.0.0
* @date       : 2023/8/9
******************************************************************************************************************/
#ifndef __CAN_H
#define __CAN_H
#include "sys.h"

void CAN1_Config(CAN_HandleTypeDef *hcan,CAN_TxHeaderTypeDef *TxHeader,u32 CAN_receive_FIFO, u32 Rec_Interrupts);
void CAN2_Config(CAN_HandleTypeDef *hcan,CAN_TxHeaderTypeDef *TxHeader,u32 CAN_receive_FIFO, u32 Rec_Interrupts);

u8 CAN_Send_Msg(CAN_HandleTypeDef *hcan,CAN_TxHeaderTypeDef *TxHeader,u8* msg,u8 len);						//发送数据
//void HAL_CAN_RxFifo1MsgPendingCallback(CAN_HandleTypeDef *hcan);

#endif
