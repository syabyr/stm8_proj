#ifndef _INIT_H_
#define _INIT_H_

void clock_init(void);

void init_gpio();

//void TIM2_Config(void);

void TIM1_Config(void);

//主时钟配置
void timer4_init(void);

void iwdg_init(void);
#endif