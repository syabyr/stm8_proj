#ifndef _FUNC_H_
#define _FUNC_H_

#include "define.h"

//设置及获取闪烁模式
void set_blink_left(bool value);
void set_blink_right(bool value);
bool get_blink_left(void);
bool get_blink_right(void);
//是否闪烁模式
bool is_blink_mode(void);


uint16_t get_setvalue_left(void);
uint16_t get_setvalue_right(void);

//设置及获取显示数字
void set_disp_left(uint16_t value);
void set_disp_right(uint16_t value);
uint16_t get_disp_left(void);
uint16_t get_disp_right(void);
/*******************************************/
//按键扫描相关

//是否fast模式
bool is_fast_mode(void);
//按键扫描,在main函数里运行
void key_scan(void);
//定时触发的按键处理函数
void timer4_key_handler(void);
//设置合适范围的值,保证在(70-300)之间
void set_value_correct(void);

/*******************************************/


//定时扫描显示数码管
void timer4_num_handler(void);



/*******************************************/
//读取及设置设定值相关
void get_eeprom_value(void);
void set_eeprom_value(void);
bool get_eeprom_flag(void);
void set_eeprom_flag(bool value);

/*******************************************/
//ADC转换相关
void timer4_adc_handler(void);
void adc_get_value(void);

///////////////////////////////////////
//LED控制

//打开上部加热指示灯
void led_up_heat_on(void);
//关闭上部加热指示灯
void led_up_heat_off(void);
//打开上部保温指示灯
void led_up_warm_on(void);
//关闭上部保温指示灯
void led_up_warm_off(void);
//打开全部加热指示灯
void led_all_heat_on(void);
//关闭全部加热指示灯
void led_all_heat_off(void);
//打开全部保温指示灯
void led_all_warm_on(void);
//关不全部保温指示灯
void led_all_warm_off(void);

///////////////////////////////////////
//继电器控制

//打开上部加热
void heat_up_on(void);
//关闭上部加热
void heat_up_off(void);
//打开下部加热
void heat_all_on(void);
//关闭下部加热
void heat_all_off(void);


//
void start_heat_up(void);

void stop_heat_up(void);

void start_heat_all(void);

void stop_heat_all(void);

//关闭上部加热器
void halt_up(void);

//关闭全部加热器
void halt_all(void);

bool get_all_status(void);

bool get_up_status(void);


void set_left_errorcode(int8_t n);
void set_right_errorcode(int8_t n);
void clear_left_errorcode(int8_t n);
void clear_right_errorcode(int8_t n);

void check_up_heat(bool status);
void check_all_heat(bool status);
#endif