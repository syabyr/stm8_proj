#include "ir.h"
#include "stm8s_it.h"
#include "main.h"
#include <stdio.h>
#include "fan.h"

int8_t status;  //0:等待状态 1:首次捕获状态 2:
uint16_t shift;    //临时移位寄存器变量
uint16_t addr;  //地址数据
uint16_t cmd;   //命令数据



void ov_handler()
{
    //溢出的时候打印详细情况
    if(0 != status)
    {
        status = 0;
        if((cmd > 0)||(addr > 0))
        {
            printf("addr:0x%02x,cmd:0x%02x\r\n",addr,cmd);
        }
        printf("-ovf-\r\n");
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
        printf("-cap-\r\n");
        TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI,
                     TIM3_ICPSC_DIV1, 0x0);
    }
    else
    {
        uint16_t capValue=TIM3_GetCapture1();
        //跳过引导码
        if(capValue > 2500)
        {
            if(status == 1)
            {
                status = 2;
            }
            return;
        }

        //区间范围内的数据才认为是有效的
        if(((capValue < IR_ONE_MAX) && (capValue > IR_ONE_MIN))
        ||((capValue < IR_ZERO_MAX) && (capValue > IR_ZERO_MIN)))
        {
            //如果不是首次捕获,先移位,在赋值
            if(status != 3)
            {
                status =3;
            }
            else
            {
                shift = shift<<1;
            }
            if((capValue < IR_ONE_MAX) && (capValue > IR_ONE_MIN))
            {
                shift|=1;
            }
        }
        else
        {
            //此时应该打印错误
            printf("erlen:%d\r\n",capValue);
            return;
        }
        //前面状态没有细分,所以每次移位后都要取高低位进行判断
        uint8_t high=(shift&0xff00)>>8;
        uint8_t low=(int8_t)(shift&0x00ff);

        //printf("0x%04x,0x%02x,0x02%x\r\n",shift,high,low);

        if(0xff==(low^high))
        {
            if(addr == 0)
            {
                //addr为0的情况,说明当前是地址匹配成功,重新初始化,进行命令匹配
                addr = high;
                shift = 0;
                low = 0;
                high = 0;
                status = 2;
                //printf("addr:0x%02x,low:0x%02x,high:0x%02x\r\n",addr,low,high);
            }
            else
            {
                //否则是命令匹配成功
                cmd = high;
                capValue = 0;
                //printf("cmd:0x%02x,low:0x%02x,high:0x%02x\r\n",cmd,low,high);
            }
        }
        if((cmd > 0)&&(addr > 0))
        {
            printf("addr:0x%02x,cmd:0x%02x\r\n",addr,cmd);
            if(cmd == 0x8c)
            {
                fan_down();
            }
            else if(cmd == 0x94)
            {
                fan_up();
            }
            else if(cmd == 0xec)
            {
                fan_sw();
            }
        }
    }
}
