#include "basic.h"
#include "common.h"



/////////////////////////////////////////////////////////////////
//自开机
void self_poweron()
{
	GPIOA->ODR|=GPIO_PIN_3;
}
//自关机
void self_poweroff()
{
	GPIOA->ODR&=~GPIO_PIN_3;
}
/////////////////////////////////////////////////////////////////
//打开告警
void warn_on()
{
	GPIOE->ODR|=GPIO_PIN_5;
}
//关闭告警
void warn_off()
{
	GPIOE->ODR&=~GPIO_PIN_5;
}
/////////////////////////////////////////////////////////////////
//开始送袋子
void move_start()
{
	GPIOB->ODR|=GPIO_PIN_6;
}
//停止送袋子
void move_stop()
{
	GPIOB->ODR&=~GPIO_PIN_6;
}

/////////////////////////////////////////////////////////////////
//开始充气
void start_pump()
{
	GPIOD->ODR|=GPIO_PIN_3;
}
//停止充气
void stop_pump()
{
	GPIOD->ODR&=~GPIO_PIN_3;
}
/////////////////////////////////////////////////////////////////

//推板工作
void open_back()
{
	GPIOF->ODR&=~GPIO_PIN_4;
	GPIOB->ODR|=GPIO_PIN_3;
}
//推板归位
void open_work()
{
	GPIOB->ODR&=~GPIO_PIN_3;
	GPIOF->ODR|=GPIO_PIN_4;
}
//推板停止
void open_stop()
{
	GPIOB->ODR&=~(GPIO_PIN_3|GPIO_PIN_4);
	GPIOF->ODR&=~GPIO_PIN_4;
}

/////////////////////////////////////////////////////////////////
//成型工作
void shap_work()
{
	GPIOB->ODR&=~GPIO_PIN_2;
	GPIOB->ODR|=GPIO_PIN_1;
}

//成型归位
void shap_back()
{
	GPIOB->ODR&=~GPIO_PIN_1;
	GPIOB->ODR|=GPIO_PIN_2;
}
//成型停止
void shap_stop()
{
	GPIOB->ODR&=~(GPIO_PIN_1|GPIO_PIN_2);
}

bool power_status()
{
	return MY_GPIO_ReadInputPin(GPIOB, GPIO_PIN_7);
}

/////////////////////////////////////////////////////////////////
bool is_tuiban_reset()
{
	return MY_GPIO_ReadInputPin(GPIOC, GPIO_PIN_7);
}
bool is_tuiban_onposition()
{
	return MY_GPIO_ReadInputPin(GPIOC, GPIO_PIN_5);
}

bool is_dingban_reset()
{
	return MY_GPIO_ReadInputPin(GPIOC, GPIO_PIN_6);
}
bool is_dingban_onposition()
{
	return MY_GPIO_ReadInputPin(GPIOC, GPIO_PIN_4);
}
/////////////////////////////////////////////////////////////////

bool bagot_status()
{
	return MY_GPIO_ReadInputPin(GPIOD, GPIO_PIN_0);
}
bool bagld_status()
{
	return MY_GPIO_ReadInputPin(GPIOC, GPIO_PIN_2);
}
bool bagok_status()
{
	return MY_GPIO_ReadInputPin(GPIOC, GPIO_PIN_3);
}

uint8_t timeout=0;
void timeout_handler()
{
	timeout++;
}

uint8_t get_timeout()
{
	return timeout;
}
void clear_timeout()
{
	timeout=0;
}

void reset_board()
{
 
  //A6顶板复位
  while(RESET != is_dingban_reset())
  {
    shap_back();
  }
  shap_stop();
  //A2推板复位

  while(RESET != is_tuiban_reset())
  {
    open_back();
  }
  open_stop();
}