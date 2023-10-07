/**
  ******************************************************************************
  * @file    bsp_debug_usart.c
  * @author  fire
  * @version V1.0
  * @date    2015-xx-xx
  * @brief   重定向c库printf函数到usart端口，中断接收模式
  ******************************************************************************
  * @attention
  *
  * 实验平台:野火  STM32 F407 开发板  
  * 论坛    :http://www.firebbs.cn
  * 淘宝    :https://fire-stm32.taobao.com
  *
  ******************************************************************************
  */ 
  
#include "bsp_debug_usart.h"


 /**
  * @brief  配置嵌套向量中断控制器NVIC
  * @param  无
  * @retval 无
  */
static void NVIC_Configuration_USART(void)
{
  NVIC_InitTypeDef NVIC_InitStructure;
  
  /* 嵌套向量中断控制器组选择 */
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
  
  /* 配置USART为中断源 */
  NVIC_InitStructure.NVIC_IRQChannel = DEBUG_USART_IRQ;
  /* 抢断优先级为1 */
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
  /* 子优先级为1 */
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
  /* 使能中断 */
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  /* 初始化配置NVIC */
  NVIC_Init(&NVIC_InitStructure);
}


 /**
  * @brief  DEBUG_USART GPIO 配置,工作模式配置。115200 8-N-1 ，中断接收模式
  * @param  无
  * @retval 无
  */
void Debug_USART_Config(void)
{
  GPIO_InitTypeDef GPIO_InitStructure;
  USART_InitTypeDef USART_InitStructure;
		
  RCC_AHB1PeriphClockCmd(DEBUG_USART_RX_GPIO_CLK|DEBUG_USART_TX_GPIO_CLK,ENABLE);

  /* 使能 USART 时钟 */
  RCC_APB1PeriphClockCmd(DEBUG_USART_CLK, ENABLE);
  
  /* GPIO初始化 */
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;  
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  
  /* 配置Tx引脚为复用功能  */
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_Pin = DEBUG_USART_TX_PIN  ;  
  GPIO_Init(DEBUG_USART_TX_GPIO_PORT, &GPIO_InitStructure);

  /* 配置Rx引脚为复用功能 */
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_Pin = DEBUG_USART_RX_PIN;
  GPIO_Init(DEBUG_USART_RX_GPIO_PORT, &GPIO_InitStructure);
  
 /* 连接 PXx 到 USARTx_Tx*/
  GPIO_PinAFConfig(DEBUG_USART_RX_GPIO_PORT,DEBUG_USART_RX_SOURCE,DEBUG_USART_RX_AF);

  /*  连接 PXx 到 USARTx__Rx*/
  GPIO_PinAFConfig(DEBUG_USART_TX_GPIO_PORT,DEBUG_USART_TX_SOURCE,DEBUG_USART_TX_AF);
  
  /* 配置串DEBUG_USART 模式 */
  /* 波特率设置：DEBUG_USART_BAUDRATE */
  USART_InitStructure.USART_BaudRate = DEBUG_USART_BAUDRATE;
  /* 字长(数据位+校验位)：8 */
  USART_InitStructure.USART_WordLength = USART_WordLength_9b;
  /* 停止位：1个停止位 */
  USART_InitStructure.USART_StopBits = USART_StopBits_1;
  /* 校验位选择：不使用校验 */
  USART_InitStructure.USART_Parity = USART_Parity_Even;
  /* 硬件流控制：不使用硬件流 */
  USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
  /* USART模式控制：同时使能接收和发送 */
  USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
  /* 完成USART初始化配置 */
  USART_Init(DEBUG_USART, &USART_InitStructure); 
	
  /* 嵌套向量中断控制器NVIC配置 */
	NVIC_Configuration_USART();
  
	/* 使能串口接收中断 */
	USART_ITConfig(DEBUG_USART, USART_IT_RXNE, ENABLE);
	
  /* 使能串口 */
  USART_Cmd(DEBUG_USART, ENABLE);
}

void Debug_USART_List_init(struct usart_rx *list_in)
{
	list_in->usart_rx_count  = 0;
	list_in->usart_read_save = 0;
	list_in->temp_count      = 0;
	list_in->Func_num        = 0;
}
/*****************  发送一个字符 **********************/
void Usart_SendByte( USART_TypeDef * pUSARTx, uint8_t ch)
{
	/* 发送一个字节数据到USART */
	USART_SendData(pUSARTx,ch);
		
	/* 等待发送数据寄存器为空 */
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
	//未找到帧头
	if(rx_list->temp_count == 2 
	&&(rx_list->temp_list[0] != 0x7E || rx_list->temp_list[1] != 0x7E))
	{
		rx_list->temp_count = 1;
		rx_list->temp_list[0] = rx_list->temp_list[1];
		
		return 0;
	}
	
  //找到帧尾
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
		else   //未找到完整帧
		{
			rx_list->temp_count = 0;
			result_re = 0;
		}
	}
	
	return result_re;
}


/*********************************************END OF FILE**********************/
