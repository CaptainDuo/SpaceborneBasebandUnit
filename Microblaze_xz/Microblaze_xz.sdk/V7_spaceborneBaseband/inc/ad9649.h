#include "common.h"

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
	TwoC			= 0x1,
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
	uint8_t  bist_enable;  //�����Լ�
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

