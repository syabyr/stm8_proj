;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X x86_64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_Config
	.globl _main
	.globl _printf
	.globl _UART2_GetFlagStatus
	.globl _UART2_SendData8
	.globl _UART2_ReceiveData8
	.globl _UART2_Init
	.globl _UART2_DeInit
	.globl _TIM4_TimeBaseInit
	.globl _TIM3_ClearFlag
	.globl _TIM3_ITConfig
	.globl _TIM3_Cmd
	.globl _TIM3_ICInit
	.globl _TIM3_TimeBaseInit
	.globl _TIM1_CtrlPWMOutputs
	.globl _TIM1_Cmd
	.globl _TIM1_OC1Init
	.globl _TIM1_TimeBaseInit
	.globl _TIM1_DeInit
	.globl _IWDG_Enable
	.globl _IWDG_ReloadCounter
	.globl _IWDG_SetReload
	.globl _IWDG_SetPrescaler
	.globl _IWDG_WriteAccessCmd
	.globl _GPIO_WriteReverse
	.globl _GPIO_Init
	.globl _EXTI_SetTLISensitivity
	.globl _EXTI_SetExtIntSensitivity
	.globl _CLK_HSIPrescalerConfig
	.globl _UART2_Config
	.globl _TIM1_Config
	.globl _TIM2_Config
	.globl _TIM3_Config
	.globl _IWDG_Config
	.globl _putchar
	.globl _getchar
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int _TRAP_IRQHandler ; trap
	int _TLI_IRQHandler ; int0
	int _AWU_IRQHandler ; int1
	int _CLK_IRQHandler ; int2
	int _EXTI_PORTA_IRQHandler ; int3
	int _EXTI_PORTB_IRQHandler ; int4
	int _EXTI_PORTC_IRQHandler ; int5
	int _EXTI_PORTD_IRQHandler ; int6
	int _EXTI_PORTE_IRQHandler ; int7
	int 0x000000 ; int8
	int 0x000000 ; int9
	int _SPI_IRQHandler ; int10
	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
	int _TIM1_CAP_COM_IRQHandler ; int12
	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
	int _TIM2_CAP_COM_IRQHandler ; int14
	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
	int _TIM3_CAP_COM_IRQHandler ; int16
	int 0x000000 ; int17
	int 0x000000 ; int18
	int _I2C_IRQHandler ; int19
	int _UART2_TX_IRQHandler ; int20
	int _UART2_RX_IRQHandler ; int21
	int _ADC1_IRQHandler ; int22
	int _TIM4_UPD_OVF_IRQHandler ; int23
	int _EEPROM_EEC_IRQHandler ; int24
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 69: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 73: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	push	#0x00
	call	_CLK_HSIPrescalerConfig
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 75: GPIO_Config();  
	call	_GPIO_Config
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 79: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC, EXTI_SENSITIVITY_RISE_FALL);
	push	#0x03
	push	#0x02
	call	_EXTI_SetExtIntSensitivity
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 81: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD, EXTI_SENSITIVITY_FALL_ONLY);
	push	#0x02
	push	#0x03
	call	_EXTI_SetExtIntSensitivity
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 82: EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);
	push	#0x00
	call	_EXTI_SetTLISensitivity
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 86: GPIO_WriteReverse(LED_PORT, LED_PIN);
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_WriteReverse
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 88: UART2_Config();
	call	_UART2_Config
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 89: TIM1_Config();
	call	_TIM1_Config
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 90: TIM3_Config();
	call	_TIM3_Config
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 92: enableInterrupts();
	rim
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 96: while (1)
00102$:
	jra	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 102: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 105: static void GPIO_Config(void)
