#include "stm8s.h"
#include "fan.h"
#include "main.h"


int8_t onoff_state=0;
int8_t speed = 0;
int8_t speed_grade = 0;


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
}


void fan_on()
{
    GPIO_WriteHigh(FAN_PORT,FAN_SW_PIN);
    onoff_state = 1;
}

void fan_off()
{
    GPIO_WriteLow(FAN_PORT,FAN_SW_PIN);
    onoff_state = 0;
}

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

/**
 * speed detect on capture
 */
void sd_on_cap()
{
    //计算频率
}

/**
 * speed detect on overflow
 */
void sd_on_ovf()
{
    //判断当前风扇是否停止,停止的话,忽略,否则告警并关断电源

}