#ifndef _COMMON_H_
#define _COMMON_H_

#include "define.h"

//读取管脚状态
BitStatus MY_GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin);

//EEPROM读一字节
uint8_t MY_FLASH_ReadByte(uint32_t Address);
//EEPROM写一字节
void MY_FLASH_ProgramByte(uint32_t Address, uint8_t Data);

//EEPROM读4字节
uint32_t MY_FLASH_Read32(uint32_t Address);
//EEPROM写4字节
void MY_FLASH_Program32(uint32_t Address, uint32_t Data);

void MY_ADC1_DeInit(void);

void MY_ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState);
void MY_ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align);
void MY_ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler);
void MY_ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState);
void MY_ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState);
void MY_ADC1_StartConversion(void);
FlagStatus MY_ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag);
void MY_ADC1_ClearFlag(ADC1_Flag_TypeDef Flag);
uint16_t MY_ADC1_GetConversionValue(void);
void MY_CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler);

//timer2
void MY_TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,uint16_t TIM2_Period);
void MY_TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,TIM2_OutputState_TypeDef TIM2_OutputState,uint16_t TIM2_Pulse,TIM2_OCPolarity_TypeDef TIM2_OCPolarity);
void MY_TIM2_OC2PreloadConfig(FunctionalState NewState);

void MY_TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                  TIM2_OutputState_TypeDef TIM2_OutputState,
                  uint16_t TIM2_Pulse,
                  TIM2_OCPolarity_TypeDef TIM2_OCPolarity);
void MY_TIM2_OC3PreloadConfig(FunctionalState NewState);
void MY_TIM2_ARRPreloadConfig(FunctionalState NewState);
void MY_TIM2_Cmd(FunctionalState NewState);

//timer1
void MY_TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                       TIM1_CounterMode_TypeDef TIM1_CounterMode,
                       uint16_t TIM1_Period,
                       uint8_t TIM1_RepetitionCounter);

void MY_TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                  TIM1_OutputState_TypeDef TIM1_OutputState,
                  TIM1_OutputNState_TypeDef TIM1_OutputNState,
                  uint16_t TIM1_Pulse,
                  TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
                  TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
                  TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
                  TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState);

void MY_TIM1_Cmd(FunctionalState NewState);

void MY_TIM1_CtrlPWMOutputs(FunctionalState NewState);

void MY_GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins);

#endif