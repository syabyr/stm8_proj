;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8s_iwdg
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _IWDG_WriteAccessCmd
	.globl _IWDG_SetPrescaler
	.globl _IWDG_SetReload
	.globl _IWDG_ReloadCounter
	.globl _IWDG_Enable
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
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 48: void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
;	-----------------------------------------
;	 function IWDG_WriteAccessCmd
;	-----------------------------------------
_IWDG_WriteAccessCmd:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 51: assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
	ld	a, (0x03, sp)
	cp	a, #0x55
	jreq	00104$
	tnz	(0x03, sp)
	jreq	00104$
	push	#0x33
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 53: IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
	ldw	x, #0x50e0
	ld	a, (0x03, sp)
	ld	(x), a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 54: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 63: void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
;	-----------------------------------------
;	 function IWDG_SetPrescaler
;	-----------------------------------------
_IWDG_SetPrescaler:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 66: assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	dec	a
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x02
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x03
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x05
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x06
	jreq	00104$
	push	#0x42
	clrw	x
	pushw	x
	push	#0x00
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_assert_failed
	addw	sp, #6
00104$:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 68: IWDG->PR = (uint8_t)IWDG_Prescaler;
	ldw	x, #0x50e1
	ld	a, (0x03, sp)
	ld	(x), a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 69: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 78: void IWDG_SetReload(uint8_t IWDG_Reload)
;	-----------------------------------------
;	 function IWDG_SetReload
;	-----------------------------------------
_IWDG_SetReload:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 80: IWDG->RLR = IWDG_Reload;
	ldw	x, #0x50e2
	ld	a, (0x03, sp)
	ld	(x), a
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 81: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 89: void IWDG_ReloadCounter(void)
;	-----------------------------------------
;	 function IWDG_ReloadCounter
;	-----------------------------------------
_IWDG_ReloadCounter:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 91: IWDG->KR = IWDG_KEY_REFRESH;
	mov	0x50e0+0, #0xaa
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 92: }
	ret
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 99: void IWDG_Enable(void)
;	-----------------------------------------
;	 function IWDG_Enable
;	-----------------------------------------
_IWDG_Enable:
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 101: IWDG->KR = IWDG_KEY_ENABLE;
	mov	0x50e0+0, #0xcc
;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 102: }
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	.ascii "../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iw"
	.ascii "dg.c"
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
