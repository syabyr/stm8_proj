#ifndef _HTLCD_H_
#define _HTLCD_H_

#include "stm8s.h"

#define BIAS 0X52                       //1/2偏压，4背极
#define RC256 0X30                       //系统时钟选择为片内RC振荡器
#define WDTDIS1 0X0A                     //禁止WDT溢出标志输出
#define TIMERDIS 0X08                    //时基输出禁能
#define SYSEN 0X02                       //打开系统时钟
#define LCDON 0X06                       //打开偏压发生器
#define SYSDIS 0X00                      //关闭系统时钟和偏压发生器




//E-G,A-D,涉及段:1,2,3,4,5,6
#define seg1a 0x01
#define seg1b 0x02
#define seg1c 0x04
#define seg1d 0x08
#define seg1e 0x40
#define seg1f 0x10
#define seg1g 0x20
#define num10 {seg1a+seg1b+seg1c+seg1d+seg1e+seg1f}
#define num11 {seg1b+seg1c}
#define num12 {seg1a+seg1b+seg1d+seg1e+seg1g}
#define num13 {seg1a+seg1b+seg1c+seg1d+seg1g}
#define num14 {seg1b+seg1c+seg1f+seg1g}
#define num15 {seg1a+seg1c+seg1d+seg1f+seg1g}
#define num16 {seg1a+seg1c+seg1d+seg1e+seg1f+seg1g}
#define num17 {seg1a+seg1b+seg1c}
#define num18 {seg1a+seg1b+seg1c+seg1d+seg1e+seg1f+seg1g}
#define num19 {seg1a+seg1b+seg1c+seg1d+seg1f+seg1g}

//A-D,F涉及段 10,11,13,13,14,15,16
#define seg2a 0x80
#define seg2b 0x40
#define seg2c 0x20
#define seg2d 0x10
#define seg2e 0x01
#define seg2f 0x04
#define seg2g 0x02
#define num20 {seg2a+seg2b+seg2c+seg2d+seg2e+seg2f}
#define num21 {seg2b+seg2c}
#define num22 {seg2a+seg2b+seg2d+seg2e+seg2g}
#define num23 {seg2a+seg2b+seg2c+seg2d+seg2g}
#define num24 {seg2b+seg2c+seg2f+seg2g}
#define num25 {seg2a+seg2c+seg2d+seg2f+seg2g}
#define num26 {seg2a+seg2c+seg2d+seg2e+seg2f+seg2g}
#define num27 {seg2a+seg2b+seg2c}
#define num28 {seg2a+seg2b+seg2c+seg2d+seg2e+seg2f+seg2g}
#define num29 {seg2a+seg2b+seg2c+seg2d+seg2f+seg2g}


//A-D,E-G,涉及7,8
#define seg3a 0x01
#define seg3b 0x02
#define seg3c 0x04
#define seg3d 0x08
#define seg3e 0x40
#define seg3f 0x10
#define seg3g 0x20
#define num30 {seg3a+seg3b+seg3c+seg3d+seg3e+seg3f}
#define num31 {seg3b+seg3c}
#define num32 {seg3a+seg3b+seg3d+seg3e+seg3g}
#define num33 {seg3a+seg3b+seg3c+seg3d+seg3g}
#define num34 {seg3b+seg3c+seg3f+seg3g}
#define num35 {seg3a+seg3c+seg3d+seg3f+seg3g}
#define num36 {seg3a+seg3c+seg3d+seg3e+seg3f+seg3g}
#define num37 {seg3a+seg3b+seg3c}
#define num38 {seg3a+seg3b+seg3c+seg3d+seg3e+seg3f+seg3g}
#define num39 {seg3a+seg3b+seg3c+seg3d+seg3f+seg3g}



//初始化LCD的GPIO管脚,只需要开机时设置一次
void init_lcd_gpio();


void init_bitmap();
void flush_bitmap();

void Delay(uint16_t nCount);



void send_byte(uint8_t dat);
void send_bit(uint8_t dat,uint8_t bitcnt);

//发送命令A，ID=100+0
void send_cmda(uint8_t com);
void send_cmdb(uint8_t com);

void display(uint8_t dat);

void setup_ht1621b();

void clear_lcd();
void display_test();
void display_all();

void test_int();

void send_hex_h(uint8_t dat);
void send_hex_l(uint8_t dat);

void dispnum(uint8_t i,uint8_t num);

void disp_up(uint32_t num);
void disp_down(uint32_t num);
#endif