/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : ad9649.c
* @brief      : AD9649 ADCÐ¾Æ¬Çý¶¯Çý¶¯³ÌÐò
* @autor      : Captain
* @emil:      : 
* @version    : 1.0.0
* @date       : 2023/8/29
******************************************************************************************************************/
#include "common.h"
/*
 * ADI High-Speed ADC common spi interface registers
 * See Application-Note AN-877:
 *   https://www.analog.com/media/en/technical-documentation/application-notes/AN-877.pdf
 */

/*
 * There's an upstreamed version of this driver that was used as first user of
 * the high speed adc core. However, that version is still too limited and lacks
 * support for a lot of things. Hence, we will still take the old driver until the
 * the upstreamed version is ready to be used...
 */

#define AN877_ADC_REG_CHIP_PORT_CONF		0x00
#define AN877_ADC_REG_CHIP_ID				0x01
#define AN877_ADC_REG_CHIP_GRADE			0x02
#define AN877_ADC_REG_CHAN_INDEX			0x05
#define AN877_ADC_REG_TRANSFER				0xFF
#define AN877_ADC_REG_MODES					0x08
#define AN877_ADC_REG_TEST_IO				0x0D
#define AN877_ADC_REG_ADC_INPUT				0x0F
#define AN877_ADC_REG_OFFSET				0x10
#define AN877_ADC_REG_OUTPUT_MODE			0x14
#define AN877_ADC_REG_OUTPUT_ADJUST			0x15
#define AN877_ADC_REG_OUTPUT_PHASE			0x16
#define AN877_ADC_REG_OUTPUT_DELAY			0x17
#define AN877_ADC_REG_VREF					0x18
#define AN877_ADC_REG_ANALOG_INPUT			0x2C




