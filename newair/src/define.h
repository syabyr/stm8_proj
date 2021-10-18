#ifndef _DEFINE_H_
#define _DEFINE_H_

#include "stm8s.h"


//LED 高电平点亮
#define LED_PORT (GPIOF)
#define LED_PIN (GPIO_PIN_4)

//key 按下为高电平
#define KEY_PORT (GPIOC)
#define KEY_PIN (GPIO_PIN_3)

//IR 默认为高电平,有信号低电平
#define IR_PORT (GPIOD)
#define IR_PIN (GPIO_PIN_2)

//fan
#define FAN_PORT (GPIOC)
#define FAN_PWM_PIN (GPIO_PIN_1)
#define FAN_SW_PIN (GPIO_PIN_2)



#endif