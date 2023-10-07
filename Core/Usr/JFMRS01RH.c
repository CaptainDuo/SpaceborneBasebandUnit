#include "stm32f4xx.h"
#include "CRC_16.h"
#include "bsp_debug_usart.h"

void Sel_Per_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA0, 0x00, 0x2B, 0x1E, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA0, 0x01, 0x3B, 0x3F, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//复位后自动重载FPGA
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//复位后不重载FPGA
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Intf_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA1, 0x00, 0x18, 0x2F, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA1, 0x01, 0x08, 0x0E, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//select Map接口模式
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//daisy chain接口模式
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Daisy_Chain_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA2, 0x00, 0x4D, 0x7C, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA2, 0x01, 0x5D, 0x5D, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//并行daisy chain模式，数据从FPGA_DATA 8位并行输出
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//串行daisy chain模式，数据从FPGA_SERIAL_DOUT输出
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Ecc_EN_contrl(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA3, 0x00, 0x7E, 0x4D, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA3, 0x01, 0x6E, 0x6C, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//读取ECC_ERR管脚状态
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//不读取ECC_ERR管脚状态
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Auto_Reload_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA4, 0x00, 0xE7, 0xDA, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA4, 0x01, 0xF7, 0xFB, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//回读、刷新过程中发生SEFI后自动重载
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//回读、刷新过程中发生SEFI后不重载
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Telemetry_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA5, 0x00, 0xD4, 0xEB, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA5, 0x01, 0xC4, 0xCA, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//自动发送遥测信号，5s一次
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//手动发送遥测信号，接收UART命令后发送一次
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Flash_WP_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA6, 0x00, 0x81, 0xB8, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA6, 0x01, 0x91, 0x99, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//FLASH写命令有效
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//FLASH写命令无效
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Glutmask_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA7, 0x00, 0xB2, 0x89, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA7, 0x01, 0xA2, 0xA8, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//GLUTMASK位使能，刷新SRL16、Distributed RAM和DCM DRP动态值
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//GLUTMASK位不使能，不刷新SRL16、Distributed RAM和DCM DRP动态值
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_FPGA_Series_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA8, 0x00, 0xA2, 0xB7, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA8, 0x01, 0xB2, 0x96, 0x45, 0x4E, 0x44};
	u8 mode_list2[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA8, 0x02, 0x82, 0xF5, 0x45, 0x4E, 0x44};
	u8 mode_list3[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA8, 0x03, 0x92, 0xD4, 0x45, 0x4E, 0x44};
	u8 mode_list4[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA8, 0x04, 0xE2, 0x33, 0x45, 0x4E, 0x44};
	u8 mode_list5[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA8, 0x05, 0xF2, 0x12, 0x45, 0x4E, 0x44};
	u8 mode_list6[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA8, 0x06, 0xC2, 0x71, 0x45, 0x4E, 0x44};
	u8 mode_list7[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA8, 0x07, 0xD2, 0x50, 0x45, 0x4E, 0x44};
	
	if(mode_in == 0)
	{
		//JFM4VSX55RT
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//JFM4VSX55RH、VIRTEX4系列
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
		else if(mode_in == 2)
	{
		//VIRTEX5系列
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else if(mode_in == 3)
	{
		//VIRTEX6系列
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}
		else if(mode_in == 4)
	{
		//JFM7VX690T-RT、VIRTEX7系列、KINTEX7系列
		Usart_SendList(DEBUG_USART, mode_list4 , 11);
	}
		else if(mode_in == 5)
	{
		//VIRTEX2系列
		Usart_SendList(DEBUG_USART, mode_list5 , 11);
	}
		else if(mode_in == 6)
	{
		//无定义
		Usart_SendList(DEBUG_USART, mode_list6 , 11);
	}
		else 
	{
		//无定义
		Usart_SendList(DEBUG_USART, mode_list7 , 11);
	}	
}

void Sel_Parity_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA9, 0x00, 0x91, 0x86, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA9, 0x01, 0x81, 0xA7, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//奇校验
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//偶校验
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Mode_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAA, 0x00, 0xC4, 0xD5, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAA, 0x01, 0xD4, 0xF4, 0x45, 0x4E, 0x44};
	u8 mode_list2[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAA, 0x02, 0xE4, 0x97, 0x45, 0x4E, 0x44};
	u8 mode_list3[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAA, 0x03, 0xF4, 0xB6, 0x45, 0x4E, 0x44};
	
	if(mode_in == 0)
	{
		//定时刷新
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//定时回读
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//回读刷新后回读
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
	else
	{
		//不操作
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}
}

