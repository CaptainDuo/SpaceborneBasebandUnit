/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : cs25wq256.c
* @brief      : CS25WQ256 Flash��������
* @autor      : Captain
* @emil:      : 
* @version    : 1.0.0.0
* @date       : 2023/8/9
******************************************************************************************************************/

#include "cs25wq256.h"
#include "spi.h"
#include "stm32f4xx_hal_gpio.h"

static u32 fac_us=0;							//us��ʱ������
u16 CS25WQXX_TYPE=CS25WQ256;	//Ĭ����CS25WQ256


//��ʱnus
//nusΪҪ��ʱ��us��.	
//nus:0~190887435(���ֵ��2^32/fac_us@fac_us=22.5)	 
void delay_us(u32 nus)
{		
	u32 ticks;
	u32 told,tnow,tcnt=0;
	u32 reload=SysTick->LOAD;				//LOAD��ֵ	    	 
	ticks=nus*fac_us; 						//��Ҫ�Ľ����� 
	told=SysTick->VAL;        				//�ս���ʱ�ļ�����ֵ
	while(1)
	{
		tnow=SysTick->VAL;	
		if(tnow!=told)
		{	    
			if(tnow<told)tcnt+=told-tnow;	//����ע��һ��SYSTICK��һ���ݼ��ļ������Ϳ�����.
			else tcnt+=reload-tnow+told;	    
			told=tnow;
			if(tcnt>=ticks)break;			//ʱ�䳬��/����Ҫ�ӳٵ�ʱ��,���˳�.
		}  
	};
}

//4KbytesΪһ��Sector
//16������Ϊ1��Block
//W25Q256
//����Ϊ32M�ֽ�,����512��Block,8192��Sector 
													 
//��ʼ��SPI FLASH��IO��
void CS25WQXX_Init(SPI_HandleTypeDef *SPI_Handler)
{ 
    u8 temp;
	cs25wqxx_CS(GPIO_PIN_SET);            //SPI FLASH��ѡ��
	CS25WQXX_TYPE=CS25WQXX_ReadID(SPI_Handler);	        //��ȡFLASH ID.
    if(CS25WQXX_TYPE==CS25WQ256)                //SPI FLASHΪW25Q256
    {
        temp=CS25WQXX_ReadSR(SPI_Handler,3);              //��ȡ״̬�Ĵ���3���жϵ�ַģʽ
        if((temp&0X01)==0)			        //�������4�ֽڵ�ַģʽ,�����4�ֽڵ�ַģʽ
		{
			cs25wqxx_CS(GPIO_PIN_RESET); 			        //ѡ��
			SPI1_ReadWriteByte(SPI_Handler,CS25WQX_Enable4ByteAddr);//���ͽ���4�ֽڵ�ַģʽָ��   
			cs25wqxx_CS(GPIO_PIN_SET);       		        //ȡ��Ƭѡ   
		}
    }
}  

