/******************************************************************************************************************
* Copyright (C): CETC-58,All rights reserved
* @file       : cs25wq256.c
* @brief      : CS25WQ256 Flash驱动程序
* @autor      : Captain
* @emil:      : 
* @version    : 1.0.0.0
* @date       : 2023/8/9
******************************************************************************************************************/

#include "cs25wq256.h"
#include "spi.h"
#include "stm32f4xx_hal_gpio.h"

static u32 fac_us=0;							//us延时倍乘数
u16 CS25WQXX_TYPE=CS25WQ256;	//默认是CS25WQ256


//延时nus
//nus为要延时的us数.	
//nus:0~190887435(最大值即2^32/fac_us@fac_us=22.5)	 
void delay_us(u32 nus)
{		
	u32 ticks;
	u32 told,tnow,tcnt=0;
	u32 reload=SysTick->LOAD;				//LOAD的值	    	 
	ticks=nus*fac_us; 						//需要的节拍数 
	told=SysTick->VAL;        				//刚进入时的计数器值
	while(1)
	{
		tnow=SysTick->VAL;	
		if(tnow!=told)
		{	    
			if(tnow<told)tcnt+=told-tnow;	//这里注意一下SYSTICK是一个递减的计数器就可以了.
			else tcnt+=reload-tnow+told;	    
			told=tnow;
			if(tcnt>=ticks)break;			//时间超过/等于要延迟的时间,则退出.
		}  
	};
}

//4Kbytes为一个Sector
//16个扇区为1个Block
//W25Q256
//容量为32M字节,共有512个Block,8192个Sector 
													 
//初始化SPI FLASH的IO口
void CS25WQXX_Init(SPI_HandleTypeDef *SPI_Handler)
{ 
    u8 temp;
	cs25wqxx_CS(GPIO_PIN_SET);            //SPI FLASH不选中
	CS25WQXX_TYPE=CS25WQXX_ReadID(SPI_Handler);	        //读取FLASH ID.
    if(CS25WQXX_TYPE==CS25WQ256)                //SPI FLASH为W25Q256
    {
        temp=CS25WQXX_ReadSR(SPI_Handler,3);              //读取状态寄存器3，判断地址模式
        if((temp&0X01)==0)			        //如果不是4字节地址模式,则进入4字节地址模式
		{
			cs25wqxx_CS(GPIO_PIN_RESET); 			        //选中
			SPI1_ReadWriteByte(SPI_Handler,CS25WQX_Enable4ByteAddr);//发送进入4字节地址模式指令   
			cs25wqxx_CS(GPIO_PIN_SET);       		        //取消片选   
		}
    }
}  

