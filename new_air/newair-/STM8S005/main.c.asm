;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X x86_64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _printf
	.globl _UART2_GetFlagStatus
	.globl _UART2_SendData8
	.globl _UART2_ReceiveData8
	.globl _UART2_Init
	.globl _UART2_DeInit
	.globl _TIM4_ClearFlag
	.globl _TIM4_ITConfig
	.globl _TIM4_Cmd
	.globl _TIM4_TimeBaseInit
	.globl _TIM3_ClearFlag
	.globl _TIM3_ITConfig
	.globl _TIM3_Cmd
	.globl _TIM3_ICInit
	.globl _TIM3_TimeBaseInit
	.globl _TIM2_ClearFlag
	.globl _TIM2_ITConfig
	.globl _TIM2_Cmd
	.globl _TIM2_ICInit
	.globl _TIM2_TimeBaseInit
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
	.globl _GPIO_ReadInputData
	.globl _GPIO_WriteReverse
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
	.globl _GPIO_Init
	.globl _EXTI_SetTLISensitivity
	.globl _EXTI_SetExtIntSensitivity
	.globl _CLK_HSIPrescalerConfig
	.globl _UART2_Config
	.globl _TIM1_Config
	.globl _TIM2_Config
	.globl _TIM3_Config
	.globl _TIM4_Config
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
;	./src/main.c: 69: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c: 73: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	push	#0x00
	call	_CLK_HSIPrescalerConfig
	pop	a
;	./src/main.c: 75: GPIO_Config();  
	call	_GPIO_Config
;	./src/main.c: 79: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC, EXTI_SENSITIVITY_RISE_FALL);
	push	#0x03
	push	#0x02
	call	_EXTI_SetExtIntSensitivity
	popw	x
;	./src/main.c: 81: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD, EXTI_SENSITIVITY_FALL_ONLY);
	push	#0x02
	push	#0x03
	call	_EXTI_SetExtIntSensitivity
	popw	x
;	./src/main.c: 82: EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);
	push	#0x00
	call	_EXTI_SetTLISensitivity
	pop	a
;	./src/main.c: 86: GPIO_WriteReverse(LED_PORT, LED_PIN);
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_WriteReverse
	addw	sp, #3
;	./src/main.c: 88: UART2_Config();
	call	_UART2_Config
;	./src/main.c: 89: TIM1_Config();
	call	_TIM1_Config
;	./src/main.c: 90: TIM2_Config();
	call	_TIM2_Config
;	./src/main.c: 91: TIM3_Config();
	call	_TIM3_Config
;	./src/main.c: 92: TIM4_Config();
	call	_TIM4_Config
;	./src/main.c: 94: fan_init();
	call	_fan_init
;	./src/main.c: 96: enableInterrupts();
	rim
;	./src/main.c: 100: while (1)
00105$:
;	./src/main.c: 102: if ((GPIO_ReadInputData(FAN_SENSE_PORT) & FAN_SENSE_PIN) == 0x00)
	push	#0x0f
	push	#0x50
	call	_GPIO_ReadInputData
	popw	x
	bcp	a, #0x10
	jrne	00102$
;	./src/main.c: 104: GPIO_WriteLow(LED_PORT,LED_PIN);
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_WriteLow
	addw	sp, #3
	jra	00105$
00102$:
;	./src/main.c: 108: GPIO_WriteHigh(LED_PORT,LED_PIN);
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_WriteHigh
	addw	sp, #3
	jra	00105$
;	./src/main.c: 119: }
	ret
