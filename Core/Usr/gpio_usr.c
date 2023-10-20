 /***************************************************************************//**
  *   @file   gpio_usr.c
  *   @brief  GPIO�ⲿ�ж�����
  *   @author Captain
 ********************************************************************************/
 
/********************************** include files *******************************/
#include "main.h"
#include "delay.h"
/********************************** Private variables *******************************/
extern int uart_state_flag;  //ˢ��оƬuart state״̬�ܽ�

 /**
   * @brief  �ⲿ�ж�GPIO�ص�����.
   * @retval int
   */
 void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  /* Prevent unused argument(s) compilation warning */
	 delay_ms(100); 	 //����
	 switch(GPIO_Pin)
	 {
		 case UART_STATE_Pin:
			uart_state_flag = 1; //
			break;
	 }

}

