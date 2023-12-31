/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "can.h"
#include "cs25wq256.h"
#include "spi.h"
#include "ad9517.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
CAN_HandleTypeDef hcan1;
CAN_HandleTypeDef hcan2;

SPI_HandleTypeDef hspi1;
SPI_HandleTypeDef hspi2;
DMA_HandleTypeDef hdma_spi1_rx;
DMA_HandleTypeDef hdma_spi2_rx;

UART_HandleTypeDef huart3;
DMA_HandleTypeDef hdma_usart3_tx;
DMA_HandleTypeDef hdma_usart3_rx;

NOR_HandleTypeDef hnor1;

/* USER CODE BEGIN PV */
CAN_TxHeaderTypeDef	CAN1TxHeader;      //CAN1发送结构体
CAN_TxHeaderTypeDef	CAN2TxHeader;      //CAN2发送结构体
CAN_RxHeaderTypeDef	CAN1RxHeader;      //CAN1接收结构体
CAN_RxHeaderTypeDef	CAN2RxHeader;      //CAN2接收结构体
u8	CAN1TxData[8];    //CAN1发送的数据
u8	CAN2TxData[8];    //CAN2发送的数据
u8	CAN1RxData[8];    //CAN1接收的数据
u8	CAN2RxData[8];    //CAN2接收的数据

ad9517_dev *AD9516_1_DEV;

ad9517_init_param ad9516_param;

ad9517_platform_data ad9516_pdata;  //用于给ad9516_param结构体传递地址

/* 创建ad9516的6个lvpecl通道结构体数组 */
ad9517_lvpecl_channel_spec ad9516_lvpecl_channel[6];

/* 创建ad9516的4个lvds通道结构体数组 */
ad9517_lvds_cmos_channel_spec ad9516_lvds_channel[4];


//要写入到CS25WQXX的字符串数组
const u8 TEXT_Buffer[]={"Explorer STM32F4 SPI TEST"};
#define Buffer_SIZE sizeof(TEXT_Buffer)


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_CAN1_Init(void);
static void MX_CAN2_Init(void);
static void MX_FSMC_Init(void);
static void MX_SPI1_Init(void);
static void MX_SPI2_Init(void);
static void MX_USART3_UART_Init(void);
static void MX_NVIC_Init(void);
/* USER CODE BEGIN PFP */
/*! AD9516 paramters initialization */
int8_t ad9156_parameter_initialize(SPI_HandleTypeDef *hspi,
								 ad9517_init_param *init_param,
								 ad9517_platform_data *init_pdata,
								 ad9517_lvpecl_channel_spec *init_lvpecl, 
								 ad9517_lvds_cmos_channel_spec *init_lvds);

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
  u32 res;
  u16 id = 0;
  u32 FLASH_SIZE;
  u8 datatemp[Buffer_SIZE];
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_CAN1_Init();
  MX_CAN2_Init();
  MX_FSMC_Init();
  MX_SPI1_Init();
  MX_SPI2_Init();
  MX_USART3_UART_Init();

  /* Initialize interrupts */
  MX_NVIC_Init();
  /* USER CODE BEGIN 2 */
  CAN_Config(&hcan1,&CAN1TxHeader);
  CAN_Config(&hcan2,&CAN2TxHeader);
  FLASH_SIZE=32*1024*1024;	  //FLASH 大小为32M字节


	//stm32LED灯测试
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, GPIO_PIN_SET);

  /* AD9516_1初始化 */
  	//1.参数初始化
	res = ad9156_parameter_initialize(&hspi2, &ad9516_param, &ad9516_pdata, ad9516_lvpecl_channel, ad9516_lvds_channel);
	//2.传递参数
	res = ad9517_setup( &AD9516_1_DEV, ad9516_param);
	//3.配置VCO
	res = ad9517_frequency(AD9516_1_DEV, AD9516_channel_0, 62000000);
	res = ad9517_frequency(AD9516_1_DEV, AD9516_channel_2, 62000000);
	res = ad9517_frequency(AD9516_1_DEV, AD9516_channel_6, 248000000);
	//4.配置通道输出
	res = ad9517_power_mode(AD9516_1_DEV, AD9516_channel_0, Safe_LVPECL_power_down);
	res = ad9517_power_mode(AD9516_1_DEV, AD9516_channel_1, Safe_LVPECL_power_down);
	res = ad9517_power_mode(AD9516_1_DEV, AD9516_channel_2, Safe_LVPECL_power_down);
	res = ad9517_power_mode(AD9516_1_DEV, AD9516_channel_3, Safe_LVPECL_power_down);
	res = ad9517_power_mode(AD9516_1_DEV, AD9516_channel_4, Safe_LVPECL_power_down);
	res = ad9517_power_mode(AD9516_1_DEV, AD9516_channel_5, Safe_LVPECL_power_down);
	res = ad9517_power_mode(AD9516_1_DEV, AD9516_channel_6, Power_off);
	res = ad9517_power_mode(AD9516_1_DEV, AD9516_channel_7, Power_off);
	res = ad9517_power_mode(AD9516_1_DEV, AD9516_channel_8, Power_off);
	res = ad9517_power_mode(AD9516_1_DEV, AD9516_channel_9, Power_off);

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	res = CAN_Send_Msg(&hcan1,&CAN1TxHeader,CAN1TxData,8);//CAN1发送8个字节 
	res = CAN_Send_Msg(&hcan2,&CAN2TxHeader,CAN2TxData,8);//CAN2发送8个字节 

	CS25WQXX_Init(&hspi1);    //FLASH初始化
	id = CS25WQXX_ReadID(&hspi1);    //读取ID

	CS25WQXX_Write(&hspi1,(u8*)TEXT_Buffer,FLASH_SIZE-100,Buffer_SIZE);		//从倒数第100个地址处开始,写入SIZE长度的数据
	CS25WQXX_Read(&hspi1,datatemp,FLASH_SIZE-100,Buffer_SIZE);   //读取FLASH
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 336;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief NVIC Configuration.
  * @retval None
  */