//读取W25QXX的状态寄存器，W25QXX一共有3个状态寄存器
//状态寄存器1：
//BIT7  6   5   4   3   2   1   0
//SPR   RV  TB BP2 BP1 BP0 WEL BUSY
//SPR:默认0,状态寄存器保护位,配合WP使用
//TB,BP2,BP1,BP0:FLASH区域写保护设置
//WEL:写使能锁定
//BUSY:忙标记位(1,忙;0,空闲)
//默认:0x00
//状态寄存器2：
//BIT7  6   5   4   3   2   1   0
//SUS   CMP LB3 LB2 LB1 (R) QE  SRP1
//状态寄存器3：
//BIT7      6    5    4   3   2   1   0
//HOLD/RST  DRV1 DRV0 (R) (R) WPS ADP ADS
//regno:状态寄存器号，范:1~3
//返回值:状态寄存器值
u8 CS25WQXX_ReadSR(SPI_HandleTypeDef *SPI_Handler,u8 regno)   
{  
	u8 byte=0,command=0; 
    switch(regno)
    {
        case 1:
            command=CS25WQX_ReadStatusReg1;    //读状态寄存器1指令
            break;
        case 2:
            command=CS25WQX_ReadStatusReg2;    //读状态寄存器2指令
            break;
        case 3:
            command=CS25WQX_ReadStatusReg3;    //读状态寄存器3指令
            break;
        default:
            command=CS25WQX_ReadStatusReg1;    
            break;
    }    
	cs25wqxx_CS(GPIO_PIN_RESET);                            //使能器件   
	SPI1_ReadWriteByte(SPI_Handler ,command);            //发送读取状态寄存器命令    
	byte=SPI1_ReadWriteByte(SPI_Handler ,0Xff);          //读取一个字节  
	cs25wqxx_CS(GPIO_PIN_SET);                            //取消片选     
	return byte;   
} 
//写W25QXX状态寄存器
void CS25WQXX_Write_SR(SPI_HandleTypeDef *SPI_Handler,u8 regno,u8 sr)   
{   
    u8 command=0;
    switch(regno)
    {
        case 1:
            command=CS25WQX_WriteStatusReg1;    //写状态寄存器1指令
            break;
        case 2:
            command=CS25WQX_WriteStatusReg2;    //写状态寄存器2指令
            break;
        case 3:
            command=CS25WQX_WriteStatusReg3;    //写状态寄存器3指令
            break;
        default:
            command=CS25WQX_WriteStatusReg1;    
            break;
    }   
	cs25wqxx_CS(GPIO_PIN_RESET);                            //使能器件   
	SPI1_ReadWriteByte(SPI_Handler, command);            //发送写取状态寄存器命令    
	SPI1_ReadWriteByte(SPI_Handler, sr);                 //写入一个字节  
	cs25wqxx_CS(GPIO_PIN_SET);                            //取消片选     	      
}   
//W25QXX写使能	
//将WEL置位   
void CS25WQXX_Write_Enable(SPI_HandleTypeDef *SPI_Handler)   
{
	cs25wqxx_CS(GPIO_PIN_RESET);                            //使能器件   
    SPI1_ReadWriteByte(SPI_Handler,CS25WQX_WriteEnable);   //发送写使能  
	cs25wqxx_CS(GPIO_PIN_SET);                            //取消片选     	      
} 
//W25QXX写禁止	
//将WEL清零  
void CS25WQXX_Write_Disable(SPI_HandleTypeDef *SPI_Handler)   
{  
	cs25wqxx_CS(GPIO_PIN_RESET);                            //使能器件   
    SPI1_ReadWriteByte(SPI_Handler, CS25WQX_WriteDisable);  //发送写禁止指令    
	cs25wqxx_CS(GPIO_PIN_SET);                            //取消片选     	      
} 

