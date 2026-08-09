;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X x86_64)
;--------------------------------------------------------
	.module fan
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fan_off
	.globl _fan_on
	.globl _write_fan_speed
	.globl _puts
	.globl _TIM2_GetCapture1
	.globl _TIM1_SetCompare1
	.globl _GPIO_ReadInputData
	.globl _GPIO_WriteReverse
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
	.globl _FLASH_ReadByte
	.globl _FLASH_ProgramByte
	.globl _nCounter
	.globl _speed_counter
	.globl _speed
	.globl _onoff_state
	.globl _fan_init
	.globl _fan_sw
	.globl _fan_up
	.globl _fan_down
	.globl _sd_on_cap
	.globl _sd_on_ovf
	.globl _ms2_update
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_onoff_state::
	.ds 1
_speed::
	.ds 1
_speed_counter::
	.ds 2
_nCounter::
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
;	./src/fan.c: 11: void write_fan_speed(int8_t value)
;	-----------------------------------------
;	 function write_fan_speed
;	-----------------------------------------
_write_fan_speed:
;	./src/fan.c: 13: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
	ld	a, 0x505a
	and	a, #0xfe
	ld	0x505a, a
;	./src/fan.c: 14: FLASH->CR1 |= (uint8_t)FLASH_PROGRAMTIME_STANDARD;
	ld	a, 0x505a
	ld	0x505a, a
;	./src/fan.c: 18: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
	mov	0x5064+0, #0xae
;	./src/fan.c: 19: FLASH->DUKR = FLASH_RASS_KEY1;
	mov	0x5064+0, #0x56
;	./src/fan.c: 20: FLASH_ProgramByte(0x004010, value);
	ld	a, (0x03, sp)
	push	a
	push	#0x10
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ProgramByte
	addw	sp, #5
;	./src/fan.c: 22: }
	ret
;	./src/fan.c: 25: void fan_init()
;	-----------------------------------------
;	 function fan_init
;	-----------------------------------------
_fan_init:
	pushw	x
;	./src/fan.c: 28: speed = FLASH_ReadByte(0x004010);
	push	#0x10
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
;	./src/fan.c: 29: if((speed<1)||(speed>10))
	ld	_speed+0, a
	cp	a, #0x01
	jrslt	00101$
	ld	a, _speed+0
	cp	a, #0x0a
	jrsle	00102$
00101$:
;	./src/fan.c: 31: speed = 1;
	mov	_speed+0, #0x01
;	./src/fan.c: 32: write_fan_speed(speed);
	push	#0x01
	call	_write_fan_speed
	pop	a
00102$:
;	./src/fan.c: 34: onoff_state = 1;
	mov	_onoff_state+0, #0x01
;	./src/fan.c: 35: TIM1_SetCompare1(300*(11-speed));
	ld	a, _speed+0
	ld	(0x02, sp), a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x01, sp), a
	ldw	x, #0x000b
	subw	x, (0x01, sp)
	pushw	x
	push	#0x2c
	push	#0x01
	call	__mulint
	addw	sp, #4
	pushw	x
	call	_TIM1_SetCompare1
;	./src/fan.c: 36: }
	addw	sp, #4
	ret
;	./src/fan.c: 39: void fan_on()
;	-----------------------------------------
;	 function fan_on
;	-----------------------------------------
_fan_on:
;	./src/fan.c: 41: GPIO_WriteHigh(FAN_PORT,FAN_SW_PIN);
	push	#0x04
	push	#0x0a
	push	#0x50
	call	_GPIO_WriteHigh
	addw	sp, #3
;	./src/fan.c: 42: GPIO_WriteHigh(LED_PORT,LED_PIN);
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_WriteHigh
	addw	sp, #3
;	./src/fan.c: 43: onoff_state = 1;
	mov	_onoff_state+0, #0x01
;	./src/fan.c: 44: }
	ret
;	./src/fan.c: 46: void fan_off()
;	-----------------------------------------
;	 function fan_off
;	-----------------------------------------
_fan_off:
;	./src/fan.c: 48: GPIO_WriteLow(FAN_PORT,FAN_SW_PIN);
	push	#0x04
	push	#0x0a
	push	#0x50
	call	_GPIO_WriteLow
	addw	sp, #3
;	./src/fan.c: 49: GPIO_WriteLow(LED_PORT,LED_PIN);
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_WriteLow
	addw	sp, #3
;	./src/fan.c: 50: onoff_state = 0;
	clr	_onoff_state+0
;	./src/fan.c: 51: }
	ret
;	./src/fan.c: 53: void fan_sw()
;	-----------------------------------------
;	 function fan_sw
;	-----------------------------------------
_fan_sw:
;	./src/fan.c: 56: GPIO_WriteReverse(FAN_PORT, FAN_SW_PIN);
	push	#0x04
	push	#0x0a
	push	#0x50
	call	_GPIO_WriteReverse
	addw	sp, #3
