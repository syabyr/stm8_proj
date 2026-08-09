;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8s_tim3
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM3_DeInit
	.globl _TIM3_TimeBaseInit
	.globl _TIM3_OC1Init
	.globl _TIM3_OC2Init
	.globl _TIM3_ICInit
	.globl _TIM3_PWMIConfig
	.globl _TIM3_Cmd
	.globl _TIM3_ITConfig
	.globl _TIM3_UpdateDisableConfig
	.globl _TIM3_UpdateRequestConfig
	.globl _TIM3_SelectOnePulseMode
	.globl _TIM3_PrescalerConfig
	.globl _TIM3_ForcedOC1Config
	.globl _TIM3_ForcedOC2Config
	.globl _TIM3_ARRPreloadConfig
	.globl _TIM3_OC1PreloadConfig
	.globl _TIM3_OC2PreloadConfig
	.globl _TIM3_GenerateEvent
	.globl _TIM3_OC1PolarityConfig
	.globl _TIM3_OC2PolarityConfig
	.globl _TIM3_CCxCmd
	.globl _TIM3_SelectOCxM
	.globl _TIM3_SetCounter
	.globl _TIM3_SetAutoreload
	.globl _TIM3_SetCompare1
	.globl _TIM3_SetCompare2
	.globl _TIM3_SetIC1Prescaler
	.globl _TIM3_SetIC2Prescaler
	.globl _TIM3_GetCapture1
	.globl _TIM3_GetCapture2
	.globl _TIM3_GetCounter
	.globl _TIM3_GetPrescaler
	.globl _TIM3_GetFlagStatus
	.globl _TIM3_ClearFlag
	.globl _TIM3_GetITStatus
	.globl _TIM3_ClearITPendingBit
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
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 51: void TIM3_DeInit(void)
;	-----------------------------------------
;	 function TIM3_DeInit
;	-----------------------------------------
_TIM3_DeInit:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 53: TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
	mov	0x5320+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 54: TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
	mov	0x5321+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 55: TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
	mov	0x5323+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 58: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
	mov	0x5327+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 61: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
	mov	0x5327+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 62: TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
	mov	0x5325+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 63: TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
	mov	0x5326+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 64: TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
	mov	0x5328+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 65: TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
	mov	0x5329+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 66: TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
	mov	0x532a+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 67: TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
	mov	0x532b+0, #0xff
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 68: TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
	mov	0x532c+0, #0xff
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 69: TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
	mov	0x532d+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 70: TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
	mov	0x532e+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 71: TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
	mov	0x532f+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 72: TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
	mov	0x5330+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 73: TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
	mov	0x5322+0, #0x00
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 74: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 82: void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
;	-----------------------------------------
;	 function TIM3_TimeBaseInit
;	-----------------------------------------
_TIM3_TimeBaseInit:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 86: TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
	ldw	x, #0x532a
	ld	a, (0x03, sp)
	ld	(x), a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 88: TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
	ld	a, (0x04, sp)
	ld	0x532b, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 89: TIM3->ARRL = (uint8_t)(TIM3_Period);
	ld	a, (0x05, sp)
	ld	0x532c, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 90: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 100: void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
