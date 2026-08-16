#ifndef _DS18B20_H_
#define _DS18B20_H_

#include "stm8s.h"

#define DS18B20_DQ_OUT          GPIOC->DDR |= (1<<3)   //??
#define DS18B20_DQ_IN           GPIOC->DDR &= ~(1<<3)   //??
#define DS18B20_DQ_HIGH         GPIOC->ODR |= (1<<3)   //??
#define DS18B20_DQ_LOW          GPIOC->ODR &= ~(1<<3)    //??
#define DS18B20_DQ_PULL_UP      GPIOC->CR1 |= (1<<3)   //??
#define DS18B20_DQ_FLOATING     GPIOC->CR1 &=  ~(1<<3)  //??
#define DS18B20_DQ_PUSH_PULL    GPIOC->CR1 |= (1<<3)   //??
#define DS18B20_DQ_OPEN_DRAIN   GPIOC->CR1 &= ~(1<<3)   //??
#define DS18B20_DQ_VALUE        GPIOC->IDR & (1<<3)      //DQ?

void _delay_ms(unsigned int i);
uint16_t DS18B20_ReadTemperature(void);

float DS18B20_ReadTemperaturef(void);
#endif