#include "common.h"


BitStatus MY_GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
{
	return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
}

uint8_t MY_FLASH_ReadByte(uint32_t Address)
{
	return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
}
void MY_FLASH_ProgramByte(uint32_t Address, uint8_t Data)
{
	*(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
}


//EEPROM读4字节
uint32_t MY_FLASH_Read32(uint32_t Address)
{
  return(*(PointerAttr uint32_t *) (MemoryAddressCast)Address); 
}
//EEPROM写4字节
void MY_FLASH_Program32(uint32_t Address, uint32_t Data)
{
  *(PointerAttr uint32_t*) (MemoryAddressCast)Address = Data;
}


void MY_ADC1_DeInit(void)
{
	ADC1->CSR  = ADC1_CSR_RESET_VALUE;
	ADC1->CR1  = ADC1_CR1_RESET_VALUE;
	ADC1->CR2  = ADC1_CR2_RESET_VALUE;
	ADC1->CR3  = ADC1_CR3_RESET_VALUE;
	ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
	ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
	ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
	ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
	ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
	ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
	ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
	ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
}

void MY_ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
{
  /*-----------------CR1 & CSR configuration --------------------*/
  /* Configure the conversion mode and the channel to convert
  respectively according to ADC1_ConversionMode & ADC1_Channel values  &  ADC1_Align values */
  MY_ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
  /* Select the prescaler division factor according to ADC1_PrescalerSelection values */
  MY_ADC1_PrescalerConfig(ADC1_PrescalerSelection);
  
  /*-----------------CR2 configuration --------------------*/
  /* Configure the external trigger state and event respectively
  according to NewState, ADC1_ExtTrigger */
  MY_ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
  
  /*------------------TDR configuration ---------------------------*/
  /* Configure the schmitt trigger channel and state respectively
  according to ADC1_SchmittTriggerChannel & ADC1_SchmittTriggerNewState  values */
  MY_ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
  
  /* Enable the ADC1 peripheral */
  ADC1->CR1 |= ADC1_CR1_ADON;
}

void MY_ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
{
  /* Clear the align bit */
  ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
  /* Configure the data alignment */
  ADC1->CR2 |= (uint8_t)(ADC1_Align);
  
  if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
  {
    /* Set the continuous conversion mode */
    ADC1->CR1 |= ADC1_CR1_CONT;
  }
  else /* ADC1_ConversionMode == ADC1_CONVERSIONMODE_SINGLE */
  {
    /* Set the single conversion mode */
    ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
  }
  
  /* Clear the ADC1 channels */
  ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
  /* Select the ADC1 channel */
  ADC1->CSR |= (uint8_t)(ADC1_Channel);
}

void MY_ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
{
  /* Clear the SPSEL bits */
  ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
  /* Select the prescaler division factor according to ADC1_PrescalerSelection values */
  ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
}

void MY_ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
{
  /* Clear the external trigger selection bits */
  ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
  
  if (NewState != DISABLE)
  {
    /* Enable the selected external Trigger */
    ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
  }
  else /* NewState == DISABLE */
  {
    /* Disable the selected external trigger */
    ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
  }
  
  /* Set the selected external trigger */
  ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
}

void MY_ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
{
  if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
  {
    if (NewState != DISABLE)
    {
      ADC1->TDRL &= (uint8_t)0x0;
      ADC1->TDRH &= (uint8_t)0x0;
    }
    else /* NewState == DISABLE */
    {
      ADC1->TDRL |= (uint8_t)0xFF;
      ADC1->TDRH |= (uint8_t)0xFF;
    }
  }
  else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
  {
    if (NewState != DISABLE)
    {
      ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
    }
    else /* NewState == DISABLE */
    {
      ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
    }
  }
  else /* ADC1_SchmittTriggerChannel >= ADC1_SCHMITTTRIG_CHANNEL8 */
  {
    if (NewState != DISABLE)
    {
      ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
    }
    else /* NewState == DISABLE */
    {
      ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
    }
  }
}

void MY_ADC1_StartConversion(void)
{
  ADC1->CR1 |= ADC1_CR1_ADON;
}

FlagStatus MY_ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
{
  uint8_t flagstatus = 0;
  uint8_t temp = 0;
  
  
  if ((Flag & 0x0F) == 0x01)
  {
    /* Get OVR flag status */
    flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
  }
  else if ((Flag & 0xF0) == 0x10)
  {
    /* Get analog watchdog channel status */
    temp = (uint8_t)(Flag & (uint8_t)0x0F);
    if (temp < 8)
    {
      flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
    }
    else
    {
      flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
    }
  }
  else  /* Get EOC | AWD flag status */
  {
    flagstatus = (uint8_t)(ADC1->CSR & Flag);
  }
  return ((FlagStatus)flagstatus);
  
}


void MY_ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
{
  uint8_t temp = 0;
  
  
  if ((Flag & 0x0F) == 0x01)
  {
    /* Clear OVR flag status */
    ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
  }
  else if ((Flag & 0xF0) == 0x10)
  {
    /* Clear analog watchdog channel status */
    temp = (uint8_t)(Flag & (uint8_t)0x0F);
    if (temp < 8)
    {
      ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
    }
    else
    {
      ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
    }
  }
  else  /* Clear EOC | AWD flag status */
  {
    ADC1->CSR &= (uint8_t) (~Flag);
  }
}



uint16_t MY_ADC1_GetConversionValue(void)
{
  uint16_t temph = 0;
  uint8_t templ = 0;
  
  if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
  {
    /* Read LSB first */
    templ = ADC1->DRL;
    /* Then read MSB */
    temph = ADC1->DRH;
    
    temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
  }
  else /* Left alignment */
  {
    /* Read MSB first*/
    temph = ADC1->DRH;
    /* Then read LSB */
    templ = ADC1->DRL;
    
    temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
  }
  
  return ((uint16_t)temph);
}

void MY_CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
{
  /* Clear High speed internal clock prescaler */
  CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
  
  /* Set High speed internal clock prescaler */
  CLK->CKDIVR |= (uint8_t)HSIPrescaler;
}



void MY_TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
                        uint16_t TIM2_Period)
{
  /* Set the Prescaler value */
  TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
  /* Set the Autoreload value */
  TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
  TIM2->ARRL = (uint8_t)(TIM2_Period);
}