static void MX_NVIC_Init(void)
{
  /* CAN1_RX0_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(CAN1_RX0_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(CAN1_RX0_IRQn);
  /* DMA1_Stream3_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream3_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream3_IRQn);
  /* DMA2_Stream0_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Stream0_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream0_IRQn);
  /* CAN2_RX0_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(CAN2_RX0_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(CAN2_RX0_IRQn);
}

/**
  * @brief CAN1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_CAN1_Init(void)
{

  /* USER CODE BEGIN CAN1_Init 0 */

  /* USER CODE END CAN1_Init 0 */

  /* USER CODE BEGIN CAN1_Init 1 */

  /* USER CODE END CAN1_Init 1 */
  hcan1.Instance = CAN1;
  hcan1.Init.Prescaler = 6;
  hcan1.Init.Mode = CAN_MODE_NORMAL;
  hcan1.Init.SyncJumpWidth = CAN_SJW_1TQ;
  hcan1.Init.TimeSeg1 = CAN_BS1_7TQ;
  hcan1.Init.TimeSeg2 = CAN_BS2_6TQ;
  hcan1.Init.TimeTriggeredMode = DISABLE;
  hcan1.Init.AutoBusOff = DISABLE;
  hcan1.Init.AutoWakeUp = DISABLE;
  hcan1.Init.AutoRetransmission = DISABLE;
  hcan1.Init.ReceiveFifoLocked = DISABLE;
  hcan1.Init.TransmitFifoPriority = DISABLE;
  if (HAL_CAN_Init(&hcan1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN CAN1_Init 2 */

  /* USER CODE END CAN1_Init 2 */

}

/**
  * @brief CAN2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_CAN2_Init(void)
{

  /* USER CODE BEGIN CAN2_Init 0 */

  /* USER CODE END CAN2_Init 0 */

  /* USER CODE BEGIN CAN2_Init 1 */

  /* USER CODE END CAN2_Init 1 */
  hcan2.Instance = CAN2;
  hcan2.Init.Prescaler = 6;
  hcan2.Init.Mode = CAN_MODE_NORMAL;
  hcan2.Init.SyncJumpWidth = CAN_SJW_1TQ;
  hcan2.Init.TimeSeg1 = CAN_BS1_7TQ;
  hcan2.Init.TimeSeg2 = CAN_BS2_6TQ;
  hcan2.Init.TimeTriggeredMode = DISABLE;
  hcan2.Init.AutoBusOff = DISABLE;
  hcan2.Init.AutoWakeUp = DISABLE;
  hcan2.Init.AutoRetransmission = DISABLE;
  hcan2.Init.ReceiveFifoLocked = DISABLE;
  hcan2.Init.TransmitFifoPriority = DISABLE;
  if (HAL_CAN_Init(&hcan2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN CAN2_Init 2 */

  /* USER CODE END CAN2_Init 2 */

}

/**
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_HIGH;
  hspi1.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi1.Init.NSS = SPI_NSS_HARD_OUTPUT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_4;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}

/**
  * @brief SPI2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI2_Init(void)
{

  /* USER CODE BEGIN SPI2_Init 0 */

  /* USER CODE END SPI2_Init 0 */

  /* USER CODE BEGIN SPI2_Init 1 */

  /* USER CODE END SPI2_Init 1 */
  /* SPI2 parameter configuration*/
  hspi2.Instance = SPI2;
  hspi2.Init.Mode = SPI_MODE_MASTER;
  hspi2.Init.Direction = SPI_DIRECTION_2LINES;
  hspi2.Init.DataSize = SPI_DATASIZE_16BIT;
  hspi2.Init.CLKPolarity = SPI_POLARITY_HIGH;
  hspi2.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi2.Init.NSS = SPI_NSS_SOFT;
  hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_4;
  hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi2.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI2_Init 2 */

  /* USER CODE END SPI2_Init 2 */

}

/**
  * @brief USART3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART3_UART_Init(void)
{

  /* USER CODE BEGIN USART3_Init 0 */

  /* USER CODE END USART3_Init 0 */

  /* USER CODE BEGIN USART3_Init 1 */

  /* USER CODE END USART3_Init 1 */
  huart3.Instance = USART3;
  huart3.Init.BaudRate = 115200;
  huart3.Init.WordLength = UART_WORDLENGTH_8B;
  huart3.Init.StopBits = UART_STOPBITS_1;
  huart3.Init.Parity = UART_PARITY_NONE;
  huart3.Init.Mode = UART_MODE_TX_RX;
  huart3.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart3.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart3) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART3_Init 2 */

  /* USER CODE END USART3_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();
  __HAL_RCC_DMA2_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Stream1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream1_IRQn);
  /* DMA1_Stream4_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream4_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream4_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
/* USER CODE BEGIN MX_GPIO_Init_1 */
/* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_11, GPIO_PIN_RESET);

  /*Configure GPIO pins : PB0 PB1 PB11 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_11;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

/* USER CODE BEGIN MX_GPIO_Init_2 */
/* USER CODE END MX_GPIO_Init_2 */
}