;	./src/main.c: 122: static void GPIO_Config(void)
;	-----------------------------------------
;	 function GPIO_Config
;	-----------------------------------------
_GPIO_Config:
;	./src/main.c: 125: GPIO_Init(LED_PORT, (GPIO_Pin_TypeDef)(LED_PIN),GPIO_MODE_OUT_PP_HIGH_FAST);
	push	#0xf0
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	./src/main.c: 128: GPIO_Init(KEY_PORT, (GPIO_Pin_TypeDef)(KEY_PIN),GPIO_MODE_IN_FL_IT);
	push	#0x20
	push	#0x08
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	./src/main.c: 131: GPIO_Init(IR_PORT, (GPIO_Pin_TypeDef)(IR_PIN),GPIO_MODE_IN_FL_NO_IT);
	push	#0x00
	push	#0x04
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	./src/main.c: 134: GPIO_Init(FAN_SENSE_PORT,(GPIO_Pin_TypeDef)(FAN_SENSE_PIN),GPIO_MODE_IN_FL_NO_IT);
	push	#0x00
	push	#0x10
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	./src/main.c: 137: GPIO_Init(FAN_PORT, (GPIO_Pin_TypeDef)(FAN_SW_PIN),GPIO_MODE_OUT_PP_HIGH_FAST);
	push	#0xf0
	push	#0x04
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	./src/main.c: 139: }
	ret
;	./src/main.c: 142: void UART2_Config(void)
;	-----------------------------------------
;	 function UART2_Config
;	-----------------------------------------
_UART2_Config:
;	./src/main.c: 144: UART2_DeInit();
	call	_UART2_DeInit
;	./src/main.c: 154: UART2_Init((uint32_t)115200, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO,
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
;	./src/main.c: 158: printf("\n\rfan start\n\r");
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_printf
	popw	x
;	./src/main.c: 159: }
	ret
;	./src/main.c: 163: void TIM1_Config(void)
;	-----------------------------------------
;	 function TIM1_Config
;	-----------------------------------------
_TIM1_Config:
;	./src/main.c: 165: TIM1_DeInit();
	call	_TIM1_DeInit
;	./src/main.c: 167: TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 3200, 0);
	push	#0x00
	push	#0x80
	push	#0x0c
	push	#0x00
	clrw	x
	pushw	x
	call	_TIM1_TimeBaseInit
	addw	sp, #6
;	./src/main.c: 169: TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_ENABLE,
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
;	./src/main.c: 172: TIM1_Cmd(ENABLE);
	push	#0x01
	call	_TIM1_Cmd
	pop	a
;	./src/main.c: 173: TIM1_CtrlPWMOutputs(ENABLE);
	push	#0x01
	call	_TIM1_CtrlPWMOutputs
	pop	a
;	./src/main.c: 174: }
	ret
;	./src/main.c: 177: void TIM2_Config(void)
;	-----------------------------------------
;	 function TIM2_Config
;	-----------------------------------------
_TIM2_Config:
;	./src/main.c: 180: TIM2_TimeBaseInit(TIM2_PRESCALER_16,60000-1);
	push	#0x5f
	push	#0xea
	push	#0x04
	call	_TIM2_TimeBaseInit
	addw	sp, #3
;	./src/main.c: 181: TIM2_ICInit( TIM2_CHANNEL_1, TIM2_ICPOLARITY_FALLING, TIM2_ICSELECTION_DIRECTTI,
	push	#0x00
	push	#0x00
	push	#0x01
	push	#0x44
	push	#0x00
	call	_TIM2_ICInit
	addw	sp, #5
;	./src/main.c: 183: TIM2_ClearFlag(TIM2_FLAG_CC1);
	push	#0x02
	push	#0x00
	call	_TIM2_ClearFlag
	popw	x
;	./src/main.c: 184: TIM2_ITConfig(TIM2_IT_UPDATE,ENABLE);
	push	#0x01
	push	#0x01
	call	_TIM2_ITConfig
	popw	x
;	./src/main.c: 185: TIM2_ITConfig(TIM2_IT_CC1,ENABLE);
	push	#0x01
	push	#0x02
	call	_TIM2_ITConfig
	popw	x
;	./src/main.c: 186: TIM2_Cmd(ENABLE);
	push	#0x01
	call	_TIM2_Cmd
	pop	a
;	./src/main.c: 188: }
	ret
