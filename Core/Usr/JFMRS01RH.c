#include "stm32f4xx.h"
#include "CRC_16.h"
#include "bsp_debug_usart.h"

void Sel_Per_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA0, 0x00, 0x2B, 0x1E, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA0, 0x01, 0x3B, 0x3F, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//��λ���Զ�����FPGA
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//��λ������FPGA
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Intf_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA1, 0x00, 0x18, 0x2F, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA1, 0x01, 0x08, 0x0E, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//select Map�ӿ�ģʽ
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//daisy chain�ӿ�ģʽ
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Daisy_Chain_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA2, 0x00, 0x4D, 0x7C, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA2, 0x01, 0x5D, 0x5D, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//����daisy chainģʽ�����ݴ�FPGA_DATA 8λ�������
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//����daisy chainģʽ�����ݴ�FPGA_SERIAL_DOUT���
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Ecc_EN_contrl(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA3, 0x00, 0x7E, 0x4D, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA3, 0x01, 0x6E, 0x6C, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//��ȡECC_ERR�ܽ�״̬
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//����ȡECC_ERR�ܽ�״̬
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Auto_Reload_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA4, 0x00, 0xE7, 0xDA, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA4, 0x01, 0xF7, 0xFB, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//�ض���ˢ�¹����з���SEFI���Զ�����
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//�ض���ˢ�¹����з���SEFI������
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Telemetry_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA5, 0x00, 0xD4, 0xEB, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA5, 0x01, 0xC4, 0xCA, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//�Զ�����ң���źţ�5sһ��
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//�ֶ�����ң���źţ�����UART�������һ��
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Flash_WP_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA6, 0x00, 0x81, 0xB8, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA6, 0x01, 0x91, 0x99, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//FLASHд������Ч
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//FLASHд������Ч
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Glutmask_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA7, 0x00, 0xB2, 0x89, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA7, 0x01, 0xA2, 0xA8, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//GLUTMASKλʹ�ܣ�ˢ��SRL16��Distributed RAM��DCM DRP��ֵ̬
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//GLUTMASKλ��ʹ�ܣ���ˢ��SRL16��Distributed RAM��DCM DRP��ֵ̬
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
		//JFM4VSX55RH��VIRTEX4ϵ��
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
		else if(mode_in == 2)
	{
		//VIRTEX5ϵ��
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else if(mode_in == 3)
	{
		//VIRTEX6ϵ��
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}
		else if(mode_in == 4)
	{
		//JFM7VX690T-RT��VIRTEX7ϵ�С�KINTEX7ϵ��
		Usart_SendList(DEBUG_USART, mode_list4 , 11);
	}
		else if(mode_in == 5)
	{
		//VIRTEX2ϵ��
		Usart_SendList(DEBUG_USART, mode_list5 , 11);
	}
		else if(mode_in == 6)
	{
		//�޶���
		Usart_SendList(DEBUG_USART, mode_list6 , 11);
	}
		else 
	{
		//�޶���
		Usart_SendList(DEBUG_USART, mode_list7 , 11);
	}	
}

void Sel_Parity_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA9, 0x00, 0x91, 0x86, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xA9, 0x01, 0x81, 0xA7, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//��У��
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//żУ��
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
		//��ʱˢ��
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//��ʱ�ض�
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//�ض�ˢ�º�ض�
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
	else
	{
		//������
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
		//5��
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//3����
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//10����
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
	else
	{
		//30����
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
		//������
		Usart_SendList(DEBUG_USART, mode_list0 , 12);
	}
	else if(mode_in == 1)
	{
		//16��d10 byte
		Usart_SendList(DEBUG_USART, mode_list1 , 12);
	}
	else if(mode_in == 2)
	{
		//16��d100byte
		Usart_SendList(DEBUG_USART, mode_list2 , 12);
	}
	else
	{
		//16��d1000byte
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
		//����SPI FLASH
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//����SPI FLASH
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else if(mode_in == 3)
	{
		//JFM29LV641RH
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}
	else
	{
		//�첽BPI FLASH
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
		//1Ƭ
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//2Ƭ
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//3Ƭ
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else 
	{
		//4Ƭ
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
		//1Ƭ
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//2Ƭ
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//3Ƭ
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else 
	{
		//4Ƭ
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
		//ָ��sel_main�Ĵ���Ϊ������ָ��sel_spare�Ĵ���Ϊ����
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//[0]��[1]FLASHΪ������[2]��[3]FLASHΪ����
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//[2]��[3]FLASHΪ������[0]��[1]FLASHΪ����
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else 
	{
		//�ޱ���ģʽ
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
		//ѡ��FLASH[0]��Ϊ����
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//ѡ��FLASH[1]��Ϊ����
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//ѡ��FLASH[2]��Ϊ����
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else 
	{
		//ѡ��FLASH[3]��Ϊ����
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
		//ѡ��FLASH[0]��Ϊ����
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
	else if(mode_in == 1)
	{
		//ѡ��FLASH[1]��Ϊ����
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else if(mode_in == 2)
	{
		//ѡ��FLASH[2]��Ϊ����
		Usart_SendList(DEBUG_USART, mode_list2 , 11);
	}
		else 
	{
		//ѡ��FLASH[3]��Ϊ����
		Usart_SendList(DEBUG_USART, mode_list3 , 11);
	}	
}

void Sel_Zone_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB4, 0x00, 0xE4, 0xA9, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB4, 0x01, 0xF4, 0x88, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//FLASHƬ�ڷ�Ϊ2������
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//Ƭ�ڲ�����
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Auto_Switch_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB5, 0x00, 0xD7, 0x98, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB5, 0x01, 0xC7, 0xB9, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//�Զ��л���FLASH����
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//���л�
		Usart_SendList(DEBUG_USART, mode_list0 , 11);
	}
}

void Sel_Switch_PROM_control(u8 mode_in)
{
	u8 mode_list0[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB6, 0x00, 0x82, 0xCB, 0x45, 0x4E, 0x44};
	u8 mode_list1[11] = {0x7E, 0x7E, 0x00, 0x06, 0xB6, 0x01, 0x92, 0xEA, 0x45, 0x4E, 0x44};
	
	if(mode_in)
	{
		//�Զ��л���PROM
		Usart_SendList(DEBUG_USART, mode_list1 , 11);
	}
	else
	{
		//���л�
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
	//֡ͷ
	list_temp[0] = 0x7E;
	list_temp[1] = 0x7E;
	
	//֡����
	temp_length  = list_in.program_length + 22;
	send_length  = temp_length + 5;
	list_temp[2] = (temp_length >> 8) & 0xFF;
	list_temp[3] = (temp_length >> 0) & 0xFF;
	
	//ָ�����ͣ����0xCA
	list_temp[4] = 0xCA;
	
	//FLASH���� �첽NOR FLASH 256 FLASH0
	if(list_in.flash_type)          //FLASH1
	{
		list_temp[5] = 0x91;
	}
	else                            //FLASH0
	{
		list_temp[5] = 0x90;
	}
	//�Ƿ񷵻�ң�� 1������
	list_temp[6] = 0x01;
	
	//��̵�ַ����
	list_temp[7] = 0x05;
	list_temp[8] = 0x55;
	list_temp[9] = 0x02;
	list_temp[10] = 0xAA;
	list_temp[11] = 0x05;
	list_temp[12] = 0x55;

  //���ָ���
	list_temp[13] = 0xAA;
	list_temp[14] = 0x55;
	list_temp[15] = 0xA0;
	
	//�����ʼ��ַ
	list_temp[16] = (list_in.program_addr >> 24) & 0xFF;
	list_temp[17] = (list_in.program_addr >> 16) & 0xFF;
	list_temp[18] = (list_in.program_addr >> 8) & 0xFF;
	list_temp[19] = (list_in.program_addr >> 0) & 0xFF;
	
	//CRC1���㣬��֡���ȵ���ʼ��ַ
	CRC1_temp = CRC_16_Func(&list_temp[2] , 18);
	list_temp[20] = (CRC1_temp >> 8) & 0xFF;
	list_temp[21] = (CRC1_temp >> 0) & 0xFF;
	
	//�������
	for(count_temp = 0; count_temp < list_in.program_length; count_temp++)
	{
		list_temp[22 + count_temp] = list_in.program_list[count_temp];  		
	}
	
	//CRC2���㣬��֡���ȵ��������
	CRC2_temp = CRC_16_Func(&list_temp[2] , 20 + list_in.program_length);
	list_temp[22 + list_in.program_length]     = (CRC2_temp >> 8) & 0xFF;
	list_temp[22 + list_in.program_length + 1] = (CRC2_temp >> 0) & 0xFF;
	
	//֡β
	list_temp[22 + list_in.program_length + 2] = 0x45;
	list_temp[22 + list_in.program_length + 3] = 0x4E;
  list_temp[22 + list_in.program_length + 4] = 0x44;	
	
	Usart_SendList(DEBUG_USART, list_temp , send_length);	
}

u8 CG_step(struct CG_PROCESS *CG_temp, struct YC_FUNC YC_temp)
{
	u8 result_out = 0;    //Ϊ1��ʾ��Ҫ�����֧����
	switch(CG_temp->step)
	{
		case 1:      //�ر�ң��
			Sel_Telemetry_control(0);
		  CG_temp->step = 2;
			break;
		
		case 2:     //sel_modeģʽ��Ϊ11  ������
			Sel_Mode_control(3);
		  CG_temp->step = 3;
			break;
		
		case 3:     //FLASH���д����
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
				else    //ģʽδ���óɹ�
				{
					result_out = 1;
					CG_temp->step = 51;
					CG_temp->err_num = 4;
				}
			}
			break;
			
		case 5:   //����FLASHȫоƬ����ָ��
			if(CG_temp->flash_type)     //����FLASH1
			{
				Nor_Flash1_Erase_Func();
			}
			else                       //����FLASH0
			{
				Nor_Flash0_Erase_Func();
			}
			CG_temp->step = 6;
			break;
			
		case 6:
			//���FLASH����
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
				else  //����ʧ��
				{
					CG_temp->step = 6;
					//result_out = 1;
				}
			}
			break;
			
		case 7:
			//���Կ�������BIN�ļ��·���һ���·����ݳ���δ512�ֽڣ����һ֡Ϊ360�ֽ�
		  //��FPGA���Ϳ�ʼ�·�����
		
			//CG_temp->step = 8;
			break;
    case 8:
			//�Ӳ����л�ȡ����һ֡���·�����
			Nor_Flash_Program_Func((*CG_temp));
		  CG_temp->program_length = 0;
		  CG_temp->program_addr = CG_temp->start_addr;
		  CG_temp->step = 52;
			break;
		case 9:
			//�Ӳ����л�ȡ���һ֡
			Nor_Flash_Program_Func((*CG_temp));
		  CG_temp->program_length = 0;
		  CG_temp->program_addr = 0;
		  CG_temp->step = 11;
		case 10:
			//���յ�ң�������ź�
		  if(YC_temp.STATE2.bit.fifo_state == 0
			 &&YC_temp.STATE2.bit.uart_busy_state == 0
			 &&YC_temp.STATE2.bit.flash_operate_state == 1
			 &&YC_temp.STATE2.bit.uart_crc_state == 1)
			{
				//������ɣ�����FPGA�·��µ�һ֡����
				
				//���յ����һ֡����������ع�
			}
			else
			{
				//����ʧ�ܣ�����
			}
			break;
			
		case 11:
			//����FLASHλ�����ָ��У��λ������
			break;
		
		case 12:
			//���յ�ң�������ź�
		  if(YC_temp.STATE2.bit.fifo_state == 0
			 &&YC_temp.STATE2.bit.uart_busy_state == 1
			 &&YC_temp.STATE2.bit.flash_operate_state == 1
			 &&YC_temp.STATE2.bit.uart_crc_state == 1)
			{
				//λ��У��ָ����ȷ
			}
			else
			{
				//λ��У��ָ����󣬱���
			}
			break;
			
		case 13:
			//������λ
			break;
		
		case 14:
			//���յ�ң���źź�����sel_modeΪ00
			break;
		
		case 15:
			//���Ĵ��������Ƕ���ȷ����������ع�
			break;
			
		default:
			break;
	}
	
	return result_out;
}
/*********************************************END OF FILE**********************/