/* FSMC initialization function */
static void MX_FSMC_Init(void)
{

  /* USER CODE BEGIN FSMC_Init 0 */

  /* USER CODE END FSMC_Init 0 */

  FSMC_NORSRAM_TimingTypeDef Timing = {0};

  /* USER CODE BEGIN FSMC_Init 1 */

  /* USER CODE END FSMC_Init 1 */

  /** Perform the NOR1 memory initialization sequence
  */
  hnor1.Instance = FSMC_NORSRAM_DEVICE;
  hnor1.Extended = FSMC_NORSRAM_EXTENDED_DEVICE;
  /* hnor1.Init */
  hnor1.Init.NSBank = FSMC_NORSRAM_BANK1;
  hnor1.Init.DataAddressMux = FSMC_DATA_ADDRESS_MUX_ENABLE;
  hnor1.Init.MemoryType = FSMC_MEMORY_TYPE_NOR;
  hnor1.Init.MemoryDataWidth = FSMC_NORSRAM_MEM_BUS_WIDTH_16;
  hnor1.Init.BurstAccessMode = FSMC_BURST_ACCESS_MODE_DISABLE;
  hnor1.Init.WaitSignalPolarity = FSMC_WAIT_SIGNAL_POLARITY_LOW;
  hnor1.Init.WrapMode = FSMC_WRAP_MODE_DISABLE;
  hnor1.Init.WaitSignalActive = FSMC_WAIT_TIMING_BEFORE_WS;
  hnor1.Init.WriteOperation = FSMC_WRITE_OPERATION_ENABLE;
  hnor1.Init.WaitSignal = FSMC_WAIT_SIGNAL_DISABLE;
  hnor1.Init.ExtendedMode = FSMC_EXTENDED_MODE_DISABLE;
  hnor1.Init.AsynchronousWait = FSMC_ASYNCHRONOUS_WAIT_DISABLE;
  hnor1.Init.WriteBurst = FSMC_WRITE_BURST_DISABLE;
  hnor1.Init.PageSize = FSMC_PAGE_SIZE_NONE;
  /* Timing */
  Timing.AddressSetupTime = 4;
  Timing.AddressHoldTime = 2;
  Timing.DataSetupTime = 15;
  Timing.BusTurnAroundDuration = 7;
  Timing.CLKDivision = 16;
  Timing.DataLatency = 17;
  Timing.AccessMode = FSMC_ACCESS_MODE_A;
  /* ExtTiming */

  if (HAL_NOR_Init(&hnor1, &Timing, NULL) != HAL_OK)
  {
    Error_Handler( );
  }

  /* USER CODE BEGIN FSMC_Init 2 */

  /* USER CODE END FSMC_Init 2 */
}

