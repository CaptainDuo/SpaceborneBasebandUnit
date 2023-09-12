#include "./fpga_extern_addr_data_drv.h"

/**
  * @brief  fpga_extern_addr_data����д���̺���
  * @param  
  *		@arg addrList[]������fpga_extern_addr_data���߸�����ַ������ָ��
  *		@arg writeAddr��������Ҫ���ʵ�fpga_extern_addr_data���ߵ�ַ
  *		@arg writeData�� ����Ҫд��fpga_extern_addr_data��������
  * @retval  XST_SUCCESS��д��ɹ�
  */
XStatus extern_addr_data_master_write(u32* addrList, u8 writeAddr, u8 writeData)
{
	/* д���� */
	/* 1:��ȡ״̬�Ĵ���	*/
	while(EXTERN_ADDR_DATA_MASTER_mReadReg(addrList[0], addrList[1]))
	{
		if(0==EXTERN_ADDR_DATA_MASTER_mReadReg(addrList[0], addrList[1]))
		{
			break;
		}
	}

	/* 2:����ַ�Ĵ���д�뱾����Ҫ���ʵ������ַ */
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[2], writeAddr);

	/* 3:�����ݼĴ���д�뱾����Ҫ���ʵ��������� */
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[3], writeData);

	/* 4:��д����Ĵ���д������0xCCCCCCCC��0x00000000 */
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[4], EXTERN_ADDR_DATA_WRITE_HEAD);
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[4], EXTERN_ADDR_DATA_WRITE_TAIL);

	return XST_SUCCESS;
	
}

/**
  * @brief  fpga_extern_addr_data���߶����̺���
  * @param  
  *		@arg addrList������fpga_extern_addr_data���߸�����ַ������ָ��
  *		@arg readAddr��������Ҫ���ʵ�fpga_extern_addr_data���ߵ�ַ
  *		@arg readData: ������Ҫ��ȡ��fpga_extern_addr_data��������
  * @retval  XST_SUCCESS����ȡ�ɹ�
  */
XStatus extern_addr_data_master_read(u32* addrList, u8 readAddr, u8* readData)
{
	/* ������ */
	/* 1:��ȡ״̬�Ĵ��� */
	while(1)
	{
		if(0==EXTERN_ADDR_DATA_MASTER_mReadReg(addrList[0], addrList[1]))
		{
			break;
		}
	}

	/* 2: ����ַ�Ĵ���д�뱾����Ҫ���ʵ������ַ */*/
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[5], readAddr);

	/* 3: ��д����Ĵ���д������0xDDDDDDDD��0x00000000 */
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[7], EXTERN_ADDR_DATA_READ_HEAD);
	EXTERN_ADDR_DATA_MASTER_mWriteReg(addrList[0], addrList[7], EXTERN_ADDR_DATA_READ_TAIL);

	/* 4:��ȡ����״̬�Ĵ��� */
	while(EXTERN_ADDR_DATA_MASTER_mReadReg(addrList[0], addrList[1]))
	{
		if(0==EXTERN_ADDR_DATA_MASTER_mReadReg(addrList[0], addrList[1]))
		{
			break;
		}
	}

	/* 5:�����ݼĴ�����ȡ�������� */
	*readData = EXTERN_ADDR_DATA_MASTER_mReadReg(addrList[0], addrList[6]);

	return XST_SUCCESS;
}