void Sel_Freq_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAB, 0x00, 0xF7, 0xE4, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAB, 0x01, 0xE7, 0xC5, 0x45, 0x4E, 0x44};
	u8 mode_list2[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAB, 0x02, 0xD7, 0xA6, 0x45, 0x4E, 0x44};
	u8 mode_list3[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAB, 0x03, 0xC7, 0x87, 0x45, 0x4E, 0x44};
	
	if(mode_in == 0)
	{
		//5秒
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//3分钟
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//10分钟
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
	else
	{
		//30分钟
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}
}

void Sel_Biterr_control(u8 mode_in)
{
	u8 mode_list0[12] = {0x7E, 0x7E, 0x00, 0x07, 0xAC, 0x00, 0x00, 0x88, 0xDC, 0x45, 0x4E, 0x44};
	u8 mode_list1[12] = {0x7E, 0x7E, 0x00, 0x07, 0xAC, 0x00, 0x01, 0x98, 0xFD, 0x45, 0x4E, 0x44};
	u8 mode_list2[12] = {0x7E, 0x7E, 0x00, 0x07, 0xAC, 0x00, 0x02, 0xA8, 0x9E, 0x45, 0x4E, 0x44};
	u8 mode_list3[12] = {0x7E, 0x7E, 0x00, 0x07, 0xAC, 0x00, 0x03, 0xB8, 0xBF, 0x45, 0x4E, 0x44};
	
	if(mode_in == 0)
	{
		//不重载
		Usart_SendList(DEBUG_USART, mode_list0 , 12);
	}
	else if(mode_in == 1)
	{
		//16‘d10 byte
		Usart_SendList(DEBUG_USART, mode_list1 , 12);
	}
	else if(mode_in == 2)
	{
		//16’d100byte
		Usart_SendList(DEBUG_USART, mode_list2 , 12);
	}
	else
	{
		//16‘d1000byte
		Usart_SendList(DEBUG_USART, mode_list3 , 12);
	}
}

void Sel_Flash_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAD, 0x00, 0x5D, 0x42, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAD, 0x01, 0x4D, 0x63, 0x45, 0x4E, 0x44};
	u8 mode_list2[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAD, 0x02, 0x7D, 0x00, 0x45, 0x4E, 0x44};
	u8 mode_list3[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAD, 0x03, 0x6D, 0x21, 0x45, 0x4E, 0x44};
	u8 mode_list4[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAD, 0x04, 0x1D, 0xC6, 0x45, 0x4E, 0x44};
	
	if(mode_in == 0)
	{
		//PROM
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//串行SPI FLASH
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//并行SPI FLASH
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else if(mode_in == 3)
	{
		//JFM29LV641RH
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}
	else
	{
		//异步BPI FLASH
		Usart_SendList(DEBUG_USART, mode_list4 , 11);
	}
}

void Sel_Capacity_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAE, 0x00, 0x08, 0x11, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAE, 0x01, 0x18, 0x30, 0x45, 0x4E, 0x44};
	u8 mode_list2[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAE, 0x02, 0x28, 0x53, 0x45, 0x4E, 0x44};
	u8 mode_list3[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAE, 0x03, 0x38, 0x72, 0x45, 0x4E, 0x44};
	u8 mode_list4[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAE, 0x04, 0x48, 0x95, 0x45, 0x4E, 0x44};
	u8 mode_list5[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAE, 0x05, 0x58, 0xB4, 0x45, 0x4E, 0x44};
	u8 mode_list6[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAE, 0x06, 0x68, 0xD7, 0x45, 0x4E, 0x44};
	
	if(mode_in == 0)
	{
		//16Mb
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//32Mb
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
		else if(mode_in == 2)
	{
		//64Mb
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else if(mode_in == 3)
	{
		//128Mb
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}
		else if(mode_in == 4)
	{
		//256Mb
		Usart_SendList(DEBUG_USART, mode_list4 , 11);
	}
		else if(mode_in == 5)
	{
		//512Mb
		Usart_SendList(DEBUG_USART, mode_list5 , 11);
	}
	else
	{
		//1Gb
		Usart_SendList(DEBUG_USART, mode_list6 , 11);
	}
}

void Sel_FPGA_Num_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAF, 0x00, 0x3B, 0x20, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAF, 0x01, 0x2B, 0x01, 0x45, 0x4E, 0x44};
	u8 mode_list2[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAF, 0x02, 0x1B, 0x62, 0x45, 0x4E, 0x44};
	u8 mode_list3[11] = {0x7E, 0x7E, 0x00, 0x06, 0xAF, 0x03, 0x0B, 0x43, 0x45, 0x4E, 0x44};
	
	
	if(mode_in == 0)
	{
		//1片
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//2片
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//3片
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else 
	{
		//4片
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}
}