;	-----------------------------------------
;	 function TIM3_OC1Init
;	-----------------------------------------
_TIM3_OC1Init:
	pushw	x
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 106: assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
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
	push	#0x6a
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 107: assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
	tnz	(0x06, sp)
	jreq	00121$
	ld	a, (0x06, sp)
	cp	a, #0x11
	jreq	00121$
	push	#0x6b
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00121$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 108: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
	tnz	(0x09, sp)
	jreq	00126$
	ld	a, (0x09, sp)
	cp	a, #0x22
	jreq	00126$
	push	#0x6c
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00126$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 111: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
	ld	a, 0x5327
	and	a, #0xfc
	ld	0x5327, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 113: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
	ld	a, 0x5327
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	and	a, #0x01
	ld	(0x02, sp), a
	ld	a, (0x09, sp)
	and	a, #0x02
	or	a, (0x02, sp)
	or	a, (0x01, sp)
	ld	0x5327, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 116: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
	ld	a, 0x5325
	and	a, #0x8f
	or	a, (0x05, sp)
	ld	0x5325, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 119: TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
	ld	a, (0x07, sp)
	ld	0x532d, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 120: TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
	ld	a, (0x08, sp)
	ld	0x532e, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 121: }
	popw	x
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 131: void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
;	-----------------------------------------
;	 function TIM3_OC2Init
;	-----------------------------------------
_TIM3_OC2Init:
	pushw	x
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 137: assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
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
	push	#0x89
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 138: assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
	tnz	(0x06, sp)
	jreq	00121$
	ld	a, (0x06, sp)
	cp	a, #0x11
	jreq	00121$
	push	#0x8a
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00121$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 139: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
	tnz	(0x09, sp)
	jreq	00126$
	ld	a, (0x09, sp)
	cp	a, #0x22
	jreq	00126$
	push	#0x8b
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00126$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 143: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
	ld	a, 0x5327
	and	a, #0xcf
	ld	0x5327, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 145: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
	ld	a, 0x5327
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	and	a, #0x10
	ld	(0x02, sp), a
	ld	a, (0x09, sp)
	and	a, #0x20
	or	a, (0x02, sp)
	or	a, (0x01, sp)
	ld	0x5327, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 149: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
	ld	a, 0x5326
	and	a, #0x8f
	or	a, (0x05, sp)
	ld	0x5326, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 153: TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
	ld	a, (0x07, sp)
	ld	0x532f, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 154: TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
	ld	a, (0x08, sp)
	ld	0x5330, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 155: }
	popw	x
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 166: void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
;	-----------------------------------------
;	 function TIM3_ICInit
;	-----------------------------------------
_TIM3_ICInit:
	push	a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 173: assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
	ld	a, (0x04, sp)
	dec	a
	jrne	00203$
	ld	a, #0x01
	ld	(0x01, sp), a
	.byte 0xc5
00203$:
	clr	(0x01, sp)
