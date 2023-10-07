/*
 * CRC_16.c
 *
 *  Created on: 2023Äê2ÔÂ22ÈÕ
 *      Author: ghg
 */


#include "CRC_16.h"

u16 CRC_16_Func(u8 *buf , u16 length)
{
    u16 i,j,k;
	  u16 temp_16bit , wChar;
    u8 temp_8bit;
    u16 CRC_IN = 0xFFFF;
    u16 CRC_OUT = 0;
    u16 CRC_P = 0x1021;
    u8 INVERT = 0;

    for(i=0; i< length; i++)
    {
        wChar = buf[i];
        if(INVERT)
        {
            temp_8bit = 0;
            for(k=0;k<8;k++)
            {
                if(wChar & (1<<k))
                {
                     temp_8bit |= 1<<(7-k);
                }
            }
                wChar = temp_8bit;
        }
        CRC_IN ^= (wChar << 8);
        for(j=0;j<8;j++)
        {
            if(CRC_IN & 0x8000)
            {
                CRC_IN = CRC_IN & 0x7FFF;
                CRC_IN = (CRC_IN<<1)^CRC_P;
            }
            else
            {
                CRC_IN = CRC_IN & 0x7FFF;
                CRC_IN = CRC_IN << 1;
            }
        }
    }
    CRC_IN =  CRC_IN ^ CRC_OUT;
    if(INVERT)
    {
        temp_16bit = 0;
        for(k=0;k<16;k++)
        {
            if(CRC_IN & (1<<k))
            {
                temp_16bit |= 1<<(15-k);
            }
        }
        CRC_IN = temp_16bit;
    }
//    CRCLo = CRC&0xFF;
//    CRCHi = CRC>>8;
    return CRC_IN;
}



