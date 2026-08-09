;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8s_tim2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM2_DeInit
	.globl _TIM2_TimeBaseInit
	.globl _TIM2_OC1Init
	.globl _TIM2_OC2Init
	.globl _TIM2_OC3Init
	.globl _TIM2_ICInit
	.globl _TIM2_PWMIConfig
	.globl _TIM2_Cmd
	.globl _TIM2_ITConfig
	.globl _TIM2_UpdateDisableConfig
	.globl _TIM2_UpdateRequestConfig
	.globl _TIM2_SelectOnePulseMode
	.globl _TIM2_PrescalerConfig
	.globl _TIM2_ForcedOC1Config
	.globl _TIM2_ForcedOC2Config
	.globl _TIM2_ForcedOC3Config
	.globl _TIM2_ARRPreloadConfig
	.globl _TIM2_OC1PreloadConfig
	.globl _TIM2_OC2PreloadConfig
	.globl _TIM2_OC3PreloadConfig
	.globl _TIM2_GenerateEvent
	.globl _TIM2_OC1PolarityConfig
	.globl _TIM2_OC2PolarityConfig
	.globl _TIM2_OC3PolarityConfig
	.globl _TIM2_CCxCmd
	.globl _TIM2_SelectOCxM
	.globl _TIM2_SetCounter
	.globl _TIM2_SetAutoreload
	.globl _TIM2_SetCompare1
	.globl _TIM2_SetCompare2
	.globl _TIM2_SetCompare3
	.globl _TIM2_SetIC1Prescaler
	.globl _TIM2_SetIC2Prescaler
	.globl _TIM2_SetIC3Prescaler
	.globl _TIM2_GetCapture1
	.globl _TIM2_GetCapture2
	.globl _TIM2_GetCapture3
	.globl _TIM2_GetCounter
	.globl _TIM2_GetPrescaler
	.globl _TIM2_GetFlagStatus
	.globl _TIM2_ClearFlag
	.globl _TIM2_GetITStatus
	.globl _TIM2_ClearITPendingBit
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
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 52: void TIM2_DeInit(void)
;	-----------------------------------------
;	 function TIM2_DeInit
;	-----------------------------------------
_TIM2_DeInit:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 54: TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
	mov	0x5300+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 55: TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
	mov	0x5301+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 56: TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
	mov	0x5303+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 59: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
	mov	0x5308+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 60: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
	mov	0x5309+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 64: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
	mov	0x5308+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 65: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
	mov	0x5309+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 66: TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
	mov	0x5305+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 67: TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
	mov	0x5306+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 68: TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
	mov	0x5307+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 69: TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
	mov	0x530a+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 70: TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
	mov	0x530b+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 71: TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
	mov	0x530c+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 72: TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
	mov	0x530d+0, #0xff
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 73: TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
	mov	0x530e+0, #0xff
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 74: TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
	mov	0x530f+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 75: TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
	mov	0x5310+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 76: TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
	mov	0x5311+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 77: TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
	mov	0x5312+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 78: TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
	mov	0x5313+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 79: TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
	mov	0x5314+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 80: TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
	mov	0x5302+0, #0x00
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 81: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 89: void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
;	-----------------------------------------
;	 function TIM2_TimeBaseInit
;	-----------------------------------------
_TIM2_TimeBaseInit:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 93: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
	ldw	x, #0x530c
	ld	a, (0x03, sp)
	ld	(x), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 95: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
	ld	a, (0x04, sp)
	ld	0x530d, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 96: TIM2->ARRL = (uint8_t)(TIM2_Period);
	ld	a, (0x05, sp)
	ld	0x530e, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 97: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 108: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