00204$:
	tnz	(0x04, sp)
	jreq	00107$
	tnz	(0x01, sp)
	jrne	00107$
	push	#0xad
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 174: assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
	tnz	(0x05, sp)
	jreq	00112$
	ld	a, (0x05, sp)
	cp	a, #0x44
	jreq	00112$
	push	#0xae
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00112$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 175: assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
	ld	a, (0x06, sp)
	dec	a
	jreq	00117$
	ld	a, (0x06, sp)
	cp	a, #0x02
	jreq	00117$
	ld	a, (0x06, sp)
	cp	a, #0x03
	jreq	00117$
	push	#0xaf
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00117$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 176: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
	tnz	(0x07, sp)
	jreq	00125$
	ld	a, (0x07, sp)
	cp	a, #0x04
	jreq	00125$
	ld	a, (0x07, sp)
	cp	a, #0x08
	jreq	00125$
	ld	a, (0x07, sp)
	cp	a, #0x0c
	jreq	00125$
	push	#0xb0
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00125$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 177: assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
	ld	a, (0x08, sp)
	cp	a, #0x0f
	jrule	00136$
	push	#0xb1
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00136$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 179: if (TIM3_Channel != TIM3_CHANNEL_2)
	tnz	(0x01, sp)
	jrne	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 182: TI1_Config((uint8_t)TIM3_ICPolarity,
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 187: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
	ld	a, (0x07, sp)
	push	a
	call	_TIM3_SetIC1Prescaler
	pop	a
	jra	00104$
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 192: TI2_Config((uint8_t)TIM3_ICPolarity,
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 197: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
	ld	a, (0x07, sp)
	push	a
	call	_TIM3_SetIC2Prescaler
	pop	a
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 199: }
	pop	a
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 210: void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
;	-----------------------------------------
;	 function TIM3_PWMIConfig
;	-----------------------------------------
_TIM3_PWMIConfig:
	sub	sp, #3
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 220: assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
	ld	a, (0x06, sp)
	dec	a
	jrne	00212$
	ld	a, #0x01
	ld	(0x01, sp), a
	.byte 0xc5
00212$:
	clr	(0x01, sp)
00213$:
	tnz	(0x06, sp)
	jreq	00113$
	tnz	(0x01, sp)
	jrne	00113$
	push	#0xdc
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00113$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 221: assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
	ld	a, (0x07, sp)
	sub	a, #0x44
	jrne	00217$
	inc	a
	ld	(0x02, sp), a
	.byte 0xc5
00217$:
	clr	(0x02, sp)
00218$:
	tnz	(0x07, sp)
	jreq	00118$
	tnz	(0x02, sp)
	jrne	00118$
	push	#0xdd
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00118$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 222: assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
	ld	a, (0x08, sp)
	dec	a
	jrne	00222$
	ld	a, #0x01
	ld	(0x03, sp), a
	.byte 0xc5
00222$:
	clr	(0x03, sp)
00223$:
	tnz	(0x03, sp)
	jrne	00123$
	ld	a, (0x08, sp)
	cp	a, #0x02
	jreq	00123$
	ld	a, (0x08, sp)
	cp	a, #0x03
	jreq	00123$
	push	#0xde
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00123$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 223: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
	tnz	(0x09, sp)
	jreq	00131$
	ld	a, (0x09, sp)
	cp	a, #0x04
	jreq	00131$
	ld	a, (0x09, sp)
	cp	a, #0x08
	jreq	00131$
	ld	a, (0x09, sp)
	cp	a, #0x0c
	jreq	00131$
	push	#0xdf
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00131$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 226: if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
	tnz	(0x02, sp)
	jrne	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 228: icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
	ld	a, #0x44
	ld	(0x02, sp), a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 232: icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
	.byte 0xc5
00102$:
	clr	(0x02, sp)
00103$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 236: if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
	ld	a, (0x03, sp)
	jreq	00105$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 238: icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
	ld	a, #0x02
	ld	(0x03, sp), a
	jra	00106$
00105$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 242: icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
	ld	a, #0x01
	ld	(0x03, sp), a
00106$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 245: if (TIM3_Channel != TIM3_CHANNEL_2)
	tnz	(0x01, sp)
	jrne	00108$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 248: TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x09, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 252: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
	ld	a, (0x09, sp)
	push	a
	call	_TIM3_SetIC1Prescaler
	pop	a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 255: TI2_Config(icpolarity, icselection, TIM3_ICFilter);
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 258: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
	ld	a, (0x09, sp)
	push	a
	call	_TIM3_SetIC2Prescaler
	pop	a
	jra	00110$
00108$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 263: TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x09, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 267: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
	ld	a, (0x09, sp)
	push	a
	call	_TIM3_SetIC2Prescaler
	pop	a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 270: TI1_Config(icpolarity, icselection, TIM3_ICFilter);
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 273: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
	ld	a, (0x09, sp)
	push	a
	call	_TIM3_SetIC1Prescaler
	pop	a
00110$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 275: }
	addw	sp, #3
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 283: void TIM3_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_Cmd
;	-----------------------------------------
_TIM3_Cmd:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 286: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0x1e
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
	ld	a, 0x5320
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 289: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
	or	a, #0x01
	ld	0x5320, a
	ret
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 295: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
	and	a, #0xfe
	ld	0x5320, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 297: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 311: void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_ITConfig
;	-----------------------------------------
_TIM3_ITConfig:
	push	a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 314: assert_param(IS_TIM3_IT_OK(TIM3_IT));
	tnz	(0x04, sp)
	jreq	00106$
	ld	a, (0x04, sp)
	cp	a, #0x07
	jrule	00107$
00106$:
	push	#0x3a
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 315: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x05, sp)
	jreq	00112$
	ld	a, (0x05, sp)
	dec	a
	jreq	00112$
	push	#0x3b
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00112$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
	ld	a, 0x5321
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 317: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
	or	a, (0x04, sp)
	ld	0x5321, a
	jra	00104$
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 325: TIM3->IER &= (uint8_t)(~TIM3_IT);
	push	a
	ld	a, (0x05, sp)
	cpl	a
	ld	(0x02, sp), a
	pop	a
	and	a, (0x01, sp)
	ld	0x5321, a
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 327: }
	pop	a
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 335: void TIM3_UpdateDisableConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_UpdateDisableConfig
;	-----------------------------------------
_TIM3_UpdateDisableConfig:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 338: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0x52
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
	ld	a, 0x5320
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 341: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
	or	a, #0x02
	ld	0x5320, a
	ret
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 347: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
	and	a, #0xfd
	ld	0x5320, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 349: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 359: void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
