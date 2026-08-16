/**
  ******************************************************************************
  * @file    Project/main.c
  * @author  MCD Application Team
  * @version V2.2.0
  * @date    30-September-2014
  * @brief   Main program body
   ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software
  * distributed under the License is distributed on an "AS IS" BASIS,
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */


/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"

#include "init.h"
#include "stm8s_it.h"
#include "func.h"
/* Private defines -----------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
void Delay(uint16_t nCount);

//TODO:记得加看门狗
void main(void)
{
  //GPIO_Init(GPIOE, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST);
  //定义几个状态

  //开关标志位
  bool is_all_on_temp = FALSE;
  bool is_up_on_temp = FALSE;
  //加热保温标志位
  bool is_heat_up_temp = FALSE;
  bool is_heat_all_temp = FALSE;
  
  system_init();
  //GPIOC->ODR = 0x00;
  iwdg_init();
  while (1)
  {
    //先喂狗
    IWDG_ReloadCounter();
    Delay(100);
    key_scan();
    if((get_eeprom_flag()) && (!get_blink_left()) && (!get_blink_right())&&(!is_fast_mode()))
    {
      set_eeprom_value();
      set_eeprom_flag(FALSE);
    }
    adc_get_value();
  
    //加热判断逻辑
    if(get_all_status() != is_all_on_temp)
    {
        is_all_on_temp = get_all_status();

        //all关闭
        if(FALSE == is_all_on_temp)
        {
            halt_all();
        }
        else //all打开
        {
            //todo
        }
    }

    if(FALSE == is_all_on_temp)
    {
        continue;
    }
    else
    {
          //下部加热判断
          if(get_disp_right() > get_setvalue_right()+5)
          {
                //进入保温模式
                is_heat_all_temp = FALSE;
                stop_heat_all();
          }
          else if(get_disp_right() < get_setvalue_right()-5)
          {
                //进入加热模式
                is_heat_all_temp = TRUE;
                start_heat_all();
          }
          else
          {
                //保持原有模式
                if(TRUE == is_heat_all_temp)
                {
                    start_heat_all();
                }
                else
                {
                    stop_heat_all();
                }
          }
    }

    if(get_up_status() != is_up_on_temp)
    {
        is_up_on_temp = get_up_status();

        //up关闭
        if(FALSE == is_up_on_temp)
        {
            halt_up();
        }
        else //up打开
        {
            //todo
        }
    }

    if(FALSE == is_up_on_temp)
    {
        continue;
    }
    else
    {
          //上部加热判断
          if(get_disp_left() > get_setvalue_left()+5)
          {
                //进入保温模式
                is_heat_up_temp = FALSE;
                stop_heat_up();
          }
          else if(get_disp_left() < get_setvalue_left()-5)
          {
                //进入加热模式
                is_heat_up_temp = TRUE;
                start_heat_up();
          }
          else
          {
                //保持原有模式
                if(TRUE == is_heat_up_temp)
                {
                    start_heat_up();
                }
                else
                {
                    stop_heat_up();
                }
          }
    }
  } //while (1)
}


void Delay(uint16_t nCount)
{
  uint8_t i;
  for(; nCount !=0 ; nCount--) {
    for(i=255;i!=0;i--) {}
  }
}

// This is called by some of the SPL files on error.
#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(uint8_t* file, uint32_t line)
{
  (void)file;
  (void)line;

  /* User can add their own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
