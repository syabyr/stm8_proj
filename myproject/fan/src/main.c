#include "stm8s.h"
#include "main.h"
#include "stm8s_it.h"
#include "htlcd.h"
#include "common.h"
#include "init.h"
#include "basic.h"
#include "checkbag.h"


#ifdef _RAISONANCE_
#define PUTCHAR_PROTOTYPE int putchar (char c)
#define GETCHAR_PROTOTYPE int getchar (void)
#elif defined (_COSMIC_)
#define PUTCHAR_PROTOTYPE char putchar (char c)
#define GETCHAR_PROTOTYPE char getchar (void)
#elif defined (_SDCC_)  // SDCC Patch: declared same as stdio.h
#define PUTCHAR_PROTOTYPE void putchar (char c)
#define GETCHAR_PROTOTYPE char getchar (void)
#else /* _IAR_ */
#define PUTCHAR_PROTOTYPE int putchar (int c)
#define GETCHAR_PROTOTYPE int getchar (void)
#endif /* _RAISONANCE_ */


void Delay(uint16_t nCount)
{
  uint8_t i;
  for(; nCount !=0 ; nCount--) {
    for(i=255;i!=0;i--) {}
  }
}


void determin_poweron()
{
  int cycle_count=0;
  while(1)
  {
    if(RESET == power_status())
    {
      cycle_count++;
      Delay(50);
    }
    else
    {
      break;
    }
    if(100 >= cycle_count)
    {
      warn_on();
      Delay(1000);
      warn_off();
      Delay(1000);
      warn_on();
      Delay(1000);
      warn_off();
      self_poweron();
      return;
    }
  }
  return;
}

//一个完整的流程
void com_cycle(void)
{
  
  //复位板子

reset_board();

 if(RESET == bagld_status())
{
    warn_on();
}
while(RESET == bagld_status())
{
    ;
}
 warn_off();
 Delay(1000);
 warn_on();
      Delay(1000);
      warn_off();

 //开始送纸
 move_start();
 Delay(4000);

// bagok_status ==RESET:低电平,说明有反射
// bagok_status !=RESET:高电平,说明碰到黑色的口了

//判断送袋子完成
 /*
 if(RESET != bagok_status())
{
  Delay(2000);
    while(RESET != bagok_status())
  {
      Delay(500);
  }
}
Delay(2000);
*/
 //==RESET低电平,有反射,黄色
 //!=RESET高电平,没反射,黑色
 if(RESET != bagok_status())
{
  //如果当前是黑色,继续跑2000,直到是白色
  Delay(200);
  while(RESET != bagok_status())
  //while((RESET != bagok_status())||(RESET != bagot_status()))
  {
    //如果还是黑色,继续等500
    Delay(1);
  }
}
//此时是低电平,延时2000
/*
Delay(2000);
while(RESET == bagok_status())
{
  //如果是低电平,继续等待
}
*/
//高电平时继续下一步

/*
while(RESET == bagok_status())
{

}
*/
while(1)
{
  if((get_stauts()>10)&&(RESET != bagot_status()))
  {
    break;
  }
}

move_stop();
//临时调试,送纸ok停止
//self_poweroff();
//开始往上推板子
  open_work();
  start_pump();
  //打开气泵
  Delay(10000);
  while(RESET != is_tuiban_onposition()) //到达最上方了
  {

  }
  //20180610:延时短一点,从10000到100
  //Delay(100);
  open_back();
  while(RESET != is_tuiban_reset()) //到达最下方了
  {

  }
  open_stop();

  shap_work();
  while(RESET != is_dingban_onposition())
  {

  }
  stop_pump();

  shap_back();
  while(RESET != is_dingban_reset())
  {

  }
  shap_stop();
  ///*
  //等待取走袋子
  while(RESET != bagot_status())
  {
    warn_on();
    Delay(1000);
    warn_off();
    Delay(1000);
  }
  warn_off();
  //*/
}



void main(void)
{
  //int i,j;
  int count=0;
  char ans=0;
  MY_CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
  //clock_init();
  init_gpio();
    TIM1_Config();  
    timer4_init();
    enableInterrupts();

  //iwdg_init();

  setup_ht1621b();
  clear_lcd();
  Delay(100);
  //display_all();
  //Delay(10000);
clear_lcd();
  //display_test();
  init_bitmap();
  flush_bitmap();
  determin_poweron();
  Delay(4000);
  warn_on();
  Delay(1000);
  warn_off();
while(1)
{
  com_cycle();
  //reset_board();
  warn_on();
      Delay(1000);
      warn_off();
}

}