void Sel_Flash_Num_cntrol(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB0, 0x00, 0x28, 0x6D, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB0, 0x01, 0x38, 0x4C, 0x45, 0x4E, 0x44};
	u8 mode_list2[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB0, 0x02, 0x08, 0x2F, 0x45, 0x4E, 0x44};
	u8 mode_list3[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB0, 0x03, 0x18, 0x0E, 0x45, 0x4E, 0x44};
	
	
	if(mode_in == 0)
	{
		//1片
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//2片
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//3片
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else 
	{
		//4片
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}
}

void Sel_Standby_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB1, 0x00, 0x1B, 0x5C, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB1, 0x01, 0x0B, 0x7D, 0x45, 0x4E, 0x44};
	u8 mode_list2[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB1, 0x02, 0x3B, 0x1E, 0x45, 0x4E, 0x44};
	u8 mode_list3[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB1, 0x03, 0x2B, 0x3F, 0x45, 0x4E, 0x44};
	
	
	if(mode_in == 0)
	{
		//指定sel_main寄存器为主机，指定sel_spare寄存器为备机
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//[0]、[1]FLASH为主机，[2]、[3]FLASH为备机
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//[2]、[3]FLASH为主机，[0]、[1]FLASH为备机
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else 
	{
		//无备机模式
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}
}

void Sel_Main_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB2, 0x00, 0x4E, 0x0F, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB2, 0x01, 0x5E, 0x2E, 0x45, 0x4E, 0x44};
	u8 mode_list2[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB2, 0x02, 0x6E, 0x4D, 0x45, 0x4E, 0x44};
	u8 mode_list3[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB2, 0x03, 0x7E, 0x6C, 0x45, 0x4E, 0x44};
	
	if(mode_in == 0)
	{
		//选择FLASH[0]作为主机
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//选择FLASH[1]作为主机
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//选择FLASH[2]作为主机
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else 
	{
		//选择FLASH[3]作为主机
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}
}

void Sel_Spare_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB3, 0x00, 0x7D, 0x3E, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB3, 0x01, 0x6D, 0x1F, 0x45, 0x4E, 0x44};
	u8 mode_list2[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB3, 0x02, 0x5D, 0x7C, 0x45, 0x4E, 0x44};
	u8 mode_list3[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB3, 0x03, 0x4D, 0x5D, 0x45, 0x4E, 0x44};
	
	if(mode_in == 0)
	{
		//选择FLASH[0]作为备机
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//选择FLASH[1]作为备机
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//选择FLASH[2]作为备机
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else 
	{
		//选择FLASH[3]作为备机
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}	
}

void Sel_Zone_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB4, 0x00, 0xE4, 0xA9, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB4, 0x01, 0xF4, 0x88, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//FLASH片内分为2个分区
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//片内不分区
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Auto_Switch_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB5, 0x00, 0xD7, 0x98, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB5, 0x01, 0xC7, 0xB9, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//自动切换到FLASH备机
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//不切换
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Switch_PROM_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB6, 0x00, 0x82, 0xCB, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB6, 0x01, 0x92, 0xEA, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//自动切换到PROM
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//不切换
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Nor_Flash0_Erase_Func(void)
{
	u8 EA_list[30] = {0x7E, 0x7E, 0x00, 0x19, 0xEA,
     	              0x90, 0x00, 0x05, 0x55, 0x02,
 	                  0xAA, 0x05, 0x55, 0x05, 0x55,
	                  0x02, 0xAA, 0x05, 0x55, 0xAA,
	                  0x55, 0x80, 0xAA, 0x55, 0x10,
	                  0x30, 0xF9, 0x45, 0x4E, 0x44};
	
	Usart_SendList(DEBUG_USART, EA_list , 30);
}

void Nor_Flash1_Erase_Func(void)
{
	u8 EA_list[30] = {0x7E, 0x7E, 0x00, 0x19, 0xEA,
     	              0x91, 0x00, 0x05, 0x55, 0x02,
 	                  0xAA, 0x05, 0x55, 0x05, 0x55,
	                  0x02, 0xAA, 0x05, 0x55, 0xAA,
	                  0x55, 0x80, 0xAA, 0x55, 0x10,
	                  0x05, 0x4A, 0x45, 0x4E, 0x44};
	
	Usart_SendList(DEBUG_USART, EA_list , 30);
}

