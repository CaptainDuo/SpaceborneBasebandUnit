/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * 
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */

#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "gpio_header.h"
#include "ad9649.h"
#include "ad9781.h"

ad9649_platform_data ad9649_pdata;
ad9649_mode_pin ad9649_MD_pin;
ad9649_dev ad9649_device;
ad9781_platform_data ad9781_pdata;
ad9781_reset_pin ad9781_rst_pin;
ad9781_dev ad9781_device;


int main () 
{
	Xil_ICacheEnable();
	Xil_DCacheEnable();
	print("---Entering main---\n\r");
	int status;

	/* 1.AD9649初始化 */
	/* 1.1.AD9649参数初始化 */
	ad9649_param_init(&ad9649_pdata,
						&ad9649_MD_pin,
						XPAR_AXI_GPIO_1_DEVICE_ID);
	/* 1.2.传递参数并配置寄存器 */
	status = ad9649_setup(&ad9649_device,
							&ad9649_pdata,
							XPAR_DRIVER_9649_S00_AXI_BASEADDR,
							&ad9649_MD_pin);
	if (status != 0)
		return status;	

	/* 2.AD9781初始化 */
	/* 2.1.AD9781参数结构体初始化 */
	ad9781_param_init(&ad9781_pdata,
						&ad9781_rst_pin,
						XPAR_AXI_GPIO_0_DEVICE_ID);
	/* 2.2.AD9781传递初始化参数并配置寄存器 */
	status = ad9781_setup(&ad9781_device,
							&ad9781_pdata,
							XPAR_DRIVER_9781_S00_AXI_BASEADDR,
							&ad9781_rst_pin);
   print("---Exiting main---\n\r");
   while (1)
	   {
	   
	   }
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}
