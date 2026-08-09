                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module ir
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _fan_down
                                     12 	.globl _fan_up
                                     13 	.globl _fan_sw
                                     14 	.globl _puts
                                     15 	.globl _printf
                                     16 	.globl _TIM3_GetCapture1
                                     17 	.globl _TIM3_ICInit
                                     18 	.globl _cmd
                                     19 	.globl _addr
                                     20 	.globl _shift
                                     21 	.globl _status
                                     22 	.globl _ov_handler
                                     23 	.globl _cap_handler
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DATA
      000001                         28 _status::
      000001                         29 	.ds 1
      000002                         30 _shift::
      000002                         31 	.ds 2
      000004                         32 _addr::
      000004                         33 	.ds 2
      000006                         34 _cmd::
      000006                         35 	.ds 2
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area INITIALIZED
                                     40 ;--------------------------------------------------------
                                     41 ; absolute external ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area DABS (ABS)
                                     44 
                                     45 ; default segment ordering for linker
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area CONST
                                     50 	.area INITIALIZER
                                     51 	.area CODE
                                     52 
                                     53 ;--------------------------------------------------------
                                     54 ; global & static initialisations
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area GSINIT
                                     58 	.area GSFINAL
                                     59 	.area GSINIT
                                     60 ;--------------------------------------------------------
                                     61 ; Home
                                     62 ;--------------------------------------------------------
                                     63 	.area HOME
                                     64 	.area HOME
                                     65 ;--------------------------------------------------------
                                     66 ; code
                                     67 ;--------------------------------------------------------
                                     68 	.area CODE
                                     69 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 14: void ov_handler()
                                     70 ;	-----------------------------------------
                                     71 ;	 function ov_handler
                                     72 ;	-----------------------------------------
      0085A0                         73 _ov_handler:
                                     74 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 17: if(0 != status)
      0085A0 72 5D 00 01      [ 1]   75 	tnz	_status+0
      0085A4 26 01            [ 1]   76 	jrne	00118$
      0085A6 81               [ 4]   77 	ret
      0085A7                         78 00118$:
                                     79 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 19: status = 0;
      0085A7 72 5F 00 01      [ 1]   80 	clr	_status+0
                                     81 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 20: if((cmd > 0)||(addr > 0))
      0085AB CE 00 06         [ 2]   82 	ldw	x, _cmd+0
      0085AE 26 05            [ 1]   83 	jrne	00101$
      0085B0 CE 00 04         [ 2]   84 	ldw	x, _addr+0
      0085B3 27 11            [ 1]   85 	jreq	00102$
      0085B5                         86 00101$:
                                     87 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 22: printf("addr:0x%02x,cmd:0x%02x\r\n",addr,cmd);
      0085B5 CE 00 06         [ 2]   88 	ldw	x, _cmd+0
      0085B8 89               [ 2]   89 	pushw	x
      0085B9 CE 00 04         [ 2]   90 	ldw	x, _addr+0
      0085BC 89               [ 2]   91 	pushw	x
      0085BD 4B 9A            [ 1]   92 	push	#<(___str_0+0)
      0085BF 4B 80            [ 1]   93 	push	#((___str_0+0) >> 8)
      0085C1 CD C6 EE         [ 4]   94 	call	_printf
      0085C4 5B 06            [ 2]   95 	addw	sp, #6
      0085C6                         96 00102$:
                                     97 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 24: printf("-ovf-\r\n");
      0085C6 4B B3            [ 1]   98 	push	#<(___str_2+0)
      0085C8 4B 80            [ 1]   99 	push	#((___str_2+0) >> 8)
      0085CA CD C6 AD         [ 4]  100 	call	_puts
      0085CD 85               [ 2]  101 	popw	x
                                    102 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 26: }
      0085CE 81               [ 4]  103 	ret
                                    104 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 28: void cap_handler()
                                    105 ;	-----------------------------------------
                                    106 ;	 function cap_handler
                                    107 ;	-----------------------------------------
      0085CF                        108 _cap_handler:
      0085CF 52 03            [ 2]  109 	sub	sp, #3
                                    110 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 30: if(0 == status)
      0085D1 72 5D 00 01      [ 1]  111 	tnz	_status+0
      0085D5 26 2A            [ 1]  112 	jrne	00134$
                                    113 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 34: status = 1;
      0085D7 35 01 00 01      [ 1]  114 	mov	_status+0, #0x01
                                    115 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 35: addr = 0;
      0085DB 5F               [ 1]  116 	clrw	x
      0085DC CF 00 04         [ 2]  117 	ldw	_addr+0, x
                                    118 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 36: cmd = 0;
      0085DF 5F               [ 1]  119 	clrw	x
      0085E0 CF 00 06         [ 2]  120 	ldw	_cmd+0, x
                                    121 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 37: shift = 0;
      0085E3 5F               [ 1]  122 	clrw	x
      0085E4 CF 00 02         [ 2]  123 	ldw	_shift+0, x
                                    124 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 38: printf("-cap-\r\n");
      0085E7 4B BA            [ 1]  125 	push	#<(___str_4+0)
      0085E9 4B 80            [ 1]  126 	push	#((___str_4+0) >> 8)
      0085EB CD C6 AD         [ 4]  127 	call	_puts
      0085EE 85               [ 2]  128 	popw	x
                                    129 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 39: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI,
      0085EF 4B 00            [ 1]  130 	push	#0x00
      0085F1 4B 00            [ 1]  131 	push	#0x00
      0085F3 4B 01            [ 1]  132 	push	#0x01
      0085F5 4B 00            [ 1]  133 	push	#0x00
      0085F7 4B 00            [ 1]  134 	push	#0x00
      0085F9 CD A9 D8         [ 4]  135 	call	_TIM3_ICInit
      0085FC 5B 05            [ 2]  136 	addw	sp, #5
      0085FE CC 86 D7         [ 2]  137 	jp	00136$
      008601                        138 00134$:
                                    139 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 44: uint16_t capValue=TIM3_GetCapture1();
      008601 CD AF D8         [ 4]  140 	call	_TIM3_GetCapture1
                                    141 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 46: if(capValue > 2500)
      008604 1F 01            [ 2]  142 	ldw	(0x01, sp), x
      008606 A3 09 C4         [ 2]  143 	cpw	x, #0x09c4
      008609 23 10            [ 2]  144 	jrule	00104$
                                    145 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 48: if(status == 1)
      00860B C6 00 01         [ 1]  146 	ld	a, _status+0
      00860E 4A               [ 1]  147 	dec	a
      00860F 27 03            [ 1]  148 	jreq	00217$
      008611 CC 86 D7         [ 2]  149 	jp	00136$
      008614                        150 00217$:
                                    151 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 50: status = 2;
      008614 35 02 00 01      [ 1]  152 	mov	_status+0, #0x02
                                    153 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 52: return;
      008618 CC 86 D7         [ 2]  154 	jp	00136$
      00861B                        155 00104$:
                                    156 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 56: if(((capValue < IR_ONE_MAX) && (capValue > IR_ONE_MIN))
      00861B A3 09 C4         [ 2]  157 	cpw	x, #0x09c4
      00861E 4F               [ 1]  158 	clr	a
      00861F 49               [ 1]  159 	rlc	a
      008620 6B 03            [ 1]  160 	ld	(0x03, sp), a
      008622 A3 07 D0         [ 2]  161 	cpw	x, #0x07d0
      008625 23 03            [ 2]  162 	jrule	00218$
      008627 A6 01            [ 1]  163 	ld	a, #0x01
      008629 21                     164 	.byte 0x21
      00862A                        165 00218$:
      00862A 4F               [ 1]  166 	clr	a
      00862B                        167 00219$:
      00862B 0D 03            [ 1]  168 	tnz	(0x03, sp)
      00862D 27 03            [ 1]  169 	jreq	00116$
      00862F 4D               [ 1]  170 	tnz	a
      008630 26 0A            [ 1]  171 	jrne	00111$
      008632                        172 00116$:
                                    173 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 57: ||((capValue < IR_ZERO_MAX) && (capValue > IR_ZERO_MIN)))
      008632 A3 04 E2         [ 2]  174 	cpw	x, #0x04e2
      008635 24 2E            [ 1]  175 	jrnc	00112$
      008637 A3 03 E8         [ 2]  176 	cpw	x, #0x03e8
      00863A 23 29            [ 2]  177 	jrule	00112$
      00863C                        178 00111$:
                                    179 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 60: if(status != 3)
      00863C 88               [ 1]  180 	push	a
      00863D C6 00 01         [ 1]  181 	ld	a, _status+0
      008640 A1 03            [ 1]  182 	cp	a, #0x03
      008642 84               [ 1]  183 	pop	a
      008643 27 06            [ 1]  184 	jreq	00106$
                                    185 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 62: status =3;
      008645 35 03 00 01      [ 1]  186 	mov	_status+0, #0x03
      008649 20 08            [ 2]  187 	jra	00107$
      00864B                        188 00106$:
                                    189 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 66: shift = shift<<1;
      00864B 72 58 00 03      [ 1]  190 	sll	_shift+1
      00864F 72 59 00 02      [ 1]  191 	rlc	_shift+0
      008653                        192 00107$:
                                    193 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 68: if((capValue < IR_ONE_MAX) && (capValue > IR_ONE_MIN))
      008653 0D 03            [ 1]  194 	tnz	(0x03, sp)
      008655 27 1C            [ 1]  195 	jreq	00113$
      008657 4D               [ 1]  196 	tnz	a
      008658 27 19            [ 1]  197 	jreq	00113$
                                    198 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 70: shift|=1;
      00865A CE 00 02         [ 2]  199 	ldw	x, _shift+0
      00865D 54               [ 2]  200 	srlw	x
      00865E 99               [ 1]  201 	scf
      00865F 59               [ 2]  202 	rlcw	x
      008660 CF 00 02         [ 2]  203 	ldw	_shift+0, x
      008663 20 0E            [ 2]  204 	jra	00113$
      008665                        205 00112$:
                                    206 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 76: printf("erlen:%d\r\n",capValue);
      008665 1E 01            [ 2]  207 	ldw	x, (0x01, sp)
      008667 89               [ 2]  208 	pushw	x
      008668 4B C1            [ 1]  209 	push	#<(___str_5+0)
      00866A 4B 80            [ 1]  210 	push	#((___str_5+0) >> 8)
      00866C CD C6 EE         [ 4]  211 	call	_printf
      00866F 5B 04            [ 2]  212 	addw	sp, #4
                                    213 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 77: return;
      008671 20 64            [ 2]  214 	jra	00136$
      008673                        215 00113$:
                                    216 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 80: uint8_t high=(shift&0xff00)>>8;
      008673 CE 00 02         [ 2]  217 	ldw	x, _shift+0
      008676 9E               [ 1]  218 	ld	a, xh
      008677 5F               [ 1]  219 	clrw	x
      008678 97               [ 1]  220 	ld	xl, a
                                    221 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 81: uint8_t low=(int8_t)(shift&0x00ff);
      008679 C6 00 03         [ 1]  222 	ld	a, _shift+1
                                    223 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 85: if(0xff==(low^high))
      00867C 89               [ 2]  224 	pushw	x
      00867D 18 02            [ 1]  225 	xor	a, (2, sp)
      00867F 85               [ 2]  226 	popw	x
      008680 4C               [ 1]  227 	inc	a
      008681 26 18            [ 1]  228 	jrne	00121$
                                    229 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 90: addr = high;
      008683 4F               [ 1]  230 	clr	a
      008684 95               [ 1]  231 	ld	xh, a
                                    232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 87: if(addr == 0)
      008685 90 CE 00 04      [ 2]  233 	ldw	y, _addr+0
      008689 26 0D            [ 1]  234 	jrne	00118$
                                    235 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 90: addr = high;
      00868B CF 00 04         [ 2]  236 	ldw	_addr+0, x
                                    237 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 91: shift = 0;
      00868E 5F               [ 1]  238 	clrw	x
      00868F CF 00 02         [ 2]  239 	ldw	_shift+0, x
                                    240 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 94: status = 2;
      008692 35 02 00 01      [ 1]  241 	mov	_status+0, #0x02
      008696 20 03            [ 2]  242 	jra	00121$
      008698                        243 00118$:
                                    244 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 100: cmd = high;
      008698 CF 00 06         [ 2]  245 	ldw	_cmd+0, x
                                    246 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 101: capValue = 0;
      00869B                        247 00121$:
                                    248 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 105: if((cmd > 0)&&(addr > 0))
      00869B CE 00 06         [ 2]  249 	ldw	x, _cmd+0
      00869E 27 37            [ 1]  250 	jreq	00136$
      0086A0 CE 00 04         [ 2]  251 	ldw	x, _addr+0
      0086A3 27 32            [ 1]  252 	jreq	00136$
                                    253 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 107: printf("addr:0x%02x,cmd:0x%02x\r\n",addr,cmd);
      0086A5 CE 00 06         [ 2]  254 	ldw	x, _cmd+0
      0086A8 89               [ 2]  255 	pushw	x
      0086A9 CE 00 04         [ 2]  256 	ldw	x, _addr+0
      0086AC 89               [ 2]  257 	pushw	x
      0086AD 4B 9A            [ 1]  258 	push	#<(___str_0+0)
      0086AF 4B 80            [ 1]  259 	push	#((___str_0+0) >> 8)
      0086B1 CD C6 EE         [ 4]  260 	call	_printf
      0086B4 5B 06            [ 2]  261 	addw	sp, #6
                                    262 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 108: if(cmd == 0x8c)
      0086B6 CE 00 06         [ 2]  263 	ldw	x, _cmd+0
      0086B9 A3 00 8C         [ 2]  264 	cpw	x, #0x008c
      0086BC 26 05            [ 1]  265 	jrne	00128$
                                    266 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 110: fan_down();
      0086BE 5B 03            [ 2]  267 	addw	sp, #3
      0086C0 CC 86 FD         [ 2]  268 	jp	_fan_down
      0086C3                        269 00128$:
                                    270 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 112: else if(cmd == 0x94)
      0086C3 A3 00 94         [ 2]  271 	cpw	x, #0x0094
      0086C6 26 05            [ 1]  272 	jrne	00125$
                                    273 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 114: fan_up();
      0086C8 5B 03            [ 2]  274 	addw	sp, #3
      0086CA CC 86 E6         [ 2]  275 	jp	_fan_up
      0086CD                        276 00125$:
                                    277 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 116: else if(cmd == 0xec)
      0086CD A3 00 EC         [ 2]  278 	cpw	x, #0x00ec
      0086D0 26 05            [ 1]  279 	jrne	00136$
                                    280 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 118: fan_sw();
      0086D2 5B 03            [ 2]  281 	addw	sp, #3
      0086D4 CC 86 DA         [ 2]  282 	jp	_fan_sw
      0086D7                        283 00136$:
                                    284 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 122: }
      0086D7 5B 03            [ 2]  285 	addw	sp, #3
      0086D9 81               [ 4]  286 	ret
                                    287 	.area CODE
                                    288 	.area CONST
                                    289 	.area CONST
      00809A                        290 ___str_0:
      00809A 61 64 64 72 3A 30 78   291 	.ascii "addr:0x%02x,cmd:0x%02x"
             25 30 32 78 2C 63 6D
             64 3A 30 78 25 30 32
             78
      0080B0 0D                     292 	.db 0x0d
      0080B1 0A                     293 	.db 0x0a
      0080B2 00                     294 	.db 0x00
                                    295 	.area CODE
                                    296 	.area CONST
      0080B3                        297 ___str_2:
      0080B3 2D 6F 76 66 2D         298 	.ascii "-ovf-"
      0080B8 0D                     299 	.db 0x0d
      0080B9 00                     300 	.db 0x00
                                    301 	.area CODE
                                    302 	.area CONST
      0080BA                        303 ___str_4:
      0080BA 2D 63 61 70 2D         304 	.ascii "-cap-"
      0080BF 0D                     305 	.db 0x0d
      0080C0 00                     306 	.db 0x00
                                    307 	.area CODE
                                    308 	.area CONST
      0080C1                        309 ___str_5:
      0080C1 65 72 6C 65 6E 3A 25   310 	.ascii "erlen:%d"
             64
      0080C9 0D                     311 	.db 0x0d
      0080CA 0A                     312 	.db 0x0a
      0080CB 00                     313 	.db 0x00
                                    314 	.area CODE
                                    315 	.area INITIALIZER
                                    316 	.area CABS (ABS)
