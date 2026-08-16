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
