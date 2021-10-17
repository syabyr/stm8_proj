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

//20191112-fan控制
void main(void)
{
  MY_CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

  disableInterrupts();
  
  //init_gpio();

    /* Initialize I/Os in Output Mode for LEDs */
  GPIO_Init(LED_PORT, (GPIO_Pin_TypeDef)(LED_PIN),
            GPIO_MODE_OUT_PP_HIGH_FAST);

  GPIO_Init(KEY_PORT, (GPIO_Pin_TypeDef)(KEY_PIN),
            GPIO_MODE_IN_FL_IT);

  /* Initialize the Interrupt sensitivity */
  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC, EXTI_SENSITIVITY_FALL_ONLY);
  EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);


  
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
