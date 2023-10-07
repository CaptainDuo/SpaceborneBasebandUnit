#ifndef __JFMRS01RH_H
#define	__JFMRS01RH_H
#include "stm32f4xx.h"


#define PROGRAM_LENGTH  2048
#define FILE_ADDR_MAX   0x00DB3A00
#define TEST_ADDR_MAX   0x1400

struct YC_Register_1_BITS
{
	uint8_t sel_biterr:2;                    //0:1
	uint8_t sel_intf:1;
	uint8_t sel_daisy_chain:1;
	uint8_t sel_auto_reload:1;
	uint8_t sel_telemetry:1;
	uint8_t sel_flash_wp:1;
	uint8_t sel_glutmask:1;
};

union YC_Register_1
{
	uint8_t                    all;
	struct YC_Register_1_BITS  bit;
};

struct YC_Register_2_BITS
{
	uint8_t sel_fpga_series:3;               //0：3
	uint8_t sel_mode:2;
	uint8_t sel_freq:2;
	uint8_t sel_per:1;
};

union YC_Register_2
{
	uint8_t                     all;
	struct YC_Register_2_BITS   bit;
};

struct YC_Register_3_BITS
{
	uint8_t sel_flash:3;
	uint8_t sel_capacity:3;
	uint8_t sel_fpga_num:2;
};
union YC_Register_3
{
	uint8_t                     all;
	struct YC_Register_3_BITS   bit;
};

struct YC_Register_4_BITS
{
	uint8_t sel_flash_num:2;
	uint8_t sel_standby:2;
	uint8_t sel_main:2;
	uint8_t sel_spare:2;
};
union YC_Register_4
{
	uint8_t                     all;
	struct YC_Register_4_BITS   bit;
};
struct YC_Register_5_BITS
{
	uint8_t sel_zone:1;
	uint8_t sel_auto_switch:1;
	uint8_t sel_switch_prom:1;
	uint8_t sel_parity:1;
	uint8_t sel_uart_wp:1;
	uint8_t sel_ecc_en:1;
	uint8_t zone_select:1;          //0:0号分区， 1:1号分区
	uint8_t uart_error:1;           //0:no error  1:error
};
union YC_Register_5
{
	uint8_t                     all;
	struct YC_Register_5_BITS   bit;
};
struct YC_STATE_1_BITS
{
	uint8_t fpga0_reload_state:1;          //0:fail; 1:succeed;
	uint8_t fpga1_reload_state:1;
	uint8_t fpga2_reload_state:1;
	uint8_t fpga3_reload_state:1;
	uint8_t fpga0_refresh_reread:1;        //0:fail; 1:succeed;    sel_mode: 0:refresh  01:reread  10回读刷新后回读  11:不操作
	uint8_t fpga1_refresh_reread:1;
	uint8_t fpga2_refresh_reread:1;
	uint8_t fpga3_refresh_reread:1;	
};
union YC_STATE_1
{
	uint8_t                   all;
	struct YC_STATE_1_BITS    bit;
};
struct YC_STATE_2_BITS
{
	uint8_t fifo_state:1;                   //0:fifo normal  1:fifo lose data
	uint8_t uart_busy_state:1;              //0:free         1:busy
	uint8_t flash_operate_state:1;          //flash编程、擦除、回读、校验 0：失败；1：成功
	uint8_t uart_crc_state:1;               //0:crc error;  1:correct
	uint8_t fpga0_crc_state:1;              //0:crc error;  1:correct
	uint8_t fpga1_crc_state:1;
	uint8_t fpga2_crc_state:1;
	uint8_t fpga3_crc_state:1;
};
union YC_STATE_2
{
	uint8_t                   all;
	struct YC_STATE_2_BITS    bit;
};
struct YC_FPGA_STATE_BITS
{
	uint8_t reload_num:4;
	uint8_t ECC_1bit_error:1;
	uint8_t ECC_2bit_error:1;
	uint8_t fpga_work_mode:2;
};
union YC_FPGA_STATE
{
	uint8_t                      all;
	struct YC_FPGA_STATE_BITS    bit;
};
struct YC_DEVICE_STATE_BITS
{
	uint8_t device_select:3;
	uint8_t master_device_1_state:1;
	uint8_t master_device_2_state:1;
	uint8_t slave_device_1_state:1;
	uint8_t slave_device_2_state:1;
	uint8_t PROM_state:1;
};
union YC_DEVICE_STATE
{
	uint8_t                       all;
	struct YC_DEVICE_STATE_BITS   bit;
};
struct YC_FUNC
{
	uint8_t                 F_Head[2];
	uint8_t                 F_Length[2];
	uint8_t                 F_Type;
	union   YC_Register_1   RG1;
	union   YC_Register_2   RG2;
	union   YC_Register_3   RG3;
	union   YC_Register_4   RG4;
	union   YC_Register_5   RG5;
	union   YC_STATE_1      STATE1;
	union   YC_STATE_2      STATE2;
	uint8_t                 reread_error_bit_num;
	uint8_t                 reread_error_total_num;
	union   YC_FPGA_STATE   W_STATE;
	union   YC_DEVICE_STATE D_STATE;
	uint8_t                 crc_cal[2];
	uint8_t                 F_End[3];
};

