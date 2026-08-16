/**
  ******************************************************************************
  * @file UART1_Printf\main.c
  * @brief This file contains the main function for: retarget the C library printf
  *        /scanf functions to the UART1 example.
  * @author  MCD Application Team
  * @version  V2.2.0
  * @date     30-September-2014
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
//#include "stdio.h"
#include "stm8s_it.h"
#include "htlcd.h"
#include "common.h"
/**
  * @addtogroup UART1_Printf
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
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
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */

/*
 INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
{
  UART1_SendData8(UART1_ReceiveData8());
}
*/
void Delay(uint16_t nCount)
{
  uint8_t i;
  for(; nCount !=0 ; nCount--) {
    for(i=255;i!=0;i--) {}
  }
}


void main(void)
{
  int i,j;
  char ans=0;
  //int32_t *up,*down;
  int32_t up,down;
  uint8_t up1[4],down1[4];
  /*High speed internal clock prescaler: 1*/
  MY_CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
    

  init_lcd_gpio();

  setup_ht1621b();
  clear_lcd();
  Delay(10000);
  //display_all();
  //Delay(10000);
clear_lcd();
  //display_test();
  init_bitmap();
  flush_bitmap();
  i=0;

  up=MY_FLASH_Read32(0x004010);
  down=MY_FLASH_Read32(0x004014);
/*
  up1[0]=MY_FLASH_ReadByte(0x004010);
  up1[1]=MY_FLASH_ReadByte(0x004011);
  up1[2]=MY_FLASH_ReadByte(0x004012);
  up1[3]=MY_FLASH_ReadByte(0x004013);

  down1[0]=MY_FLASH_ReadByte(0x004014);
  down1[1]=MY_FLASH_ReadByte(0x004015);
  down1[2]=MY_FLASH_ReadByte(0x004016);
  down1[3]=MY_FLASH_ReadByte(0x004017);

  up=&up1[0];
  down=&down1[0];
  */


  disp_up(up);
  disp_down(down);

  up++;
  down++;
  /*
  up1[0]++;
  up1[1]++;
  up1[2]++;
  up1[3]++;
  down1[0]++;
  down1[1]++;
  down1[2]++;
  down1[3]++;
*/
  FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
    FLASH->CR1 |= (uint8_t)FLASH_PROGRAMTIME_STANDARD;
  //FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
    /* Unlock Data memory */
      //FLASH_Unlock(FLASH_MEMTYPE_DATA);
  FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
  FLASH->DUKR = FLASH_RASS_KEY1;
/*
  MY_FLASH_ProgramByte(0x004010,up1[0]);
  MY_FLASH_ProgramByte(0x004011,up1[1]);
  MY_FLASH_ProgramByte(0x004012,up1[2]);
  MY_FLASH_ProgramByte(0x004013,up1[3]);

  MY_FLASH_ProgramByte(0x004014,down1[0]);
  MY_FLASH_ProgramByte(0x004015,down1[1]);
  MY_FLASH_ProgramByte(0x004016,down1[2]);
  MY_FLASH_ProgramByte(0x004017,down1[3]);
  */
   MY_FLASH_Program32(0x004010,up);
   MY_FLASH_Program32(0x004014,down);

  FLASH->IAPSR &= (uint8_t)FLASH_MEMTYPE_DATA;
  
  while(1)
  {
     Delay(1000);
     
  }


  while(1)
  {
      disp_up(i);
      Delay(1000);
      i++;
  }
  /*
  for(i=0;i<=16;i++)
  {
    dispnum(i,i%10);
  }
flush_bitmap();
*/
  //dispnum(9,1);
  //flush_bitmap();
  /*
  while(1)
  {
    Delay(3000);
  }
  */
  while (1)
  {
    
    for(i=1;i<=16;i++)
    {
        for(j=0;j<=10;j++)
        {
          dispnum(i,j);
          flush_bitmap();
            Delay(1000);
        }
        //dispnum(1,i);
        //dispnum(2,i);
        //dispnum(11,i);
        /*
        dispnum(12,i);
        dispnum(13,i);
        dispnum(14,i);
        dispnum(15,i);
        dispnum(16,i);
        */
        //dispnum(7,i);
        //dispnum(8,i);
        //flush_bitmap();
        //Delay(10000);
    }
    
    //display_test();
    //ans = getchar();
    //printf("%c", ans);  
  }
}





#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
