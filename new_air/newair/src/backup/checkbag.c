#include "checkbag.h"
#include "basic.h"
uint8_t bagstatus=0;

void status_up()
{
	bagstatus++;
}
void status_clear()
{
	bagstatus=0;
}
uint8_t get_stauts()
{
	return bagstatus;
}

void bagstatus_handler()
{
	if(RESET == bagok_status())
	{
		status_clear();
	}
	else
	{
		status_up();
	}
}

int16_t power_off_count=0;
int8_t poweroff_status=0;

void poweroff_handler()
{
	if(RESET == power_status())
	{
		power_off_count++;
		if(power_off_count == 2000)
		{
			poweroff_status=1;
		}
	}
	else
	{
		if(0 != power_off_count)
		{
			power_off_count--;
		}
	}
}

int8_t get_poweroff_status()
{
	return poweroff_status;
}