;	-----------------------------------------
;	 function GPIO_Config
;	-----------------------------------------
_GPIO_Config:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 108: GPIO_Init(LED_PORT, (GPIO_Pin_TypeDef)(LED_PIN),GPIO_MODE_OUT_PP_HIGH_FAST);
	push	#0xf0
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 111: GPIO_Init(KEY_PORT, (GPIO_Pin_TypeDef)(KEY_PIN),GPIO_MODE_IN_FL_IT);
	push	#0x20
	push	#0x08
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 114: GPIO_Init(IR_PORT, (GPIO_Pin_TypeDef)(IR_PIN),GPIO_MODE_IN_FL_NO_IT);
	push	#0x00
	push	#0x04
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 117: GPIO_Init(FAN_PORT, (GPIO_Pin_TypeDef)(FAN_SW_PIN),GPIO_MODE_OUT_PP_HIGH_FAST);
	push	#0xf0
	push	#0x04
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 119: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 122: void UART2_Config(void)
;	-----------------------------------------
;	 function UART2_Config
;	-----------------------------------------
_UART2_Config:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 124: UART2_DeInit();
	call	_UART2_DeInit
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 134: UART2_Init((uint32_t)115200, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO,
	push	#0x0c
	push	#0x80
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0xc2
	push	#0x01
	push	#0x00
	call	_UART2_Init
	addw	sp, #9
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 138: printf("\n\rfan start\n\r");
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_printf
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 139: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 143: void TIM1_Config(void)
;	-----------------------------------------
;	 function TIM1_Config
;	-----------------------------------------
_TIM1_Config:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 145: TIM1_DeInit();
	call	_TIM1_DeInit
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 147: TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 3200, 0);
	push	#0x00
	push	#0x80
	push	#0x0c
	push	#0x00
	clrw	x
	pushw	x
	call	_TIM1_TimeBaseInit
	addw	sp, #6
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 149: TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_ENABLE,
	push	#0x00
	push	#0x55
	push	#0x00
	push	#0x22
	push	#0x1c
	push	#0x0c
	push	#0x44
	push	#0x11
	push	#0x70
	call	_TIM1_OC1Init
	addw	sp, #9
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 152: TIM1_Cmd(ENABLE);
	push	#0x01
	call	_TIM1_Cmd
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 153: TIM1_CtrlPWMOutputs(ENABLE);
	push	#0x01
	call	_TIM1_CtrlPWMOutputs
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 154: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 157: void TIM2_Config(void)
;	-----------------------------------------
;	 function TIM2_Config
;	-----------------------------------------
_TIM2_Config:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 160: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 163: void TIM3_Config(void)
;	-----------------------------------------
;	 function TIM3_Config
;	-----------------------------------------
_TIM3_Config:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 165: TIM3_TimeBaseInit(TIM3_PRESCALER_16,60000-1);
	push	#0x5f
	push	#0xea
	push	#0x04
	call	_TIM3_TimeBaseInit
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 167: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_FALLING, TIM3_ICSELECTION_DIRECTTI,
	push	#0x00
	push	#0x00
	push	#0x01
	push	#0x44
	push	#0x00
	call	_TIM3_ICInit
	addw	sp, #5
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 170: TIM3_ClearFlag(TIM3_FLAG_CC1);
	push	#0x02
	push	#0x00
	call	_TIM3_ClearFlag
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 171: TIM3_ITConfig(TIM3_IT_UPDATE,ENABLE);
	push	#0x01
	push	#0x01
	call	_TIM3_ITConfig
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 172: TIM3_ITConfig(TIM3_IT_CC1,ENABLE);
	push	#0x01
	push	#0x02
	call	_TIM3_ITConfig
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 173: TIM3_Cmd(ENABLE);
	push	#0x01
	call	_TIM3_Cmd
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 175: return;
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 176: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 179: void TIM4_Config(void)
;	-----------------------------------------
;	 function TIM4_Config
;	-----------------------------------------
_TIM4_Config:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 181: TIM4_TimeBaseInit(TIM4_PRESCALER_128,12);
	push	#0x0c
	push	#0x07
	call	_TIM4_TimeBaseInit
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 183: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 185: void IWDG_Config(void)
;	-----------------------------------------
;	 function IWDG_Config
;	-----------------------------------------
_IWDG_Config:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 187: IWDG_Enable();
	call	_IWDG_Enable
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 188: IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);
	push	#0x55
	call	_IWDG_WriteAccessCmd
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 189: IWDG_SetPrescaler(IWDG_Prescaler_128);
	push	#0x05
	call	_IWDG_SetPrescaler
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 192: IWDG_SetReload(255);
	push	#0xff
	call	_IWDG_SetReload
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 193: IWDG_ReloadCounter();
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 194: }
	jp	_IWDG_ReloadCounter
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 201: PUTCHAR_PROTOTYPE
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 204: UART2_SendData8(c);
	ld	a, (0x04, sp)
	push	a
	call	_UART2_SendData8
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 206: while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
00101$:
	push	#0x80
	push	#0x00
	call	_UART2_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 208: return (c);
	ldw	x, (0x03, sp)
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 210: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 217: GETCHAR_PROTOTYPE
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 225: while (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET);
00101$:
	push	#0x20
	push	#0x00
	call	_UART2_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 226: c = UART2_ReceiveData8();
	call	_UART2_ReceiveData8
	clrw	x
	ld	xl, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 227: return (c);
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 228: }
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii "fan start"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
