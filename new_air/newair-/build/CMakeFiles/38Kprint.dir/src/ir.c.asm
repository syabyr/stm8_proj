;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X x86_64)
;--------------------------------------------------------
	.module ir
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _puts
	.globl _printf
	.globl _TIM3_GetCapture1
	.globl _TIM3_ICInit
	.globl _cmd
	.globl _addr
	.globl _shift
	.globl _status
	.globl _ov_handler
	.globl _cap_handler
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_status::
	.ds 1
_shift::
	.ds 2
_addr::
	.ds 2
_cmd::
	.ds 2
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
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 13: void ov_handler()
;	-----------------------------------------
;	 function ov_handler
;	-----------------------------------------
_ov_handler:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 16: if(0 != status)
	tnz	_status+0
	jrne	00118$
	ret
00118$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 18: status = 0;
	clr	_status+0
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 19: if((cmd > 0)||(addr > 0))
	ldw	x, _cmd+0
	jrne	00101$
	ldw	x, _addr+0
	jreq	00102$
00101$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 21: printf("addr:0x%02x,cmd:0x%02x\r\n",addr,cmd);
	ldw	x, _cmd+0
	pushw	x
	ldw	x, _addr+0
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_printf
	addw	sp, #6
00102$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 23: printf("-ovf-\r\n");
	push	#<(___str_2+0)
	push	#((___str_2+0) >> 8)
	call	_puts
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 25: }
	ret
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 27: void cap_handler()
;	-----------------------------------------
;	 function cap_handler
;	-----------------------------------------
_cap_handler:
	sub	sp, #3
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 29: if(0 == status)
	tnz	_status+0
	jrne	00126$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 33: status = 1;
	mov	_status+0, #0x01
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 34: addr = 0;
	clrw	x
	ldw	_addr+0, x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 35: cmd = 0;
	clrw	x
	ldw	_cmd+0, x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 36: shift = 0;
	clrw	x
	ldw	_shift+0, x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 37: printf("-cap-\r\n");
	push	#<(___str_4+0)
	push	#((___str_4+0) >> 8)
	call	_puts
	popw	x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 38: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI,
	push	#0x00
	push	#0x00
	push	#0x01
	push	#0x00
	push	#0x00
	call	_TIM3_ICInit
	addw	sp, #5
	jp	00128$
00126$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 43: uint16_t capValue=TIM3_GetCapture1();
	call	_TIM3_GetCapture1
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 45: if(capValue > 2500)
	ldw	(0x01, sp), x
	cpw	x, #0x09c4
	jrule	00104$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 47: if(status == 1)
	ld	a, _status+0
	dec	a
	jreq	00194$
	jp	00128$
00194$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 49: status = 2;
	mov	_status+0, #0x02
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 51: return;
	jp	00128$
00104$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 55: if(((capValue < IR_ONE_MAX) && (capValue > IR_ONE_MIN))
	cpw	x, #0x09c4
	clr	a
	rlc	a
	ld	(0x03, sp), a
	cpw	x, #0x07d0
	jrule	00195$
	ld	a, #0x01
	.byte 0x21
00195$:
	clr	a
00196$:
	tnz	(0x03, sp)
	jreq	00116$
	tnz	a
	jrne	00111$
00116$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 56: ||((capValue < IR_ZERO_MAX) && (capValue > IR_ZERO_MIN)))
	cpw	x, #0x04e2
	jrnc	00112$
	cpw	x, #0x03e8
	jrule	00112$
00111$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 59: if(status != 3)
	push	a
	ld	a, _status+0
	cp	a, #0x03
	pop	a
	jreq	00106$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 61: status =3;
	mov	_status+0, #0x03
	jra	00107$
00106$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 65: shift = shift<<1;
	sll	_shift+1
	rlc	_shift+0
00107$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 67: if((capValue < IR_ONE_MAX) && (capValue > IR_ONE_MIN))
	tnz	(0x03, sp)
	jreq	00113$
	tnz	a
	jreq	00113$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 69: shift|=1;
	ldw	x, _shift+0
	srlw	x
	scf
	rlcw	x
	ldw	_shift+0, x
	jra	00113$
00112$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 75: printf("erlen:%d\r\n",capValue);
	ldw	x, (0x01, sp)
	pushw	x
	push	#<(___str_5+0)
	push	#((___str_5+0) >> 8)
	call	_printf
	addw	sp, #4
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 76: return;
	jra	00128$
00113$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 79: uint8_t high=(shift&0xff00)>>8;
	ldw	x, _shift+0
	ld	a, xh
	clrw	x
	ld	xl, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 80: uint8_t low=(int8_t)(shift&0x00ff);
	ld	a, _shift+1
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 84: if(0xff==(low^high))
	pushw	x
	xor	a, (2, sp)
	popw	x
	inc	a
	jrne	00121$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 89: addr = high;
	clr	a
	ld	xh, a
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 86: if(addr == 0)
	ldw	y, _addr+0
	jrne	00118$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 89: addr = high;
	ldw	_addr+0, x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 90: shift = 0;
	clrw	x
	ldw	_shift+0, x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 93: status = 2;
	mov	_status+0, #0x02
	jra	00121$
00118$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 99: cmd = high;
	ldw	_cmd+0, x
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 100: capValue = 0;
00121$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 104: if((cmd > 0)&&(addr > 0))
	ldw	x, _cmd+0
	jreq	00128$
	ldw	x, _addr+0
	jreq	00128$
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 106: printf("addr:0x%02x,cmd:0x%02x\r\n",addr,cmd);
	ldw	x, _cmd+0
	pushw	x
	ldw	x, _addr+0
	pushw	x
	push	#<(___str_0+0)
	push	#((___str_0+0) >> 8)
	call	_printf
	addw	sp, #6
00128$:
;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 109: }
	addw	sp, #3
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	.ascii "addr:0x%02x,cmd:0x%02x"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area CONST
___str_2:
	.ascii "-ovf-"
	.db 0x0d
	.db 0x00
	.area CODE
	.area CONST
___str_4:
	.ascii "-cap-"
	.db 0x0d
	.db 0x00
	.area CODE
	.area CONST
___str_5:
	.ascii "erlen:%d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
