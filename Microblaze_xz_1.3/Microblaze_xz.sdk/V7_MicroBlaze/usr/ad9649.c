/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : ad9649.c
* @brief      : AD9649 ADC芯片驱动驱动程序
* @autor      : Captain
* @emil:      : 
* @version    : 1.0.0
* @date       : 2023/8/29
******************************************************************************************************************/
#include "ad9649.h"
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


enum AD9649_OUTPUT_LOGIC_TP {
	CMOS_3D3 = 0,
	CMOS_1D8 = 0x80,
};

enum AD9649_OUTPUT_COD {
	OFFSET_BIN 	= 0,
	2C			= 0x1,
	GRAY_CODE 	= 0x2,
};

typedef struct
{
	XGpio	*mode_gpio;
	uint8_t	DEVICE_ID;
}ad9649_mode_pin;


typedef struct
{
	uint8_t  chip_port_conf;  //reg0x0
	uint8_t  modes;  //reg0x08
	uint8_t  clock_divide;  //reg0x0B
	uint8_t  test_mode;  //0x0D
	uint8_t  bist_enable;  //内置自检
	uint8_t  offset_adjust;  //reg0x10
	uint8_t  output_mode;  //reg0x14
	uint8_t  output_adjust;  //reg0x15
	uint8_t  output_phase;  //reg0x16
	uint8_t  output_delay;  //reg0x17
}ad9649_platform_data;

typedef struct
{
	uint32_t adi_spi_baseaddr;
	ad9649_platform_data *pdata;
	ad9649_mode_pin *mode_pin;
}ad9649_dev;

int ad9649_write(uint32_t Baseaddr, uint16_t WriteAddr, uint8_t WriteData)
{

	int ret;
	ret = app_adi_spi_send(Baseaddr, WriteAddr, WriteData);
	if (ret < 0)
		return ret;
	return SUCCESS;

}

int ad9649_read(uint32_t Baseaddr, uint16_t ReadAddr, uint8_t *ReadData)
{

	int ret;
	uint32_t *data;
	ret = app_adi_spi_read(Baseaddr, ReadAddr, data);
	*ReadData = (uint8_t)(*data);
	if (ret < 0)
		return ret;
	return SUCCESS;

}


void ad9649_param_init(ad9649_platform_data *ad9649_pdata,
							ad9649_mode_pin *mode_pin,
							uint8_t gpio_device_ID)
{
	ad9649_pdata->chip_port_conf = 0x18;   //reg0x0,三线SPI
	ad9649_pdata->modes = 0xe0;				//reg0x8
	ad9649_pdata->output_mode = CMOS_1D8;  //reg0x14
	/* MODE/OR引脚配置 */
	mode_pin->DEVICE_ID = gpio_device_ID;
	
}

int ad9649_setup(ad9649_dev *device,
				ad9649_platform_data *pdata,
				uint32_t adi_spi_baseaddr,
				ad9649_mode_pin *pin)
{
	int32_t 		ret = 0;
	int8_t			index = 0;
	uint16_t		reg_address = 0;
	uint8_t 		reg_value = 0;

	device->pdata = pdata;
	device->adi_spi_baseaddr = adi_spi_baseaddr;
	device->mode_pin = pin;
	/* 1.芯片复位引脚GPIO结构体初始化 */
	ret = ad9649_mode_pin_init(device);
	if (ret != 0)
		return ret;
	/* 2.MODE/OR引脚拉高 */
	ad9649_mode_pin_value(device,1);
	/* 3.配置芯片SPI模式 */
	ret = ad9649_write(device->adi_spi_baseaddr,
						AN877_ADC_REG_CHIP_PORT_CONF,
						device->pdata.chip_port_conf);
	if (ret != 0)
		return ret;
	ret = ad9649_read(device->adi_spi_baseaddr,
						AN877_ADC_REG_CHIP_ID,
						&reg_value);
	if (ret != 0 || reg_value != 0x6F)
	{
		ret = 0x44;
		return ret;
	}
	/* 4.配置是否启用MODE/OR管脚 */
	ret = ad9649_write(device->adi_spi_baseaddr,
						AN877_ADC_REG_MODES,
						device->pdata.modes);
	if (ret != 0)
		return ret;

	/* 5.Output模式调整 */
	ret = ad9649_write(device->adi_spi_baseaddr,
						AN877_ADC_REG_OUTPUT_MODE,
						device->pdata.output_mode);
	if (ret != 0)
		return ret;
	return ret;
}

int ad9649_mode_pin_init(ad9649_dev *device)
{
	int ret = 0;
	ret = XGpio_Initialize(device->mode_pin.mode_gpio,device->mode_pin.DEVICE_ID);
	return ret;
}

void ad9649_mode_pin_value(ad9649_dev *device, u32 Data)
{
	XGpio_DiscreteWrite(device->mode_pin.mode_gpio, 1 , Data);
}


