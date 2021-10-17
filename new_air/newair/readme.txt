管脚定义:

LED:PF4
低电平点亮

key:
PC3
按下后为低电平


IR:
PD2

fan:
PC1 pwm
PC2 on

GPIOC->ODR|=GPIO_PIN_1|GPIO_PIN_2;
将PC1,PC2都置为高电平时,风扇微转.


pc1:5KHz