;	-----------------------------------------
;	 function TIM2_OC1Init
;	-----------------------------------------
_TIM2_OC1Init:
	pushw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 114: assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
	tnz	(0x05, sp)
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x20
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x30
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x60
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x70
	jreq	00104$
	push	#0x72
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 115: assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
	tnz	(0x06, sp)
	jreq	00121$
	ld	a, (0x06, sp)
	cp	a, #0x11
	jreq	00121$
	push	#0x73
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00121$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 116: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
	tnz	(0x09, sp)
	jreq	00126$
	ld	a, (0x09, sp)
	cp	a, #0x22
	jreq	00126$
	push	#0x74
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00126$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 119: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
	ld	a, 0x5308
	and	a, #0xfc
	ld	0x5308, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 121: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
	ld	a, 0x5308
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	and	a, #0x01
	ld	(0x02, sp), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 122: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
	ld	a, (0x09, sp)
	and	a, #0x02
	or	a, (0x02, sp)
	or	a, (0x01, sp)
	ld	0x5308, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 125: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
	ld	a, 0x5305
	and	a, #0x8f
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 126: (uint8_t)TIM2_OCMode);
	or	a, (0x05, sp)
	ld	0x5305, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 129: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
	ld	a, (0x07, sp)
	ld	0x530f, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 130: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
	ld	a, (0x08, sp)
	ld	0x5310, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 131: }
	popw	x
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 142: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
;	-----------------------------------------
;	 function TIM2_OC2Init
;	-----------------------------------------
_TIM2_OC2Init:
	pushw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 148: assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
	tnz	(0x05, sp)
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x20
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x30
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x60
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x70
	jreq	00104$
	push	#0x94
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 149: assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
	tnz	(0x06, sp)
	jreq	00121$
	ld	a, (0x06, sp)
	cp	a, #0x11
	jreq	00121$
	push	#0x95
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00121$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 150: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
	tnz	(0x09, sp)
	jreq	00126$
	ld	a, (0x09, sp)
	cp	a, #0x22
	jreq	00126$
	push	#0x96
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00126$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 154: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
	ld	a, 0x5308
	and	a, #0xcf
	ld	0x5308, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 156: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
	ld	a, 0x5308
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	and	a, #0x10
	ld	(0x02, sp), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 157: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
	ld	a, (0x09, sp)
	and	a, #0x20
	or	a, (0x02, sp)
	or	a, (0x01, sp)
	ld	0x5308, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 161: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
	ld	a, 0x5306
	and	a, #0x8f
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 162: (uint8_t)TIM2_OCMode);
	or	a, (0x05, sp)
	ld	0x5306, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 166: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
	ld	a, (0x07, sp)
	ld	0x5311, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 167: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
	ld	a, (0x08, sp)
	ld	0x5312, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 168: }
	popw	x
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 179: void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
;	-----------------------------------------
;	 function TIM2_OC3Init
;	-----------------------------------------
_TIM2_OC3Init:
	pushw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 185: assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
	tnz	(0x05, sp)
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x20
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x30
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x60
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x70
	jreq	00104$
	push	#0xb9
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 186: assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
	tnz	(0x06, sp)
	jreq	00121$
	ld	a, (0x06, sp)
	cp	a, #0x11
	jreq	00121$
	push	#0xba
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00121$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 187: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
	tnz	(0x09, sp)
	jreq	00126$
	ld	a, (0x09, sp)
	cp	a, #0x22
	jreq	00126$
	push	#0xbb
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00126$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 189: TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
	ld	a, 0x5309
	and	a, #0xfc
	ld	0x5309, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 191: TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
	ld	a, 0x5309
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	and	a, #0x01
	ld	(0x02, sp), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 192: (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
	ld	a, (0x09, sp)
	and	a, #0x02
	or	a, (0x02, sp)
	or	a, (0x01, sp)
	ld	0x5309, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 195: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
	ld	a, 0x5307
	and	a, #0x8f
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 196: (uint8_t)TIM2_OCMode);
	or	a, (0x05, sp)
	ld	0x5307, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 199: TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
	ld	a, (0x07, sp)
	ld	0x5313, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 200: TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
	ld	a, (0x08, sp)
	ld	0x5314, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 201: }
	popw	x
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 212: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
;	-----------------------------------------
;	 function TIM2_ICInit
;	-----------------------------------------
_TIM2_ICInit:
	push	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 219: assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
	ld	a, (0x04, sp)
	dec	a
	jrne	00219$
	ld	a, #0x01
	ld	(0x01, sp), a
	.byte 0xc5
00219$:
	clr	(0x01, sp)