;	./src/main.c: 191: void TIM3_Config(void)
;	-----------------------------------------
;	 function TIM3_Config
;	-----------------------------------------
_TIM3_Config:
;	./src/main.c: 193: TIM3_TimeBaseInit(TIM3_PRESCALER_16,60000-1);
	push	#0x5f
	push	#0xea
	push	#0x04
	call	_TIM3_TimeBaseInit
	addw	sp, #3
;	./src/main.c: 195: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_FALLING, TIM3_ICSELECTION_DIRECTTI,
	push	#0x00
	push	#0x00
	push	#0x01
	push	#0x44
	push	#0x00
	call	_TIM3_ICInit
	addw	sp, #5
;	./src/main.c: 198: TIM3_ClearFlag(TIM3_FLAG_CC1);
	push	#0x02
	push	#0x00
	call	_TIM3_ClearFlag
	popw	x
;	./src/main.c: 199: TIM3_ITConfig(TIM3_IT_UPDATE,ENABLE);
	push	#0x01
	push	#0x01
	call	_TIM3_ITConfig
	popw	x
;	./src/main.c: 200: TIM3_ITConfig(TIM3_IT_CC1,ENABLE);
	push	#0x01
	push	#0x02
	call	_TIM3_ITConfig
	popw	x
;	./src/main.c: 201: TIM3_Cmd(ENABLE);
	push	#0x01
	call	_TIM3_Cmd
	pop	a
;	./src/main.c: 202: }
	ret
;	./src/main.c: 205: void TIM4_Config(void)
;	-----------------------------------------
;	 function TIM4_Config
;	-----------------------------------------
_TIM4_Config:
;	./src/main.c: 207: TIM4_TimeBaseInit(TIM4_PRESCALER_128,250-1);  //2ms中断一次
	push	#0xf9
	push	#0x07
	call	_TIM4_TimeBaseInit
	popw	x
;	./src/main.c: 208: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
	push	#0x01
	call	_TIM4_ClearFlag
	pop	a
;	./src/main.c: 209: TIM4_ITConfig(TIM4_IT_UPDATE,ENABLE);
	push	#0x01
	push	#0x01
	call	_TIM4_ITConfig
	popw	x
;	./src/main.c: 210: TIM4_Cmd(ENABLE);
	push	#0x01
	call	_TIM4_Cmd
	pop	a
;	./src/main.c: 211: }
	ret
;	./src/main.c: 213: void IWDG_Config(void)
;	-----------------------------------------
;	 function IWDG_Config
;	-----------------------------------------
_IWDG_Config:
;	./src/main.c: 215: IWDG_Enable();
	call	_IWDG_Enable
;	./src/main.c: 216: IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);
	push	#0x55
	call	_IWDG_WriteAccessCmd
	pop	a
;	./src/main.c: 217: IWDG_SetPrescaler(IWDG_Prescaler_128);
	push	#0x05
	call	_IWDG_SetPrescaler
	pop	a
;	./src/main.c: 220: IWDG_SetReload(255);
	push	#0xff
	call	_IWDG_SetReload
	pop	a
;	./src/main.c: 221: IWDG_ReloadCounter();
;	./src/main.c: 222: }
	jp	_IWDG_ReloadCounter
;	./src/main.c: 229: PUTCHAR_PROTOTYPE
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	./src/main.c: 232: UART2_SendData8(c);
	ld	a, (0x04, sp)
	push	a
	call	_UART2_SendData8
	pop	a
;	./src/main.c: 234: while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
00101$:
	push	#0x80
	push	#0x00
	call	_UART2_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	./src/main.c: 236: return (c);
	ldw	x, (0x03, sp)
;	./src/main.c: 238: }
	ret
;	./src/main.c: 245: GETCHAR_PROTOTYPE
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	./src/main.c: 253: while (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET);
00101$:
	push	#0x20
	push	#0x00
	call	_UART2_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	./src/main.c: 254: c = UART2_ReceiveData8();
	call	_UART2_ReceiveData8
	clrw	x
	ld	xl, a
;	./src/main.c: 255: return (c);
;	./src/main.c: 256: }
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
