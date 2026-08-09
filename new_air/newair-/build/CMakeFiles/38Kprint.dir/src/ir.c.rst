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
                                     11 	.globl _puts
                                     12 	.globl _printf
                                     13 	.globl _TIM3_GetCapture1
                                     14 	.globl _TIM3_ICInit
                                     15 	.globl _cmd
                                     16 	.globl _addr
                                     17 	.globl _shift
                                     18 	.globl _status
                                     19 	.globl _ov_handler
                                     20 	.globl _cap_handler
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
      000001                         25 _status::
      000001                         26 	.ds 1
      000002                         27 _shift::
      000002                         28 	.ds 2
      000004                         29 _addr::
      000004                         30 	.ds 2
      000006                         31 _cmd::
      000006                         32 	.ds 2
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area INITIALIZED
                                     37 ;--------------------------------------------------------
                                     38 ; absolute external ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DABS (ABS)
                                     41 
                                     42 ; default segment ordering for linker
                                     43 	.area HOME
                                     44 	.area GSINIT
                                     45 	.area GSFINAL
                                     46 	.area CONST
                                     47 	.area INITIALIZER
                                     48 	.area CODE
                                     49 
                                     50 ;--------------------------------------------------------
                                     51 ; global & static initialisations
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area GSINIT
                                     55 	.area GSFINAL
                                     56 	.area GSINIT
                                     57 ;--------------------------------------------------------
                                     58 ; Home
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area HOME
                                     62 ;--------------------------------------------------------
                                     63 ; code
                                     64 ;--------------------------------------------------------
                                     65 	.area CODE
                                     66 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 13: void ov_handler()
                                     67 ;	-----------------------------------------
                                     68 ;	 function ov_handler
                                     69 ;	-----------------------------------------
      00855F                         70 _ov_handler:
                                     71 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 16: if(0 != status)
      00855F 72 5D 00 01      [ 1]   72 	tnz	_status+0
      008563 26 01            [ 1]   73 	jrne	00118$
      008565 81               [ 4]   74 	ret
      008566                         75 00118$:
                                     76 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 18: status = 0;
      008566 72 5F 00 01      [ 1]   77 	clr	_status+0
                                     78 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 19: if((cmd > 0)||(addr > 0))
      00856A CE 00 06         [ 2]   79 	ldw	x, _cmd+0
      00856D 26 05            [ 1]   80 	jrne	00101$
      00856F CE 00 04         [ 2]   81 	ldw	x, _addr+0
      008572 27 11            [ 1]   82 	jreq	00102$
      008574                         83 00101$:
                                     84 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 21: printf("addr:0x%02x,cmd:0x%02x\r\n",addr,cmd);
      008574 CE 00 06         [ 2]   85 	ldw	x, _cmd+0
      008577 89               [ 2]   86 	pushw	x
      008578 CE 00 04         [ 2]   87 	ldw	x, _addr+0
      00857B 89               [ 2]   88 	pushw	x
      00857C 4B 34            [ 1]   89 	push	#<(___str_0+0)
      00857E 4B 81            [ 1]   90 	push	#((___str_0+0) >> 8)
      008580 CD B8 0D         [ 4]   91 	call	_printf
      008583 5B 06            [ 2]   92 	addw	sp, #6
      008585                         93 00102$:
                                     94 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 23: printf("-ovf-\r\n");
      008585 4B 4D            [ 1]   95 	push	#<(___str_2+0)
      008587 4B 81            [ 1]   96 	push	#((___str_2+0) >> 8)
      008589 CD B7 CC         [ 4]   97 	call	_puts
      00858C 85               [ 2]   98 	popw	x
                                     99 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 25: }
      00858D 81               [ 4]  100 	ret
                                    101 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 27: void cap_handler()
                                    102 ;	-----------------------------------------
                                    103 ;	 function cap_handler
                                    104 ;	-----------------------------------------
      00858E                        105 _cap_handler:
      00858E 52 03            [ 2]  106 	sub	sp, #3
                                    107 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 29: if(0 == status)
      008590 72 5D 00 01      [ 1]  108 	tnz	_status+0
      008594 26 2A            [ 1]  109 	jrne	00126$
                                    110 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 33: status = 1;
      008596 35 01 00 01      [ 1]  111 	mov	_status+0, #0x01
                                    112 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 34: addr = 0;
      00859A 5F               [ 1]  113 	clrw	x
      00859B CF 00 04         [ 2]  114 	ldw	_addr+0, x
                                    115 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 35: cmd = 0;
      00859E 5F               [ 1]  116 	clrw	x
      00859F CF 00 06         [ 2]  117 	ldw	_cmd+0, x
                                    118 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 36: shift = 0;
      0085A2 5F               [ 1]  119 	clrw	x
      0085A3 CF 00 02         [ 2]  120 	ldw	_shift+0, x
                                    121 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 37: printf("-cap-\r\n");
      0085A6 4B 54            [ 1]  122 	push	#<(___str_4+0)
      0085A8 4B 81            [ 1]  123 	push	#((___str_4+0) >> 8)
      0085AA CD B7 CC         [ 4]  124 	call	_puts
      0085AD 85               [ 2]  125 	popw	x
                                    126 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 38: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI,
      0085AE 4B 00            [ 1]  127 	push	#0x00
      0085B0 4B 00            [ 1]  128 	push	#0x00
      0085B2 4B 01            [ 1]  129 	push	#0x01
      0085B4 4B 00            [ 1]  130 	push	#0x00
      0085B6 4B 00            [ 1]  131 	push	#0x00
      0085B8 CD 9D FE         [ 4]  132 	call	_TIM3_ICInit
      0085BB 5B 05            [ 2]  133 	addw	sp, #5
      0085BD CC 86 75         [ 2]  134 	jp	00128$
      0085C0                        135 00126$:
                                    136 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 43: uint16_t capValue=TIM3_GetCapture1();
      0085C0 CD A3 FE         [ 4]  137 	call	_TIM3_GetCapture1
                                    138 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 45: if(capValue > 2500)
      0085C3 1F 01            [ 2]  139 	ldw	(0x01, sp), x
      0085C5 A3 09 C4         [ 2]  140 	cpw	x, #0x09c4
      0085C8 23 10            [ 2]  141 	jrule	00104$
                                    142 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 47: if(status == 1)
      0085CA C6 00 01         [ 1]  143 	ld	a, _status+0
      0085CD 4A               [ 1]  144 	dec	a
      0085CE 27 03            [ 1]  145 	jreq	00194$
      0085D0 CC 86 75         [ 2]  146 	jp	00128$
      0085D3                        147 00194$:
                                    148 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 49: status = 2;
      0085D3 35 02 00 01      [ 1]  149 	mov	_status+0, #0x02
                                    150 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 51: return;
      0085D7 CC 86 75         [ 2]  151 	jp	00128$
      0085DA                        152 00104$:
                                    153 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 55: if(((capValue < IR_ONE_MAX) && (capValue > IR_ONE_MIN))
      0085DA A3 09 C4         [ 2]  154 	cpw	x, #0x09c4
      0085DD 4F               [ 1]  155 	clr	a
      0085DE 49               [ 1]  156 	rlc	a
      0085DF 6B 03            [ 1]  157 	ld	(0x03, sp), a
      0085E1 A3 07 D0         [ 2]  158 	cpw	x, #0x07d0
      0085E4 23 03            [ 2]  159 	jrule	00195$
      0085E6 A6 01            [ 1]  160 	ld	a, #0x01
      0085E8 21                     161 	.byte 0x21
      0085E9                        162 00195$:
      0085E9 4F               [ 1]  163 	clr	a
      0085EA                        164 00196$:
      0085EA 0D 03            [ 1]  165 	tnz	(0x03, sp)
      0085EC 27 03            [ 1]  166 	jreq	00116$
      0085EE 4D               [ 1]  167 	tnz	a
      0085EF 26 0A            [ 1]  168 	jrne	00111$
      0085F1                        169 00116$:
                                    170 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 56: ||((capValue < IR_ZERO_MAX) && (capValue > IR_ZERO_MIN)))
      0085F1 A3 04 E2         [ 2]  171 	cpw	x, #0x04e2
      0085F4 24 2E            [ 1]  172 	jrnc	00112$
      0085F6 A3 03 E8         [ 2]  173 	cpw	x, #0x03e8
      0085F9 23 29            [ 2]  174 	jrule	00112$
      0085FB                        175 00111$:
                                    176 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 59: if(status != 3)
      0085FB 88               [ 1]  177 	push	a
      0085FC C6 00 01         [ 1]  178 	ld	a, _status+0
      0085FF A1 03            [ 1]  179 	cp	a, #0x03
      008601 84               [ 1]  180 	pop	a
      008602 27 06            [ 1]  181 	jreq	00106$
                                    182 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 61: status =3;
      008604 35 03 00 01      [ 1]  183 	mov	_status+0, #0x03
      008608 20 08            [ 2]  184 	jra	00107$
      00860A                        185 00106$:
                                    186 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 65: shift = shift<<1;
      00860A 72 58 00 03      [ 1]  187 	sll	_shift+1
      00860E 72 59 00 02      [ 1]  188 	rlc	_shift+0
      008612                        189 00107$:
                                    190 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 67: if((capValue < IR_ONE_MAX) && (capValue > IR_ONE_MIN))
      008612 0D 03            [ 1]  191 	tnz	(0x03, sp)
      008614 27 1C            [ 1]  192 	jreq	00113$
      008616 4D               [ 1]  193 	tnz	a
      008617 27 19            [ 1]  194 	jreq	00113$
                                    195 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 69: shift|=1;
      008619 CE 00 02         [ 2]  196 	ldw	x, _shift+0
      00861C 54               [ 2]  197 	srlw	x
      00861D 99               [ 1]  198 	scf
      00861E 59               [ 2]  199 	rlcw	x
      00861F CF 00 02         [ 2]  200 	ldw	_shift+0, x
      008622 20 0E            [ 2]  201 	jra	00113$
      008624                        202 00112$:
                                    203 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 75: printf("erlen:%d\r\n",capValue);
      008624 1E 01            [ 2]  204 	ldw	x, (0x01, sp)
      008626 89               [ 2]  205 	pushw	x
      008627 4B 5B            [ 1]  206 	push	#<(___str_5+0)
      008629 4B 81            [ 1]  207 	push	#((___str_5+0) >> 8)
      00862B CD B8 0D         [ 4]  208 	call	_printf
      00862E 5B 04            [ 2]  209 	addw	sp, #4
                                    210 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 76: return;
      008630 20 43            [ 2]  211 	jra	00128$
      008632                        212 00113$:
                                    213 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 79: uint8_t high=(shift&0xff00)>>8;
      008632 CE 00 02         [ 2]  214 	ldw	x, _shift+0
      008635 9E               [ 1]  215 	ld	a, xh
      008636 5F               [ 1]  216 	clrw	x
      008637 97               [ 1]  217 	ld	xl, a
                                    218 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 80: uint8_t low=(int8_t)(shift&0x00ff);
      008638 C6 00 03         [ 1]  219 	ld	a, _shift+1
                                    220 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 84: if(0xff==(low^high))
      00863B 89               [ 2]  221 	pushw	x
      00863C 18 02            [ 1]  222 	xor	a, (2, sp)
      00863E 85               [ 2]  223 	popw	x
      00863F 4C               [ 1]  224 	inc	a
      008640 26 18            [ 1]  225 	jrne	00121$
                                    226 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 89: addr = high;
      008642 4F               [ 1]  227 	clr	a
      008643 95               [ 1]  228 	ld	xh, a
                                    229 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 86: if(addr == 0)
      008644 90 CE 00 04      [ 2]  230 	ldw	y, _addr+0
      008648 26 0D            [ 1]  231 	jrne	00118$
                                    232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 89: addr = high;
      00864A CF 00 04         [ 2]  233 	ldw	_addr+0, x
                                    234 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 90: shift = 0;
      00864D 5F               [ 1]  235 	clrw	x
      00864E CF 00 02         [ 2]  236 	ldw	_shift+0, x
                                    237 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 93: status = 2;
      008651 35 02 00 01      [ 1]  238 	mov	_status+0, #0x02
      008655 20 03            [ 2]  239 	jra	00121$
      008657                        240 00118$:
                                    241 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 99: cmd = high;
      008657 CF 00 06         [ 2]  242 	ldw	_cmd+0, x
                                    243 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 100: capValue = 0;
      00865A                        244 00121$:
                                    245 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 104: if((cmd > 0)&&(addr > 0))
      00865A CE 00 06         [ 2]  246 	ldw	x, _cmd+0
      00865D 27 16            [ 1]  247 	jreq	00128$
      00865F CE 00 04         [ 2]  248 	ldw	x, _addr+0
      008662 27 11            [ 1]  249 	jreq	00128$
                                    250 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 106: printf("addr:0x%02x,cmd:0x%02x\r\n",addr,cmd);
      008664 CE 00 06         [ 2]  251 	ldw	x, _cmd+0
      008667 89               [ 2]  252 	pushw	x
      008668 CE 00 04         [ 2]  253 	ldw	x, _addr+0
      00866B 89               [ 2]  254 	pushw	x
      00866C 4B 34            [ 1]  255 	push	#<(___str_0+0)
      00866E 4B 81            [ 1]  256 	push	#((___str_0+0) >> 8)
      008670 CD B8 0D         [ 4]  257 	call	_printf
      008673 5B 06            [ 2]  258 	addw	sp, #6
      008675                        259 00128$:
                                    260 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/ir.c: 109: }
      008675 5B 03            [ 2]  261 	addw	sp, #3
      008677 81               [ 4]  262 	ret
                                    263 	.area CODE
                                    264 	.area CONST
                                    265 	.area CONST
      008134                        266 ___str_0:
      008134 61 64 64 72 3A 30 78   267 	.ascii "addr:0x%02x,cmd:0x%02x"
             25 30 32 78 2C 63 6D
             64 3A 30 78 25 30 32
             78
      00814A 0D                     268 	.db 0x0d
      00814B 0A                     269 	.db 0x0a
      00814C 00                     270 	.db 0x00
                                    271 	.area CODE
                                    272 	.area CONST
      00814D                        273 ___str_2:
      00814D 2D 6F 76 66 2D         274 	.ascii "-ovf-"
      008152 0D                     275 	.db 0x0d
      008153 00                     276 	.db 0x00
                                    277 	.area CODE
                                    278 	.area CONST
      008154                        279 ___str_4:
      008154 2D 63 61 70 2D         280 	.ascii "-cap-"
      008159 0D                     281 	.db 0x0d
      00815A 00                     282 	.db 0x00
                                    283 	.area CODE
                                    284 	.area CONST
      00815B                        285 ___str_5:
      00815B 65 72 6C 65 6E 3A 25   286 	.ascii "erlen:%d"
             64
      008163 0D                     287 	.db 0x0d
      008164 0A                     288 	.db 0x0a
      008165 00                     289 	.db 0x00
                                    290 	.area CODE
                                    291 	.area INITIALIZER
                                    292 	.area CABS (ABS)
