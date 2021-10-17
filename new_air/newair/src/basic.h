#ifndef _BASIC_H_
#define _BASIC_H_

#include "stm8s.h"

bool power_status();
//开关机操作
void self_poweron();
void self_poweroff();

//告警蜂鸣器操作
void warn_on();
void warn_off();

//送袋子操作
void move_start();
void move_stop();

//充气操作
void start_pump();
void stop_pump();

//开板操作
void open_work();
void open_back();
void open_stop();

//定型操作
void shap_work();
void shap_back();
void shap_stop();



bool is_tuiban_reset();			//推板是否复位
bool is_tuiban_onposition();	//推板是否到位

bool is_dingban_reset();		//顶板是否复位
bool is_dingban_onposition();	//顶板是否到位

//袋子在位红外检测
bool bagld_status(); //是否有袋子

bool bagok_status(); //送袋子检测

bool bagot_status(); //单子是否取走


void key_scan(void);

//重启时复位推板和托板
void reset_board();

void timeout_handler();
uint8_t get_timeout();
void clear_timeout();
#endif