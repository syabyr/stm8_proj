#include "common.h"
#include "init.h"

__IO uint32_t LsiFreq = 128000;

void clock_init(void)
{
	//设置时钟频率为16MHz
	//CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1); //HSI = 16M (1分频)
	CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	CLK->CKDIVR |= (uint8_t)CLK_PRESCALER_HSIDIV1;
}

void gpio_init(void)
{
	//上部加热器开关
	GPIOE->DDR=0;
	GPIOE->CR1=GPIO_PIN_5;

	//8段数码管阳极配置(PD0-PD6)
	//LED_ALL配置(PD7)(高电平点亮)
	GPIOD->DDR=GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;
	GPIOD->CR1=GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;

	//8段数码管阴极配置(PC2-PC7)
	//HEAT_UP配置(PC1)(高电平点亮)
	GPIOC->DDR=GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;
	GPIOC->CR1=GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;

	//按键配置
	//产品板:PA3,PF4,PB4,PB5为4个按键
	//测试板:PB2,PB3,PB4,PB5为4个按键
	//GPIO_Init(GPIOB,(GPIO_Pin_TypeDef)(GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5),GPIO_MODE_IN_FL_IT);
	//GPIO_Init(GPIOB,(GPIO_Pin_TypeDef)(GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5),GPIO_MODE_IN_PU_IT);

	//GPIO_Init(GPIOB,(GPIO_Pin_TypeDef)(GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5),GPIO_MODE_IN_PU_NO_IT);
 #ifdef STM8S003

	GPIOA->DDR=GPIO_PIN_1;
	GPIOA->CR1=GPIO_PIN_1|GPIO_PIN_3;
	GPIOA->CR2=0x00;

	GPIOF->DDR=0x00;
	GPIOF->CR1=GPIO_PIN_4;
	GPIOF->CR2=0x00;

	//GPIO_Init(GPIOA, (GPIO_Pin_TypeDef)GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);
 	//GPIO_Init(GPIOF, (GPIO_Pin_TypeDef)GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);
#endif
	//按键,ADC,继电器,LED配置
	//PB0,PB1:ADC,温度传感器.PB2,PB3:继电器.PB4,PB5,PB7:按键.PB6:LED
	//
	GPIOB->DDR=GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_6;
	GPIOB->CR1=GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;
	GPIOB->CR2=GPIO_PIN_6;

	//LED_UP(PB6) 及LED_ALL(PD7)

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

void adc1_init(void)
{
	//ADC1_DeInit();
	MY_ADC1_DeInit();
	MY_ADC1_Init(ADC1_CONVERSIONMODE_SINGLE, ADC1_CHANNEL_0|ADC1_CHANNEL_1, ADC1_PRESSEL_FCPU_D12, \
		ADC1_EXTTRIG_TIM, DISABLE, ADC1_ALIGN_RIGHT, ADC1_SCHMITTTRIG_CHANNEL0 | ADC1_SCHMITTTRIG_CHANNEL1 ,\
		DISABLE);

	//ADC1_ITConfig(ENABLE);
	//ADC1->CSR |= (uint8_t)ADC1_IT_EOCIE;

	//ADC1_Cmd(ENABLE);
	ADC1->CR1 |= ADC1_CR1_ADON;
}

void Delay(uint16_t nCount);

void test_output(void)
{
	GPIOD->ODR = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6;
	GPIOC->ODR = ~(GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7);
	led_up_heat_on();
	led_up_warm_on();
	led_all_heat_on();
	led_all_warm_on();
	//显示888 888的时长
	Delay(0xAFFF);
	led_up_heat_off();
	led_up_warm_off();
	led_all_heat_off();
	led_all_warm_off();
	/*
	Delay(0xFFF);
	led_up_heat_on();
	led_up_warm_on();
	led_all_heat_on();
	led_all_warm_on();
	*/
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

void system_init(void)
{
	clock_init();
	gpio_init();

	test_output();

	get_eeprom_value();
	timer4_init();
	adc1_init();
	enableInterrupts();                            //使能全局中断//使能全局中断
	//复位后首先进入闪烁模式
	set_blink_left(TRUE);
	set_blink_right(TRUE);
}

