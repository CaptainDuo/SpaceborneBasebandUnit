/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : ad9781.c
* @brief      : AD9781 DAC芯片驱动驱动程序
* @autor      : Captain
* @emil:      : 
* @version    : 1.0.0
* @date       : 2023/8/29
******************************************************************************************************************/
/************************** Constant Definitions *****************************/


#include "ad9781.h"







/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/




/************************** Variable Definitions *****************************/



int ad9781_write(uint32_t Baseaddr, uint16_t WriteAddr, uint8_t WriteData)
{

	int ret;
	ret = app_adi_spi_send(Baseaddr, WriteAddr, WriteData);
	if (ret < 0)
		return ret;
	return SUCCESS;

}

int ad9781_read(uint32_t Baseaddr, uint16_t WriteAddr, uint8_t *ReadData)
{

	int ret;
	uint32_t *data;
	ret = app_adi_spi_read(Baseaddr, WriteAddr, data);
	*ReadData = (uint8_t)(*data);
	if (ret < 0)
		return ret;
	return SUCCESS;

}

void ad9781_param_init(ad9781_platform_data *ad9781_pdata,
							ad9781_reset_pin *reset_pin,
							uint8_t gpio_device_ID)
{
	/* reg0x00~reg0x05 */
	ad9781_pdata->spi_ctl_data = AD9781_SDIO_DIR;   //reg0x0,三线SPI
	ad9781_pdata->data_ctl_data = 0;  //
	ad9781_pdata->power_down_data = 0;
	ad9781_pdata->setup_and_hold_data = 0;
	ad9781_pdata->timing_adj = 0;  //采样延迟
	/* reg0x06~reg0x0A */
	ad9781_pdata->seek_data = 0;  //reg0x06
	ad9781_pdata->mix_mode_data = 0;   //reg0x0A
	ad9781_pdata->dac1_fsc_data[MSB] = 0x01;  //reg0x0c
	ad9781_pdata->dac1_fsc_data[LSB] = 0xF9;  //reg0x0B
	ad9781_pdata->auxdac1_data[MSB] = 0;
	ad9781_pdata->auxdac1_data[LSB] = 0;
	ad9781_pdata->dac2_fsc[MSB] = 0x01;
	ad9781_pdata->dac2_fsc[LSB] = 0xF9;
	ad9781_pdata->auxdac2_data[MSB] = 0;
	ad9781_pdata->auxdac2_data[LSB] = 0;
	ad9781_pdata->bist_ctl_data = 0;
	ad9781_pdata->bist_res1_data[MSB] = 0;
	ad9781_pdata->bist_res1_data[LSB] = 0;
	ad9781_pdata->bist_res2_data[MSB] = 0;
	ad9781_pdata->bist_res2_data[LSB] = 0;
	ad9781_pdata->hardware_version = 0;
	reset_pin->DEVICE_ID = gpio_device_ID;
	
}

int ad9781_setup(ad9781_dev *device,
					ad9781_platform_data *init_param,
					uint32_t adi_spi_baseaddr,
					ad9781_reset_pin *pin)
{
	int32_t 		ret = 0;
	int8_t			index = 0;
	uint16_t		reg_address = 0;
	uint8_t			reg_value = 0;

	device->pdata = init_param;
	device->adi_spi_baseaddr = adi_spi_baseaddr;
	device->reset_pin = pin;
	/* 1.芯片复位引脚GPIO结构体初始化 */
	ret = ad9781_reset_pin_init(device);
	if (ret != 0)
		return ret;
	/* 2.控制芯片复位管脚复位，硬复位 */
	ad9781_rst_pin_val(device, 0);
	ad9781_rst_pin_val(device, 1);
	ad9781_delay(10);
	ad9781_rst_pin_val(device, 0);
	/* 3.配置SPI控制寄存器 */
	reg_value = device->pdata->spi_ctl_data;
	ret = ad9781_write(device->adi_spi_baseaddr, AD9781_REG_SPI_CONTROL, &reg_value);
	if (ret < 0)
		return ret;
	
	ret = ad9781_read(device->adi_spi_baseaddr, AD9781_REG_SPI_CONTROL, &reg_value);
	if (ret < 0)
		return ret;

	
}

int ad9781_reset_pin_init(ad9781_dev *device)
{
	int ret = 0;
	ret = XGpio_Initialize(device->reset_pin->reset_gpio,device->reset_pin->DEVICE_ID);
	return ret;
}

void ad9781_rst_pin_val(ad9781_dev *device, u32 Data)
{
	XGpio_DiscreteWrite(device->reset_pin->reset_gpio, 1 , Data);
}



void ad9781_delay(uint32_t ms)
{
	usleep(ms*1000);
}