//��ȡW25QXX��״̬�Ĵ�����W25QXXһ����3��״̬�Ĵ���
//״̬�Ĵ���1��
//BIT7  6   5   4   3   2   1   0
//SPR   RV  TB BP2 BP1 BP0 WEL BUSY
//SPR:Ĭ��0,״̬�Ĵ�������λ,���WPʹ��
//TB,BP2,BP1,BP0:FLASH����д��������
//WEL:дʹ������
//BUSY:æ���λ(1,æ;0,����)
//Ĭ��:0x00
//״̬�Ĵ���2��
//BIT7  6   5   4   3   2   1   0
//SUS   CMP LB3 LB2 LB1 (R) QE  SRP1
//״̬�Ĵ���3��
//BIT7      6    5    4   3   2   1   0
//HOLD/RST  DRV1 DRV0 (R) (R) WPS ADP ADS
//regno:״̬�Ĵ����ţ���:1~3
//����ֵ:״̬�Ĵ���ֵ
u8 CS25WQXX_ReadSR(SPI_HandleTypeDef *SPI_Handler,u8 regno)   
{  
	u8 byte=0,command=0; 
    switch(regno)
    {
        case 1:
            command=CS25WQX_ReadStatusReg1;    //��״̬�Ĵ���1ָ��
            break;
        case 2:
            command=CS25WQX_ReadStatusReg2;    //��״̬�Ĵ���2ָ��
            break;
        case 3:
            command=CS25WQX_ReadStatusReg3;    //��״̬�Ĵ���3ָ��
            break;
        default:
            command=CS25WQX_ReadStatusReg1;    
            break;
    }    
	cs25wqxx_CS(GPIO_PIN_RESET);                            //ʹ������   
	SPI1_ReadWriteByte(SPI_Handler ,command);            //���Ͷ�ȡ״̬�Ĵ�������    
	byte=SPI1_ReadWriteByte(SPI_Handler ,0Xff);          //��ȡһ���ֽ�  
	cs25wqxx_CS(GPIO_PIN_SET);                            //ȡ��Ƭѡ     
	return byte;   
} 
//дW25QXX״̬�Ĵ���
void CS25WQXX_Write_SR(SPI_HandleTypeDef *SPI_Handler,u8 regno,u8 sr)   
{   
    u8 command=0;
    switch(regno)
    {
        case 1:
            command=CS25WQX_WriteStatusReg1;    //д״̬�Ĵ���1ָ��
            break;
        case 2:
            command=CS25WQX_WriteStatusReg2;    //д״̬�Ĵ���2ָ��
            break;
        case 3:
            command=CS25WQX_WriteStatusReg3;    //д״̬�Ĵ���3ָ��
            break;
        default:
            command=CS25WQX_WriteStatusReg1;    
            break;
    }   
	cs25wqxx_CS(GPIO_PIN_RESET);                            //ʹ������   
	SPI1_ReadWriteByte(SPI_Handler, command);            //����дȡ״̬�Ĵ�������    
	SPI1_ReadWriteByte(SPI_Handler, sr);                 //д��һ���ֽ�  
	cs25wqxx_CS(GPIO_PIN_SET);                            //ȡ��Ƭѡ     	      
}   
//W25QXXдʹ��	
//��WEL��λ   
void CS25WQXX_Write_Enable(SPI_HandleTypeDef *SPI_Handler)   
{
	cs25wqxx_CS(GPIO_PIN_RESET);                            //ʹ������   
    SPI1_ReadWriteByte(SPI_Handler,CS25WQX_WriteEnable);   //����дʹ��  
	cs25wqxx_CS(GPIO_PIN_SET);                            //ȡ��Ƭѡ     	      
} 
//W25QXXд��ֹ	
//��WEL����  
void CS25WQXX_Write_Disable(SPI_HandleTypeDef *SPI_Handler)   
{  
	cs25wqxx_CS(GPIO_PIN_RESET);                            //ʹ������   
    SPI1_ReadWriteByte(SPI_Handler, CS25WQX_WriteDisable);  //����д��ָֹ��    
	cs25wqxx_CS(GPIO_PIN_SET);                            //ȡ��Ƭѡ     	      
} 