00220$:
	tnz	(0x04, sp)
	jreq	00110$
	tnz	(0x01, sp)
	jrne	00110$
	ld	a, (0x04, sp)
	cp	a, #0x02
	jreq	00110$
	push	#0xdb
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00110$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 220: assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
	tnz	(0x05, sp)
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x44
	jreq	00118$
	push	#0xdc
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00118$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 221: assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
	ld	a, (0x06, sp)
	dec	a
	jreq	00123$
	ld	a, (0x06, sp)
	cp	a, #0x02
	jreq	00123$
	ld	a, (0x06, sp)
	cp	a, #0x03
	jreq	00123$
	push	#0xdd
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00123$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 222: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
	tnz	(0x07, sp)
	jreq	00131$
	ld	a, (0x07, sp)
	cp	a, #0x04
	jreq	00131$
	ld	a, (0x07, sp)
	cp	a, #0x08
	jreq	00131$
	ld	a, (0x07, sp)
	cp	a, #0x0c
	jreq	00131$
	push	#0xde
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00131$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 223: assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
	ld	a, (0x08, sp)
	cp	a, #0x0f
	jrule	00142$
	push	#0xdf
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00142$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 225: if (TIM2_Channel == TIM2_CHANNEL_1)
	tnz	(0x04, sp)
	jrne	00105$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 228: TI1_Config((uint8_t)TIM2_ICPolarity,
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 233: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
	ld	a, (0x07, sp)
	push	a
	call	_TIM2_SetIC1Prescaler
	pop	a
	jra	00107$
00105$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 235: else if (TIM2_Channel == TIM2_CHANNEL_2)
	ld	a, (0x01, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 238: TI2_Config((uint8_t)TIM2_ICPolarity,
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 243: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
	ld	a, (0x07, sp)
	push	a
	call	_TIM2_SetIC2Prescaler
	pop	a
	jra	00107$
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 248: TI3_Config((uint8_t)TIM2_ICPolarity,
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	call	_TI3_Config
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 253: TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
	ld	a, (0x07, sp)
	push	a
	call	_TIM2_SetIC3Prescaler
	pop	a
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 255: }
	pop	a
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 266: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
;	-----------------------------------------
;	 function TIM2_PWMIConfig
;	-----------------------------------------
_TIM2_PWMIConfig:
	pushw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 276: assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
	tnz	(0x05, sp)
	jreq	00113$
	ld	a, (0x05, sp)
	dec	a
	jreq	00113$
	push	#0x14
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00113$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 277: assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
	ld	a, (0x06, sp)
	sub	a, #0x44
	jrne	00216$
	inc	a
	ld	(0x01, sp), a
	.byte 0xc5
00216$:
	clr	(0x01, sp)
00217$:
	tnz	(0x06, sp)
	jreq	00118$
	tnz	(0x01, sp)
	jrne	00118$
	push	#0x15
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00118$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 278: assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
	ld	a, (0x07, sp)
	dec	a
	jrne	00221$
	ld	a, #0x01
	ld	(0x02, sp), a
	.byte 0xc5
00221$:
	clr	(0x02, sp)
00222$:
	tnz	(0x02, sp)
	jrne	00123$
	ld	a, (0x07, sp)
	cp	a, #0x02
	jreq	00123$
	ld	a, (0x07, sp)
	cp	a, #0x03
	jreq	00123$
	push	#0x16
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00123$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 279: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
	tnz	(0x08, sp)
	jreq	00131$
	ld	a, (0x08, sp)
	cp	a, #0x04
	jreq	00131$
	ld	a, (0x08, sp)
	cp	a, #0x08
	jreq	00131$
	ld	a, (0x08, sp)
	cp	a, #0x0c
	jreq	00131$
	push	#0x17
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00131$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 282: if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
	tnz	(0x01, sp)
	jrne	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 284: icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
	ld	a, #0x44
	ld	(0x01, sp), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 288: icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
	.byte 0xc5
00102$:
	clr	(0x01, sp)
00103$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 292: if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
	ld	a, (0x02, sp)
	jreq	00105$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 294: icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
	ld	a, #0x02
	ld	(0x02, sp), a
	jra	00106$
00105$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 298: icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
	ld	a, #0x01
	ld	(0x02, sp), a
00106$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 301: if (TIM2_Channel == TIM2_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00108$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 304: TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 308: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM2_SetIC1Prescaler
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 311: TI2_Config(icpolarity, icselection, TIM2_ICFilter);
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x03, sp)
	push	a
	ld	a, (0x03, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 314: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM2_SetIC2Prescaler
	pop	a
	jra	00110$
00108$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 319: TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 323: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM2_SetIC2Prescaler
	pop	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 326: TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x03, sp)
	push	a
	ld	a, (0x03, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 329: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM2_SetIC1Prescaler
	pop	a
00110$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 331: }
	popw	x
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 339: void TIM2_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_Cmd
;	-----------------------------------------
_TIM2_Cmd:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 342: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0x56
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
	ld	a, 0x5300
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 345: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
	or	a, #0x01
	ld	0x5300, a
	ret
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 351: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
	and	a, #0xfe
	ld	0x5300, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 353: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 368: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_ITConfig
;	-----------------------------------------
_TIM2_ITConfig:
	push	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 371: assert_param(IS_TIM2_IT_OK(TIM2_IT));
	tnz	(0x04, sp)
	jreq	00106$
	ld	a, (0x04, sp)
	cp	a, #0x0f
	jrule	00107$
00106$:
	push	#0x73
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 372: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x05, sp)
	jreq	00112$
	ld	a, (0x05, sp)
	dec	a
	jreq	00112$
	push	#0x74
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00112$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
	ld	a, 0x5301
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 374: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
	or	a, (0x04, sp)
	ld	0x5301, a
	jra	00104$
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 382: TIM2->IER &= (uint8_t)(~TIM2_IT);
	push	a
	ld	a, (0x05, sp)
	cpl	a
	ld	(0x02, sp), a
	pop	a
	and	a, (0x01, sp)
	ld	0x5301, a
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 384: }
	pop	a
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 392: void TIM2_UpdateDisableConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_UpdateDisableConfig
;	-----------------------------------------
_TIM2_UpdateDisableConfig:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 395: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0x8b
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
	ld	a, 0x5300
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 398: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
	or	a, #0x02
	ld	0x5300, a
	ret
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 404: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
	and	a, #0xfd
	ld	0x5300, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 406: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 416: void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
;	-----------------------------------------
;	 function TIM2_UpdateRequestConfig
;	-----------------------------------------
_TIM2_UpdateRequestConfig:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 419: assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0xa3
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
	ld	a, 0x5300
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 422: if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
	tnz	(0x03, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
	or	a, #0x04
	ld	0x5300, a
	ret
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 428: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
	and	a, #0xfb
	ld	0x5300, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 430: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 440: void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
;	-----------------------------------------
;	 function TIM2_SelectOnePulseMode
;	-----------------------------------------
_TIM2_SelectOnePulseMode:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 443: assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	tnz	(0x03, sp)
	jreq	00107$
	push	#0xbb
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
	ld	a, 0x5300
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 446: if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
	tnz	(0x03, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
	or	a, #0x08
	ld	0x5300, a
	ret
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 452: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
	and	a, #0xf7
	ld	0x5300, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 454: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 484: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
;	-----------------------------------------
;	 function TIM2_PrescalerConfig
;	-----------------------------------------
_TIM2_PrescalerConfig:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 488: assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
	tnz	(0x04, sp)
	jreq	00104$
	ld	a, (0x04, sp)
	dec	a
	jreq	00104$
	push	#0xe8
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 489: assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
	tnz	(0x03, sp)
	jreq	00109$
	ld	a, (0x03, sp)
	dec	a
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x02
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x03
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x05
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x06
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x07
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x08
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x09
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x0a
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x0b
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x0c
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x0d
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x0e
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x0f
	jreq	00109$
	push	#0xe9
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00109$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 492: TIM2->PSCR = (uint8_t)Prescaler;
	ldw	x, #0x530c
	ld	a, (0x03, sp)
	ld	(x), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 495: TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
	ldw	x, #0x5304
	ld	a, (0x04, sp)
	ld	(x), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 496: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 507: void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
;	-----------------------------------------
;	 function TIM2_ForcedOC1Config
;	-----------------------------------------
_TIM2_ForcedOC1Config:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 510: assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
	ld	a, (0x03, sp)
	cp	a, #0x50
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x40
	jreq	00104$
	push	#0xfe
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 513: TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
	ld	a, 0x5305
	and	a, #0x8f
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 514: | (uint8_t)TIM2_ForcedAction);
	or	a, (0x03, sp)
	ld	0x5305, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 515: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 526: void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
;	-----------------------------------------
;	 function TIM2_ForcedOC2Config
;	-----------------------------------------
_TIM2_ForcedOC2Config:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 529: assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
	ld	a, (0x03, sp)
	cp	a, #0x50
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x40
	jreq	00104$
	push	#0x11
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 532: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
	ld	a, 0x5306
	and	a, #0x8f
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 533: | (uint8_t)TIM2_ForcedAction);
	or	a, (0x03, sp)
	ld	0x5306, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 534: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 545: void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
;	-----------------------------------------
;	 function TIM2_ForcedOC3Config
;	-----------------------------------------
_TIM2_ForcedOC3Config:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 548: assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
	ld	a, (0x03, sp)
	cp	a, #0x50
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x40
	jreq	00104$
	push	#0x24
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 551: TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
	ld	a, 0x5307
	and	a, #0x8f
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 552: | (uint8_t)TIM2_ForcedAction);
	or	a, (0x03, sp)
	ld	0x5307, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 553: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 561: void TIM2_ARRPreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_ARRPreloadConfig
