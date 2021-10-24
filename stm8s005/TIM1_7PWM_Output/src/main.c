/**
  ******************************************************************************
  * @file TIM1_7PWM_Output\main.c
  * @brief This file contains the main function for TIM1 7 PWM Output example.
  * @author  MCD Application Team
  * @version V2.0.4
  * @date    26-April-2018
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

/**
  * @addtogroup TIM1_7PWM_Output
  * @{
  */

/* Private typedef -----------------------------------------------------------*/

/* Private define ------------------------------------------------------------*/
#define CCR1_Val  ((uint16_t)2047)
#define CCR2_Val  ((uint16_t)1535)
#define CCR3_Val  ((uint16_t)1023)
#define CCR4_Val  ((uint16_t)511)
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/ 
/* Private function prototypes -----------------------------------------------*/
static void TIM1_Config(void);
/* Private functions ---------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

void MY_CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
{
  /* Clear High speed internal clock prescaler */
  CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
  
  /* Set High speed internal clock prescaler */
  CLK->CKDIVR |= (uint8_t)HSIPrescaler;
}


/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
  MY_CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
  /* TIM1 configuration -----------------------------------------*/
  GPIO_Init(GPIOC, (GPIO_Pin_TypeDef)(GPIO_PIN_2),GPIO_MODE_OUT_PP_HIGH_FAST);
  GPIOC->ODR|=GPIO_PIN_2;
  TIM1_Config();

  TIM1_SetCompare1(3100);
  
  while (1)
  {} 
}

/**
  * @brief  Configure TIM1 to generate 7 PWM signals with 4 different duty cycles
  * @param  None
  * @retval None
  */
static void TIM1_Config(void)
{

   TIM1_DeInit();

  /* Time Base configuration */
  /*
  TIM1_Period = 4095
  TIM1_Prescaler = 0
  TIM1_CounterMode = TIM1_COUNTERMODE_UP
  TIM1_RepetitionCounter = 0
  */

  TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 3200, 0);

  /* Channel 1, 2,3 and 4 Configuration in PWM mode */
  
  /*
  TIM1_OCMode = TIM1_OCMODE_PWM2
  TIM1_OutputState = TIM1_OUTPUTSTATE_ENABLE
  TIM1_OutputNState = TIM1_OUTPUTNSTATE_ENABLE
  TIM1_Pulse = CCR1_Val
  TIM1_OCPolarity = TIM1_OCPOLARITY_LOW
  TIM1_OCNPolarity = TIM1_OCNPOLARITY_HIGH
  TIM1_OCIdleState = TIM1_OCIDLESTATE_SET
  TIM1_OCNIdleState = TIM1_OCIDLESTATE_RESET
  
  */
  TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_ENABLE,
               3100, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET,
               TIM1_OCNIDLESTATE_RESET); 


  /* TIM1 counter enable */
  TIM1_Cmd(ENABLE);

  /* TIM1 Main Output Enable */
  TIM1_CtrlPWMOutputs(ENABLE);
}


/**
  * @}
  */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
