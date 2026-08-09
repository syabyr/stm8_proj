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
	.globl _TIM3_ClearFlag
	.globl _TIM3_ITConfig
	.globl _TIM3_Cmd
	.globl _TIM3_ICInit
	.globl _TIM3_TimeBaseInit
	.globl _TIM1_Cmd
	.globl _TIM1_ICInit
	.globl _GPIO_WriteReverse
	.globl _GPIO_Init
	.globl _EXTI_SetTLISensitivity
	.globl _EXTI_SetExtIntSensitivity
	.globl _CLK_HSIPrescalerConfig
	.globl _ICValue2
	.globl _ICValue1
	.globl _TIM3_Config
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
_ICValue1::
	.ds 2
_ICValue2::
	.ds 2
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
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 86: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	sub	sp, #18
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 90: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	push	#0x00
	call	_CLK_HSIPrescalerConfig
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 92: GPIO_Config();  
	call	_GPIO_Config
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 96: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC, EXTI_SENSITIVITY_RISE_FALL);
	push	#0x03
	push	#0x02
	call	_EXTI_SetExtIntSensitivity
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 98: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD, EXTI_SENSITIVITY_FALL_ONLY);
	push	#0x02
	push	#0x03
	call	_EXTI_SetExtIntSensitivity
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 99: EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);
	push	#0x00
	call	_EXTI_SetTLISensitivity
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 103: GPIO_WriteReverse(LED_PORT, LED_PIN);
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_WriteReverse
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 106: UART2_DeInit();
	call	_UART2_DeInit
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 116: UART2_Init((uint32_t)115200, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO,
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
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 120: printf("\n\rUART1 Example :retarget the C library printf()/getchar() functions to the UART\n\r");
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_printf
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 121: printf("\n\rEnter Text\n\r");
	push	#<(___str_1+0)
	push	#((___str_1+0) >> 8)
	call	_printf
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 123: TIM3_Config();
	call	_TIM3_Config
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 125: enableInterrupts();
	rim
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 127: printf("unique:x:0x%x y:0x%x wafer number:%d lot:%d%d%d%d%d%d%d\r\n",UX,UY,WN,LN1,LN2,LN3,LN4,LN5,LN6,LN7);
	ld	a, 0x4870
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x01, sp), a
	ld	a, 0x486f
	ld	yl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	yh, a
	ld	a, 0x486e
	ld	xh, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x03, sp), a
	ld	a, 0x486d
	ld	(0x06, sp), a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x05, sp), a
	ld	a, 0x486c
	ld	(0x08, sp), a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x07, sp), a
	ld	a, 0x486b
	ld	(0x0a, sp), a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x09, sp), a
	ld	a, 0x486a
	ld	(0x0c, sp), a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0b, sp), a
	ld	a, 0x4869
	ld	(0x0e, sp), a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0d, sp), a
	pushw	x
	ldw	x, #0x4867
	ld	a, (0x1, x)
	ld	(0x12, sp), a
	ld	a, (x)
	ld	(0x11, sp), a
	ldw	x, #0x4865
	ld	a, (0x1, x)
	ld	(0x14, sp), a
	ld	a, (x)
	ld	(0x13, sp), a
	popw	x
	ld	a, xl
	push	a
	ld	a, (0x02, sp)
	push	a
	pushw	y
	ld	a, xh
	push	a
	ld	a, (0x08, sp)
	push	a
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	ldw	x, (0x17, sp)
	pushw	x
	ldw	x, (0x1b, sp)
	pushw	x
	ldw	x, (0x1f, sp)
	pushw	x
	ldw	x, (0x23, sp)
	pushw	x
	push	#<(___str_2+0)
	push	#((___str_2+0) >> 8)
	call	_printf
	addw	sp, #22
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 130: TIM1_ICInit( TIM1_CHANNEL_1, TIM1_ICPOLARITY_FALLING, TIM1_ICSELECTION_DIRECTTI,
	push	#0x00
	push	#0x0c
	push	#0x01
	push	#0x01
	push	#0x00
	call	_TIM1_ICInit
	addw	sp, #5
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 132: TIM1_Cmd(ENABLE);
	push	#0x01
	call	_TIM1_Cmd
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 136: while (1)
00102$:
	jra	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 142: }
	addw	sp, #18
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 145: static void GPIO_Config(void)
;	-----------------------------------------
;	 function GPIO_Config
;	-----------------------------------------
_GPIO_Config:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 148: GPIO_Init(LED_PORT, (GPIO_Pin_TypeDef)(LED_PIN),GPIO_MODE_OUT_PP_HIGH_FAST);
	push	#0xf0
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 151: GPIO_Init(KEY_PORT, (GPIO_Pin_TypeDef)(KEY_PIN),GPIO_MODE_IN_FL_IT);
	push	#0x20
	push	#0x08
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 155: GPIO_Init(IR_PORT, (GPIO_Pin_TypeDef)(IR_PIN),GPIO_MODE_IN_FL_NO_IT);
	push	#0x00
	push	#0x04
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 157: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 161: void TIM3_Config(void)
;	-----------------------------------------
;	 function TIM3_Config
;	-----------------------------------------
_TIM3_Config:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 163: TIM3_TimeBaseInit(TIM3_PRESCALER_16,60000-1);
	push	#0x5f
	push	#0xea
	push	#0x04
	call	_TIM3_TimeBaseInit
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 165: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_FALLING, TIM3_ICSELECTION_DIRECTTI,
	push	#0x00
	push	#0x00
	push	#0x01
	push	#0x44
	push	#0x00
	call	_TIM3_ICInit
	addw	sp, #5
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 168: TIM3_ClearFlag(TIM3_FLAG_CC1);
	push	#0x02
	push	#0x00
	call	_TIM3_ClearFlag
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 169: TIM3_ITConfig(TIM3_IT_UPDATE,ENABLE);
	push	#0x01
	push	#0x01
	call	_TIM3_ITConfig
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 170: TIM3_ITConfig(TIM3_IT_CC1,ENABLE);
	push	#0x01
	push	#0x02
	call	_TIM3_ITConfig
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 171: TIM3_Cmd(ENABLE);
	push	#0x01
	call	_TIM3_Cmd
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 173: return;
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 189: ICValue2 = 0;
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 190: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 197: PUTCHAR_PROTOTYPE
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 200: UART2_SendData8(c);
	ld	a, (0x04, sp)
	push	a
	call	_UART2_SendData8
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 202: while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
00101$:
	push	#0x80
	push	#0x00
	call	_UART2_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 207: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 214: GETCHAR_PROTOTYPE
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 222: while (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET);
00101$:
	push	#0x20
	push	#0x00
	call	_UART2_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 223: c = UART2_ReceiveData8();
	call	_UART2_ReceiveData8
	clrw	x
	ld	xl, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 224: return (c);
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 225: }
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii "UART1 Example :retarget the C library printf()/getchar() fun"
	.ascii "ctions to the UART"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CODE
	.area CONST
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "Enter Text"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CODE
	.area CONST
___str_2:
	.ascii "unique:x:0x%x y:0x%x wafer number:%d lot:%d%d%d%d%d%d%d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_3:
	.ascii "1:%d,2:%d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area INITIALIZER
__xinit__ICValue1:
	.dw #0x0000
__xinit__ICValue2:
	.dw #0x0000
	.area CABS (ABS)