;	-----------------------------------------
_TIM2_ARRPreloadConfig:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 564: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0x34
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
	ld	a, 0x5300
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 567: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
	or	a, #0x80
	ld	0x5300, a
	ret
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 573: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
	and	a, #0x7f
	ld	0x5300, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 575: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 583: void TIM2_OC1PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_OC1PreloadConfig
;	-----------------------------------------
_TIM2_OC1PreloadConfig:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 586: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0x4a
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
	ld	a, 0x5305
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 589: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
	or	a, #0x08
	ld	0x5305, a
	ret
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 595: TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
	and	a, #0xf7
	ld	0x5305, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 597: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 605: void TIM2_OC2PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_OC2PreloadConfig
;	-----------------------------------------
_TIM2_OC2PreloadConfig:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 608: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0x60
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
	ld	a, 0x5306
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 611: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
	or	a, #0x08
	ld	0x5306, a
	ret
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 617: TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
	and	a, #0xf7
	ld	0x5306, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 619: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 627: void TIM2_OC3PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_OC3PreloadConfig
;	-----------------------------------------
_TIM2_OC3PreloadConfig:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 630: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0x76
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
	ld	a, 0x5307
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 633: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
	or	a, #0x08
	ld	0x5307, a
	ret
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 639: TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
	and	a, #0xf7
	ld	0x5307, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 641: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 653: void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