void MY_TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                  TIM2_OutputState_TypeDef TIM2_OutputState,
                  uint16_t TIM2_Pulse,
                  TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
{
  
  /* Disable the Channel 1: Reset the CCE Bit, Set the Output State, the Output Polarity */
  TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
  /* Set the Output State & Set the Output Polarity */
  TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
                           (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
  
  
  /* Reset the Output Compare Bits & Set the Output Compare Mode */
  TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
                          (uint8_t)TIM2_OCMode);
  
  
  /* Set the Pulse value */
  TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
  TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
}


void MY_TIM2_OC2PreloadConfig(FunctionalState NewState)
{
  /* Check the parameters */
  assert_param(IS_FUNCTIONALSTATE_OK(NewState));
  
  /* Set or Reset the OC2PE Bit */
  if (NewState != DISABLE)
  {
    TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
  }
  else
  {
    TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
  }
}



void MY_TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                  TIM2_OutputState_TypeDef TIM2_OutputState,
                  uint16_t TIM2_Pulse,
                  TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
{
  /* Check the parameters */
  assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
  assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
  assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
  /* Disable the Channel 1: Reset the CCE Bit, Set the Output State, the Output Polarity */
  TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
  /* Set the Output State & Set the Output Polarity */
  TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
                           (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
  
  /* Reset the Output Compare Bits & Set the Output Compare Mode */
  TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
                          (uint8_t)TIM2_OCMode);
  
  /* Set the Pulse value */
  TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
  TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
}



void MY_TIM2_OC3PreloadConfig(FunctionalState NewState)
{
  /* Set or Reset the OC3PE Bit */
  if (NewState != DISABLE)
  {
    TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
  }
  else
  {
    TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
  }
}

void MY_TIM2_ARRPreloadConfig(FunctionalState NewState)
{
  /* Check the parameters */
  assert_param(IS_FUNCTIONALSTATE_OK(NewState));
  
  /* Set or Reset the ARPE Bit */
  if (NewState != DISABLE)
  {
    TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
  }
  else
  {
    TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
  }
}


void MY_TIM2_Cmd(FunctionalState NewState)
{
  
  /* set or Reset the CEN Bit */
  if (NewState != DISABLE)
  {
    TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
  }
  else
  {
    TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
  }
}


void MY_TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                       TIM1_CounterMode_TypeDef TIM1_CounterMode,
                       uint16_t TIM1_Period,
                       uint8_t TIM1_RepetitionCounter)
{
  /* Set the Autoreload value */
  TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
  TIM1->ARRL = (uint8_t)(TIM1_Period);
  
  /* Set the Prescaler value */
  TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
  TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
  
  /* Select the Counter Mode */
  TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
                        | (uint8_t)(TIM1_CounterMode));
  
  /* Set the Repetition Counter value */
  TIM1->RCR = TIM1_RepetitionCounter;
}


void MY_TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                  TIM1_OutputState_TypeDef TIM1_OutputState,
                  TIM1_OutputNState_TypeDef TIM1_OutputNState,
                  uint16_t TIM1_Pulse,
                  TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
                  TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
                  TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
                  TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
{
  /* Disable the Channel 1: Reset the CCE Bit, Set the Output State , 
  the Output N State, the Output Polarity & the Output N Polarity*/
  TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
                             | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
  /* Set the Output State & Set the Output N State & Set the Output Polarity &
  Set the Output N Polarity */
  TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
                                     | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
                           | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
                                       | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
  
  /* Reset the Output Compare Bits & Set the Output Compare Mode */
  TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
                          (uint8_t)TIM1_OCMode);
  
  /* Reset the Output Idle state & the Output N Idle state bits */
  TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
  /* Set the Output Idle state & the Output N Idle state configuration */
  TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
                          (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
  
  /* Set the Pulse value */
  TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
  TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
}


void MY_TIM1_Cmd(FunctionalState NewState)
{
  /* set or Reset the CEN Bit */
  if (NewState != DISABLE)
  {
    TIM1->CR1 |= TIM1_CR1_CEN;
  }
  else
  {
    TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
  }
}

void MY_TIM1_CtrlPWMOutputs(FunctionalState NewState)
{
  /* Set or Reset the MOE Bit */
  
  if (NewState != DISABLE)
  {
    TIM1->BKR |= TIM1_BKR_MOE;
  }
  else
  {
    TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
  }
}



void MY_GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
{
  GPIOx->ODR ^= (uint8_t)PortPins;
}

