/**
  ******************************************************************************
  * @file    stm8tl5x_clk.c
  * @author  MCD Application Team
  * @version V1.0.1
  * @date    01-March-2012
  * @brief   This file contains all the functions for the CLK peripheral.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
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

#include "stm8tl5x_clk.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private Constants ---------------------------------------------------------*/

/**
  * @addtogroup CLK_Private_Constants
  * @{
  */

CONST uint8_t HSIDivFactor[4] = {1, 2, 4, 8}; /*!< Holds the different HSI Dividor factors */

/**
  * @}
  */

/**
  * @addtogroup CLK_Public_Functions
  * @{
  */

/**
  * @brief Deinitializes the CLK peripheral registers to their default reset values.
  * @param None
  * @retval None
  */
void CLK_DeInit(void)
{
  CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  CLK->CCOR  = CLK_CCOR_RESET_VALUE;
}

/**
  * @brief Enables or disablle the Configurable Clock Output (CCO).
  * @param[in] NewState New state of CCEN bit (CCO register).
  * @retval None
  */
void CLK_CCOCmd(FunctionalState NewState)
{
  /* Check the parameters */
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {
    /* Set CCOEN bit */
    CLK->CCOR |= CLK_CCOR_CCOEN;
  }
  else
  {
    /* Reset CCOEN bit */
    CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
  }

}

/**
  * @brief Enables or disables the specified peripheral CLK.
  * @param[in] CLK_Peripheral This parameter specifies the peripheral clock to gate.
  * @param[in] NewState       New state of specified peripheral clock.
  * @retval None
  */
void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
{
  uint8_t reg = 0;

  /* Check the parameters */
  assert_param(IS_FUNCTIONAL_STATE(NewState));
  assert_param(IS_CLK_PERIPHERAL(CLK_Peripheral));

  /* Get PCKENR register number */
  reg = (uint8_t)((uint8_t)CLK_Peripheral & (uint8_t)0xF0);

  if (reg == 0) /* PCKENR1 */
  {
    if (NewState != DISABLE)
    {
      /* Enable the peripheral Clock */
      CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
    }
    else
    {
      /* Disable the peripheral Clock */
      CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
    }
  }
  else /* PCKENR2 */
  {
    if (NewState != DISABLE)
    {
      /* Enable the peripheral Clock */
      CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
    }
    else
    {
      /* Disable the peripheral Clock */
      CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
    }
  }
}

/**
  * @brief Configures the HSI master clock dividers.
  * @param[in] CLK_MasterPrescaler Specifies the HSI clock divider to apply.
  * @retval None
  */
void CLK_MasterPrescalerConfig(CLK_MasterPrescaler_TypeDef CLK_MasterPrescaler)
{
  /* check parameters */
  assert_param(IS_CLK_MASTER_PRESCALER(CLK_MasterPrescaler));

  CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
  CLK->CKDIVR = (uint8_t)CLK_MasterPrescaler;
}

/**
  * @brief Output the selected clock on a dedicated I/O pin.
  * @param[in] CLK_Output Specifies the clock source.
  * @retval None
  * @note The I/O dedicated to the CCO pin must be set in output push-pull mode.
  */
void CLK_CCOConfig(CLK_Output_TypeDef CLK_Output)
{
  /* check parameters */
  assert_param(IS_CLK_OUTPUT(CLK_Output));

  /* Clears of the CCO type bits part */
  CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);

  /* Selects the source provided on cco_ck output */
  CLK->CCOR |= ((uint8_t)CLK_Output);

  /* Enable the clock output */
  CLK->CCOR |= CLK_CCOR_CCOEN;
}

/**
  * @brief This function returns the frequencies of different on chip clocks.
  * @param None
  * @retval uint32_t The master clock frequency
  */
uint32_t CLK_GetClockFreq(void)
{
  uint32_t clockfrequency = 0;
  uint8_t tmp = 0, presc = 0;

  tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
  presc = HSIDivFactor[tmp];
  clockfrequency = HSI_VALUE / presc;

  return((uint32_t)clockfrequency);
}

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