void Get_YC_Func(void)
{
	u8 YC_send[10] = {0x7E, 0x7E, 0x00, 0x05, 0xB7, 0xE4, 0x55, 0x45, 0x4E, 0x44};
	Usart_SendList(DEBUG_USART, YC_send , 10);
}

void Read_flash(u32 sta_add)
{
	u32 end_temp;
	u16 CRC_TEMP;
	u8  send_list[19] = {0x7E, 0x7E, 0x00, 0x0E,
	                     0x6C, 0X90, 0x00, 0x00,
	                     0x00, 0x00, 0x00, 0x00,
	                     0x00, 0x00, 0x00, 0x00,
	                     0x45, 0x4E, 0x44};
	end_temp = sta_add + 0x100;
	send_list[6] = (sta_add >> 24) & 0xFF;
	send_list[7] = (sta_add >> 16) & 0xFF;
	send_list[8] = (sta_add >> 8)  & 0xFF;
	send_list[9] = (sta_add >> 0)  & 0xFF;
  send_list[10] = (end_temp >> 24) & 0xFF;
	send_list[11] = (end_temp >> 16) & 0xFF;
	send_list[12] = (end_temp >> 8) & 0xFF;
	send_list[13] = (end_temp >> 0) & 0xFF;
											 
	CRC_TEMP = CRC_16_Func(&send_list[2] , 12);
	send_list[14] = (CRC_TEMP >> 8) & 0xFF;
	send_list[15] = (CRC_TEMP >> 0) & 0xFF;		

	Usart_SendList(DEBUG_USART, send_list , 19);											 
}

void Nor_Flash_Program_Func(struct CG_PROCESS list_in)
{
	uint8_t list_temp[550];
	uint16_t temp_length;
	uint16_t send_length;
	uint16_t CRC1_temp , CRC2_temp;
	uint16_t count_temp;
	//帧头
	list_temp[0] = 0x7E;
	list_temp[1] = 0x7E;
	
	//帧长度
	temp_length  = list_in.program_length + 22;
	send_length  = temp_length + 5;
	list_temp[2] = (temp_length >> 8) & 0xFF;
	list_temp[3] = (temp_length >> 0) & 0xFF;
	
	//指针类型：编程0xCA
	list_temp[4] = 0xCA;
	
	//FLASH类型 异步NOR FLASH 256 FLASH0
	if(list_in.flash_type)          //FLASH1
	{
		list_temp[5] = 0x91;
	}
	else                            //FLASH0
	{
		list_temp[5] = 0x90;
	}
	//是否返回遥测 1：返回
	list_temp[6] = 0x01;
	
	//编程地址花码
	list_temp[7] = 0x05;
	list_temp[8] = 0x55;
	list_temp[9] = 0x02;
	list_temp[10] = 0xAA;
	list_temp[11] = 0x05;
	list_temp[12] = 0x55;

  //编程指令花码
	list_temp[13] = 0xAA;
	list_temp[14] = 0x55;
	list_temp[15] = 0xA0;
	
	//编程起始地址
	list_temp[16] = (list_in.program_addr >> 24) & 0xFF;
	list_temp[17] = (list_in.program_addr >> 16) & 0xFF;
	list_temp[18] = (list_in.program_addr >> 8) & 0xFF;
	list_temp[19] = (list_in.program_addr >> 0) & 0xFF;
	
	//CRC1计算，从帧长度到起始地址
	CRC1_temp = CRC_16_Func(&list_temp[2] , 18);
	list_temp[20] = (CRC1_temp >> 8) & 0xFF;
	list_temp[21] = (CRC1_temp >> 0) & 0xFF;
	
	//编程内容
	for(count_temp = 0; count_temp < list_in.program_length; count_temp++)
	{
		list_temp[22 + count_temp] = list_in.program_list[count_temp];  		
	}
	
	//CRC2计算，从帧长度到编程数据
	CRC2_temp = CRC_16_Func(&list_temp[2] , 20 + list_in.program_length);
	list_temp[22 + list_in.program_length]     = (CRC2_temp >> 8) & 0xFF;
	list_temp[22 + list_in.program_length + 1] = (CRC2_temp >> 0) & 0xFF;
	
	//帧尾
	list_temp[22 + list_in.program_length + 2] = 0x45;
	list_temp[22 + list_in.program_length + 3] = 0x4E;
  list_temp[22 + list_in.program_length + 4] = 0x44;	
	
	Usart_SendList(DEBUG_USART, list_temp , send_length);	
}