;	./src/fan.c: 58: GPIO_WriteReverse(LED_PORT, LED_PIN);
	push	#0x10
	push	#0x19
	push	#0x50
	call	_GPIO_WriteReverse
	addw	sp, #3
;	./src/fan.c: 61: if ((GPIO_ReadInputData(FAN_PORT) & FAN_SW_PIN) == 0x00)
	push	#0x0a
	push	#0x50
	call	_GPIO_ReadInputData
	popw	x
	bcp	a, #0x04
	jrne	00102$
;	./src/fan.c: 63: onoff_state = 0;
	clr	_onoff_state+0
	ret
00102$:
;	./src/fan.c: 67: onoff_state = 1;
	mov	_onoff_state+0, #0x01
;	./src/fan.c: 72: }
	ret
;	./src/fan.c: 74: void fan_up()
;	-----------------------------------------
;	 function fan_up
;	-----------------------------------------
_fan_up:
	pushw	x
;	./src/fan.c: 76: if(onoff_state != 1)
	ld	a, _onoff_state+0
	dec	a
;	./src/fan.c: 78: return;
	jrne	00105$
;	./src/fan.c: 80: if(speed<10)
	ld	a, _speed+0
	cp	a, #0x0a
	jrsge	00105$
;	./src/fan.c: 82: speed++;
	inc	_speed+0
;	./src/fan.c: 83: TIM1_SetCompare1(300*(11-speed));
	ld	a, _speed+0
	ld	(0x02, sp), a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x01, sp), a
	ldw	x, #0x000b
	subw	x, (0x01, sp)
	pushw	x
	push	#0x2c
	push	#0x01
	call	__mulint
	addw	sp, #4
	pushw	x
	call	_TIM1_SetCompare1
	popw	x
;	./src/fan.c: 84: write_fan_speed(speed);
	push	_speed+0
	call	_write_fan_speed
	pop	a
00105$:
;	./src/fan.c: 86: }
	popw	x
	ret
;	./src/fan.c: 88: void fan_down()
;	-----------------------------------------
;	 function fan_down
;	-----------------------------------------
_fan_down:
	pushw	x
;	./src/fan.c: 90: if(onoff_state != 1)
	ld	a, _onoff_state+0
	dec	a
;	./src/fan.c: 92: return;
	jrne	00105$
;	./src/fan.c: 94: if(speed>1)
	ld	a, _speed+0
	cp	a, #0x01
	jrsle	00105$
;	./src/fan.c: 96: speed--;
	dec	_speed+0
;	./src/fan.c: 97: TIM1_SetCompare1(300*(11-speed));
	ld	a, _speed+0
	ld	(0x02, sp), a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x01, sp), a
	ldw	x, #0x000b
	subw	x, (0x01, sp)
	pushw	x
	push	#0x2c
	push	#0x01
	call	__mulint
	addw	sp, #4
	pushw	x
	call	_TIM1_SetCompare1
	popw	x
;	./src/fan.c: 98: write_fan_speed(speed);
	push	_speed+0
	call	_write_fan_speed
	pop	a
00105$:
;	./src/fan.c: 100: }
	popw	x
	ret
;	./src/fan.c: 105: void sd_on_cap()
;	-----------------------------------------
;	 function sd_on_cap
;	-----------------------------------------
_sd_on_cap:
;	./src/fan.c: 107: printf("cap\r\n");
	push	#<(___str_1+0)
	push	#((___str_1+0) >> 8)
	call	_puts
	popw	x
;	./src/fan.c: 108: speed_counter = TIM2_GetCapture1();
	call	_TIM2_GetCapture1
	ldw	_speed_counter+0, x
;	./src/fan.c: 110: }
	ret
;	./src/fan.c: 115: void sd_on_ovf()
;	-----------------------------------------
;	 function sd_on_ovf
;	-----------------------------------------
_sd_on_ovf:
;	./src/fan.c: 118: if(onoff_state != 0)
	tnz	_onoff_state+0
	jrne	00110$
	ret
00110$:
;	./src/fan.c: 120: printf("fan error\r\n");
	push	#<(___str_3+0)
	push	#((___str_3+0) >> 8)
	call	_puts
	popw	x
;	./src/fan.c: 124: }
	ret
;	./src/fan.c: 127: void ms2_update()
;	-----------------------------------------
;	 function ms2_update
;	-----------------------------------------
_ms2_update:
;	./src/fan.c: 129: nCounter++;
	ldw	x, _nCounter+0
	incw	x
	ldw	_nCounter+0, x
;	./src/fan.c: 130: }
	ret
	.area CODE
	.area CONST
	.area CONST
___str_1:
	.ascii "cap"
	.db 0x0d
	.db 0x00
	.area CODE
	.area CONST
___str_3:
	.ascii "fan error"
	.db 0x0d
	.db 0x00
	.area CODE
	.area INITIALIZER
__xinit__onoff_state:
	.db #0x00	;  0
__xinit__speed:
	.db #0x00	;  0
__xinit__speed_counter:
	.dw #0x0000
__xinit__nCounter:
	.dw #0x0000
	.area CABS (ABS)
