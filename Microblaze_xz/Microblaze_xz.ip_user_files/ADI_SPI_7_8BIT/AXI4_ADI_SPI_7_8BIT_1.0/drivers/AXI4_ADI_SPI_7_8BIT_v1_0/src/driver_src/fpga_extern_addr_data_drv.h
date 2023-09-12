#ifndef FPGA_EXTERN_ADDR_DATA_H
#define FPGA_EXTERN_ADDR_DATA_H

#include "xil_io.h"
#include "xstatus.h"


#define		ADDR_LIST_SIZE												8						/* �����ַ����ĳ��� */			

#define		EXTERN_ADDR_DATA_AXI_BASEADDR							0x43C10000				/* SJA1000��Ӧ��AXI��ַ */             //���ʹ��EMIF�ȱ������
                                                                                                                            //ֻ����ݾ�������޸�
#define		REG_EXTERN_ADDR_DATA_WRITE_ADDR_OFFSET				0x00000000				/* SJA1000����д��ַ�Ĵ���(��д) */    //��ַ����ַ�ͼĴ�����ַ����
#define		REG_EXTERN_ADDR_DATA_WRITE_DATA_OFFSET				0x00000004				/* SJA1000����д���ݼĴ���(��д) */
#define		REG_EXTERN_ADDR_DATA_WRITE_CMD_OFFSET					0x00000008				/* SJA1000����д����Ĵ���(��д) */
#define		REG_EXTERN_ADDR_DATA_READ_ADDR_OFFSET					0x0000000C				/* SJA1000���߶���ַ�Ĵ���(��д) */
#define		REG_EXTERN_ADDR_DATA_READ_DATA_OFFSET					0x00000014				/* SJA1000���߶����ݼĴ���(ֻ��) */
#define		REG_EXTERN_ADDR_DATA_READ_CMD_OFFSET					0x00000010				/* SJA1000���߶�����Ĵ���(��д) */
#define		REG_EXTERN_ADDR_DATA_STATUS_OFFSET					         0x00000018				/* SJA1000����״̬�Ĵ���(ֻ��) */

/* ������ǰ��д��0xCCCC_CCCC-->0x0000_0000Ϊһ����Ϸ���һ��д���� */
#define EXTERN_ADDR_DATA_WRITE_HEAD									0xCCCCCCCC
#define EXTERN_ADDR_DATA_WRITE_TAIL									0x00000000

/* ������ǰ��д��0xDDDD_DDDD-->0x0000_0000Ϊһ����Ϸ���һ�������� */
#define EXTERN_ADDR_DATA_READ_HEAD									0xDDDDDDDD
#define EXTERN_ADDR_DATA_READ_TAIL									         0x00000000



#define EXTERN_ADDR_DATA_MASTER_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))


#define EXTERN_ADDR_DATA_MASTER_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))


//��������
XStatus extern_addr_data_master_write(u32* addrList, u8 writeAddr, u8 writeData);
XStatus extern_addr_data_master_read(u32* addrList, u8 readAddr, u8* readData);

#endif
