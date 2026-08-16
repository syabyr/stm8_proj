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

	//设置PB0-PB2为输出
	GPIOB->DDR=GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2;
	GPIOB->CR1=GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2;
	GPIOB->CR2=GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2;

	//LED_UP(PB6) 及LED_ALL(PD7)

}



void Delay(uint16_t nCount);



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
}

