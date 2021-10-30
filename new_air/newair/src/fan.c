#include "stm8s.h"
#include "fan.h"
#include "main.h"

int16_t speed = 0;

void fan_sw()
{
    //反相
    GPIO_WriteReverse(FAN_PORT, FAN_SW_PIN);
    /*
    if ((GPIO_ReadInputData(FAN_PORT) & FAN_PWM_PIN) == 0x00)
    {
        GPIO_WriteReverse(LED_PORT, LED_PIN);
    }
     */
    //

}

void fan_up()
{
    if(speed > 300)
    {
        speed = speed - 300;
    }

    TIM1_SetCompare1(speed);
}

void fan_down()
{

    if(speed < 3200)
    {
        speed = speed + 300;
    }

    TIM1_SetCompare1(speed);
}