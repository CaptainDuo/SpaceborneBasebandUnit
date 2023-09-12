#include "./fpga_extern_addr_data_drv.h"

/**
  * @brief  fpga_extern_addr_data总线写流程函数
  * @param  
  *		@arg addrList[]：含有fpga_extern_addr_data总线各个地址的数组指针
  *		@arg writeAddr：本次需要访问的fpga_extern_addr_data总线地址
  *		@arg writeData： 本次要写的fpga_extern_addr_data总线数据
  * @retval  XST_SUCCESS：写入成功
  */
XStatus extern_addr_data_master_write(u32* addrList, u8 writeAddr, u8 writeData)
{
	/* 写流程 */
	/* 1:读取状态寄存器	*/
	while(EXTERN_ADDR_DATA_MASTER_mReadReg(addrList[0], addrList[1]))
	{
		if(0==EXTERN_ADDR_DATA_MASTER_mReadReg(addrList[0], addrList[1]))
		{
			break;
		}
	}

	/* 2:往地址寄存器写入本次需要访问的外设地址 */
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[2], writeAddr);

	/* 3:往数据寄存器写入本次需要访问的外设数据 */
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[3], writeData);

	/* 4:往写命令寄存器写入数据0xCCCCCCCC和0x00000000 */
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[4], EXTERN_ADDR_DATA_WRITE_HEAD);
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[4], EXTERN_ADDR_DATA_WRITE_TAIL);

	return XST_SUCCESS;
	
}

/**
  * @brief  fpga_extern_addr_data总线读流程函数
  * @param  
  *		@arg addrList：含有fpga_extern_addr_data总线各个地址的数组指针
  *		@arg readAddr：本次需要访问的fpga_extern_addr_data总线地址
  *		@arg readData: 本次需要读取的fpga_extern_addr_data总线数据
  * @retval  XST_SUCCESS：读取成功
  */
XStatus extern_addr_data_master_read(u32* addrList, u8 readAddr, u8* readData)
{
	/* 读流程 */
	/* 1:读取状态寄存器 */
	while(1)
	{
		if(0==EXTERN_ADDR_DATA_MASTER_mReadReg(addrList[0], addrList[1]))
		{
			break;
		}
	}

	/* 2: 往地址寄存器写入本次需要访问的外设地址 */*/
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[5], readAddr);

	/* 3: 往写命令寄存器写入数据0xDDDDDDDD和0x00000000 */
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[7], EXTERN_ADDR_DATA_READ_HEAD);
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[7], EXTERN_ADDR_DATA_READ_TAIL);

	/* 4:读取总线状态寄存器 */
	while(EXTERN_ADDR_DATA_MASTER_mReadReg(addrList[0], addrList[1]))
	{
		if(0==EXTERN_ADDR_DATA_MASTER_mReadReg(addrList[0], addrList[1]))
		{
			break;
		}
	}

	/* 5:读数据寄存器读取总线数据 */
	*readData = EXTERN_ADDR_DATA_MASTER_mReadReg(addrList[0], addrList[6]);

	return XST_SUCCESS;
}