//��ȡоƬID
//����ֵ����:				   
u16 CS25WQXX_ReadID(SPI_HandleTypeDef *SPI_Handler)
{
	u16 Temp = 0;	  
	cs25wqxx_CS(GPIO_PIN_RESET);				    
	SPI1_ReadWriteByte(SPI_Handler, 0x90);//���Ͷ�ȡID����	    
	SPI1_ReadWriteByte(SPI_Handler,0x00); 	    
	SPI1_ReadWriteByte(SPI_Handler,0x00); 	    
	SPI1_ReadWriteByte(SPI_Handler,0x00); 	 			   
	Temp|=SPI1_ReadWriteByte(SPI_Handler,0xFF)<<8;  
	Temp|=SPI1_ReadWriteByte(SPI_Handler,0xFF);	 
	cs25wqxx_CS(GPIO_PIN_RESET);				    
	return Temp;
}   		    
//��ȡSPI FLASH  
//��ָ����ַ��ʼ��ȡָ�����ȵ�����
//pBuffer:���ݴ洢��
//ReadAddr:��ʼ��ȡ�ĵ�ַ(24bit)
//NumByteToRead:Ҫ��ȡ���ֽ���(���65535)
void CS25WQXX_Read(SPI_HandleTypeDef *SPI_Handler,u8* pBuffer,u32 ReadAddr,u16 NumByteToRead)   
{ 
 	u16 i;   										    
	cs25wqxx_CS(GPIO_PIN_RESET);                            //ʹ������   
    SPI1_ReadWriteByte(SPI_Handler, CS25WQX_ReadData);      //���Ͷ�ȡ����  
    if(CS25WQXX_TYPE==CS25WQ256)                //�����W25Q256�Ļ���ַΪ4�ֽڵģ�Ҫ�������8λ
    {
        SPI1_ReadWriteByte(SPI_Handler, (u8)((ReadAddr)>>24));    
    }
    SPI1_ReadWriteByte(SPI_Handler, (u8)((ReadAddr)>>16));   //����24bit��ַ    
    SPI1_ReadWriteByte(SPI_Handler, (u8)((ReadAddr)>>8));   
    SPI1_ReadWriteByte(SPI_Handler, (u8)ReadAddr);   
    for(i=0;i<NumByteToRead;i++)
	{ 
        pBuffer[i]=SPI1_ReadWriteByte(SPI_Handler, 0XFF);    //ѭ������  
    }
	cs25wqxx_CS(GPIO_PIN_SET);  				    	      
}  
//SPI��һҳ(0~65535)��д������256���ֽڵ�����
//��ָ����ַ��ʼд�����256�ֽڵ�����
//pBuffer:���ݴ洢��
//WriteAddr:��ʼд��ĵ�ַ(24bit)
//NumByteToWrite:Ҫд����ֽ���(���256),������Ӧ�ó�����ҳ��ʣ���ֽ���!!!	 
void CS25WQXX_Write_Page(SPI_HandleTypeDef *SPI_Handler,u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite)
{
 	u16 i;  
    CS25WQXX_Write_Enable(SPI_Handler);                  //SET WEL 
	cs25wqxx_CS(GPIO_PIN_RESET);                            //ʹ������   
    SPI1_ReadWriteByte(SPI_Handler, CS25WQX_PageProgram);   //����дҳ����   
    if(CS25WQXX_TYPE==CS25WQ256)                //�����W25Q256�Ļ���ַΪ4�ֽڵģ�Ҫ�������8λ
    {
        SPI1_ReadWriteByte(SPI_Handler, (u8)((WriteAddr)>>24)); 
    }
    SPI1_ReadWriteByte(SPI_Handler, (u8)((WriteAddr)>>16)); //����24bit��ַ    
    SPI1_ReadWriteByte(SPI_Handler, (u8)((WriteAddr)>>8));   
    SPI1_ReadWriteByte(SPI_Handler, (u8)WriteAddr);   
    for(i=0;i<NumByteToWrite;i++)SPI1_ReadWriteByte(SPI_Handler, pBuffer[i]);//ѭ��д��  
	cs25wqxx_CS(GPIO_PIN_SET);                            //ȡ��Ƭѡ 
	CS25WQXX_Wait_Busy(SPI_Handler);					   //�ȴ�д�����
} 
//�޼���дSPI FLASH 
//����ȷ����д�ĵ�ַ��Χ�ڵ�����ȫ��Ϊ0XFF,�����ڷ�0XFF��д������ݽ�ʧ��!
//�����Զ���ҳ���� 
//��ָ����ַ��ʼд��ָ�����ȵ�����,����Ҫȷ����ַ��Խ��!
//pBuffer:���ݴ洢��
//WriteAddr:��ʼд��ĵ�ַ(24bit)
//NumByteToWrite:Ҫд����ֽ���(���65535)
//CHECK OK
void CS25WQXX_Write_NoCheck(SPI_HandleTypeDef *SPI_Handler,u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite)   
{ 			 		 
	u16 pageremain;	   
	pageremain=256-WriteAddr%256; //��ҳʣ����ֽ���		 	    
	if(NumByteToWrite<=pageremain)pageremain=NumByteToWrite;//������256���ֽ�
	while(1)
	{	   
		CS25WQXX_Write_Page(SPI_Handler,pBuffer,WriteAddr,pageremain);
		if(NumByteToWrite==pageremain)break;//д�������
	 	else //NumByteToWrite>pageremain
		{
			pBuffer+=pageremain;
			WriteAddr+=pageremain;	

			NumByteToWrite-=pageremain;			  //��ȥ�Ѿ�д���˵��ֽ���
			if(NumByteToWrite>256)pageremain=256; //һ�ο���д��256���ֽ�
			else pageremain=NumByteToWrite; 	  //����256���ֽ���
		}
	};	    
} 
//дSPI FLASH  
//��ָ����ַ��ʼд��ָ�����ȵ�����
//�ú�������������!
//pBuffer:���ݴ洢��
//WriteAddr:��ʼд��ĵ�ַ(24bit)						
//NumByteToWrite:Ҫд����ֽ���(���65535)   
u8 CS25WQXX_BUFFER[4096];		 
void CS25WQXX_Write(SPI_HandleTypeDef *SPI_Handler,u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite)   
{ 
	u32 secpos;
	u16 secoff;
	u16 secremain;	   
 	u16 i;    
	u8 * CS25WQXX_BUF;	  
   	CS25WQXX_BUF=CS25WQXX_BUFFER;	     
 	secpos=WriteAddr/4096;//������ַ  
	secoff=WriteAddr%4096;//�������ڵ�ƫ��
	secremain=4096-secoff;//����ʣ��ռ��С   
 	
 	if(NumByteToWrite<=secremain)secremain=NumByteToWrite;//������4096���ֽ�
	while(1) 
	{	
		CS25WQXX_Read(SPI_Handler,CS25WQXX_BUF,secpos*4096,4096);//������������������
		for(i=0;i<secremain;i++)//У������
		{
			if(CS25WQXX_BUF[secoff+i]!=0XFF)break;//��Ҫ����  	  
		}
		if(i<secremain)//��Ҫ����
		{
			CS25WQXX_Erase_Sector(SPI_Handler,secpos);//�����������
			for(i=0;i<secremain;i++)	   //����
			{
				CS25WQXX_BUF[i+secoff]=pBuffer[i];	  
			}
			CS25WQXX_Write_NoCheck(SPI_Handler,CS25WQXX_BUF,secpos*4096,4096);//д����������  

		}else CS25WQXX_Write_NoCheck(SPI_Handler,pBuffer,WriteAddr,secremain);//д�Ѿ������˵�,ֱ��д������ʣ������. 				   
		if(NumByteToWrite==secremain)break;//д�������
		else//д��δ����
		{
			secpos++;//������ַ��1
			secoff=0;//ƫ��λ��Ϊ0 	 

		   	pBuffer+=secremain;  //ָ��ƫ��
			WriteAddr+=secremain;//д��ַƫ��	   
		   	NumByteToWrite-=secremain;				//�ֽ����ݼ�
			if(NumByteToWrite>4096)secremain=4096;	//��һ����������д����
			else secremain=NumByteToWrite;			//��һ����������д����
		}	 
	};	 
}
//��������оƬ		  
//�ȴ�ʱ�䳬��...
void CS25WQXX_Erase_Chip(SPI_HandleTypeDef *SPI_Handler)   
{                                   
    CS25WQXX_Write_Enable(SPI_Handler);                  //SET WEL 
    CS25WQXX_Wait_Busy(SPI_Handler);   
  	cs25wqxx_CS(GPIO_PIN_RESET);                            //ʹ������   
    SPI1_ReadWriteByte(SPI_Handler, CS25WQX_ChipErase);        //����Ƭ��������  
	cs25wqxx_CS(GPIO_PIN_SET);                            //ȡ��Ƭѡ     	      
	CS25WQXX_Wait_Busy(SPI_Handler);   				   //�ȴ�оƬ��������
}   
//����һ������
//Dst_Addr:������ַ ����ʵ����������
//����һ������������ʱ��:150ms
void CS25WQXX_Erase_Sector(SPI_HandleTypeDef *SPI_Handler , u32 Dst_Addr)   
{  
	//����falsh�������,������   
 	//printf("fe:%x\r\n",Dst_Addr);	  
 	Dst_Addr*=4096;
    CS25WQXX_Write_Enable(SPI_Handler);                  //SET WEL 	 
    CS25WQXX_Wait_Busy(SPI_Handler);   
  	cs25wqxx_CS(GPIO_PIN_RESET);                            //ʹ������   
    SPI1_ReadWriteByte(SPI_Handler , CS25WQX_SectorErase);   //������������ָ�� 
    if(CS25WQXX_TYPE==CS25WQ256)                //�����W25Q256�Ļ���ַΪ4�ֽڵģ�Ҫ�������8λ
    {
        SPI1_ReadWriteByte(SPI_Handler , (u8)((Dst_Addr)>>24)); 
    }
    SPI1_ReadWriteByte(SPI_Handler , (u8)((Dst_Addr)>>16));  //����24bit��ַ    
    SPI1_ReadWriteByte(SPI_Handler , (u8)((Dst_Addr)>>8));   
    SPI1_ReadWriteByte(SPI_Handler , (u8)Dst_Addr);  
	cs25wqxx_CS(GPIO_PIN_SET);                            //ȡ��Ƭѡ     	      
    CS25WQXX_Wait_Busy(SPI_Handler);   				    //�ȴ��������
}  
//�ȴ�����
void CS25WQXX_Wait_Busy(SPI_HandleTypeDef *SPI_Handler )   
{   
	while((CS25WQXX_ReadSR(SPI_Handler,1)&0x01)==0x01);   // �ȴ�BUSYλ���
}  
//�������ģʽ
void CS25WQXX_PowerDown(SPI_HandleTypeDef *SPI_Handler)   
{ 
  	cs25wqxx_CS(GPIO_PIN_RESET);                            //ʹ������   
    SPI1_ReadWriteByte(SPI_Handler , CS25WQX_PowerDown);     //���͵�������  
	cs25wqxx_CS(GPIO_PIN_SET);                            //ȡ��Ƭѡ     	      
    delay_us(3);                            //�ȴ�TPD  
}   
//����
void CS25WQXX_WAKEUP(SPI_HandleTypeDef *SPI_Handler)   
{  
  	cs25wqxx_CS(GPIO_PIN_RESET);                                //ʹ������   
    SPI1_ReadWriteByte(SPI_Handler,CS25WQX_ReleasePowerDown);  //  send W25X_PowerDown command 0xAB    
	cs25wqxx_CS(GPIO_PIN_SET);                                //ȡ��Ƭѡ     	      
    delay_us(3);                                //�ȴ�TRES1
}   
