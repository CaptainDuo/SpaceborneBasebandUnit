#ifndef FPGA_EXTERN_ADDR_DATA_H
#define FPGA_EXTERN_ADDR_DATA_H

#include "xil_io.h"
#include "xstatus.h"


#define		ADDR_LIST_SIZE												8						/* 定义地址数组的长度 */			

#define		EXTERN_ADDR_DATA_AXI_BASEADDR							0x43C10000				/* SJA1000对应的AXI地址 */             //如果使用EMIF等别的总线
                                                                                                                            //只需根据具体情况修改
#define		REG_EXTERN_ADDR_DATA_WRITE_ADDR_OFFSET				0x00000000				/* SJA1000总线写地址寄存器(读写) */    //地址基地址和寄存器地址即可
#define		REG_EXTERN_ADDR_DATA_WRITE_DATA_OFFSET				0x00000004				/* SJA1000总线写数据寄存器(读写) */
#define		REG_EXTERN_ADDR_DATA_WRITE_CMD_OFFSET					0x00000008				/* SJA1000总线写命令寄存器(读写) */
#define		REG_EXTERN_ADDR_DATA_READ_ADDR_OFFSET					0x0000000C				/* SJA1000总线读地址寄存器(读写) */
#define		REG_EXTERN_ADDR_DATA_READ_DATA_OFFSET					0x00000014				/* SJA1000总线读数据寄存器(只读) */
#define		REG_EXTERN_ADDR_DATA_READ_CMD_OFFSET					0x00000010				/* SJA1000总线读命令寄存器(读写) */
#define		REG_EXTERN_ADDR_DATA_STATUS_OFFSET					         0x00000018				/* SJA1000总线状态寄存器(只读) */

/* 分两次前后写入0xCCCC_CCCC-->0x0000_0000为一个组合发起一个写命令 */
#define EXTERN_ADDR_DATA_WRITE_HEAD									0xCCCCCCCC
#define EXTERN_ADDR_DATA_WRITE_TAIL									0x00000000

/* 分两次前后写入0xDDDD_DDDD-->0x0000_0000为一个组合发起一个读命令 */
#define EXTERN_ADDR_DATA_READ_HEAD									0xDDDDDDDD
#define EXTERN_ADDR_DATA_READ_TAIL									         0x00000000



#define EXTERN_ADDR_DATA_MASTER_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))


#define EXTERN_ADDR_DATA_MASTER_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))


//导出函数
XStatus extern_addr_data_master_write(u32* addrList, u8 writeAddr, u8 writeData);
XStatus extern_addr_data_master_read(u32* addrList, u8 readAddr, u8* readData);

#endif