;	-----------------------------------------
;	 function TIM2_GenerateEvent
;	-----------------------------------------
_TIM2_GenerateEvent:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 656: assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
	tnz	(0x03, sp)
	jrne	00104$
	push	#0x90
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 659: TIM2->EGR = (uint8_t)TIM2_EventSource;
	ldw	x, #0x5304
	ld	a, (0x03, sp)
	ld	(x), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 660: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 670: void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
;	-----------------------------------------
;	 function TIM2_OC1PolarityConfig
;	-----------------------------------------
_TIM2_OC1PolarityConfig:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 673: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x22
	jreq	00107$
	push	#0xa1
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
	ld	a, 0x5308
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 676: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
	or	a, #0x02
	ld	0x5308, a
	ret
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 682: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
	and	a, #0xfd
	ld	0x5308, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 684: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 694: void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
;	-----------------------------------------
;	 function TIM2_OC2PolarityConfig
;	-----------------------------------------
_TIM2_OC2PolarityConfig:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 697: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x22
	jreq	00107$
	push	#0xb9
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
	ld	a, 0x5308
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 700: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
	or	a, #0x20
	ld	0x5308, a
	ret
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 706: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
	and	a, #0xdf
	ld	0x5308, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 708: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 718: void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
;	-----------------------------------------
;	 function TIM2_OC3PolarityConfig
;	-----------------------------------------
_TIM2_OC3PolarityConfig:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 721: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x22
	jreq	00107$
	push	#0xd1
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
	ld	a, 0x5309
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 724: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
	or	a, #0x02
	ld	0x5309, a
	ret
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 730: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
	and	a, #0xfd
	ld	0x5309, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 732: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 745: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM2_CCxCmd
;	-----------------------------------------
_TIM2_CCxCmd:
	push	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 748: assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
	ld	a, (0x04, sp)
	dec	a
	jrne	00182$
	ld	a, #0x01
	ld	(0x01, sp), a
	.byte 0xc5
00182$:
	clr	(0x01, sp)
00183$:
	tnz	(0x04, sp)
	jreq	00119$
	tnz	(0x01, sp)
	jrne	00119$
	ld	a, (0x04, sp)
	cp	a, #0x02
	jreq	00119$
	push	#0xec
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00119$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 749: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x05, sp)
	jreq	00127$
	ld	a, (0x05, sp)
	dec	a
	jreq	00127$
	push	#0xed
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00127$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 751: if (TIM2_Channel == TIM2_CHANNEL_1)
	tnz	(0x04, sp)
	jrne	00114$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
	ld	a, 0x5308
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 754: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
	or	a, #0x01
	ld	0x5308, a
	jra	00116$
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 760: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
	and	a, #0xfe
	ld	0x5308, a
	jra	00116$
00114$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 764: else if (TIM2_Channel == TIM2_CHANNEL_2)
	ld	a, (0x01, sp)
	jreq	00111$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
	ld	a, 0x5308
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 767: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00105$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 769: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
	or	a, #0x10
	ld	0x5308, a
	jra	00116$
00105$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 773: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
	and	a, #0xef
	ld	0x5308, a
	jra	00116$
00111$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
	ld	a, 0x5309
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 779: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00108$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
	or	a, #0x01
	ld	0x5309, a
	jra	00116$
00108$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 785: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
	and	a, #0xfe
	ld	0x5309, a
00116$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 788: }
	pop	a
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 810: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
;	-----------------------------------------
;	 function TIM2_SelectOCxM
;	-----------------------------------------
_TIM2_SelectOCxM:
	push	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 813: assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
	ld	a, (0x04, sp)
	dec	a
	jrne	00206$
	ld	a, #0x01
	ld	(0x01, sp), a
	.byte 0xc5
