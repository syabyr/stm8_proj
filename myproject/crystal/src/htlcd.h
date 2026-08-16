#ifndef _HTLCD_H_
#define _HTLCD_H_

#include "stm8s.h"

#define BIAS 0X50                        //1/2偏压，4背极
#define RC256 0X30                       //系统时钟选择为片内RC振荡器
#define WDTDIS1 0X0A                     //禁止WDT溢出标志输出
#define TIMERDIS 0X08                    //时基输出禁能
#define SYSEN 0X02                       //打开系统时钟
#define LCDON 0X06                       //打开偏压发生器
#define SYSDIS 0X00                      //关闭系统时钟和偏压发生器

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

void send_hex_h(uint8_t dat);
void send_hex_l(uint8_t dat);
#endif