#include "stm8s.h"
#include "fan.h"
#include "main.h"
#include <stdio.h>

int8_t onoff_state=0;
int8_t speed = 0;
int16_t speed_counter = 0;


void write_fan_speed(int8_t value)
{
    FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
    FLASH->CR1 |= (uint8_t)FLASH_PROGRAMTIME_STANDARD;
    //FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
    /* Unlock Data memory */
    //FLASH_Unlock(FLASH_MEMTYPE_DATA);
    FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
    FLASH->DUKR = FLASH_RASS_KEY1;
    FLASH_ProgramByte(0x004010, value);

}


void fan_init()
{

    speed = FLASH_ReadByte(0x004010);
    if((speed<1)||(speed>10))
    {
        speed = 1;
        write_fan_speed(speed);
    }
    onoff_state = 1;
    TIM1_SetCompare1(300*(11-speed));
}


void fan_on()
{
    GPIO_WriteHigh(FAN_PORT,FAN_SW_PIN);
    GPIO_WriteHigh(LED_PORT,LED_PIN);
    onoff_state = 1;
}

void fan_off()
{
    GPIO_WriteLow(FAN_PORT,FAN_SW_PIN);
    GPIO_WriteLow(LED_PORT,LED_PIN);
    onoff_state = 0;
}

void fan_sw()
{
    //反相
    GPIO_WriteReverse(FAN_PORT, FAN_SW_PIN);

    GPIO_WriteReverse(LED_PORT, LED_PIN);


    if ((GPIO_ReadInputData(FAN_PORT) & FAN_SW_PIN) == 0x00)
    {
        onoff_state = 0;
    }
    else
    {
        onoff_state = 1;
    }



}

void fan_up()
{
    if(onoff_state != 1)
    {
        return;
    }
    if(speed<10)
    {
        speed++;
        TIM1_SetCompare1(300*(11-speed));
        write_fan_speed(speed);
    }
}

void fan_down()
{
    if(onoff_state != 1)
    {
        return;
    }
    if(speed>1)
    {
        speed--;
        TIM1_SetCompare1(300*(11-speed));
        write_fan_speed(speed);
    }
}

/**
 * speed detect on capture
 */
void sd_on_cap()
{
    printf("cap\r\n");
    speed_counter = TIM2_GetCapture1();
    //计算频率
}

/**
 * speed detect on overflow
 */
void sd_on_ovf()
{
    //判断当前风扇是否停止,停止的话,忽略,否则告警并关断电源
    if(onoff_state != 0)
    {
        printf("fan error\r\n");
        //fan_off();
    }

}

int16_t nCounter=0;
void ms2_update()
{
    nCounter++;
}