00206$:
	clr	(0x01, sp)
00207$:
	tnz	(0x04, sp)
	jreq	00110$
	tnz	(0x01, sp)
	jrne	00110$
	ld	a, (0x04, sp)
	cp	a, #0x02
	jreq	00110$
	push	#0x2d
	push	#0x03
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00110$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 814: assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
	tnz	(0x05, sp)
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x10
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x20
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x30
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x60
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x70
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x50
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x40
	jreq	00118$
	push	#0x2e
	push	#0x03
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00118$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 816: if (TIM2_Channel == TIM2_CHANNEL_1)
	tnz	(0x04, sp)
	jrne	00105$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 819: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
	bres	21256, #0
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 822: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
	ld	a, 0x5305
	and	a, #0x8f
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 823: | (uint8_t)TIM2_OCMode);
	or	a, (0x05, sp)
	ld	0x5305, a
	jra	00107$
00105$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 825: else if (TIM2_Channel == TIM2_CHANNEL_2)
	ld	a, (0x01, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
	bres	21256, #4
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 831: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
	ld	a, 0x5306
	and	a, #0x8f
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 832: | (uint8_t)TIM2_OCMode);
	or	a, (0x05, sp)
	ld	0x5306, a
	jra	00107$
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 837: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
	bres	21257, #0
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 840: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
	ld	a, 0x5307
	and	a, #0x8f
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 841: | (uint8_t)TIM2_OCMode);
	or	a, (0x05, sp)
	ld	0x5307, a
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 843: }
	pop	a
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 851: void TIM2_SetCounter(uint16_t Counter)
;	-----------------------------------------
;	 function TIM2_SetCounter
;	-----------------------------------------
_TIM2_SetCounter:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 854: TIM2->CNTRH = (uint8_t)(Counter >> 8);
	ld	a, (0x03, sp)
	ld	0x530a, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 855: TIM2->CNTRL = (uint8_t)(Counter);
	ld	a, (0x04, sp)
	ld	0x530b, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 856: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 864: void TIM2_SetAutoreload(uint16_t Autoreload)
;	-----------------------------------------
;	 function TIM2_SetAutoreload
;	-----------------------------------------
_TIM2_SetAutoreload:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 867: TIM2->ARRH = (uint8_t)(Autoreload >> 8);
	ld	a, (0x03, sp)
	ld	0x530d, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 868: TIM2->ARRL = (uint8_t)(Autoreload);
	ld	a, (0x04, sp)
	ld	0x530e, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 869: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 877: void TIM2_SetCompare1(uint16_t Compare1)
;	-----------------------------------------
;	 function TIM2_SetCompare1
;	-----------------------------------------
_TIM2_SetCompare1:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 880: TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
	ld	a, (0x03, sp)
	ld	0x530f, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 881: TIM2->CCR1L = (uint8_t)(Compare1);
	ld	a, (0x04, sp)
	ld	0x5310, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 882: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 890: void TIM2_SetCompare2(uint16_t Compare2)
;	-----------------------------------------
;	 function TIM2_SetCompare2
;	-----------------------------------------
_TIM2_SetCompare2:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 893: TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
	ld	a, (0x03, sp)
	ld	0x5311, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 894: TIM2->CCR2L = (uint8_t)(Compare2);
	ld	a, (0x04, sp)
	ld	0x5312, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 895: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 903: void TIM2_SetCompare3(uint16_t Compare3)
;	-----------------------------------------
;	 function TIM2_SetCompare3
;	-----------------------------------------
_TIM2_SetCompare3:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 906: TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
	ld	a, (0x03, sp)
	ld	0x5313, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 907: TIM2->CCR3L = (uint8_t)(Compare3);
	ld	a, (0x04, sp)
	ld	0x5314, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 908: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 920: void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
;	-----------------------------------------
;	 function TIM2_SetIC1Prescaler
;	-----------------------------------------
_TIM2_SetIC1Prescaler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 923: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x08
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x0c
	jreq	00104$
	push	#0x9b
	push	#0x03
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 926: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
	ld	a, 0x5305
	and	a, #0xf3
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 927: | (uint8_t)TIM2_IC1Prescaler);
	or	a, (0x03, sp)
	ld	0x5305, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 928: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 940: void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
;	-----------------------------------------
;	 function TIM2_SetIC2Prescaler
;	-----------------------------------------
_TIM2_SetIC2Prescaler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 943: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x08
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x0c
	jreq	00104$
	push	#0xaf
	push	#0x03
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 946: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
	ld	a, 0x5306
	and	a, #0xf3
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 947: | (uint8_t)TIM2_IC2Prescaler);
	or	a, (0x03, sp)
	ld	0x5306, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 948: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 960: void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
