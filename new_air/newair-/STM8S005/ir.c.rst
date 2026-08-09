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
                                     69 ;	./src/ir.c: 14: void ov_handler()
                                     70 ;	-----------------------------------------
                                     71 ;	 function ov_handler
                                     72 ;	-----------------------------------------
      0084F5                         73 _ov_handler:
                                     74 ;	./src/ir.c: 17: if(0 != status)
      0084F5 72 5D 00 01      [ 1]   75 	tnz	_status+0
      0084F9 26 01            [ 1]   76 	jrne	00118$
      0084FB 81               [ 4]   77 	ret
      0084FC                         78 00118$:
                                     79 ;	./src/ir.c: 19: status = 0;
      0084FC 72 5F 00 01      [ 1]   80 	clr	_status+0
                                     81 ;	./src/ir.c: 20: if((cmd > 0)||(addr > 0))
      008500 CE 00 06         [ 2]   82 	ldw	x, _cmd+0
      008503 26 05            [ 1]   83 	jrne	00101$
      008505 CE 00 04         [ 2]   84 	ldw	x, _addr+0
      008508 27 11            [ 1]   85 	jreq	00102$
      00850A                         86 00101$:
                                     87 ;	./src/ir.c: 22: printf("addr:0x%02x,cmd:0x%02x\r\n",addr,cmd);
      00850A CE 00 06         [ 2]   88 	ldw	x, _cmd+0
      00850D 89               [ 2]   89 	pushw	x
      00850E CE 00 04         [ 2]   90 	ldw	x, _addr+0
      008511 89               [ 2]   91 	pushw	x
      008512 4B 9C            [ 1]   92 	push	#<(___str_0+0)
      008514 4B 80            [ 1]   93 	push	#((___str_0+0) >> 8)
      008516 CD CD 39         [ 4]   94 	call	_printf
      008519 5B 06            [ 2]   95 	addw	sp, #6
      00851B                         96 00102$:
                                     97 ;	./src/ir.c: 24: printf("-ovf-\r\n");
      00851B 4B B5            [ 1]   98 	push	#<(___str_2+0)
      00851D 4B 80            [ 1]   99 	push	#((___str_2+0) >> 8)
      00851F CD CC F8         [ 4]  100 	call	_puts
      008522 85               [ 2]  101 	popw	x
                                    102 ;	./src/ir.c: 26: }
      008523 81               [ 4]  103 	ret
                                    104 ;	./src/ir.c: 28: void cap_handler()
                                    105 ;	-----------------------------------------
                                    106 ;	 function cap_handler
                                    107 ;	-----------------------------------------
      008524                        108 _cap_handler:
      008524 52 03            [ 2]  109 	sub	sp, #3
                                    110 ;	./src/ir.c: 30: if(0 == status)
      008526 72 5D 00 01      [ 1]  111 	tnz	_status+0
      00852A 26 2A            [ 1]  112 	jrne	00134$
                                    113 ;	./src/ir.c: 34: status = 1;
      00852C 35 01 00 01      [ 1]  114 	mov	_status+0, #0x01
                                    115 ;	./src/ir.c: 35: addr = 0;
      008530 5F               [ 1]  116 	clrw	x
      008531 CF 00 04         [ 2]  117 	ldw	_addr+0, x
                                    118 ;	./src/ir.c: 36: cmd = 0;
      008534 5F               [ 1]  119 	clrw	x
      008535 CF 00 06         [ 2]  120 	ldw	_cmd+0, x
                                    121 ;	./src/ir.c: 37: shift = 0;
      008538 5F               [ 1]  122 	clrw	x
      008539 CF 00 02         [ 2]  123 	ldw	_shift+0, x
                                    124 ;	./src/ir.c: 38: printf("-cap-\r\n");
      00853C 4B BC            [ 1]  125 	push	#<(___str_4+0)
      00853E 4B 80            [ 1]  126 	push	#((___str_4+0) >> 8)
      008540 CD CC F8         [ 4]  127 	call	_puts
      008543 85               [ 2]  128 	popw	x
                                    129 ;	./src/ir.c: 39: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI,
      008544 4B 00            [ 1]  130 	push	#0x00
      008546 4B 00            [ 1]  131 	push	#0x00
      008548 4B 01            [ 1]  132 	push	#0x01
      00854A 4B 00            [ 1]  133 	push	#0x00
      00854C 4B 00            [ 1]  134 	push	#0x00
      00854E CD B9 D3         [ 4]  135 	call	_TIM3_ICInit
      008551 5B 05            [ 2]  136 	addw	sp, #5
      008553 CC 86 2C         [ 2]  137 	jp	00136$
      008556                        138 00134$:
                                    139 ;	./src/ir.c: 44: uint16_t capValue=TIM3_GetCapture1();
      008556 CD BF D3         [ 4]  140 	call	_TIM3_GetCapture1
                                    141 ;	./src/ir.c: 46: if(capValue > 2500)
      008559 1F 01            [ 2]  142 	ldw	(0x01, sp), x
      00855B A3 09 C4         [ 2]  143 	cpw	x, #0x09c4
      00855E 23 10            [ 2]  144 	jrule	00104$
                                    145 ;	./src/ir.c: 48: if(status == 1)
      008560 C6 00 01         [ 1]  146 	ld	a, _status+0
      008563 4A               [ 1]  147 	dec	a
      008564 27 03            [ 1]  148 	jreq	00217$
      008566 CC 86 2C         [ 2]  149 	jp	00136$
      008569                        150 00217$:
                                    151 ;	./src/ir.c: 50: status = 2;
      008569 35 02 00 01      [ 1]  152 	mov	_status+0, #0x02
                                    153 ;	./src/ir.c: 52: return;
      00856D CC 86 2C         [ 2]  154 	jp	00136$
      008570                        155 00104$:
                                    156 ;	./src/ir.c: 56: if(((capValue < IR_ONE_MAX) && (capValue > IR_ONE_MIN))
      008570 A3 09 C4         [ 2]  157 	cpw	x, #0x09c4
      008573 4F               [ 1]  158 	clr	a
      008574 49               [ 1]  159 	rlc	a
      008575 6B 03            [ 1]  160 	ld	(0x03, sp), a
      008577 A3 07 D0         [ 2]  161 	cpw	x, #0x07d0
      00857A 23 03            [ 2]  162 	jrule	00218$
      00857C A6 01            [ 1]  163 	ld	a, #0x01
      00857E 21                     164 	.byte 0x21
      00857F                        165 00218$:
      00857F 4F               [ 1]  166 	clr	a
      008580                        167 00219$:
      008580 0D 03            [ 1]  168 	tnz	(0x03, sp)
      008582 27 03            [ 1]  169 	jreq	00116$
      008584 4D               [ 1]  170 	tnz	a
      008585 26 0A            [ 1]  171 	jrne	00111$
      008587                        172 00116$:
                                    173 ;	./src/ir.c: 57: ||((capValue < IR_ZERO_MAX) && (capValue > IR_ZERO_MIN)))
      008587 A3 04 E2         [ 2]  174 	cpw	x, #0x04e2
      00858A 24 2E            [ 1]  175 	jrnc	00112$
      00858C A3 03 E8         [ 2]  176 	cpw	x, #0x03e8
      00858F 23 29            [ 2]  177 	jrule	00112$
      008591                        178 00111$:
                                    179 ;	./src/ir.c: 60: if(status != 3)
      008591 88               [ 1]  180 	push	a
      008592 C6 00 01         [ 1]  181 	ld	a, _status+0
      008595 A1 03            [ 1]  182 	cp	a, #0x03
      008597 84               [ 1]  183 	pop	a
      008598 27 06            [ 1]  184 	jreq	00106$
                                    185 ;	./src/ir.c: 62: status =3;
      00859A 35 03 00 01      [ 1]  186 	mov	_status+0, #0x03
      00859E 20 08            [ 2]  187 	jra	00107$
      0085A0                        188 00106$:
                                    189 ;	./src/ir.c: 66: shift = shift<<1;
      0085A0 72 58 00 03      [ 1]  190 	sll	_shift+1
      0085A4 72 59 00 02      [ 1]  191 	rlc	_shift+0
      0085A8                        192 00107$:
                                    193 ;	./src/ir.c: 68: if((capValue < IR_ONE_MAX) && (capValue > IR_ONE_MIN))
      0085A8 0D 03            [ 1]  194 	tnz	(0x03, sp)
      0085AA 27 1C            [ 1]  195 	jreq	00113$
      0085AC 4D               [ 1]  196 	tnz	a
      0085AD 27 19            [ 1]  197 	jreq	00113$
                                    198 ;	./src/ir.c: 70: shift|=1;
      0085AF CE 00 02         [ 2]  199 	ldw	x, _shift+0
      0085B2 54               [ 2]  200 	srlw	x
      0085B3 99               [ 1]  201 	scf
      0085B4 59               [ 2]  202 	rlcw	x
      0085B5 CF 00 02         [ 2]  203 	ldw	_shift+0, x
      0085B8 20 0E            [ 2]  204 	jra	00113$
      0085BA                        205 00112$:
                                    206 ;	./src/ir.c: 76: printf("erlen:%d\r\n",capValue);
      0085BA 1E 01            [ 2]  207 	ldw	x, (0x01, sp)
      0085BC 89               [ 2]  208 	pushw	x
      0085BD 4B C3            [ 1]  209 	push	#<(___str_5+0)
      0085BF 4B 80            [ 1]  210 	push	#((___str_5+0) >> 8)
      0085C1 CD CD 39         [ 4]  211 	call	_printf
      0085C4 5B 04            [ 2]  212 	addw	sp, #4
                                    213 ;	./src/ir.c: 77: return;
      0085C6 20 64            [ 2]  214 	jra	00136$
      0085C8                        215 00113$:
                                    216 ;	./src/ir.c: 80: uint8_t high=(shift&0xff00)>>8;
      0085C8 CE 00 02         [ 2]  217 	ldw	x, _shift+0
      0085CB 9E               [ 1]  218 	ld	a, xh
      0085CC 5F               [ 1]  219 	clrw	x
      0085CD 97               [ 1]  220 	ld	xl, a
                                    221 ;	./src/ir.c: 81: uint8_t low=(int8_t)(shift&0x00ff);
      0085CE C6 00 03         [ 1]  222 	ld	a, _shift+1
                                    223 ;	./src/ir.c: 85: if(0xff==(low^high))
      0085D1 89               [ 2]  224 	pushw	x
      0085D2 18 02            [ 1]  225 	xor	a, (2, sp)
      0085D4 85               [ 2]  226 	popw	x
      0085D5 4C               [ 1]  227 	inc	a
      0085D6 26 18            [ 1]  228 	jrne	00121$
                                    229 ;	./src/ir.c: 90: addr = high;
      0085D8 4F               [ 1]  230 	clr	a
      0085D9 95               [ 1]  231 	ld	xh, a
                                    232 ;	./src/ir.c: 87: if(addr == 0)
      0085DA 90 CE 00 04      [ 2]  233 	ldw	y, _addr+0
      0085DE 26 0D            [ 1]  234 	jrne	00118$
                                    235 ;	./src/ir.c: 90: addr = high;
      0085E0 CF 00 04         [ 2]  236 	ldw	_addr+0, x
                                    237 ;	./src/ir.c: 91: shift = 0;
      0085E3 5F               [ 1]  238 	clrw	x
      0085E4 CF 00 02         [ 2]  239 	ldw	_shift+0, x
                                    240 ;	./src/ir.c: 94: status = 2;
      0085E7 35 02 00 01      [ 1]  241 	mov	_status+0, #0x02
      0085EB 20 03            [ 2]  242 	jra	00121$
      0085ED                        243 00118$:
                                    244 ;	./src/ir.c: 100: cmd = high;
      0085ED CF 00 06         [ 2]  245 	ldw	_cmd+0, x
                                    246 ;	./src/ir.c: 101: capValue = 0;
      0085F0                        247 00121$:
                                    248 ;	./src/ir.c: 105: if((cmd > 0)&&(addr > 0))
      0085F0 CE 00 06         [ 2]  249 	ldw	x, _cmd+0
      0085F3 27 37            [ 1]  250 	jreq	00136$
      0085F5 CE 00 04         [ 2]  251 	ldw	x, _addr+0
      0085F8 27 32            [ 1]  252 	jreq	00136$
                                    253 ;	./src/ir.c: 107: printf("addr:0x%02x,cmd:0x%02x\r\n",addr,cmd);
      0085FA CE 00 06         [ 2]  254 	ldw	x, _cmd+0
      0085FD 89               [ 2]  255 	pushw	x
      0085FE CE 00 04         [ 2]  256 	ldw	x, _addr+0
      008601 89               [ 2]  257 	pushw	x
      008602 4B 9C            [ 1]  258 	push	#<(___str_0+0)
      008604 4B 80            [ 1]  259 	push	#((___str_0+0) >> 8)
      008606 CD CD 39         [ 4]  260 	call	_printf
      008609 5B 06            [ 2]  261 	addw	sp, #6
                                    262 ;	./src/ir.c: 108: if(cmd == 0x8c)
      00860B CE 00 06         [ 2]  263 	ldw	x, _cmd+0
      00860E A3 00 8C         [ 2]  264 	cpw	x, #0x008c
      008611 26 05            [ 1]  265 	jrne	00128$
                                    266 ;	./src/ir.c: 110: fan_down();
      008613 5B 03            [ 2]  267 	addw	sp, #3
      008615 CC 84 93         [ 2]  268 	jp	_fan_down
      008618                        269 00128$:
                                    270 ;	./src/ir.c: 112: else if(cmd == 0x94)
      008618 A3 00 94         [ 2]  271 	cpw	x, #0x0094
      00861B 26 05            [ 1]  272 	jrne	00125$
                                    273 ;	./src/ir.c: 114: fan_up();
      00861D 5B 03            [ 2]  274 	addw	sp, #3
      00861F CC 84 58         [ 2]  275 	jp	_fan_up
      008622                        276 00125$:
                                    277 ;	./src/ir.c: 116: else if(cmd == 0xec)
      008622 A3 00 EC         [ 2]  278 	cpw	x, #0x00ec
      008625 26 05            [ 1]  279 	jrne	00136$
                                    280 ;	./src/ir.c: 118: fan_sw();
      008627 5B 03            [ 2]  281 	addw	sp, #3
      008629 CC 84 2C         [ 2]  282 	jp	_fan_sw
      00862C                        283 00136$:
                                    284 ;	./src/ir.c: 122: }
      00862C 5B 03            [ 2]  285 	addw	sp, #3
      00862E 81               [ 4]  286 	ret
                                    287 	.area CODE
                                    288 	.area CONST
                                    289 	.area CONST
      00809C                        290 ___str_0:
      00809C 61 64 64 72 3A 30 78   291 	.ascii "addr:0x%02x,cmd:0x%02x"
             25 30 32 78 2C 63 6D
             64 3A 30 78 25 30 32
             78
      0080B2 0D                     292 	.db 0x0d
      0080B3 0A                     293 	.db 0x0a
      0080B4 00                     294 	.db 0x00
                                    295 	.area CODE
                                    296 	.area CONST
      0080B5                        297 ___str_2:
      0080B5 2D 6F 76 66 2D         298 	.ascii "-ovf-"
      0080BA 0D                     299 	.db 0x0d
      0080BB 00                     300 	.db 0x00
                                    301 	.area CODE
                                    302 	.area CONST
      0080BC                        303 ___str_4:
      0080BC 2D 63 61 70 2D         304 	.ascii "-cap-"
      0080C1 0D                     305 	.db 0x0d
      0080C2 00                     306 	.db 0x00
                                    307 	.area CODE
                                    308 	.area CONST
      0080C3                        309 ___str_5:
      0080C3 65 72 6C 65 6E 3A 25   310 	.ascii "erlen:%d"
             64
      0080CB 0D                     311 	.db 0x0d
      0080CC 0A                     312 	.db 0x0a
      0080CD 00                     313 	.db 0x00
                                    314 	.area CODE
                                    315 	.area INITIALIZER
                                    316 	.area CABS (ABS)