;	-----------------------------------------
;	 function TIM3_UpdateRequestConfig
;	-----------------------------------------
_TIM3_UpdateRequestConfig:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 362: assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0x6a
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
	ld	a, 0x5320
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 365: if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
	tnz	(0x03, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
	or	a, #0x04
	ld	0x5320, a
	ret
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 371: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
	and	a, #0xfb
	ld	0x5320, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 373: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 383: void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
;	-----------------------------------------
;	 function TIM3_SelectOnePulseMode
;	-----------------------------------------
_TIM3_SelectOnePulseMode:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 386: assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	tnz	(0x03, sp)
	jreq	00107$
	push	#0x82
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
	ld	a, 0x5320
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 389: if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
	tnz	(0x03, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
	or	a, #0x08
	ld	0x5320, a
	ret
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 395: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
	and	a, #0xf7
	ld	0x5320, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 397: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 427: void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
;	-----------------------------------------
;	 function TIM3_PrescalerConfig
;	-----------------------------------------
_TIM3_PrescalerConfig:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 431: assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
	tnz	(0x04, sp)
	jreq	00104$
	ld	a, (0x04, sp)
	dec	a
	jreq	00104$
	push	#0xaf
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 432: assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
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
	push	#0xb0
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00109$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 435: TIM3->PSCR = (uint8_t)Prescaler;
	ldw	x, #0x532a
	ld	a, (0x03, sp)
	ld	(x), a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 438: TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
	ldw	x, #0x5324
	ld	a, (0x04, sp)
	ld	(x), a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 439: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 450: void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
;	-----------------------------------------
;	 function TIM3_ForcedOC1Config
;	-----------------------------------------
_TIM3_ForcedOC1Config:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 453: assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
	ld	a, (0x03, sp)
	cp	a, #0x50
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x40
	jreq	00104$
	push	#0xc5
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 456: TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
	ld	a, 0x5325
	and	a, #0x8f
	or	a, (0x03, sp)
	ld	0x5325, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 457: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 468: void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
;	-----------------------------------------
;	 function TIM3_ForcedOC2Config
;	-----------------------------------------
_TIM3_ForcedOC2Config:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 471: assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
	ld	a, (0x03, sp)
	cp	a, #0x50
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x40
	jreq	00104$
	push	#0xd7
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 474: TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
	ld	a, 0x5326
	and	a, #0x8f
	or	a, (0x03, sp)
	ld	0x5326, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 475: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 483: void TIM3_ARRPreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_ARRPreloadConfig
;	-----------------------------------------
_TIM3_ARRPreloadConfig:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 486: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0xe6
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
	ld	a, 0x5320
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 489: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
	or	a, #0x80
	ld	0x5320, a
	ret
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 495: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
	and	a, #0x7f
	ld	0x5320, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 497: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 505: void TIM3_OC1PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_OC1PreloadConfig
;	-----------------------------------------
_TIM3_OC1PreloadConfig:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 508: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0xfc
	push	#0x01
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
	ld	a, 0x5325
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 511: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
	or	a, #0x08
	ld	0x5325, a
	ret
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 517: TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
	and	a, #0xf7
	ld	0x5325, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 519: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 527: void TIM3_OC2PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_OC2PreloadConfig
;	-----------------------------------------
_TIM3_OC2PreloadConfig:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 530: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0x12
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
	ld	a, 0x5326
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 533: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
	or	a, #0x08
	ld	0x5326, a
	ret
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 539: TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
	and	a, #0xf7
	ld	0x5326, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 541: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 552: void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
;	-----------------------------------------
;	 function TIM3_GenerateEvent
;	-----------------------------------------
_TIM3_GenerateEvent:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 555: assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
	tnz	(0x03, sp)
	jrne	00104$
	push	#0x2b
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 558: TIM3->EGR = (uint8_t)TIM3_EventSource;
	ldw	x, #0x5324
	ld	a, (0x03, sp)
	ld	(x), a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 559: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 569: void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
;	-----------------------------------------
;	 function TIM3_OC1PolarityConfig
;	-----------------------------------------
_TIM3_OC1PolarityConfig:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 572: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x22
	jreq	00107$
	push	#0x3c
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
	ld	a, 0x5327
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 575: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
	or	a, #0x02
	ld	0x5327, a
	ret
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 581: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
	and	a, #0xfd
	ld	0x5327, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 583: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 593: void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
;	-----------------------------------------
;	 function TIM3_OC2PolarityConfig
;	-----------------------------------------
_TIM3_OC2PolarityConfig:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 596: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x22
	jreq	00107$
	push	#0x54
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
	ld	a, 0x5327
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 599: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
	or	a, #0x20
	ld	0x5327, a
	ret
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 605: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
	and	a, #0xdf
	ld	0x5327, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 607: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 619: void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_CCxCmd
;	-----------------------------------------
_TIM3_CCxCmd:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 622: assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
	tnz	(0x03, sp)
	jreq	00113$
	ld	a, (0x03, sp)
	dec	a
	jreq	00113$
	push	#0x6e
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00113$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 623: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x04, sp)
	jreq	00118$
	ld	a, (0x04, sp)
	dec	a
	jreq	00118$
	push	#0x6f
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00118$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
	ld	a, 0x5327
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 625: if (TIM3_Channel == TIM3_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00108$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 628: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
	or	a, #0x01
	ld	0x5327, a
	ret
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 634: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
	and	a, #0xfe
	ld	0x5327, a
	ret
00108$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 641: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00105$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 643: TIM3->CCER1 |= TIM3_CCER1_CC2E;
	or	a, #0x10
	ld	0x5327, a
	ret
00105$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 647: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
	and	a, #0xef
	ld	0x5327, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 650: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 671: void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
;	-----------------------------------------
;	 function TIM3_SelectOCxM
;	-----------------------------------------
_TIM3_SelectOCxM:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 674: assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	dec	a
	jreq	00107$
	push	#0xa2
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 675: assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
	tnz	(0x04, sp)
	jreq	00112$
	ld	a, (0x04, sp)
	cp	a, #0x10
	jreq	00112$
	ld	a, (0x04, sp)
	cp	a, #0x20
	jreq	00112$
	ld	a, (0x04, sp)
	cp	a, #0x30
	jreq	00112$
	ld	a, (0x04, sp)
	cp	a, #0x60
	jreq	00112$
	ld	a, (0x04, sp)
	cp	a, #0x70
	jreq	00112$
	ld	a, (0x04, sp)
	cp	a, #0x50
	jreq	00112$
	ld	a, (0x04, sp)
	cp	a, #0x40
	jreq	00112$
	push	#0xa3
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00112$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
	ld	a, 0x5327
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 677: if (TIM3_Channel == TIM3_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
	and	a, #0xfe
	ld	0x5327, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 683: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
	ld	a, 0x5325
	and	a, #0x8f
	or	a, (0x04, sp)
	ld	0x5325, a
	ret
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 688: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
	and	a, #0xef
	ld	0x5327, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 691: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
	ld	a, 0x5326
	and	a, #0x8f
	or	a, (0x04, sp)
	ld	0x5326, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 693: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 701: void TIM3_SetCounter(uint16_t Counter)
;	-----------------------------------------
;	 function TIM3_SetCounter
;	-----------------------------------------
_TIM3_SetCounter:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 704: TIM3->CNTRH = (uint8_t)(Counter >> 8);
	ld	a, (0x03, sp)
	ld	0x5328, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 705: TIM3->CNTRL = (uint8_t)(Counter);
	ld	a, (0x04, sp)
	ld	0x5329, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 706: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 714: void TIM3_SetAutoreload(uint16_t Autoreload)
;	-----------------------------------------
;	 function TIM3_SetAutoreload
;	-----------------------------------------
_TIM3_SetAutoreload:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 717: TIM3->ARRH = (uint8_t)(Autoreload >> 8);
	ld	a, (0x03, sp)
	ld	0x532b, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 718: TIM3->ARRL = (uint8_t)(Autoreload);
	ld	a, (0x04, sp)
	ld	0x532c, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 719: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 727: void TIM3_SetCompare1(uint16_t Compare1)
;	-----------------------------------------
;	 function TIM3_SetCompare1
;	-----------------------------------------
_TIM3_SetCompare1:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 730: TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
	ld	a, (0x03, sp)
	ld	0x532d, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 731: TIM3->CCR1L = (uint8_t)(Compare1);
	ld	a, (0x04, sp)
	ld	0x532e, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 732: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 740: void TIM3_SetCompare2(uint16_t Compare2)
;	-----------------------------------------
;	 function TIM3_SetCompare2
;	-----------------------------------------
_TIM3_SetCompare2:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 743: TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
	ld	a, (0x03, sp)
	ld	0x532f, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 744: TIM3->CCR2L = (uint8_t)(Compare2);
	ld	a, (0x04, sp)
	ld	0x5330, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 745: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 757: void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
;	-----------------------------------------
;	 function TIM3_SetIC1Prescaler
;	-----------------------------------------
_TIM3_SetIC1Prescaler:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 760: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
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
	push	#0xf8
	push	#0x02
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 763: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
	ld	a, 0x5325
	and	a, #0xf3
	or	a, (0x03, sp)
	ld	0x5325, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 764: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 776: void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
;	-----------------------------------------
;	 function TIM3_SetIC2Prescaler
;	-----------------------------------------
_TIM3_SetIC2Prescaler:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 779: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
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
	push	#0x0b
	push	#0x03
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 782: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
	ld	a, 0x5326
	and	a, #0xf3
	or	a, (0x03, sp)
	ld	0x5326, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 783: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 790: uint16_t TIM3_GetCapture1(void)
;	-----------------------------------------
;	 function TIM3_GetCapture1
;	-----------------------------------------
_TIM3_GetCapture1:
	pushw	x
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 796: tmpccr1h = TIM3->CCR1H;
	ld	a, 0x532d
	ld	xh, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 797: tmpccr1l = TIM3->CCR1L;
	ld	a, 0x532e
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 799: tmpccr1 = (uint16_t)(tmpccr1l);
	ld	xl, a
	clr	a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 800: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 802: return (uint16_t)tmpccr1;
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 803: }
	addw	sp, #2
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 810: uint16_t TIM3_GetCapture2(void)
;	-----------------------------------------
;	 function TIM3_GetCapture2
;	-----------------------------------------
_TIM3_GetCapture2:
	pushw	x
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 816: tmpccr2h = TIM3->CCR2H;
	ld	a, 0x532f
	ld	xh, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 817: tmpccr2l = TIM3->CCR2L;
	ld	a, 0x5330
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 819: tmpccr2 = (uint16_t)(tmpccr2l);
	ld	xl, a
	clr	a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 820: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
	clr	(0x02, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x02, sp)
	ld	xl, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 822: return (uint16_t)tmpccr2;
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 823: }
	addw	sp, #2
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 830: uint16_t TIM3_GetCounter(void)
;	-----------------------------------------
;	 function TIM3_GetCounter
;	-----------------------------------------
_TIM3_GetCounter:
	sub	sp, #4
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 834: tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
	ld	a, 0x5328
	clrw	x
	ld	xh, a
	clr	a
	ld	(0x02, sp), a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 836: return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
	ld	a, 0x5329
	clr	(0x03, sp)
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 837: }
	addw	sp, #4
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 844: TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
;	-----------------------------------------
;	 function TIM3_GetPrescaler
;	-----------------------------------------
_TIM3_GetPrescaler:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 847: return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
	ld	a, 0x532a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 848: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 861: FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
