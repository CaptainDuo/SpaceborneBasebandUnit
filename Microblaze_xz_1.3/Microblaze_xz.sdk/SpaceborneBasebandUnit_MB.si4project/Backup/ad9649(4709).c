/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : ad9649.c
* @brief      : AD9649 ADC芯片驱动驱动程序
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

typedef struct
{
	XGpio   *reset_gpio;
	uint8_t DEVICE_ID;
}ad9649_reset_pin;


typedef struct
{
	uint8_t  spi_ctl_data;
	uint8_t  data_ctl_data;
	uint8_t  power_down_data;
	uint8_t  setup_and_hold_data;
	uint8_t  timing_adj;
	uint8_t  seek_data;
	uint8_t  mix_mode_data;
	uint8_t  dac1_fsc_data[2];
	uint8_t  auxdac1_data[2];
	uint8_t  dac2_fsc[2];
	uint8_t  auxdac2_data[2];
	uint8_t  bist_ctl_data;
	uint8_t  bist_res1_data[2];
	uint8_t  bist_res2_data[2];
	uint8_t  hardware_version;
}ad9649_platform_data;

typedef struct
{
	uint32_t adi_spi_baseaddr;
	ad9649_platform_data *pdata;
	ad9649_reset_pin *reset_pin;
}ad9649_dev;


int ad9649_param_init(ad9649_platform_data *ad9649_pdata,
							ad9649_reset_pin *reset_pin,
							uint8_t gpio_device_ID)
							
{
	/* reg0x00~reg0x05 */
	ad9649_pdata->spi_ctl_data = AD9649_SDIO_DIR;   //reg0x0,三线SPI
	ad9649_pdata->data_ctl_data = 0;  //
	ad9649_pdata->power_down_data = 0;
	ad9649_pdata->setup_and_hold_data = 0;
	ad9649_pdata->timing_adj = 0;  //采样延迟
	/* reg0x06~reg0x0A */
	ad9649_pdata->seek_data = 0;  //reg0x06
	ad9649_pdata->mix_mode_data = 0;   //reg0x0A
	ad9649_pdata->dac1_fsc_data[MSB] = 0x01;  //reg0x0c
	ad9649_pdata->dac1_fsc_data[LSB] = 0xF9;  //reg0x0B
	ad9649_pdata->auxdac1_data[MSB] = 0;
	ad9649_pdata->auxdac1_data[LSB] = 0;
	ad9649_pdata->dac2_fsc[MSB] = 0x01;
	ad9649_pdata->dac2_fsc[LSB] = 0xF9;
	ad9649_pdata->auxdac2_data[MSB] = 0;
	ad9649_pdata->auxdac2_data[LSB] = 0;
	ad9649_pdata->bist_ctl_data = 0;
	ad9649_pdata->bist_res1_data[MSB] = 0;
	ad9649_pdata->bist_res1_data[LSB] = 0;
	ad9649_pdata->bist_res2_data[MSB] = 0;
	ad9649_pdata->bist_res2_data[LSB] = 0;
	ad9649_pdata->hardware_version = 0;
	reset_pin->DEVICE_ID = gpio_device_ID;
	
}


