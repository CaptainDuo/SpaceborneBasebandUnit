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
