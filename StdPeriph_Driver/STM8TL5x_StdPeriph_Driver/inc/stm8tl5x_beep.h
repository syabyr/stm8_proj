/**
  ******************************************************************************
  * @file    stm8tl5x_beep.h
  * @author  MCD Application Team
  * @version V1.0.1
  * @date    01-March-2012
  * @brief   This file contains all functions prototypes and macros for the BEEP peripheral.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __STM8TL5X_BEEP_H
#define __STM8TL5X_BEEP_H

/* Includes ------------------------------------------------------------------*/
#include "stm8tl5x.h"

/* Exported variables ------------------------------------------------------- */
/* Exported types ------------------------------------------------------------*/

/** @addtogroup BEEP_Exported_Types
  * @{
  */

/**
  * @brief BEEP Frequency selection
  */
typedef enum {
  BEEP_Frequency_1KHz = (uint8_t)0x00,  /*!< Beep signal output frequency equals to 1 KHz */
  BEEP_Frequency_2KHz = (uint8_t)0x40,  /*!< Beep signal output frequency equals to 2 KHz */
  BEEP_Frequency_4KHz = (uint8_t)0x80   /*!< Beep signal output frequency equals to 4 KHz */
} BEEP_Frequency_TypeDef;

/**
  * @}
  */

/* Exported constants --------------------------------------------------------*/

/** @addtogroup BEEP_Exported_Constants
  * @{
  */

#define BEEP_CALIBRATION_DEFAULT ((uint8_t)0x01)   /*!< Default value when calibration is not done */
#define LSI_FREQUENCY_MIN ((uint32_t)25000)             /*!< LSI minimum value in Hertz */
#define LSI_FREQUENCY_MAX ((uint32_t)75000)             /*!< LSI maximum value in Hertz */

/**
  * @}
  */

/* Exported macros -----------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/

/** @addtogroup BEEP_Private_Macros
  * @{
  */

/**
  * @brief Macro used by the assert function to check the different functions parameters.
  */

/**
  * @brief Macro used by the assert function to check the BEEP frequencies.
  */
#define IS_BEEP_FREQUENCY(FREQ) \
  (((FREQ) == BEEP_Frequency_1KHz) || \
   ((FREQ) == BEEP_Frequency_2KHz) || \
   ((FREQ) == BEEP_Frequency_4KHz))

/**
  * @brief  Macro used by the assert function to check the LSI frequency (in Hz).
  */
#define IS_LSI_FREQUENCY(FREQ) \
  (((FREQ) >= LSI_FREQUENCY_MIN) && \
   ((FREQ) <= LSI_FREQUENCY_MAX))

/**
  * @}
  */

/* Exported functions ------------------------------------------------------- */

/** @addtogroup BEEP_Exported_Functions
  * @{
  */

void BEEP_DeInit(void);
void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency);
void BEEP_Cmd(FunctionalState NewState);
void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz);

/**
  * @}
  */

#endif /* __STM8TL5X_BEEP_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