;	-----------------------------------------
;	 function TIM3_GetFlagStatus
;	-----------------------------------------
_TIM3_GetFlagStatus:
	push	a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 867: assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
	ldw	x, (0x04, sp)
	cpw	x, #0x0001
	jreq	00107$
	cpw	x, #0x0002
	jreq	00107$
	cpw	x, #0x0004
	jreq	00107$
	cpw	x, #0x0200
	jreq	00107$
	cpw	x, #0x0400
	jreq	00107$
	pushw	x
	push	#0x63
	push	#0x03
	push	#0x00
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
	popw	x
00107$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 869: tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
	ld	a, 0x5322
	ld	(0x01, sp), a
	ld	a, (0x05, sp)
	and	a, (0x01, sp)
	ld	(0x01, sp), a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 870: tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 872: if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
	ld	a, 0x5323
	pushw	x
	and	a, (1, sp)
	popw	x
	or	a, (0x01, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 874: bitstatus = SET;
	ld	a, #0x01
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 878: bitstatus = RESET;
	.byte 0x21
00102$:
	clr	a
00103$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 880: return (FlagStatus)bitstatus;
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 881: }
	addw	sp, #1
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 894: void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
;	-----------------------------------------
;	 function TIM3_ClearFlag
;	-----------------------------------------
_TIM3_ClearFlag:
	sub	sp, #4
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 897: assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
	ldw	x, (0x07, sp)
	ldw	(0x01, sp), x
	ld	a, xl
	and	a, #0xf8
	ld	(0x04, sp), a
	ld	a, xh
	and	a, #0xf9
	ld	(0x03, sp), a
	ldw	y, (0x03, sp)
	jrne	00103$
	ldw	y, (0x01, sp)
	jrne	00104$
