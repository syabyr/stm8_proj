#include "keycheck.h"

#include "basic.h"
#include "common.h"
#include "define.h"


int clear_count=0;
int power_count=0;
int store_count=0;

void keycheck_handler()
{
	//关机键
	if(RESET == MY_GPIO_ReadInputPin(GPIOB, GPIO_PIN_7))
	{
		power_count++;
	}
	else
	{
		power_count=0;
	}
	if(power_count == MAX_PALSE_TIMER)
	{
		//暂停
	}

	if(power_count == MAX_POWEROFF_TIMER)
	{
		//强制关机
		self_poweroff();
      	while(1)
      	{
        	;
      	}
	}

	//清零键
	if(RESET == MY_GPIO_ReadInputPin(GPIOD, GPIO_PIN_7))
	{
		clear_count++;
	}
	else
	{
		clear_count=0;
	}
	if(clear_count == MAX_CLEAR_TIMER)
	{
		//触发清零计数
	}

	//仓位键
	if(RESET == MY_GPIO_ReadInputPin(GPIOB, GPIO_PIN_5))
	{
		store_count++;
	}
	else
	{
		store_count=0;
	}
	if(store_count == MAX_STORE_TIMER)
	{
		//暂停
	}
}