//读取芯片ID
//返回值如下:				   
u16 CS25WQXX_ReadID(SPI_HandleTypeDef *SPI_Handler)
{
	u16 Temp = 0;	  
	cs25wqxx_CS(GPIO_PIN_RESET);				    
	SPI1_ReadWriteByte(SPI_Handler, 0x90);//发送读取ID命令	    
	SPI1_ReadWriteByte(SPI_Handler,0x00); 	    
	SPI1_ReadWriteByte(SPI_Handler,0x00); 	    
	SPI1_ReadWriteByte(SPI_Handler,0x00); 	 			   
	Temp|=SPI1_ReadWriteByte(SPI_Handler,0xFF)<<8;  
	Temp|=SPI1_ReadWriteByte(SPI_Handler,0xFF);	 
	cs25wqxx_CS(GPIO_PIN_RESET);				    
	return Temp;
}   		    
//读取SPI FLASH  
//在指定地址开始读取指定长度的数据
//pBuffer:数据存储区
//ReadAddr:开始读取的地址(24bit)
//NumByteToRead:要读取的字节数(最大65535)
void CS25WQXX_Read(SPI_HandleTypeDef *SPI_Handler,u8* pBuffer,u32 ReadAddr,u16 NumByteToRead)   
{ 
 	u16 i;   										    
	cs25wqxx_CS(GPIO_PIN_RESET);                            //使能器件   
    SPI1_ReadWriteByte(SPI_Handler, CS25WQX_ReadData);      //发送读取命令  
    if(CS25WQXX_TYPE==CS25WQ256)                //如果是W25Q256的话地址为4字节的，要发送最高8位
    {
        SPI1_ReadWriteByte(SPI_Handler, (u8)((ReadAddr)>>24));    
    }
    SPI1_ReadWriteByte(SPI_Handler, (u8)((ReadAddr)>>16));   //发送24bit地址    
    SPI1_ReadWriteByte(SPI_Handler, (u8)((ReadAddr)>>8));   
    SPI1_ReadWriteByte(SPI_Handler, (u8)ReadAddr);   
    for(i=0;i<NumByteToRead;i++)
	{ 
        pBuffer[i]=SPI1_ReadWriteByte(SPI_Handler, 0XFF);    //循环读数  
    }
	cs25wqxx_CS(GPIO_PIN_SET);  				    	      
}  
//SPI在一页(0~65535)内写入少于256个字节的数据
//在指定地址开始写入最大256字节的数据
//pBuffer:数据存储区
//WriteAddr:开始写入的地址(24bit)
//NumByteToWrite:要写入的字节数(最大256),该数不应该超过该页的剩余字节数!!!	 
void CS25WQXX_Write_Page(SPI_HandleTypeDef *SPI_Handler,u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite)
{
 	u16 i;  
    CS25WQXX_Write_Enable(SPI_Handler);                  //SET WEL 
	cs25wqxx_CS(GPIO_PIN_RESET);                            //使能器件   
    SPI1_ReadWriteByte(SPI_Handler, CS25WQX_PageProgram);   //发送写页命令   
    if(CS25WQXX_TYPE==CS25WQ256)                //如果是W25Q256的话地址为4字节的，要发送最高8位
    {
        SPI1_ReadWriteByte(SPI_Handler, (u8)((WriteAddr)>>24)); 
    }
    SPI1_ReadWriteByte(SPI_Handler, (u8)((WriteAddr)>>16)); //发送24bit地址    
    SPI1_ReadWriteByte(SPI_Handler, (u8)((WriteAddr)>>8));   
    SPI1_ReadWriteByte(SPI_Handler, (u8)WriteAddr);   
    for(i=0;i<NumByteToWrite;i++)SPI1_ReadWriteByte(SPI_Handler, pBuffer[i]);//循环写数  
	cs25wqxx_CS(GPIO_PIN_SET);                            //取消片选 
	CS25WQXX_Wait_Busy(SPI_Handler);					   //等待写入结束
} 
//无检验写SPI FLASH 
//必须确保所写的地址范围内的数据全部为0XFF,否则在非0XFF处写入的数据将失败!
//具有自动换页功能 
//在指定地址开始写入指定长度的数据,但是要确保地址不越界!
//pBuffer:数据存储区
//WriteAddr:开始写入的地址(24bit)
//NumByteToWrite:要写入的字节数(最大65535)
//CHECK OK
void CS25WQXX_Write_NoCheck(SPI_HandleTypeDef *SPI_Handler,u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite)   
{ 			 		 
	u16 pageremain;	   
	pageremain=256-WriteAddr%256; //单页剩余的字节数		 	    
	if(NumByteToWrite<=pageremain)pageremain=NumByteToWrite;//不大于256个字节
	while(1)
	{	   
		CS25WQXX_Write_Page(SPI_Handler,pBuffer,WriteAddr,pageremain);
		if(NumByteToWrite==pageremain)break;//写入结束了
	 	else //NumByteToWrite>pageremain
		{
			pBuffer+=pageremain;
			WriteAddr+=pageremain;	

			NumByteToWrite-=pageremain;			  //减去已经写入了的字节数
			if(NumByteToWrite>256)pageremain=256; //一次可以写入256个字节
			else pageremain=NumByteToWrite; 	  //不够256个字节了
		}
	};	    
} 
//写SPI FLASH  
//在指定地址开始写入指定长度的数据
//该函数带擦除操作!
//pBuffer:数据存储区
//WriteAddr:开始写入的地址(24bit)						
//NumByteToWrite:要写入的字节数(最大65535)   
u8 CS25WQXX_BUFFER[4096];		 
void CS25WQXX_Write(SPI_HandleTypeDef *SPI_Handler,u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite)   
{ 
	u32 secpos;
	u16 secoff;
	u16 secremain;	   
 	u16 i;    
	u8 * CS25WQXX_BUF;	  
   	CS25WQXX_BUF=CS25WQXX_BUFFER;	     
 	secpos=WriteAddr/4096;//扇区地址  
	secoff=WriteAddr%4096;//在扇区内的偏移
	secremain=4096-secoff;//扇区剩余空间大小   
 	
 	if(NumByteToWrite<=secremain)secremain=NumByteToWrite;//不大于4096个字节
	while(1) 
	{	
		CS25WQXX_Read(SPI_Handler,CS25WQXX_BUF,secpos*4096,4096);//读出整个扇区的内容
		for(i=0;i<secremain;i++)//校验数据
		{
			if(CS25WQXX_BUF[secoff+i]!=0XFF)break;//需要擦除  	  
		}
		if(i<secremain)//需要擦除
		{
			CS25WQXX_Erase_Sector(SPI_Handler,secpos);//擦除这个扇区
			for(i=0;i<secremain;i++)	   //复制
			{
				CS25WQXX_BUF[i+secoff]=pBuffer[i];	  
			}
			CS25WQXX_Write_NoCheck(SPI_Handler,CS25WQXX_BUF,secpos*4096,4096);//写入整个扇区  

		}else CS25WQXX_Write_NoCheck(SPI_Handler,pBuffer,WriteAddr,secremain);//写已经擦除了的,直接写入扇区剩余区间. 				   
		if(NumByteToWrite==secremain)break;//写入结束了
		else//写入未结束
		{
			secpos++;//扇区地址增1
			secoff=0;//偏移位置为0 	 

		   	pBuffer+=secremain;  //指针偏移
			WriteAddr+=secremain;//写地址偏移	   
		   	NumByteToWrite-=secremain;				//字节数递减
			if(NumByteToWrite>4096)secremain=4096;	//下一个扇区还是写不完
			else secremain=NumByteToWrite;			//下一个扇区可以写完了
		}	 
	};	 
}
//擦除整个芯片		  
//等待时间超长...
void CS25WQXX_Erase_Chip(SPI_HandleTypeDef *SPI_Handler)   
{                                   
    CS25WQXX_Write_Enable(SPI_Handler);                  //SET WEL 
    CS25WQXX_Wait_Busy(SPI_Handler);   
  	cs25wqxx_CS(GPIO_PIN_RESET);                            //使能器件   
    SPI1_ReadWriteByte(SPI_Handler, CS25WQX_ChipErase);        //发送片擦除命令  
	cs25wqxx_CS(GPIO_PIN_SET);                            //取消片选     	      
	CS25WQXX_Wait_Busy(SPI_Handler);   				   //等待芯片擦除结束
}   
//擦除一个扇区
//Dst_Addr:扇区地址 根据实际容量设置
//擦除一个扇区的最少时间:150ms
void CS25WQXX_Erase_Sector(SPI_HandleTypeDef *SPI_Handler , u32 Dst_Addr)   
{  
	//监视falsh擦除情况,测试用   
 	//printf("fe:%x\r\n",Dst_Addr);	  
 	Dst_Addr*=4096;
    CS25WQXX_Write_Enable(SPI_Handler);                  //SET WEL 	 
    CS25WQXX_Wait_Busy(SPI_Handler);   
  	cs25wqxx_CS(GPIO_PIN_RESET);                            //使能器件   
    SPI1_ReadWriteByte(SPI_Handler , CS25WQX_SectorErase);   //发送扇区擦除指令 
    if(CS25WQXX_TYPE==CS25WQ256)                //如果是W25Q256的话地址为4字节的，要发送最高8位
    {
        SPI1_ReadWriteByte(SPI_Handler , (u8)((Dst_Addr)>>24)); 
    }
    SPI1_ReadWriteByte(SPI_Handler , (u8)((Dst_Addr)>>16));  //发送24bit地址    
    SPI1_ReadWriteByte(SPI_Handler , (u8)((Dst_Addr)>>8));   
    SPI1_ReadWriteByte(SPI_Handler , (u8)Dst_Addr);  
	cs25wqxx_CS(GPIO_PIN_SET);                            //取消片选     	      
    CS25WQXX_Wait_Busy(SPI_Handler);   				    //等待擦除完成
}  
//等待空闲
void CS25WQXX_Wait_Busy(SPI_HandleTypeDef *SPI_Handler )   
{   
	while((CS25WQXX_ReadSR(SPI_Handler,1)&0x01)==0x01);   // 等待BUSY位清空
}  
//进入掉电模式
void CS25WQXX_PowerDown(SPI_HandleTypeDef *SPI_Handler)   
{ 
  	cs25wqxx_CS(GPIO_PIN_RESET);                            //使能器件   
    SPI1_ReadWriteByte(SPI_Handler , CS25WQX_PowerDown);     //发送掉电命令  
	cs25wqxx_CS(GPIO_PIN_SET);                            //取消片选     	      
    delay_us(3);                            //等待TPD  
}   
//唤醒
void CS25WQXX_WAKEUP(SPI_HandleTypeDef *SPI_Handler)   
{  
  	cs25wqxx_CS(GPIO_PIN_RESET);                                //使能器件   
    SPI1_ReadWriteByte(SPI_Handler,CS25WQX_ReleasePowerDown);  //  send W25X_PowerDown command 0xAB    
	cs25wqxx_CS(GPIO_PIN_SET);                                //取消片选     	      
    delay_us(3);                                //等待TRES1
}   