;	-----------------------------------------
;	 function TIM2_SetIC3Prescaler
;	-----------------------------------------
_TIM2_SetIC3Prescaler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 964: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x08
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x0c
	jreq	00104$
	push	#0xc4
	push	#0x03
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 966: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
	ld	a, 0x5307
	and	a, #0xf3
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 967: | (uint8_t)TIM2_IC3Prescaler);
	or	a, (0x03, sp)
	ld	0x5307, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 968: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 975: uint16_t TIM2_GetCapture1(void)
;	-----------------------------------------
;	 function TIM2_GetCapture1
;	-----------------------------------------
_TIM2_GetCapture1:
	pushw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 981: tmpccr1h = TIM2->CCR1H;
	ld	a, 0x530f
	ld	xh, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 982: tmpccr1l = TIM2->CCR1L;
	ld	a, 0x5310
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 984: tmpccr1 = (uint16_t)(tmpccr1l);
	ld	xl, a
	clr	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 985: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 987: return (uint16_t)tmpccr1;
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 988: }
	addw	sp, #2
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 995: uint16_t TIM2_GetCapture2(void)
;	-----------------------------------------
;	 function TIM2_GetCapture2
;	-----------------------------------------
_TIM2_GetCapture2:
	pushw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1001: tmpccr2h = TIM2->CCR2H;
	ld	a, 0x5311
	ld	xh, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1002: tmpccr2l = TIM2->CCR2L;
	ld	a, 0x5312
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1004: tmpccr2 = (uint16_t)(tmpccr2l);
	ld	xl, a
	clr	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1005: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1007: return (uint16_t)tmpccr2;
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1008: }
	addw	sp, #2
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1015: uint16_t TIM2_GetCapture3(void)
;	-----------------------------------------
;	 function TIM2_GetCapture3
;	-----------------------------------------
_TIM2_GetCapture3:
	pushw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1021: tmpccr3h = TIM2->CCR3H;
	ld	a, 0x5313
	ld	xh, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1022: tmpccr3l = TIM2->CCR3L;
	ld	a, 0x5314
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1024: tmpccr3 = (uint16_t)(tmpccr3l);
	ld	xl, a
	clr	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1025: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1027: return (uint16_t)tmpccr3;
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1028: }
	addw	sp, #2
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1035: uint16_t TIM2_GetCounter(void)
;	-----------------------------------------
;	 function TIM2_GetCounter
;	-----------------------------------------
_TIM2_GetCounter:
	sub	sp, #4
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1039: tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
	ld	a, 0x530a
	clrw	x
	ld	xh, a
	clr	a
	ld	(0x02, sp), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1041: return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
	ld	a, 0x530b
	clr	(0x03, sp)
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1042: }
	addw	sp, #4
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1049: TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
;	-----------------------------------------
;	 function TIM2_GetPrescaler
;	-----------------------------------------
_TIM2_GetPrescaler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1052: return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
	ld	a, 0x530c
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1053: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1068: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
;	-----------------------------------------
;	 function TIM2_GetFlagStatus
;	-----------------------------------------
_TIM2_GetFlagStatus:
	push	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1074: assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
	ldw	x, (0x04, sp)
	cpw	x, #0x0001
	jreq	00107$
	cpw	x, #0x0002
	jreq	00107$
	cpw	x, #0x0004
	jreq	00107$
	cpw	x, #0x0008
	jreq	00107$
	cpw	x, #0x0200
	jreq	00107$
	cpw	x, #0x0400
	jreq	00107$
	cpw	x, #0x0800
	jreq	00107$
	pushw	x
	push	#0x32
	push	#0x04
	push	#0x00
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
	popw	x
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1076: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
	ld	a, 0x5302
	ld	(0x01, sp), a
	ld	a, (0x05, sp)
	and	a, (0x01, sp)
	ld	(0x01, sp), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1077: tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1079: if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
	ld	a, 0x5303
	pushw	x
	and	a, (1, sp)
	popw	x
	or	a, (0x01, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1081: bitstatus = SET;
	ld	a, #0x01
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1085: bitstatus = RESET;
	.byte 0x21
00102$:
	clr	a
00103$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1087: return (FlagStatus)bitstatus;
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1088: }
	addw	sp, #1
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1103: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
;	-----------------------------------------
;	 function TIM2_ClearFlag
;	-----------------------------------------
_TIM2_ClearFlag:
	pushw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1106: assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
	ldw	y, (0x05, sp)
	ldw	(0x01, sp), y
	ld	a, (0x02, sp)
	and	a, #0xf0
	ld	xl, a
	ld	a, (0x01, sp)
	and	a, #0xf1
	ld	xh, a
	tnzw	x
	jrne	00103$
	ldw	x, (0x01, sp)
	jrne	00104$
