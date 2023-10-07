#ifndef __DEBUG_USART_H
#define	__DEBUG_USART_H

#include "stm32f4xx.h"
#include "JFMRS01RH.h"


//引脚定义
/*******************************************************/
#if 0
#define DEBUG_USART                             USART3
#define DEBUG_USART_CLK                         RCC_APB1Periph_USART3

#define DEBUG_USART_RX_GPIO_PORT                GPIOC
#define DEBUG_USART_RX_GPIO_CLK                 RCC_AHB1Periph_GPIOC
#define DEBUG_USART_RX_PIN                      GPIO_Pin_11
#define DEBUG_USART_RX_AF                       GPIO_AF_USART3
#define DEBUG_USART_RX_SOURCE                   GPIO_PinSource11

#define DEBUG_USART_TX_GPIO_PORT                GPIOC
#define DEBUG_USART_TX_GPIO_CLK                 RCC_AHB1Periph_GPIOC
#define DEBUG_USART_TX_PIN                      GPIO_Pin_10
#define DEBUG_USART_TX_AF                       GPIO_AF_USART3
#define DEBUG_USART_TX_SOURCE                   GPIO_PinSource10

#define DEBUG_USART_IRQ                         USART3_IRQn
#define DEBUG_USART_IRQHandler                  USART3_IRQHandler
#endif

#if 1
#define DEBUG_USART                             UART4
#define DEBUG_USART_CLK                         RCC_APB1Periph_UART4

#define DEBUG_USART_RX_GPIO_PORT                GPIOC
#define DEBUG_USART_RX_GPIO_CLK                 RCC_AHB1Periph_GPIOC
#define DEBUG_USART_RX_PIN                      GPIO_Pin_11
#define DEBUG_USART_RX_AF                       GPIO_AF_UART4
#define DEBUG_USART_RX_SOURCE                   GPIO_PinSource11

#define DEBUG_USART_TX_GPIO_PORT                GPIOC
#define DEBUG_USART_TX_GPIO_CLK                 RCC_AHB1Periph_GPIOC
#define DEBUG_USART_TX_PIN                      GPIO_Pin_10
#define DEBUG_USART_TX_AF                       GPIO_AF_UART4
#define DEBUG_USART_TX_SOURCE                   GPIO_PinSource10

#define DEBUG_USART_IRQ                         UART4_IRQn
#define DEBUG_USART_IRQHandler                  UART4_IRQHandler
#endif
/************************************************************/


//串口波特率
#define DEBUG_USART_BAUDRATE                    115200
#define USART_REC_LEN                           1024
#define USART_Max_LEN                           (USART_REC_LEN - 1)

struct usart_rx
{
	u8 usart_rx_buf[USART_REC_LEN];
	u16 usart_rx_count;
	u16 usart_read_save;
	u8 temp_list[USART_REC_LEN];
	u16 temp_count;
	u8 Func_num;
};



void Debug_USART_Config(void);
void Usart_SendByte( USART_TypeDef * pUSARTx, uint8_t ch);
void Debug_USART_List_init(struct usart_rx *list_in);
void Usart_SendList(USART_TypeDef * pUSARTx, u8 *list_send , u16 list_len);
u8 Usart_analysis(struct usart_rx *rx_list, struct YC_FUNC *YC_in);


#endif /* __USART1_H */
