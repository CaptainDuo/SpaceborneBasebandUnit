#include "common.h"



int ad9781_write(uint32_t Baseaddr, uint16_t WriteAddr, uint8_t WriteData);
int ad9781_read(uint32_t Baseaddr, uint16_t WriteAddr, uint8_t *ReadData);
int ad9781_param_init(ad9781_platform_data *ad9781_pdata,
							ad9781_reset_pin *reset_pin,
							uint8_t gpio_device_ID);
int ad9781_setup(ad9781_dev *device,
					ad9781_platform_data *init_param,
					uint32_t adi_spi_baseaddr,
					ad9781_reset_pin *pin);
int ad9781_reset_pin_init(ad9781_dev *device);
void ad9781_rst_pin_val(ad9781_dev *device, u32 Data);
void ad9781_delay(uint32_t ms);