00103$:
	push	#0x52
	push	#0x04
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1109: TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
	ld	a, (0x02, sp)
	cpl	a
	ld	0x5302, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1110: TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
	mov	0x5303+0, #0xff
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1111: }
	popw	x
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1123: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
;	-----------------------------------------
;	 function TIM2_GetITStatus
;	-----------------------------------------
_TIM2_GetITStatus:
	push	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1129: assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
	ld	a, (0x04, sp)
	dec	a
	jreq	00108$
	ld	a, (0x04, sp)
	cp	a, #0x02
	jreq	00108$
	ld	a, (0x04, sp)
	cp	a, #0x04
	jreq	00108$
	ld	a, (0x04, sp)
	cp	a, #0x08
	jreq	00108$
	push	#0x69
	push	#0x04
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00108$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1131: TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
	ld	a, 0x5302
	and	a, (0x04, sp)
	ld	(0x01, sp), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1133: TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
	ld	a, 0x5301
	and	a, (0x04, sp)
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1135: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
	tnz	(0x01, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1137: bitstatus = SET;
	ld	a, #0x01
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1141: bitstatus = RESET;
	.byte 0x21
00102$:
	clr	a
00103$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1143: return (ITStatus)(bitstatus);
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1144: }
	addw	sp, #1
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1156: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
;	-----------------------------------------
;	 function TIM2_ClearITPendingBit
;	-----------------------------------------
_TIM2_ClearITPendingBit:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1159: assert_param(IS_TIM2_IT_OK(TIM2_IT));
	tnz	(0x03, sp)
	jreq	00103$
	ld	a, (0x03, sp)
	cp	a, #0x0f
	jrule	00104$
00103$:
	push	#0x87
	push	#0x04
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1162: TIM2->SR1 = (uint8_t)(~TIM2_IT);
	ld	a, (0x03, sp)
	cpl	a
	ld	0x5302, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1163: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1181: static void TI1_Config(uint8_t TIM2_ICPolarity,
;	-----------------------------------------
;	 function TI1_Config
;	-----------------------------------------
_TI1_Config:
	push	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1186: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
	bres	21256, #0
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1189: TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
	ld	a, 0x5305
	and	a, #0x0c
	ld	(0x01, sp), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1190: | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5305, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1186: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
	ld	a, 0x5308
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1193: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1195: TIM2->CCER1 |= TIM2_CCER1_CC1P;
	or	a, #0x02
	ld	0x5308, a
	jra	00103$
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1199: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
	and	a, #0xfd
	ld	0x5308, a
00103$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1202: TIM2->CCER1 |= TIM2_CCER1_CC1E;
	bset	21256, #0
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1203: }
	pop	a
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1221: static void TI2_Config(uint8_t TIM2_ICPolarity,
;	-----------------------------------------
;	 function TI2_Config
;	-----------------------------------------
_TI2_Config:
	push	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1226: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
	bres	21256, #4
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1229: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
	ld	a, 0x5306
	and	a, #0x0c
	ld	(0x01, sp), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1230: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5306, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1226: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
	ld	a, 0x5308
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1234: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1236: TIM2->CCER1 |= TIM2_CCER1_CC2P;
	or	a, #0x20
	ld	0x5308, a
	jra	00103$
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1240: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
	and	a, #0xdf
	ld	0x5308, a
00103$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1244: TIM2->CCER1 |= TIM2_CCER1_CC2E;
	bset	21256, #4
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1245: }
	pop	a
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1261: static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
;	-----------------------------------------
;	 function TI3_Config
;	-----------------------------------------
_TI3_Config:
	push	a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1265: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
	bres	21257, #0
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1268: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
	ld	a, 0x5307
	and	a, #0x0c
	ld	(0x01, sp), a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1269: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5307, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1265: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
	ld	a, 0x5309
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1273: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1275: TIM2->CCER2 |= TIM2_CCER2_CC3P;
	or	a, #0x02
	ld	0x5309, a
	jra	00103$
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1279: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
	and	a, #0xfd
	ld	0x5309, a
00103$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1282: TIM2->CCER2 |= TIM2_CCER2_CC3E;
	bset	21257, #0
;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1283: }
	pop	a
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
	.ascii "M8S_StdPeriph_Driver/src/stm8s_tim2.c"
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
