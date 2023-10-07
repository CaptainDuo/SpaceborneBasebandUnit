/**
  ******************************************************************************
  * @file    bsp_debug_usart.c
  * @author  fire
  * @version V1.0
  * @date    2015-xx-xx
  * @brief   �ض���c��printf������usart�˿ڣ��жϽ���ģʽ
  ******************************************************************************
  * @attention
  *
  * ʵ��ƽ̨:Ұ��  STM32 F407 ������  
  * ��̳    :http://www.firebbs.cn
  * �Ա�    :https://fire-stm32.taobao.com
  *
  ******************************************************************************
  */ 
  
#include "bsp_debug_usart.h"


 /**
  * @brief  ����Ƕ�������жϿ�����NVIC
  * @param  ��
  * @retval ��
  */
static void NVIC_Configuration_USART(void)
{
  NVIC_InitTypeDef NVIC_InitStructure;
  
  /* Ƕ�������жϿ�������ѡ�� */
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
  
  /* ����USARTΪ�ж�Դ */
  NVIC_InitStructure.NVIC_IRQChannel = DEBUG_USART_IRQ;
  /* �������ȼ�Ϊ1 */
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
  /* �����ȼ�Ϊ1 */
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
  /* ʹ���ж� */
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  /* ��ʼ������NVIC */
  NVIC_Init(&NVIC_InitStructure);
}


 /**
  * @brief  DEBUG_USART GPIO ����,����ģʽ���á�115200 8-N-1 ���жϽ���ģʽ
  * @param  ��
  * @retval ��
  */
void Debug_USART_Config(void)
{
  GPIO_InitTypeDef GPIO_InitStructure;
  USART_InitTypeDef USART_InitStructure;
		
  RCC_AHB1PeriphClockCmd(DEBUG_USART_RX_GPIO_CLK|DEBUG_USART_TX_GPIO_CLK,ENABLE);

  /* ʹ�� USART ʱ�� */
  RCC_APB1PeriphClockCmd(DEBUG_USART_CLK, ENABLE);
  
  /* GPIO��ʼ�� */
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;  
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  
  /* ����Tx����Ϊ���ù���  */
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_Pin = DEBUG_USART_TX_PIN  ;  
  GPIO_Init(DEBUG_USART_TX_GPIO_PORT, &GPIO_InitStructure);

  /* ����Rx����Ϊ���ù��� */
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_Pin = DEBUG_USART_RX_PIN;
  GPIO_Init(DEBUG_USART_RX_GPIO_PORT, &GPIO_InitStructure);
  
 /* ���� PXx �� USARTx_Tx*/
  GPIO_PinAFConfig(DEBUG_USART_RX_GPIO_PORT,DEBUG_USART_RX_SOURCE,DEBUG_USART_RX_AF);

  /*  ���� PXx �� USARTx__Rx*/
  GPIO_PinAFConfig(DEBUG_USART_TX_GPIO_PORT,DEBUG_USART_TX_SOURCE,DEBUG_USART_TX_AF);
  
  /* ���ô�DEBUG_USART ģʽ */
  /* ���������ã�DEBUG_USART_BAUDRATE */
  USART_InitStructure.USART_BaudRate = DEBUG_USART_BAUDRATE;
  /* �ֳ�(����λ+У��λ)��8 */
  USART_InitStructure.USART_WordLength = USART_WordLength_9b;
  /* ֹͣλ��1��ֹͣλ */
  USART_InitStructure.USART_StopBits = USART_StopBits_1;
  /* У��λѡ�񣺲�ʹ��У�� */
  USART_InitStructure.USART_Parity = USART_Parity_Even;
  /* Ӳ�������ƣ���ʹ��Ӳ���� */
  USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
  /* USARTģʽ���ƣ�ͬʱʹ�ܽ��պͷ��� */
  USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
  /* ���USART��ʼ������ */
  USART_Init(DEBUG_USART, &USART_InitStructure); 
	
  /* Ƕ�������жϿ�����NVIC���� */
	NVIC_Configuration_USART();
  
	/* ʹ�ܴ��ڽ����ж� */
	USART_ITConfig(DEBUG_USART, USART_IT_RXNE, ENABLE);
	
  /* ʹ�ܴ��� */
  USART_Cmd(DEBUG_USART, ENABLE);
}

void Debug_USART_List_init(struct usart_rx *list_in)
{
	list_in->usart_rx_count  = 0;
	list_in->usart_read_save = 0;
	list_in->temp_count      = 0;
	list_in->Func_num        = 0;
}
/*****************  ����һ���ַ� **********************/
void Usart_SendByte( USART_TypeDef * pUSARTx, uint8_t ch)
{
	/* ����һ���ֽ����ݵ�USART */
	USART_SendData(pUSARTx,ch);
		
	/* �ȴ��������ݼĴ���Ϊ�� */
	while (USART_GetFlagStatus(pUSARTx, USART_FLAG_TXE) == RESET);	
}

void Usart_SendList(USART_TypeDef * pUSARTx, u8 *list_send , u16 list_len)
{
	u16 temp_i;
	for(temp_i = 0; temp_i < list_len; temp_i++)
	{
		Usart_SendByte(pUSARTx , list_send[temp_i]);
		can_delay(10);
	}
}

u8 Usart_analysis(struct usart_rx *rx_list, struct YC_FUNC *YC_in)
{
	u8 result_re = 0;
	
	if(rx_list->usart_rx_count != rx_list->usart_read_save)
	{
		rx_list->temp_list[rx_list->temp_count] = rx_list->usart_rx_buf[rx_list->usart_read_save];
		rx_list->temp_count++;
		rx_list->usart_read_save++;
		rx_list->usart_read_save &= USART_Max_LEN;
	}
	//δ�ҵ�֡ͷ
	if(rx_list->temp_count == 2 
	&&(rx_list->temp_list[0] != 0x7E || rx_list->temp_list[1] != 0x7E))
	{
		rx_list->temp_count = 1;
		rx_list->temp_list[0] = rx_list->temp_list[1];
		
		return 0;
	}
	
  //�ҵ�֡β
  if(rx_list->temp_count >= 21)
	{
		if(rx_list->temp_list[0] == 0x7E
		&& rx_list->temp_list[1] == 0x7E
		&& rx_list->temp_list[4] == 0x01
		&& rx_list->temp_list[18] == 0x45
		&& rx_list->temp_list[19] == 0x4E
		&& rx_list->temp_list[20] == 0x44)	
		{
			YC_in->RG1.all = rx_list->temp_list[5];
			YC_in->RG2.all = rx_list->temp_list[6];
			YC_in->RG3.all = rx_list->temp_list[7];
			YC_in->RG4.all = rx_list->temp_list[8];
			YC_in->RG5.all = rx_list->temp_list[9];
			YC_in->STATE1.all = rx_list->temp_list[10];
			YC_in->STATE2.all = rx_list->temp_list[11];
			YC_in->reread_error_bit_num = rx_list->temp_list[12];
			YC_in->reread_error_total_num = rx_list->temp_list[13];
			YC_in->W_STATE.all = rx_list->temp_list[14];
			YC_in->D_STATE.all = rx_list->temp_list[15];
			
			rx_list->temp_count = 0;
			result_re = 1;
		}
		else   //δ�ҵ�����֡
		{
			rx_list->temp_count = 0;
			result_re = 0;
		}
	}
	
	return result_re;
}


/*********************************************END OF FILE**********************/
