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
#endif