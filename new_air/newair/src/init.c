#include "init.h"
#include "common.h"
#include "define.h"
__IO uint32_t LsiFreq = 128000;

void clock_init(void)
{
	//设置时钟频率为16MHz
	//CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1); //HSI = 16M (1分频)
	CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	CLK->CKDIVR |= (uint8_t)CLK_PRESCALER_HSIDIV1;
}


void init_gpio()
{
	//LED init
	GPIOF->DDR=GPIO_PIN_4;
  GPIOF->CR1=GPIO_PIN_4;
  GPIOF->CR2=GPIO_PIN_4;

	//PA设置
	//PA3:PWR_CTL,输出
	GPIOA->ODR&=~GPIO_PIN_3;
	GPIOA->DDR=GPIO_PIN_3;
	GPIOA->CR1=GPIO_PIN_3;
	GPIOA->CR2=GPIO_PIN_3;
	GPIOA->ODR&=~GPIO_PIN_3;


	//PB设置
	//PB0为输入红外检测键,判断里面有没有东西
	//PB1-PB3为两对输出,(高电平启动)
	//PB4:无用
	//PB5:输入,仓门检测
	//PB6:NA=PB5
	//PB7为输入开关键,常为高电平
	GPIOB->DDR=GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_6;
	GPIOB->CR1=GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_6;
	GPIOB->CR2=GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_6;

	//PC设置
	//PC1输出(38K红外pwm波形)
	//PC2-PC7输入,6个微动按键(常为高电平,触动时为低电平)
	GPIOC->DDR=GPIO_PIN_1;
	GPIOC->CR1=GPIO_PIN_1;
	GPIOC->CR2=GPIO_PIN_1;

	//PD0 输入,bag_ok
	//PD1未使用
	//PD2:测试管脚,timer4的pwm波形
	//PD3:控制气泵
	  //设置PD4-PD6为输出
	//PD4:CS,PD5:WR,PD6:DATA
	//PD7 clear,输入
	GPIOD->DDR=GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6;
	GPIOD->CR1=GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6;
	GPIOD->CR2=GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6;

	//PE设置
	//PE5蜂鸣器
	GPIOE->DDR=GPIO_PIN_5;
	GPIOE->CR1=GPIO_PIN_5;
	GPIOE->CR2=GPIO_PIN_5;
	GPIOE->ODR&=~GPIO_PIN_5;

	//PF4=PB4
	GPIOF->DDR=GPIO_PIN_4;
	GPIOF->CR1=GPIO_PIN_4;
	GPIOF->CR2=GPIO_PIN_4;
	//GPIOF->ODR&=~GPIO_PIN_4;

}



uint16_t CCR2_Val = 208;
uint16_t CCR3_Val = 208;

/*
void TIM2_Config(void)
{
  MY_TIM2_TimeBaseInit(TIM2_PRESCALER_1, 417);

  MY_TIM2_OC2Init(TIM2_OCMODE_PWM1, TIM2_OUTPUTSTATE_ENABLE,CCR2_Val, TIM2_OCPOLARITY_HIGH);
  MY_TIM2_OC2PreloadConfig(ENABLE);      
  MY_TIM2_OC3Init(TIM2_OCMODE_PWM1, TIM2_OUTPUTSTATE_ENABLE,CCR3_Val, TIM2_OCPOLARITY_HIGH);
  MY_TIM2_OC3PreloadConfig(ENABLE);

  MY_TIM2_ARRPreloadConfig(ENABLE);
  MY_TIM2_Cmd(ENABLE);
}
*/

uint16_t CCR1_Val = 210;

//PWM时钟
void TIM1_Config(void)
{
  /* Time base configuration */
  //MY_TIM2_TimeBaseInit(TIM2_PRESCALER_1, 417);
  MY_TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 2*CCR1_Val, 0);

  /* PWM1 Mode configuration: Channel1 */ 
  MY_TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_ENABLE,
               CCR1_Val, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET,
               TIM1_OCNIDLESTATE_RESET); 

  /* TIM1 enable counter */
  MY_TIM1_Cmd(ENABLE);

  /* TIM1 Main Output Enable */
  MY_TIM1_CtrlPWMOutputs(ENABLE);
}


void timer4_init(void)
{
	//TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125-1);  //定时1ms (16M/128/125 = 1000)
	TIM4->PSCR = (uint8_t)(TIM4_PRESCALER_128);
	TIM4->ARR = (uint8_t)(125-1);

	//TIM4_ClearFlag(TIM4_FLAG_UPDATE);              //清除标志位
	TIM4->SR1 = (uint8_t)(~TIM4_FLAG_UPDATE);

	//TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);         //使能更新UPDATE中断
	TIM4->IER |= (uint8_t)TIM4_IT_UPDATE;
	
	//TIM4_SetCounter(0);                            //计数值归零
	TIM4->CNTR = (uint8_t)(0);

	//TIM4_Cmd(ENABLE);                              //启动定时器
	TIM4->CR1 |= TIM4_CR1_CEN;
}


void iwdg_init(void)
{
  /* Enable IWDG (the LSI oscillator will be enabled by hardware) */
  IWDG_Enable();
  
  /* IWDG timeout equal to 250 ms (the timeout may varies due to LSI frequency
     dispersion) */
  /* Enable write access to IWDG_PR and IWDG_RLR registers */
  IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);
  
  /* IWDG counter clock: LSI/128 */
  IWDG_SetPrescaler(IWDG_Prescaler_128);
  
  /* Set counter reload value to obtain 250ms IWDG Timeout.
    Counter Reload Value = 250ms/IWDG counter clock period
                         = 250ms / (LSI/128)
                         = 0.25s / (LsiFreq/128)
                         = LsiFreq/(128 * 4)
                         = LsiFreq/512
   */
  IWDG_SetReload((uint8_t)(LsiFreq/512));
  
  /* Reload IWDG counter */
  IWDG_ReloadCounter();
}