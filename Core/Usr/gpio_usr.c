 /***************************************************************************//**
  *   @file   gpio_usr.c
  *   @brief  GPIO外部中断配置
  *   @author Captain
 ********************************************************************************/
 
/********************************** include files *******************************/
#include "main.h"
#include "delay.h"
/********************************** Private variables *******************************/
extern int uart_state_flag;  //刷新芯片uart state状态管脚

 /**
   * @brief  外部中断GPIO回调函数.
   * @retval int
   */
 void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  /* Prevent unused argument(s) compilation warning */
	 delay_ms(100); 	 //消抖
	 switch(GPIO_Pin)
	 {
		 case UART_STATE_Pin:
			uart_state_flag = 1; //
			break;
	 }

}

