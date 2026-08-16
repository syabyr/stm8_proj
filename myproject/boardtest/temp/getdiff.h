#ifndef _GET_DIFF_H_
#define _GET_DIFF_H_

//#include "define.h"
#include <inttypes.h>

uint16_t GetTemp(uint16_t adc_value);

//根据实际差值获取显示差值
int getdiff(int value);

#endif