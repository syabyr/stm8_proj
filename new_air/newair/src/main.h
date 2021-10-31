/**
  ******************************************************************************
  * @file    EXTI_InterruptPriority\main.h
  * @author  MCD Application Team
  * @version V2.0.4
  * @date    26-April-2018
  * @brief   This file contains the external declaration for main.c file.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Evalboard I/Os configuration */

#define LED_PORT (GPIOF)
#define LED_PIN  (GPIO_PIN_4)


#define KEY_PORT (GPIOC)
#define KEY_PIN  (GPIO_PIN_3)

#define IR_PORT (GPIOD)
#define IR_PIN (GPIO_PIN_2)

#define FAN_PORT (GPIOC)
#define FAN_PWM_PIN (GPIO_PIN_1)
#define FAN_SW_PIN (GPIO_PIN_2)

#define FAN_SENSE_PORT (GPIOD)
#define FAN_SENSE_PIN (GPIO_PIN4)


/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Public functions ----------------------------------------------------------*/



static void GPIO_Config(void);
void UART2_Config(void);
void TIM1_Config(void);
void TIM2_Config(void);
void TIM3_Config(void);
void IWDG_Config(void);

#endif /* __MAIN_H */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
