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


#define BIT(x)	(1 << (x))
/*
 * Create a contiguous bitmask starting at bit position @l and ending at
 * position @h. For example
 * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
 */

#define BITS_PER_LONG 32

#define GENMASK(h, l) \
	(((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))

/* AD9781 Registers */
#define AD9781_REG_SPI_CONTROL          0x00
#define AD9781_REG_DATA_CONTROL         0x02
#define AD9781_REG_POWER_DOWN           0x03
#define AD9781_REG_SETUP_AND_HOLD       0x04
#define AD9781_REG_TIMING_ADJUST        0x05
#define AD9781_REG_SEEK                 0x06
#define AD9781_REG_MIX_MODE             0x0A
#define AD9781_REG_DAC1_FSC             0x0B
#define AD9781_REG_DAC1_FSC_MSBS        0x0C
#define AD9781_REG_AUXDAC1              0x0D
#define AD9781_REG_AUXDAC1_MSB          0x0E
#define AD9781_REG_DAC2_FSC             0x0F
#define AD9781_REG_DAC2_FSC_MSBS        0x10
#define AD9781_REG_AUXDAC2              0x11
#define AD9781_REG_AUXDAC2_MSB          0x12
#define AD9781_REG_BIST_CONTROL         0x1A
#define AD9781_REG_BIST_RESULT_1_LOW    0x1B
#define AD9781_REG_BIST_RESULT_1_HIGH   0x1C
#define AD9781_REG_BIST_RESULT_2_LOW    0x1D
#define AD9781_REG_BIST_RESULT_2_HIGH   0x1E
#define AD9781_REG_HARDWARE_REVISION    0x1F

/* AD9781_REG_SPI_CONTROL */
#define AD9781_SDIO_DIR                 BIT(7)
#define AD9781_LSBFIRST                 BIT(6)
#define AD9781_RESET                    BIT(5)
/* AD9781_REG_DATA_CONTROL */
#define AD9781_DATA                     BIT(7)
#define AD9781_DATA_UNSIGNED            BIT(7)
#define AD9781_DATA_TWOS_COMPLEMENT     0x00
#define AD9781_INVDCO                   BIT(4)
/* AD9781_REG_POWER_DOWN */
#define AD9781_PD_DCO                   BIT(7)
#define AD9781_PD_INPT                  BIT(6)
#define AD9781_PD_AUX2                  BIT(5)
#define AD9781_PD_AUX1                  BIT(4)
#define AD9781_PD_BIAS                  BIT(3)
#define AD9781_PD_CLK                   BIT(2)
#define AD9781_PD_DAC2                  BIT(1)
#define AD9781_PD_DAC1                  BIT(0)
/* AD9781_REG_SETUP_AND_HOLD */
#define AD9781_SET                      GENMASK(7, 4)
#define AD9781_HLD                      GENMASK(3, 0)
#define AD9781_SH_RESET                 0x00
//#define AD9781_SH_SET(x)                FIELD_PREP(AD9781_SET, x)
#define AD9781_MAX_SET			BIT(4)
#define AD9781_MAX_HLD			BIT(4)
/* AD9781_REG_TIMING_ADJUST */
#define AD9781_SAMP_DLY                 GENMASK(4, 0)
#define AD9781_MAX_SAMPL_DLY		BIT(5)
/* AD9781_REG_SEEK */
#define AD9781_LVDS_LOW                 BIT(2)
#define AD9781_LVDS_HIGH                BIT(1)
#define AD9781_SEEK                     BIT(0)
/* AD9781_REG_MIX_MODE */
#define AD9781_DAC1_MIX                 GENMASK(3, 2)
#define AD9781_DAC2_MIX                 GENMASK(1, 0)
#define AD9781_DAC_MIX_MODE_MSK(dac)    GENMASK(1 + (2 * (dac)), (2 * (dac)))
#define AD9781_DAC_MIX_MODE(dac, mode)  ((mode) << (2 * (dac)))
#define AD9781_GET_MIX_MODE(dac, reg)	(((reg) >> (2 * (dac))) & GENMASK(1, 0))
/* AD9781_REG_DAC1_FSC_MSBS */
#define AD9781_DAC1FSC_MSB              GENMASK(1, 0)
/* AD9781_REG_DAC2_FSC_MSBS */
#define AD9781_DAC2FSC_MSB              GENMASK(1, 0)
#define AD9781_DAC_FSC_MIN              8660000U
#define AD9781_DAC_FSC_MAX              31660000U
#define AD9781_DAC_FSC_MAX_REG_VAL      GENMASK(9, 0)
/* (FSC_MAX - FSC_MIN) / FSC_MAX_REG_VAL */
#define AD9781_DAC_FSC_STEP             22483U
/* AD9781_REG_BIST_CONTROL */
#define AD9781_BISTEN                   BIT(7)
#define AD9781_BISTRD                   BIT(6)
#define AD9781_BISTCLR                  BIT(5)
#define AD9781_BIST_INIT                0x00
/* AD9781_REG_HARDWARE_REVISION */
#define AD9781_VERSION                  GENMASK(7, 4)
#define AD9781_DEVICE                   GENMASK(3, 0)
#define AD9781_HARDWARE_VERSION         0x1F
/* AD9781_AUX_DAC */
#define AD9781_REG_AUXDAC_MSB(dac)      (AD9781_REG_AUXDAC1_MSB + (4 * (dac)))
#define AD9781_REG_AUXDAC(dac)          (AD9781_REG_AUXDAC1 + (4 * (dac)))
#define AD9781_AUXSGN_MSK               BIT(7)
#define AD9781_AUXDIR_MSK               BIT(6)
#define AD9781_AUXDAC_MSB_MSK           GENMASK(1, 0)
#define AD9781_AUXDAC_AUX_P             0
#define AD9781_AUXDAC_AUX_N             BIT(7)
#define AD9781_AUXDAC_OFFSET_I_LSB_NA   1955
#define AD9781_GET_ACTIVE_OUTPUT(reg)	((reg) & AD9781_AUXSGN_MSK)
#define AD9781_GET_OUTPUT_TYPE(reg)	((reg) & AD9781_AUXDIR_MSK)
/* AD9781_DAC */
#define AD9781_REG_DAC_MSB(dac)         (AD9781_REG_DAC1_FSC_MSBS + (4 * (dac)))
#define AD9781_REG_DACB(dac)            (AD9781_REG_DAC1_FSC + (4 * (dac)))
#define AD9781_DAC_MSB_MSK              GENMASK(1, 0)
/* AD9781_BIST */
#define AD9781_REG_BIST_RESULT          AD9781_REG_BIST_RESULT_1_LOW

/* AD9781 timing defs */
#define SEEK                            0
#define SET                             1
#define HLD                             2

enum AD9781_mix_mode {
	NORMAL_MODE,
	MIX_MODE,
	RZ_MODE
};

enum AD9781_output {
	AUXP = 0,
	AUXN = BIT(7)
};

enum AD9781_output_type {
	SOURCE = 0,
	SINK = BIT(6)
};

enum AD9781_device_ids {
	ID_DEV_AD9780,
	ID_DEV_AD9781,
	ID_DEV_AD9783,
};


enum AD9781_return_status {

	SUCCESS = 0,
	UNSUCESS,
};

enum AD9781_M_LSB {
	MSB = 0,
	LSB,
};
	

/**************************** Type Definitions *******************************/

typedef struct
{
	XGpio   *reset_gpio;
	uint8_t DEVICE_ID;
}ad9781_reset_pin;


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
}ad9781_platform_data;

typedef struct
{
	uint32_t adi_spi_baseaddr;
	ad9781_platform_data *pdata;
	ad9781_reset_pin *reset_pin;
}ad9781_dev;





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

int ad9781_param_init(ad9781_platform_data *ad9781_pdata,
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
		{
		return ret;
		}
	
	
	reg_value = device->pdata->spi_ctl_data;
	ret = ad9781_write(device->adi_spi_baseaddr, AD9781_REG_SPI_CONTROL, &reg_value);
	if (ret < 0)
		{
		return ret;
		}
	
	ret = ad9781_read(device->adi_spi_baseaddr, AD9781_REG_SPI_CONTROL, &reg_value);
	if (ret < 0)
		{
		return ret;
		}
	





	
}

int ad9781_reset_pin_init(ad9781_dev *device)
{
	int ret = 0;
	ret = XGpio_Initialize(device->reset_pin.reset_gpio,device->reset_pin.DEVICE_ID);
	return ret;
}

void ad9689_delay(uint32_t ms)
{
	delay(ms);
}

