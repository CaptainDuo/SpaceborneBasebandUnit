/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : can.c
* @brief      : CAN��������
* @autor      : Captain
* @emil:      : 
* @version    : 1.0.0.0
* @date       : 2023/8/9
******************************************************************************************************************/

#include "can.h"
#include "main.h"

extern CAN_HandleTypeDef hcan1;
extern CAN_HandleTypeDef hcan2;
extern CAN_TxHeaderTypeDef	CAN1TxHeader;      //CAN1���ͽṹ��
extern CAN_TxHeaderTypeDef	CAN2TxHeader;      //CAN2���ͽṹ��
extern CAN_RxHeaderTypeDef	CAN1RxHeader;      //CAN1���սṹ��
extern CAN_RxHeaderTypeDef	CAN2RxHeader;      //CAN2���սṹ��
extern u8	CAN1TxData[8];    //CAN1���͵�����
extern u8	CAN2TxData[8];    //CAN2���͵�����
extern u8	CAN1RxData[8];    //CAN1���յ�����
extern u8	CAN2RxData[8];    //CAN2���յ�����

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

//can����һ������(�̶���ʽ:IDΪ0X12,��׼֡,����֡)	
//len:���ݳ���(���Ϊ8)				     
//msg:����ָ��,���Ϊ8���ֽ�.
//����ֵ:0,�ɹ�;
//		 ����,ʧ��;
u8 CAN_Send_Msg(CAN_HandleTypeDef *hcan,CAN_TxHeaderTypeDef *TxHeader,u8* msg,u8 len)
{	
    u8 i=0;
	u32 TxMailbox;
	u8 message[8];
    TxHeader->StdId=0X12;        //��׼��ʶ��
    TxHeader->ExtId=0x12;        //��չ��ʶ��(29λ)
    TxHeader->IDE=CAN_ID_STD;    //ʹ�ñ�׼֡
    TxHeader->RTR=CAN_RTR_DATA;  //����֡
    TxHeader->DLC=len;                
    for(i=0;i<len;i++)
    {
		message[i]=msg[i];
	}
    if(HAL_CAN_AddTxMessage(hcan, TxHeader, message, &TxMailbox) != HAL_OK)//����
	{
		return 1;
	}
	while(HAL_CAN_GetTxMailboxesFreeLevel(hcan) != 3) {}
    return 0;
}

void HAL_CAN_RxFifo1MsgPendingCallback(CAN_HandleTypeDef *hcan)
{
	  // CAN���ݽ���
	  if (hcan->Instance == hcan2.Instance)
	  {
		  if (HAL_CAN_GetRxMessage( hcan, CAN_RX_FIFO0, &CAN2RxHeader, CAN2RxData) == HAL_OK)
		  {
			 HAL_CAN_ActivateNotification(hcan, CAN_IT_RX_FIFO0_MSG_PENDING);						  // �ٴ�ʹ��FIFO0�����ж�
		  }
	  }
}

