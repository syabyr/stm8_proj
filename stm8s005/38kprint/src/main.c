/**
  ******************************************************************************
  * @file UART1_Printf\main.c
  * @brief This file contains the main function for: retarget the C library printf
  *        /scanf functions to the UART1 example.
  * @author  MCD Application Team
  * @version  V2.2.0
  * @date     30-September-2014
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
#include "stdio.h"
#include "main.h"
/**
  * @addtogroup UART1_Printf
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#ifdef _RAISONANCE_
  #define PUTCHAR_PROTOTYPE int putchar (char c)
  #define GETCHAR_PROTOTYPE int getchar (void)
#elif defined (_COSMIC_)
  #define PUTCHAR_PROTOTYPE char putchar (char c)
  #define GETCHAR_PROTOTYPE char getchar (void)
#elif defined (_SDCC_)         /* SDCC patch: ensure same types as stdio.h */
  #if SDCC_VERSION >= 30605      // declaration changed in sdcc 3.6.5 (officially with 3.7.0)
    #define PUTCHAR_PROTOTYPE int putchar(int c)
    #define GETCHAR_PROTOTYPE int getchar(void)
  #else
    #define PUTCHAR_PROTOTYPE void putchar(char c)
    #define GETCHAR_PROTOTYPE int getchar(void)
  #endif 
#else /* _IAR_ */
  #define PUTCHAR_PROTOTYPE int putchar (int c)
  #define GETCHAR_PROTOTYPE int getchar (void)
#endif /* _RAISONANCE_ */
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
/*
INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
{
UART1_SendData8(UART1_ReceiveData8());
}
*/

#define UX *(int16_t *)0x4865
#define UY *(int16_t *)0x4867
#define WN *(int8_t *)0x4869
#define LN1 *(int8_t *)0x486A
#define LN2 *(int8_t *)0x486B
#define LN3 *(int8_t *)0x486C
#define LN4 *(int8_t *)0x486D
#define LN5 *(int8_t *)0x486E
#define LN6 *(int8_t *)0x486F
#define LN7 *(int8_t *)0x4870



void main(void)
{
  //char ans;
  /*High speed internal clock prescaler: 1*/
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

  GPIO_Config();  

  /* Initialize the Interrupt sensitivity */
  //key
  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC, EXTI_SENSITIVITY_RISE_FALL);
  //ir
  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD, EXTI_SENSITIVITY_FALL_ONLY);
  EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);
  
  //enableInterrupts();

  GPIO_WriteReverse(LED_PORT, LED_PIN);

    
  UART2_DeInit();
  /* UART1 configuration ------------------------------------------------------*/
  /* UART1 configured as follow:
        - BaudRate = 115200 baud  
        - Word Length = 8 Bits
        - One Stop Bit
        - No parity
        - Receive and transmit enabled
        - UART1 Clock disabled
  */
  UART2_Init((uint32_t)115200, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO,
              UART2_SYNCMODE_CLOCK_DISABLE, UART2_MODE_TXRX_ENABLE);

  /* Output a message on Hyperterminal using printf function */
  printf("\n\rUART1 Example :retarget the C library printf()/getchar() functions to the UART\n\r");
  printf("\n\rEnter Text\n\r");

  TIM3_Config();

  enableInterrupts();
  
  printf("unique:x:0x%x y:0x%x wafer number:%d lot:%d%d%d%d%d%d%d\r\n",UX,UY,WN,LN1,LN2,LN3,LN4,LN5,LN6,LN7);

  //timer init
  TIM1_ICInit( TIM1_CHANNEL_1, TIM1_ICPOLARITY_FALLING, TIM1_ICSELECTION_DIRECTTI,
               TIM1_ICPSC_DIV8, 0x0);
  TIM1_Cmd(ENABLE);



  while (1)
  {
    //printf("\n\rEnter Text\n\r");
    //ans = getchar();
    //printf("%c", ans);  
  }
}


static void GPIO_Config(void)
{
  /* Initialize I/Os in Output Mode for LEDs */
  GPIO_Init(LED_PORT, (GPIO_Pin_TypeDef)(LED_PIN),GPIO_MODE_OUT_PP_HIGH_FAST);

  /* Initialize I/O in Input Mode with Interrupt for Joystick */
  GPIO_Init(KEY_PORT, (GPIO_Pin_TypeDef)(KEY_PIN),GPIO_MODE_IN_FL_IT);

  //IR
  //GPIO_Init(IR_PORT, (GPIO_Pin_TypeDef)(IR_PIN),GPIO_MODE_IN_FL_IT);
  GPIO_Init(IR_PORT, (GPIO_Pin_TypeDef)(IR_PIN),GPIO_MODE_IN_FL_NO_IT);
  
}

uint16_t ICValue1 =0, ICValue2 =0;

void TIM3_Config(void)
{
    TIM3_TimeBaseInit(TIM3_PRESCALER_16,60000-1);
    //通道1,下降沿生效,
    TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_FALLING, TIM3_ICSELECTION_DIRECTTI,
                 TIM3_ICPSC_DIV1, 0x0);

    TIM3_ClearFlag(TIM3_FLAG_CC1);
    TIM3_ITConfig(TIM3_IT_UPDATE,ENABLE);
    TIM3_ITConfig(TIM3_IT_CC1,ENABLE);
    TIM3_Cmd(ENABLE);

    return;

    /* wait a capture on CC1 */
    while((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
    /* Get CCR1 value*/
    ICValue1 = TIM3_GetCapture1();
    TIM3_ClearFlag(TIM3_FLAG_CC1);

    /* wait a capture on cc1 */
    while((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
    /* Get CCR1 value*/
    ICValue2 = TIM3_GetCapture1();
    TIM3_ClearFlag(TIM3_FLAG_CC1);

    printf("1:%d,2:%d\r\n",ICValue1,ICValue2);
    ICValue1 = 0;
    ICValue2 = 0;
}

/**
  * @brief Retargets the C library printf function to the UART.
  * @param c Character to send
  * @retval char Character sent
  */
PUTCHAR_PROTOTYPE
{
  /* Write a character to the UART1 */
  UART2_SendData8(c);
  /* Loop until the end of transmission */
  while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);

#if !defined(_SDCC_)  // SDCC patch: declared as void putchar(char)
  return (c);
#endif
}

/**
  * @brief Retargets the C library scanf function to the USART.
  * @param None
  * @retval char Character to Read
  */
GETCHAR_PROTOTYPE
{
#ifdef _COSMIC_
  char c = 0;
#else
  int c = 0;
#endif
  /* Loop until the Read data register flag is SET */
  while (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET);
    c = UART2_ReceiveData8();
  return (c);
}


/**
  * @}
  */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
