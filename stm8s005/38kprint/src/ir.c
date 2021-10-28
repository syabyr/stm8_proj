#include "ir.h"
#include "stm8s_it.h"
#include "main.h"
#include <stdio.h>

int8_t status;
int8_t index;

uint16_t cap[32];

uint16_t addr;
uint16_t cmd;

uint16_t shift;

void ir_init()
{
	status = 0;
	return;
}


void ov_handler()
{
    if(0 != status)
    {
        status = 0;
        int8_t temp;
        for(temp=0;temp<index;temp++)
        {
            printf("cap:%d:%u\r\n",temp,cap[temp]);
        }
        index = 0;
        /*
        if((cmd > 0)||(addr > 0))
        {
            printf("addr:0x%02x,cmd:0x%02x\r\n",addr,cmd);
        }
         */
        printf("ov_handler----------\r\n");
        TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_FALLING, TIM3_ICSELECTION_DIRECTTI,
                     TIM3_ICPSC_DIV1, 0x0);
    }
}

void cap_handler()
{
    if(0 == status)
    {
        //首次捕获,将触发模式改成下降沿,只抓取后半部分
        //第一次捕获的数据直接丢弃
        status = 1;
        addr = 0;
        cmd = 0;
        shift = 0;
        printf("start cap_handler----------\r\n");
        TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI,
                     TIM3_ICPSC_DIV1, 0x0);
    }
    else
    {
        uint16_t temp=TIM3_GetCapture1();
        if(temp > 2500)
        {
            if(status == 1)
            {
                status = 2;
            }
        }

        if(((temp < 2500) && (temp > 2000))||((temp < 1150) && (temp > 1100)))
        {
            if(status != 3)
            {
                status =3;
            }
            else
            {
                shift = shift<<1;
            }
            if((temp < 2500) && (temp > 2000))
            {
                shift|=1;
            }
        }
        else
        {
            return;
        }

        uint8_t high=(shift&0xff00)>>8;
        uint8_t low=(int8_t)(shift&0x00ff);

        //printf("0x%04x,0x%02x,0x02%x\r\n",shift,high,low);

        if(0xff==(low^high))
        {
            if(addr == 0)
            {
                addr = high;
                shift = 0;
                low = 0;
                high = 0;
                status = 2;
                //printf("addr:0x%02x,low:0x%02x,high:0x%02x\r\n",addr,low,high);
            }
            else
            {
                cmd = high;
                temp = 0;
                //printf("cmd:0x%02x,low:0x%02x,high:0x%02x\r\n",cmd,low,high);
            }
        }
        if((cmd > 0)&&(addr > 0))
        {
            printf("addr:0x%02x,cmd:0x%02x\r\n",addr,cmd);
        }
    }

    //printf("tim31 cap:%u,counter:%u\r\n",num1,num2);

}