00103$:
	pushw	x
	push	#0x81
	push	#0x03
	push	#0x00
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
	popw	x
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 900: TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
	ld	a, xl
	cpl	a
	ld	0x5322, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 901: TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
	ld	a, (0x01, sp)
	cpl	a
	ld	0x5323, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 902: }
	addw	sp, #4
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 913: ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
;	-----------------------------------------
;	 function TIM3_GetITStatus
;	-----------------------------------------
_TIM3_GetITStatus:
	push	a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 919: assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
	ld	a, (0x04, sp)
	dec	a
	jreq	00108$
	ld	a, (0x04, sp)
	cp	a, #0x02
	jreq	00108$
	ld	a, (0x04, sp)
	cp	a, #0x04
	jreq	00108$
	push	#0x97
	push	#0x03
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00108$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 921: TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
	ld	a, 0x5322
	and	a, (0x04, sp)
	ld	(0x01, sp), a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 923: TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
	ld	a, 0x5321
	and	a, (0x04, sp)
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 925: if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
	tnz	(0x01, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 927: bitstatus = SET;
	ld	a, #0x01
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 931: bitstatus = RESET;
	.byte 0x21
00102$:
	clr	a
00103$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 933: return (ITStatus)(bitstatus);
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 934: }
	addw	sp, #1
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 945: void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
;	-----------------------------------------
;	 function TIM3_ClearITPendingBit
;	-----------------------------------------
_TIM3_ClearITPendingBit:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 948: assert_param(IS_TIM3_IT_OK(TIM3_IT));
	tnz	(0x03, sp)
	jreq	00103$
	ld	a, (0x03, sp)
	cp	a, #0x07
	jrule	00104$
