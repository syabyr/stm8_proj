#include "stm8s_it.h"
//#include "keycheck.h"
#include "define.h"

#ifdef _COSMIC_
@far @interrupt void NonHandledInterrupt(void)
{
}

@far @interrupt void TRAP_IRQHandler(void)
{
}
#else /*_RAISONANCE_*/

#if !defined(_SDCC_) || (SKIP_TRAPS!=1)    // SDCC patch: trap handling requires SDCC >=v3.4.3
INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
{
}
#endif

#endif /*_COSMIC_*/


INTERRUPT_HANDLER(TLI_IRQHandler, 0)
{
}

INTERRUPT_HANDLER(AWU_IRQHandler, 1)	
{
}

INTERRUPT_HANDLER(CLK_IRQHandler, 2)
{
}

INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
{
}

INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
{
}

INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
{
  //PC3,PC2
  //if ((GPIO_ReadInputData(KEY_PORT) & KEY_PIN) != 0x00)
  {
    GPIO_WriteReverse(LED_PORT, LED_PIN);
  }
}

INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
{
}

INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
{
}

//Interrupt 8,9 is reserved for stm8s103

INTERRUPT_HANDLER(SPI_IRQHandler, 10)
{
}

INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
{
}

INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
{
}

INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
{
}

INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
{
}

//Interrupt 15,16 is reserved for stm8s103

INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
{
}

INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
{
  return;
}


INTERRUPT_HANDLER(I2C_IRQHandler, 19)
{
  return;
}

//Interrupt 20,21 is reserved for stm8s103

INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
{
  return;
}

INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
{
  return;
}

INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
{
  return;
}

INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
{
  //这里放定时程序
  //bagstatus_handler();

  //关机判断
  //poweroff_handler();

  //按键判断
  //keycheck_handler();

  //超时判断
  //timeout_handler();

  //MY_GPIO_WriteReverse(GPIO_D,GPIO_PIN_2);
  //GPIOD->ODR ^= (uint8_t)GPIO_PIN_2;

  //TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
  //TIM4->SR1 = (uint8_t)(~TIM4_IT_UPDATE);
  return;
}


INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
{
  return;
}
