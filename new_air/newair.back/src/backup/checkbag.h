#ifndef _CHECK_BAG_H_
#define _CHECK_BAG_H_

#include "stm8s.h"

void status_up();
void status_clear();

uint8_t get_stauts();

void bagstatus_handler();

//
void poweroff_handler();
int8_t get_poweroff_status();


#endif