00103$:
	push	#0xb4
	push	#0x03
	clrw	x
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 951: TIM3->SR1 = (uint8_t)(~TIM3_IT);
	ld	a, (0x03, sp)
	cpl	a
	ld	0x5322, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 952: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 970: static void TI1_Config(uint8_t TIM3_ICPolarity,
;	-----------------------------------------
;	 function TI1_Config
;	-----------------------------------------
_TI1_Config:
	push	a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
	bres	21287, #0
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 978: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
	ld	a, 0x5325
	and	a, #0x0c
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5325, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
	ld	a, 0x5327
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 981: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 983: TIM3->CCER1 |= TIM3_CCER1_CC1P;
	or	a, #0x02
	ld	0x5327, a
	jra	00103$
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 987: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
	and	a, #0xfd
	ld	0x5327, a
00103$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 990: TIM3->CCER1 |= TIM3_CCER1_CC1E;
	bset	21287, #0
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 991: }
	pop	a
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1009: static void TI2_Config(uint8_t TIM3_ICPolarity,
;	-----------------------------------------
;	 function TI2_Config
;	-----------------------------------------
_TI2_Config:
	push	a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
	bres	21287, #4
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1017: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
	ld	a, 0x5326
	and	a, #0x0c
	ld	(0x01, sp), a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1019: ((uint8_t)( TIM3_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5326, a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
	ld	a, 0x5327
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1022: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1024: TIM3->CCER1 |= TIM3_CCER1_CC2P;
	or	a, #0x20
	ld	0x5327, a
	jra	00103$
00102$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1028: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
	and	a, #0xdf
	ld	0x5327, a
00103$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1032: TIM3->CCER1 |= TIM3_CCER1_CC2E;
	bset	21287, #4
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1033: }
	pop	a
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	.ascii "../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_ti"
	.ascii "m3.c"
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
