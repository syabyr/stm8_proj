/**
  ******************************************************************************
  * @file    EXTI_InterruptPriority\main.c
  * @author  MCD Application Team
  * @version V2.0.4
  * @date    26-April-2018
  * @brief   This file contains the main function for the EXTI Interrupt Priority example.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */  

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "main.h"
#include "stm8s_it.h"
#include "common.h"
#include "init.h"
//#include "basic.h"
#include "define.h"

#ifdef _RAISONANCE_
#define PUTCHAR_PROTOTYPE int putchar (char c)
#define GETCHAR_PROTOTYPE int getchar (void)
#elif defined (_COSMIC_)
#define PUTCHAR_PROTOTYPE char putchar (char c)
#define GETCHAR_PROTOTYPE char getchar (void)
#elif defined (_SDCC_)  // SDCC Patch: declared same as stdio.h
#define PUTCHAR_PROTOTYPE void putchar (char c)
#define GETCHAR_PROTOTYPE char getchar (void)
#else /* _IAR_ */
#define PUTCHAR_PROTOTYPE int putchar (int c)
#define GETCHAR_PROTOTYPE int getchar (void)
#endif /* _RAISONANCE_ */


void Delay(uint16_t nCount)
{
  uint8_t i;
  for(; nCount !=0 ; nCount--) {
    for(i=255;i!=0;i--) {}
  }
}

static void TIMER1_Config()
{
  TIM1_DeInit();
  TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 3200, 0);
  TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_ENABLE,
               511, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET,
               TIM1_OCNIDLESTATE_RESET);

  TIM1_Cmd(ENABLE);
  TIM1_CtrlPWMOutputs(ENABLE);
}



static void GPIO_Config(void)
{
  /* Initialize I/Os in Output Mode for LEDs */
  GPIO_Init(LED_PORT, (GPIO_Pin_TypeDef)(LED_PIN),GPIO_MODE_OUT_PP_HIGH_FAST);

  /* Initialize I/O in Input Mode with Interrupt for Joystick */
  GPIO_Init(KEY_PORT, (GPIO_Pin_TypeDef)(KEY_PIN),GPIO_MODE_IN_FL_IT);
  
}


//20191112-fan控制
void main(void)
{
  MY_CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

  disableInterrupts();
  
  GPIO_Config();

  /* Initialize the Interrupt sensitivity */
  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC, EXTI_SENSITIVITY_FALL_ONLY);
  EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);



    /* Initialize I/Os in Output Mode for LEDs */
  GPIO_Init(LED_PORT, (GPIO_Pin_TypeDef)(LED_PIN),
            GPIO_MODE_OUT_PP_HIGH_FAST);

  GPIO_Init(KEY_PORT, (GPIO_Pin_TypeDef)(KEY_PIN),
            GPIO_MODE_IN_FL_IT);

  /* Initialize the Interrupt sensitivity */
  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC, EXTI_SENSITIVITY_FALL_ONLY);
  EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);

  enableInterrupts();

  while(1)
  {
    
  }

  
  GPIO_WriteReverse(LED_PORT, LED_PIN);

  //PC1,pwm output
  //PC2,control output,active high
  //PC3,input,fan speed feedback
  /*
  GPIOC->DDR=GPIO_PIN_1|GPIO_PIN_2;
  GPIOC->CR1=GPIO_PIN_1|GPIO_PIN_2;
  GPIOC->CR2=GPIO_PIN_1|GPIO_PIN_2;

  //高电平有效
  GPIOC->ODR|=GPIO_PIN_2;
  */
  //测试风扇控制
  //GPIOC->ODR|=GPIO_PIN_1|GPIO_PIN_2;
  //TIMER1_Config();


  //TIM1_SetCompare1(1600);

  enableInterrupts();

  //测试PC3按键
  while(1)
  {
    /*
    if(MY_GPIO_ReadInputPin(KEY_PORT, KEY_PIN))
    {
      LED_PORT->ODR|=LED_PIN;
    }
    else
    {
      LED_PORT->ODR&=~LED_PIN;
    }
    */
    
  }


  //测试LED
  while(1)
  {
      Delay(4000);
      GPIOF->ODR|=GPIO_PIN_4;
      Delay(8000);
      GPIOF->ODR&=~GPIO_PIN_4;
  }
}
#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