u8 CG_step(struct CG_PROCESS *CG_temp, struct YC_FUNC YC_temp)
{
	u8 result_out = 0;    //为1表示需要跳入分支操作
	switch(CG_temp->step)
	{
		case 1:      //关闭遥测
			Sel_Telemetry_control(0);
		  CG_temp->step = 2;
			break;
		
		case 2:     //sel_mode模式设为11  不操作
			Sel_Mode_control(3);
		  CG_temp->step = 3;
			break;
		
		case 3:     //FLASH解除写保护
			Sel_Flash_WP_control(1);
		  can_delay(1000);
		  //Get_YC_Func();
		  //can_delay(1000);
		  CG_temp->step = 4;
			break;
		
		case 4:
			if(CG_temp->YC_GET_FLASG)
			{
				CG_temp->YC_GET_FLASG = 0;
				if(YC_temp.RG1.bit.sel_telemetry == 1
				 &&YC_temp.RG2.bit.sel_mode == 3
				 &&YC_temp.RG1.bit.sel_flash_wp == 1)
				{
					CG_temp->step = 5;
				}
				else    //模式未设置成功
				{
					result_out = 1;
					CG_temp->step = 51;
					CG_temp->err_num = 4;
				}
			}
			break;
			
		case 5:   //发送FLASH全芯片擦除指令
			if(CG_temp->flash_type)     //擦除FLASH1
			{
				Nor_Flash1_Erase_Func();
			}
			else                       //擦除FLASH0
			{
				Nor_Flash0_Erase_Func();
			}
			CG_temp->step = 6;
			break;
			
		case 6:
			//完成FLASH擦除
		  if(CG_temp->YC_GET_FLASG)
			{
				CG_temp->YC_GET_FLASG = 0;
				if(YC_temp.STATE2.bit.fifo_state == 0
				 &&YC_temp.STATE2.bit.uart_busy_state == 0
				 &&YC_temp.STATE2.bit.flash_operate_state == 1
				 &&YC_temp.STATE2.bit.uart_crc_state == 1)
				{
					Sel_Telemetry_control(0);
					CG_temp->step = 7;
				}
				else  //擦除失败
				{
					CG_temp->step = 6;
					//result_out = 1;
				}
			}
			break;
			
		case 7:
			//可以开启并口BIN文件下发，一次下发数据长度未512字节，最后一帧为360字节
		  //向FPGA发送开始下发数据
		
			//CG_temp->step = 8;
			break;
    case 8:
			//从并口中获取完整一帧，下发发送
			Nor_Flash_Program_Func((*CG_temp));
		  CG_temp->program_length = 0;
		  CG_temp->program_addr = CG_temp->start_addr;
		  CG_temp->step = 52;
			break;
		case 9:
			//从并口中获取最后一帧
			Nor_Flash_Program_Func((*CG_temp));
		  CG_temp->program_length = 0;
		  CG_temp->program_addr = 0;
		  CG_temp->step = 11;
		case 10:
			//接收到遥测握手信号
		  if(YC_temp.STATE2.bit.fifo_state == 0
			 &&YC_temp.STATE2.bit.uart_busy_state == 0
			 &&YC_temp.STATE2.bit.flash_operate_state == 1
			 &&YC_temp.STATE2.bit.uart_crc_state == 1)
			{
				//握手完成，告诉FPGA下发新的一帧数据
				
				//接收到最后一帧，完成在线重构
			}
			else
			{
				//升级失败，报错
			}
			break;
			
		case 11:
			//发送FLASH位流检测指令校验位流数据
			break;
		
		case 12:
			//接收到遥测握手信号
		  if(YC_temp.STATE2.bit.fifo_state == 0
			 &&YC_temp.STATE2.bit.uart_busy_state == 1
			 &&YC_temp.STATE2.bit.flash_operate_state == 1
			 &&YC_temp.STATE2.bit.uart_crc_state == 1)
			{
				//位流校验指令正确
			}
			else
			{
				//位流校验指令错误，报错
			}
			break;
			
		case 13:
			//发送软复位
			break;
		
		case 14:
			//接收到遥测信号后，设置sel_mode为00
			break;
		
		case 15:
			//看寄存器设置是都正确，完成在线重构
			break;
			
		default:
			break;
	}
	
	return result_out;
}
/*********************************************END OF FILE**********************/