struct FLASH_Type_BITS
{
	uint8_t  flash_select:2;
	uint8_t  memory_select:3;
	uint8_t  type_select:3;
};

union FLASH_Type
{
	uint8_t                 all;
	struct FLASH_Type_BITS  bit;
};

struct NOR_FLASH_Erase
{
	uint8_t                 F_Head[2];
	uint8_t                 F_Length[2];
	uint8_t                 F_EA;
	union FLASH_Type        F_FLASH_Type;
	uint8_t                 F_YC;
	uint8_t                 F_DZ_HM[12];
	uint8_t                 F_ZL_HM[6];
	uint8_t                 crc_cal[2];
	uint8_t                 F_End[3];
};

struct NOR_FLASH_Program
{
	uint8_t                 F_Head[2];
	uint8_t                 F_Length[2];
	uint8_t                 F_CA;
	union FLASH_Type        F_FLASH_Type;
	uint8_t                 F_YC;
	uint8_t                 F_DZ_HM[6];
	uint8_t                 F_ZL_HM[3];
	uint8_t                 F_start_addr[4];
	uint8_t                 CRC1[2];
	uint8_t                 program_list[PROGRAM_LENGTH];
  uint8_t                 CRC2[2];
  uint8_t                 F_End[3];	
};

struct NOR_FLASH_Check
{
	uint8_t                 F_Head[2];
	uint8_t                 F_Length[2];
	uint8_t                 F_C2;
	union FLASH_Type        F_FLASH_Type;
	uint8_t                 F_YC;
	uint8_t                 F_start_addr[4];
	uint8_t                 F_end_addr[4];
	uint8_t                 DATA_CRC[2];
	uint8_t                 CRC_cal[2];
	uint8_t                 F_End[3];
};

struct YC_RETURN
{
	uint8_t                 sel_telemetry;    //寄存器1 第5位
	uint8_t                 sel_mode;         //寄存器2 第3：4
};

struct CG_PROCESS
{
	uint8_t                 step;
	uint8_t                 err_num;	
	uint8_t                 program_list[512];
	uint16_t                program_length;
	uint8_t                 flash_type;
	uint32_t                start_addr;
	uint32_t                program_addr;
	uint8_t                 YC_GET_FLASG;
};

void Sel_Per_control(u8 mode_in);
void Sel_Intf_control(u8 mode_in);
void Sel_Daisy_Chain_control(u8 mode_in);
void Sel_Ecc_EN_contrl(u8 mode_in);
void Sel_Auto_Reload_control(u8 mode_in);
void Sel_Telemetry_control(u8 mode_in);
void Sel_Flash_WP_control(u8 mode_in);
void Sel_Glutmask_control(u8 mode_in);
void Sel_FPGA_Series_control(u8 mode_in);
void Sel_Parity_control(u8 mode_in);
void Sel_Mode_control(u8 mode_in);
void Sel_Freq_control(u8 mode_in);
void Sel_Biterr_control(u8 mode_in);
void Sel_Flash_control(u8 mode_in);
void Sel_Capacity_control(u8 mode_in);
void Sel_FPGA_Num_control(u8 mode_in);
void Sel_Flash_Num_cntrol(u8 mode_in);
void Sel_Standby_control(u8 mode_in);
void Sel_Main_control(u8 mode_in);
void Sel_Spare_control(u8 mode_in);
void Sel_Zone_control(u8 mode_in);
void Sel_Auto_Switch_control(u8 mode_in);
void Sel_Switch_PROM_control(u8 mode_in);
void Get_YC_Func(void);
void Read_flash(u32 sta_add);

void Nor_Flash0_Erase_Func(void);
void Nor_Flash1_Erase_Func(void);
void Nor_Flash_Program_Func(struct CG_PROCESS list_in);
u8 CG_step(struct CG_PROCESS *CG_temp, struct YC_FUNC YC_temp);

extern void can_delay(__IO u32 nCount);
#endif /* __JFMRS01RH_H */

