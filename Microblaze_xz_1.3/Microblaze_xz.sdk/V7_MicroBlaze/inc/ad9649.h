#include "common.h"


int ad9649_write(uint32_t Baseaddr, uint16_t WriteAddr, uint8_t WriteData);
int ad9649_read(uint32_t Baseaddr, uint16_t ReadAddr, uint8_t *ReadData);

void ad9649_param_init(ad9649_platform_data *ad9649_pdata,
							ad9649_mode_pin *mode_pin,
							uint8_t gpio_device_ID);
int ad9649_setup(ad9649_dev *device,
				ad9649_platform_data *pdata,
				uint32_t adi_spi_baseaddr,
				ad9649_mode_pin *pin);
int ad9649_mode_pin_init(ad9649_dev *device);

void ad9649_mode_pin_value(ad9649_dev *device, u32 Data);

