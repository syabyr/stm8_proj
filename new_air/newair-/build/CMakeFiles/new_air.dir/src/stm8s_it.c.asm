;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8s_it
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fan_sw
	.globl _cap_handler
	.globl _ov_handler
	.globl _TIM3_Config
	.globl _TIM3_ClearITPendingBit
	.globl _TIM3_ClearFlag
	.globl _TIM3_SetCounter
	.globl _TIM3_ICInit
	.globl _GPIO_ReadInputData
	.globl _GPIO_WriteReverse
	.globl _TRAP_IRQHandler
	.globl _TLI_IRQHandler
	.globl _AWU_IRQHandler
	.globl _CLK_IRQHandler
	.globl _EXTI_PORTA_IRQHandler
	.globl _EXTI_PORTB_IRQHandler
	.globl _EXTI_PORTC_IRQHandler
	.globl _EXTI_PORTD_IRQHandler
	.globl _EXTI_PORTE_IRQHandler
	.globl _SPI_IRQHandler
	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
	.globl _TIM1_CAP_COM_IRQHandler
	.globl _TIM2_UPD_OVF_BRK_IRQHandler
	.globl _TIM2_CAP_COM_IRQHandler
	.globl _TIM3_UPD_OVF_BRK_IRQHandler
	.globl _TIM3_CAP_COM_IRQHandler
	.globl _I2C_IRQHandler
	.globl _UART2_TX_IRQHandler
	.globl _UART2_RX_IRQHandler
	.globl _ADC1_IRQHandler
	.globl _TIM4_UPD_OVF_IRQHandler
	.globl _EEPROM_EEC_IRQHandler
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 66: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
;	-----------------------------------------
;	 function TRAP_IRQHandler
;	-----------------------------------------
_TRAP_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 71: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 77: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
;	-----------------------------------------
;	 function TLI_IRQHandler
;	-----------------------------------------
_TLI_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 81: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 88: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
;	-----------------------------------------
;	 function AWU_IRQHandler
;	-----------------------------------------
_AWU_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 93: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 100: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
;	-----------------------------------------
;	 function CLK_IRQHandler
;	-----------------------------------------
_CLK_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 105: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 112: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
;	-----------------------------------------
;	 function EXTI_PORTA_IRQHandler
;	-----------------------------------------
_EXTI_PORTA_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 117: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 124: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
;	-----------------------------------------
;	 function EXTI_PORTB_IRQHandler
;	-----------------------------------------
_EXTI_PORTB_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 127: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 134: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
;	-----------------------------------------
;	 function EXTI_PORTC_IRQHandler
;	-----------------------------------------
_EXTI_PORTC_IRQHandler:
	div	x, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 139: if ((GPIO_ReadInputData(KEY_PORT) & KEY_PIN) == 0x00)
	push	#0x0a
	push	#0x50
	call	_GPIO_ReadInputData
	popw	x
	bcp	a, #0x08
	jrne	00103$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 141: GPIO_WriteReverse(LED_PORT, LED_PIN);
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_WriteReverse
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 142: fan_sw();
	call	_fan_sw
00103$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 144: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 151: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
;	-----------------------------------------
;	 function EXTI_PORTD_IRQHandler
;	-----------------------------------------
_EXTI_PORTD_IRQHandler:
	div	x, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 156: if ((GPIO_ReadInputData(IR_PORT) & IR_PIN) == 0x00)
	push	#0x0f
	push	#0x50
	call	_GPIO_ReadInputData
	popw	x
	bcp	a, #0x04
	jrne	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 158: GPIO_WriteReverse(LED_PORT, LED_PIN);
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_WriteReverse
	addw	sp, #3
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 160: TIM3_Config();
	call	_TIM3_Config
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 161: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 168: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
;	-----------------------------------------
;	 function EXTI_PORTE_IRQHandler
;	-----------------------------------------
_EXTI_PORTE_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 173: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 219: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
;	-----------------------------------------
;	 function SPI_IRQHandler
;	-----------------------------------------
_SPI_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 224: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 231: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
;	-----------------------------------------
;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
;	-----------------------------------------
_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 236: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 243: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
;	-----------------------------------------
;	 function TIM1_CAP_COM_IRQHandler
;	-----------------------------------------
_TIM1_CAP_COM_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 248: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 280: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
;	-----------------------------------------
;	 function TIM2_UPD_OVF_BRK_IRQHandler
;	-----------------------------------------
_TIM2_UPD_OVF_BRK_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 285: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 292: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
;	-----------------------------------------
;	 function TIM2_CAP_COM_IRQHandler
;	-----------------------------------------
_TIM2_CAP_COM_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 297: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 307: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
;	-----------------------------------------
;	 function TIM3_UPD_OVF_BRK_IRQHandler
;	-----------------------------------------
_TIM3_UPD_OVF_BRK_IRQHandler:
	div	x, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 313: ov_handler();
	call	_ov_handler
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 314: TIM3_ClearITPendingBit(TIM3_IT_UPDATE);
	push	#0x01
	call	_TIM3_ClearITPendingBit
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 315: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_FALLING, TIM3_ICSELECTION_DIRECTTI,
	push	#0x00
	push	#0x00
	push	#0x01
	push	#0x44
	push	#0x00
	call	_TIM3_ICInit
	addw	sp, #5
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 317: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 324: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
;	-----------------------------------------
;	 function TIM3_CAP_COM_IRQHandler
;	-----------------------------------------
_TIM3_CAP_COM_IRQHandler:
	div	x, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 329: cap_handler();
	call	_cap_handler
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 332: TIM3_ClearFlag(TIM3_FLAG_CC1);
	push	#0x02
	push	#0x00
	call	_TIM3_ClearFlag
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 333: TIM3_SetCounter(0);
	clrw	x
	pushw	x
	call	_TIM3_SetCounter
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 334: TIM3_ClearITPendingBit(TIM3_IT_CC1);
	push	#0x02
	call	_TIM3_ClearITPendingBit
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 335: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 370: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
;	-----------------------------------------
;	 function I2C_IRQHandler
;	-----------------------------------------
_I2C_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 375: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 383: INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
;	-----------------------------------------
;	 function UART2_TX_IRQHandler
;	-----------------------------------------
_UART2_TX_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 388: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 395: INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
;	-----------------------------------------
;	 function UART2_RX_IRQHandler
;	-----------------------------------------
_UART2_RX_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 400: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 450: INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
;	-----------------------------------------
;	 function ADC1_IRQHandler
;	-----------------------------------------
_ADC1_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 456: return;
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 458: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 479: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
;	-----------------------------------------
;	 function TIM4_UPD_OVF_IRQHandler
;	-----------------------------------------
_TIM4_UPD_OVF_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 484: }
	iret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 492: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
;	-----------------------------------------
;	 function EEPROM_EEC_IRQHandler
;	-----------------------------------------
_EEPROM_EEC_IRQHandler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 497: }
	iret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
