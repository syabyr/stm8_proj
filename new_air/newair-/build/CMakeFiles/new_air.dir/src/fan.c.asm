;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X x86_64)
;--------------------------------------------------------
	.module fan
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_SetCompare1
	.globl _GPIO_WriteReverse
	.globl _speed
	.globl _fan_sw
	.globl _fan_up
	.globl _fan_down
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_speed::
	.ds 2
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
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 7: void fan_sw()
;	-----------------------------------------
;	 function fan_sw
;	-----------------------------------------
_fan_sw:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 10: GPIO_WriteReverse(FAN_PORT, FAN_SW_PIN);
	push	#0x04
	push	#0x0a
	push	#0x50
	call	_GPIO_WriteReverse
	addw	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 19: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 21: void fan_up()
;	-----------------------------------------
;	 function fan_up
;	-----------------------------------------
_fan_up:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 23: if(speed > 300)
	ldw	x, _speed+0
	cpw	x, #0x012c
	jrsle	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 25: speed = speed - 300;
	subw	x, #0x012c
	ldw	_speed+0, x
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 28: TIM1_SetCompare1(speed);
	ldw	x, _speed+0
	pushw	x
	call	_TIM1_SetCompare1
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 29: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 31: void fan_down()
;	-----------------------------------------
;	 function fan_down
;	-----------------------------------------
_fan_down:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 34: if(speed < 3200)
	ldw	x, _speed+0
	cpw	x, #0x0c80
	jrsge	00102$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 36: speed = speed + 300;
	addw	x, #0x012c
	ldw	_speed+0, x
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 39: TIM1_SetCompare1(speed);
	ldw	x, _speed+0
	pushw	x
	call	_TIM1_SetCompare1
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 40: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__speed:
	.dw #0x0000
	.area CABS (ABS)
