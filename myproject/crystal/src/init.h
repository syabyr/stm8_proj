#ifndef _INIT_H_
#define _INIT_H_

#include "define.h"
#include "func.h"

//系统时钟配置
void clock_init(void);

//数字端口配置
void gpio_init(void);

//主时钟配置
void timer4_init(void);

//ADC配置
void adc1_init(void);

//测试输出端口:LED和段位数码管
void test_output(void);

//系统配置,包含上面的各种初始化
void system_init(void);

//看门狗配置
void iwdg_init(void);
#endif