/* USER CODE BEGIN 4 */
/***************************************************************************//**
 * @brief AD9156_1 Parameters Initialization
 *
 * @param hspi - STM32F4系列SPI参数结构体
 * @param init_param - The structure that contains the device initial
 * 		       parameters.
 * @param init_pdata - ad9517_platform_data结构体的地址
 * @param init_lvpecl - ad9517_lvpecl_channel_spec结构体数组的地址，
 *  			存放lvpecl所有通道的初始化值
 * @param init_lvds - ad9517_lvds_cmos_channel_spec结构体数组的地址，
 * 				存放lvds所有通道的初始化值
 * @return Returns 0 in case of success or negative error code.
*******************************************************************************/
int8_t ad9156_parameter_initialize(SPI_HandleTypeDef *hspi,
								 ad9517_init_param *init_param,
								 ad9517_platform_data *init_pdata,
								 ad9517_lvpecl_channel_spec *init_lvpecl, 
								 ad9517_lvds_cmos_channel_spec *init_lvds)
{
	uint8_t i=0;
	uint8_t j=0;
	uint8_t name[16] = {'a', 'd', '9', '5', '1', '6', '_', '1'};
	uint8_t channel_name[16] = {'a', 'd', '9', '5', '1', '6', '_', 'c', 'h', 'a', 'n', 'n', 'e', 'l', '_', '1'};
	int8_t res;
	init_param->spi_init = hspi;  //传递SPI通道结构体
	init_param->ad9517_type = AD9516_1;  //芯片类型位AD9516_1
	/* ad9517_st结构体基本参数初始化 */
	init_param->ad9517_st.antibacklash_pulse_width = 0;  //reg0x17[1:0]
		/***
		* 以下参数无需手动写入，ad9517_frequency函数会自动计算并初始化
		* init_param->ad9517_st.a_counter = 16;
		* init_param->ad9517_st.b_counter = 77;
		* init_param->ad9517_st.r_counter
		* init_param->ad9517_st.vco_divider
		* init_param->ad9517_st.prescaler_p = 
		*/

	/* ad9517_platform_data结构体参数初始化 */

	init_pdata->diff_ref_en = 0;   			//reg0x1c[0]
	init_pdata->ext_clk_freq = 0;   		//不使用外部clk
	init_pdata->int_vco_freq = 2480000000;	//内部VCO频率2480MHz
//	init_pdata->name = name;
	for (i = 0; i < 16; ++i)
		{
		init_pdata->name[i] = name[i];
		}
	init_pdata->power_down_vco_clk = 0;  	//reg0x1e1[2]
	init_pdata->ref_1_freq = 100000000;  	//REF1输入时钟为100MHz
	init_pdata->ref_1_power_on = 1;  		//reg0x1c[1]
	init_pdata->ref_2_en = 0;  				//reg0x1c[6]
	init_pdata->ref_2_freq = 100000000;    	//不使用REF2
	init_pdata->ref_2_power_on = 0;  		//reg0x1c[2]
	init_pdata->ref_sel_pin = 100000000;	//不使用外部参考引脚
	init_pdata->ref_sel_pin_en = 0;  		//reg0x1c[5]
	init_pdata->vco_clk_sel = 1;    		//reg0x1e1[1]
	init_param->ad9517_st.pdata = init_pdata;

/*
	init_param->ad9517_st.pdata.diff_ref_en = 0;   			//reg0x1c[0]
	init_param->ad9517_st.pdata.ext_clk_freq = 0;   		//不使用外部clk
	init_param->ad9517_st.pdata.int_vco_freq = 2480000000;	//内部VCO频率2480MHz
	init_param->ad9517_st.pdata.name = 0x01;
	init_param->ad9517_st.pdata.power_down_vco_clk = 0;  	//reg0x1e1[2]
	init_param->ad9517_st.pdata.ref_1_freq = 100000000;  	//REF1输入时钟为100MHz
	init_param->ad9517_st.pdata.ref_1_power_on = 1;  		//reg0x1c[1]
	init_param->ad9517_st.pdata.ref_2_en = 0;  				//reg0x1c[6]
	init_param->ad9517_st.pdata.ref_2_freq = 100000000;    	//不使用REF2
	init_param->ad9517_st.pdata.ref_2_power_on = 0;  		//reg0x1c[2]
	init_param->ad9517_st.pdata.ref_sel_pin = 100000000;	//不使用外部参考引脚
	init_param->ad9517_st.pdata.ref_sel_pin_en = 0;  		//reg0x1c[5]
	init_param->ad9517_st.pdata.vco_clk_sel = 1;    		//reg0x1e1[1]
*/
	/* ad9517_lvpecl_channel_spec结构体参数初始化 */
	for (i = 0; i < 6; i++)
		{
		init_lvpecl[i].channel_num = i;
		channel_name[15] = i;
//		init_lvpecl[i].name = i;
		for (j = 0; j < 16; ++i)
			{
			init_lvpecl[i].name[j] = channel_name[j];
			}
		init_lvpecl[i].out_diff_voltage = LVPECL_780mV; //reg0xF0~0xF5[3:2],电流大小
		init_lvpecl[i].out_invert_en = noninverting;  		//reg0xF0~0xF5[4],输出极性控制
		}
	init_param->ad9517_st.lvpecl_channels = init_lvpecl; //将通道结构体传递给上层结构体
	
	/* ad9517_lvds_cmos_channel_spec结构体参数初始化 */
	for (i = 0; i < 4; i++)
		{
		init_lvds[i].channel_num = i + 6;
		init_lvds[i].cmos_b_en = 0;					//reg0x140~0x143[4]
		init_lvds[i].logic_level = 0;  				//reg0x140~0x143[3],Selects LVDS or CMOS logic levels.
		channel_name[15] = i + 6;
		for (j = 0; j < 16; ++i)
			{
			init_lvds[i].name[j] = channel_name[j];
			}

//		init_lvds[i].name = i + 6;
		init_lvds[i].out_invert = 2; 				//reg0x140~0x143[7:5],output polarity,全部不反转默认值
		init_lvds[i].out_lvds_current = LVDS_3_5mA;	//reg0x140~0x143[2:1],LVDS output current
		}
		init_param->ad9517_st.lvds_cmos_channels = init_lvds; //将地址传递给上层结构体
	res = 0;
	return res;
}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
