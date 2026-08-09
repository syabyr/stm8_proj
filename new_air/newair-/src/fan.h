#ifndef __FAN_H__
#define __FAN_H__

void fan_sw();
void fan_up();
void fan_down();

void sd_on_cap();
void sd_on_ovf();

void fan_init();
void ms2_update();
#endif