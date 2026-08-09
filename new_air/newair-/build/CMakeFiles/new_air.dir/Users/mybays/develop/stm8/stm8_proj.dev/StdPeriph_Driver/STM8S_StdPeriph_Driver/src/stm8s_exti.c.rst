                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_exti
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _EXTI_DeInit
                                     13 	.globl _EXTI_SetExtIntSensitivity
                                     14 	.globl _EXTI_SetTLISensitivity
                                     15 	.globl _EXTI_GetExtIntSensitivity
                                     16 	.globl _EXTI_GetTLISensitivity
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area DATA
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area INITIALIZED
                                     25 ;--------------------------------------------------------
                                     26 ; absolute external ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DABS (ABS)
                                     29 
                                     30 ; default segment ordering for linker
                                     31 	.area HOME
                                     32 	.area GSINIT
                                     33 	.area GSFINAL
                                     34 	.area CONST
                                     35 	.area INITIALIZER
                                     36 	.area CODE
                                     37 
                                     38 ;--------------------------------------------------------
                                     39 ; global & static initialisations
                                     40 ;--------------------------------------------------------
                                     41 	.area HOME
                                     42 	.area GSINIT
                                     43 	.area GSFINAL
                                     44 	.area GSINIT
                                     45 ;--------------------------------------------------------
                                     46 ; Home
                                     47 ;--------------------------------------------------------
                                     48 	.area HOME
                                     49 	.area HOME
                                     50 ;--------------------------------------------------------
                                     51 ; code
                                     52 ;--------------------------------------------------------
                                     53 	.area CODE
                                     54 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 53: void EXTI_DeInit(void)
                                     55 ;	-----------------------------------------
                                     56 ;	 function EXTI_DeInit
                                     57 ;	-----------------------------------------
      00B562                         58 _EXTI_DeInit:
                                     59 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 55: EXTI->CR1 = EXTI_CR1_RESET_VALUE;
      00B562 35 00 50 A0      [ 1]   60 	mov	0x50a0+0, #0x00
                                     61 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 56: EXTI->CR2 = EXTI_CR2_RESET_VALUE;
      00B566 35 00 50 A1      [ 1]   62 	mov	0x50a1+0, #0x00
                                     63 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 57: }
      00B56A 81               [ 4]   64 	ret
                                     65 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 70: void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
                                     66 ;	-----------------------------------------
                                     67 ;	 function EXTI_SetExtIntSensitivity
                                     68 ;	-----------------------------------------
      00B56B                         69 _EXTI_SetExtIntSensitivity:
      00B56B 88               [ 1]   70 	push	a
                                     71 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 73: assert_param(IS_EXTI_PORT_OK(Port));
      00B56C 0D 04            [ 1]   72 	tnz	(0x04, sp)
      00B56E 27 26            [ 1]   73 	jreq	00111$
      00B570 7B 04            [ 1]   74 	ld	a, (0x04, sp)
      00B572 4A               [ 1]   75 	dec	a
      00B573 27 21            [ 1]   76 	jreq	00111$
      00B575 7B 04            [ 1]   77 	ld	a, (0x04, sp)
      00B577 A1 02            [ 1]   78 	cp	a, #0x02
      00B579 27 1B            [ 1]   79 	jreq	00111$
      00B57B 7B 04            [ 1]   80 	ld	a, (0x04, sp)
      00B57D A1 03            [ 1]   81 	cp	a, #0x03
      00B57F 27 15            [ 1]   82 	jreq	00111$
      00B581 7B 04            [ 1]   83 	ld	a, (0x04, sp)
      00B583 A1 04            [ 1]   84 	cp	a, #0x04
      00B585 27 0F            [ 1]   85 	jreq	00111$
      00B587 4B 49            [ 1]   86 	push	#0x49
      00B589 5F               [ 1]   87 	clrw	x
      00B58A 89               [ 2]   88 	pushw	x
      00B58B 4B 00            [ 1]   89 	push	#0x00
      00B58D 4B B6            [ 1]   90 	push	#<(___str_0+0)
      00B58F 4B 82            [ 1]   91 	push	#((___str_0+0) >> 8)
      00B591 CD 85 9D         [ 4]   92 	call	_assert_failed
      00B594 5B 06            [ 2]   93 	addw	sp, #6
      00B596                         94 00111$:
                                     95 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 74: assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
      00B596 0D 05            [ 1]   96 	tnz	(0x05, sp)
      00B598 27 20            [ 1]   97 	jreq	00125$
      00B59A 7B 05            [ 1]   98 	ld	a, (0x05, sp)
      00B59C 4A               [ 1]   99 	dec	a
      00B59D 27 1B            [ 1]  100 	jreq	00125$
      00B59F 7B 05            [ 1]  101 	ld	a, (0x05, sp)
      00B5A1 A1 02            [ 1]  102 	cp	a, #0x02
      00B5A3 27 15            [ 1]  103 	jreq	00125$
      00B5A5 7B 05            [ 1]  104 	ld	a, (0x05, sp)
      00B5A7 A1 03            [ 1]  105 	cp	a, #0x03
      00B5A9 27 0F            [ 1]  106 	jreq	00125$
      00B5AB 4B 4A            [ 1]  107 	push	#0x4a
      00B5AD 5F               [ 1]  108 	clrw	x
      00B5AE 89               [ 2]  109 	pushw	x
      00B5AF 4B 00            [ 1]  110 	push	#0x00
      00B5B1 4B B6            [ 1]  111 	push	#<(___str_0+0)
      00B5B3 4B 82            [ 1]  112 	push	#((___str_0+0) >> 8)
      00B5B5 CD 85 9D         [ 4]  113 	call	_assert_failed
      00B5B8 5B 06            [ 2]  114 	addw	sp, #6
      00B5BA                        115 00125$:
                                    116 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 77: switch (Port)
      00B5BA 7B 04            [ 1]  117 	ld	a, (0x04, sp)
      00B5BC A1 04            [ 1]  118 	cp	a, #0x04
      00B5BE 23 03            [ 2]  119 	jrule	00208$
      00B5C0 CC B6 47         [ 2]  120 	jp	00108$
      00B5C3                        121 00208$:
                                    122 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
      00B5C3 7B 05            [ 1]  123 	ld	a, (0x05, sp)
      00B5C5 90 97            [ 1]  124 	ld	yl, a
                                    125 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 77: switch (Port)
      00B5C7 5F               [ 1]  126 	clrw	x
      00B5C8 7B 04            [ 1]  127 	ld	a, (0x04, sp)
      00B5CA 97               [ 1]  128 	ld	xl, a
      00B5CB 58               [ 2]  129 	sllw	x
      00B5CC DE B5 D0         [ 2]  130 	ldw	x, (#00209$, x)
      00B5CF FC               [ 2]  131 	jp	(x)
      00B5D0                        132 00209$:
      00B5D0 B5 DA                  133 	.dw	#00101$
      00B5D2 B5 EC                  134 	.dw	#00102$
      00B5D4 B6 03                  135 	.dw	#00103$
      00B5D6 B6 1C                  136 	.dw	#00104$
      00B5D8 B6 37                  137 	.dw	#00105$
                                    138 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 79: case EXTI_PORT_GPIOA:
      00B5DA                        139 00101$:
                                    140 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 80: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
      00B5DA C6 50 A0         [ 1]  141 	ld	a, 0x50a0
      00B5DD A4 FC            [ 1]  142 	and	a, #0xfc
      00B5DF C7 50 A0         [ 1]  143 	ld	0x50a0, a
                                    144 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 81: EXTI->CR1 |= (uint8_t)(SensitivityValue);
      00B5E2 C6 50 A0         [ 1]  145 	ld	a, 0x50a0
      00B5E5 1A 05            [ 1]  146 	or	a, (0x05, sp)
      00B5E7 C7 50 A0         [ 1]  147 	ld	0x50a0, a
                                    148 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 82: break;
      00B5EA 20 5B            [ 2]  149 	jra	00108$
                                    150 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 83: case EXTI_PORT_GPIOB:
      00B5EC                        151 00102$:
                                    152 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 84: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
      00B5EC C6 50 A0         [ 1]  153 	ld	a, 0x50a0
      00B5EF A4 F3            [ 1]  154 	and	a, #0xf3
      00B5F1 C7 50 A0         [ 1]  155 	ld	0x50a0, a
                                    156 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
      00B5F4 C6 50 A0         [ 1]  157 	ld	a, 0x50a0
      00B5F7 93               [ 1]  158 	ldw	x, y
      00B5F8 58               [ 2]  159 	sllw	x
      00B5F9 58               [ 2]  160 	sllw	x
      00B5FA 89               [ 2]  161 	pushw	x
      00B5FB 1A 02            [ 1]  162 	or	a, (2, sp)
      00B5FD 85               [ 2]  163 	popw	x
      00B5FE C7 50 A0         [ 1]  164 	ld	0x50a0, a
                                    165 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 86: break;
      00B601 20 44            [ 2]  166 	jra	00108$
                                    167 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 87: case EXTI_PORT_GPIOC:
      00B603                        168 00103$:
                                    169 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 88: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
      00B603 C6 50 A0         [ 1]  170 	ld	a, 0x50a0
      00B606 A4 CF            [ 1]  171 	and	a, #0xcf
      00B608 C7 50 A0         [ 1]  172 	ld	0x50a0, a
                                    173 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 89: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
      00B60B C6 50 A0         [ 1]  174 	ld	a, 0x50a0
      00B60E 6B 01            [ 1]  175 	ld	(0x01, sp), a
      00B610 90 9F            [ 1]  176 	ld	a, yl
      00B612 4E               [ 1]  177 	swap	a
      00B613 A4 F0            [ 1]  178 	and	a, #0xf0
      00B615 1A 01            [ 1]  179 	or	a, (0x01, sp)
      00B617 C7 50 A0         [ 1]  180 	ld	0x50a0, a
                                    181 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 90: break;
      00B61A 20 2B            [ 2]  182 	jra	00108$
                                    183 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 91: case EXTI_PORT_GPIOD:
      00B61C                        184 00104$:
                                    185 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 92: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
      00B61C C6 50 A0         [ 1]  186 	ld	a, 0x50a0
      00B61F A4 3F            [ 1]  187 	and	a, #0x3f
      00B621 C7 50 A0         [ 1]  188 	ld	0x50a0, a
                                    189 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 93: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
      00B624 C6 50 A0         [ 1]  190 	ld	a, 0x50a0
      00B627 6B 01            [ 1]  191 	ld	(0x01, sp), a
      00B629 90 9F            [ 1]  192 	ld	a, yl
      00B62B 4E               [ 1]  193 	swap	a
      00B62C A4 F0            [ 1]  194 	and	a, #0xf0
      00B62E 48               [ 1]  195 	sll	a
      00B62F 48               [ 1]  196 	sll	a
      00B630 1A 01            [ 1]  197 	or	a, (0x01, sp)
      00B632 C7 50 A0         [ 1]  198 	ld	0x50a0, a
                                    199 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 94: break;
      00B635 20 10            [ 2]  200 	jra	00108$
                                    201 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 95: case EXTI_PORT_GPIOE:
      00B637                        202 00105$:
                                    203 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 96: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
      00B637 C6 50 A1         [ 1]  204 	ld	a, 0x50a1
      00B63A A4 FC            [ 1]  205 	and	a, #0xfc
      00B63C C7 50 A1         [ 1]  206 	ld	0x50a1, a
                                    207 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 97: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      00B63F C6 50 A1         [ 1]  208 	ld	a, 0x50a1
      00B642 1A 05            [ 1]  209 	or	a, (0x05, sp)
      00B644 C7 50 A1         [ 1]  210 	ld	0x50a1, a
                                    211 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 101: }
      00B647                        212 00108$:
                                    213 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 102: }
      00B647 84               [ 1]  214 	pop	a
      00B648 81               [ 4]  215 	ret
                                    216 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 111: void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
                                    217 ;	-----------------------------------------
                                    218 ;	 function EXTI_SetTLISensitivity
                                    219 ;	-----------------------------------------
      00B649                        220 _EXTI_SetTLISensitivity:
                                    221 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 114: assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
      00B649 0D 03            [ 1]  222 	tnz	(0x03, sp)
      00B64B 27 15            [ 1]  223 	jreq	00104$
      00B64D 7B 03            [ 1]  224 	ld	a, (0x03, sp)
      00B64F A1 04            [ 1]  225 	cp	a, #0x04
      00B651 27 0F            [ 1]  226 	jreq	00104$
      00B653 4B 72            [ 1]  227 	push	#0x72
      00B655 5F               [ 1]  228 	clrw	x
      00B656 89               [ 2]  229 	pushw	x
      00B657 4B 00            [ 1]  230 	push	#0x00
      00B659 4B B6            [ 1]  231 	push	#<(___str_0+0)
      00B65B 4B 82            [ 1]  232 	push	#((___str_0+0) >> 8)
      00B65D CD 85 9D         [ 4]  233 	call	_assert_failed
      00B660 5B 06            [ 2]  234 	addw	sp, #6
      00B662                        235 00104$:
                                    236 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 117: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
      00B662 C6 50 A1         [ 1]  237 	ld	a, 0x50a1
      00B665 A4 FB            [ 1]  238 	and	a, #0xfb
      00B667 C7 50 A1         [ 1]  239 	ld	0x50a1, a
                                    240 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 118: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      00B66A C6 50 A1         [ 1]  241 	ld	a, 0x50a1
      00B66D 1A 03            [ 1]  242 	or	a, (0x03, sp)
      00B66F C7 50 A1         [ 1]  243 	ld	0x50a1, a
                                    244 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 119: }
      00B672 81               [ 4]  245 	ret
                                    246 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 126: EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
                                    247 ;	-----------------------------------------
                                    248 ;	 function EXTI_GetExtIntSensitivity
                                    249 ;	-----------------------------------------
      00B673                        250 _EXTI_GetExtIntSensitivity:
                                    251 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 128: uint8_t value = 0;
      00B673 4F               [ 1]  252 	clr	a
                                    253 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 131: assert_param(IS_EXTI_PORT_OK(Port));
      00B674 0D 03            [ 1]  254 	tnz	(0x03, sp)
      00B676 27 30            [ 1]  255 	jreq	00111$
      00B678 88               [ 1]  256 	push	a
      00B679 7B 04            [ 1]  257 	ld	a, (0x04, sp)
      00B67B 4A               [ 1]  258 	dec	a
      00B67C 84               [ 1]  259 	pop	a
      00B67D 27 29            [ 1]  260 	jreq	00111$
      00B67F 88               [ 1]  261 	push	a
      00B680 7B 04            [ 1]  262 	ld	a, (0x04, sp)
      00B682 A1 02            [ 1]  263 	cp	a, #0x02
      00B684 84               [ 1]  264 	pop	a
      00B685 27 21            [ 1]  265 	jreq	00111$
      00B687 88               [ 1]  266 	push	a
      00B688 7B 04            [ 1]  267 	ld	a, (0x04, sp)
      00B68A A1 03            [ 1]  268 	cp	a, #0x03
      00B68C 84               [ 1]  269 	pop	a
      00B68D 27 19            [ 1]  270 	jreq	00111$
      00B68F 88               [ 1]  271 	push	a
      00B690 7B 04            [ 1]  272 	ld	a, (0x04, sp)
      00B692 A1 04            [ 1]  273 	cp	a, #0x04
      00B694 84               [ 1]  274 	pop	a
      00B695 27 11            [ 1]  275 	jreq	00111$
      00B697 88               [ 1]  276 	push	a
      00B698 4B 83            [ 1]  277 	push	#0x83
      00B69A 5F               [ 1]  278 	clrw	x
      00B69B 89               [ 2]  279 	pushw	x
      00B69C 4B 00            [ 1]  280 	push	#0x00
      00B69E 4B B6            [ 1]  281 	push	#<(___str_0+0)
      00B6A0 4B 82            [ 1]  282 	push	#((___str_0+0) >> 8)
      00B6A2 CD 85 9D         [ 4]  283 	call	_assert_failed
      00B6A5 5B 06            [ 2]  284 	addw	sp, #6
      00B6A7 84               [ 1]  285 	pop	a
      00B6A8                        286 00111$:
                                    287 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 133: switch (Port)
      00B6A8 88               [ 1]  288 	push	a
      00B6A9 7B 04            [ 1]  289 	ld	a, (0x04, sp)
      00B6AB A1 04            [ 1]  290 	cp	a, #0x04
      00B6AD 84               [ 1]  291 	pop	a
      00B6AE 23 01            [ 2]  292 	jrule	00167$
      00B6B0 81               [ 4]  293 	ret
      00B6B1                        294 00167$:
      00B6B1 5F               [ 1]  295 	clrw	x
      00B6B2 7B 03            [ 1]  296 	ld	a, (0x03, sp)
      00B6B4 97               [ 1]  297 	ld	xl, a
      00B6B5 58               [ 2]  298 	sllw	x
      00B6B6 DE B6 BA         [ 2]  299 	ldw	x, (#00168$, x)
      00B6B9 FC               [ 2]  300 	jp	(x)
      00B6BA                        301 00168$:
      00B6BA B6 C4                  302 	.dw	#00101$
      00B6BC B6 CA                  303 	.dw	#00102$
      00B6BE B6 D2                  304 	.dw	#00103$
      00B6C0 B6 DB                  305 	.dw	#00104$
      00B6C2 B6 E6                  306 	.dw	#00105$
                                    307 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 135: case EXTI_PORT_GPIOA:
      00B6C4                        308 00101$:
                                    309 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 136: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
      00B6C4 C6 50 A0         [ 1]  310 	ld	a, 0x50a0
      00B6C7 A4 03            [ 1]  311 	and	a, #0x03
                                    312 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 137: break;
      00B6C9 81               [ 4]  313 	ret
                                    314 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 138: case EXTI_PORT_GPIOB:
      00B6CA                        315 00102$:
                                    316 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 139: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
      00B6CA C6 50 A0         [ 1]  317 	ld	a, 0x50a0
      00B6CD A4 0C            [ 1]  318 	and	a, #0x0c
      00B6CF 44               [ 1]  319 	srl	a
      00B6D0 44               [ 1]  320 	srl	a
                                    321 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 140: break;
      00B6D1 81               [ 4]  322 	ret
                                    323 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 141: case EXTI_PORT_GPIOC:
      00B6D2                        324 00103$:
                                    325 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 142: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
      00B6D2 C6 50 A0         [ 1]  326 	ld	a, 0x50a0
      00B6D5 A4 30            [ 1]  327 	and	a, #0x30
      00B6D7 4E               [ 1]  328 	swap	a
      00B6D8 A4 0F            [ 1]  329 	and	a, #0x0f
                                    330 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 143: break;
      00B6DA 81               [ 4]  331 	ret
                                    332 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 144: case EXTI_PORT_GPIOD:
      00B6DB                        333 00104$:
                                    334 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 145: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
      00B6DB C6 50 A0         [ 1]  335 	ld	a, 0x50a0
      00B6DE A4 C0            [ 1]  336 	and	a, #0xc0
      00B6E0 4E               [ 1]  337 	swap	a
      00B6E1 A4 0F            [ 1]  338 	and	a, #0x0f
      00B6E3 44               [ 1]  339 	srl	a
      00B6E4 44               [ 1]  340 	srl	a
                                    341 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 146: break;
      00B6E5 81               [ 4]  342 	ret
                                    343 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 147: case EXTI_PORT_GPIOE:
      00B6E6                        344 00105$:
                                    345 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 148: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
      00B6E6 C6 50 A1         [ 1]  346 	ld	a, 0x50a1
      00B6E9 A4 03            [ 1]  347 	and	a, #0x03
                                    348 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 152: }
                                    349 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 154: return((EXTI_Sensitivity_TypeDef)value);
                                    350 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 155: }
      00B6EB 81               [ 4]  351 	ret
                                    352 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 162: EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
                                    353 ;	-----------------------------------------
                                    354 ;	 function EXTI_GetTLISensitivity
                                    355 ;	-----------------------------------------
      00B6EC                        356 _EXTI_GetTLISensitivity:
                                    357 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 167: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
      00B6EC C6 50 A1         [ 1]  358 	ld	a, 0x50a1
      00B6EF A4 04            [ 1]  359 	and	a, #0x04
                                    360 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 169: return((EXTI_TLISensitivity_TypeDef)value);
                                    361 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 170: }
      00B6F1 81               [ 4]  362 	ret
                                    363 	.area CODE
                                    364 	.area CONST
                                    365 	.area CONST
      0082B6                        366 ___str_0:
      0082B6 2F 55 73 65 72 73 2F   367 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      0082F2 4D 38 53 5F 53 74 64   368 	.ascii "M8S_StdPeriph_Driver/src/stm8s_exti.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 65 78 74 69
             2E 63
      008317 00                     369 	.db 0x00
                                    370 	.area CODE
                                    371 	.area INITIALIZER
                                    372 	.area CABS (ABS)
