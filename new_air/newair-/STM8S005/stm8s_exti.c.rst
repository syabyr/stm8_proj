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
                                     54 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 53: void EXTI_DeInit(void)
                                     55 ;	-----------------------------------------
                                     56 ;	 function EXTI_DeInit
                                     57 ;	-----------------------------------------
      00C55D                         58 _EXTI_DeInit:
                                     59 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 55: EXTI->CR1 = EXTI_CR1_RESET_VALUE;
      00C55D 35 00 50 A0      [ 1]   60 	mov	0x50a0+0, #0x00
                                     61 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 56: EXTI->CR2 = EXTI_CR2_RESET_VALUE;
      00C561 35 00 50 A1      [ 1]   62 	mov	0x50a1+0, #0x00
                                     63 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 57: }
      00C565 81               [ 4]   64 	ret
                                     65 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 70: void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
                                     66 ;	-----------------------------------------
                                     67 ;	 function EXTI_SetExtIntSensitivity
                                     68 ;	-----------------------------------------
      00C566                         69 _EXTI_SetExtIntSensitivity:
      00C566 88               [ 1]   70 	push	a
                                     71 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 73: assert_param(IS_EXTI_PORT_OK(Port));
      00C567 0D 04            [ 1]   72 	tnz	(0x04, sp)
      00C569 27 26            [ 1]   73 	jreq	00111$
      00C56B 7B 04            [ 1]   74 	ld	a, (0x04, sp)
      00C56D 4A               [ 1]   75 	dec	a
      00C56E 27 21            [ 1]   76 	jreq	00111$
      00C570 7B 04            [ 1]   77 	ld	a, (0x04, sp)
      00C572 A1 02            [ 1]   78 	cp	a, #0x02
      00C574 27 1B            [ 1]   79 	jreq	00111$
      00C576 7B 04            [ 1]   80 	ld	a, (0x04, sp)
      00C578 A1 03            [ 1]   81 	cp	a, #0x03
      00C57A 27 15            [ 1]   82 	jreq	00111$
      00C57C 7B 04            [ 1]   83 	ld	a, (0x04, sp)
      00C57E A1 04            [ 1]   84 	cp	a, #0x04
      00C580 27 0F            [ 1]   85 	jreq	00111$
      00C582 4B 49            [ 1]   86 	push	#0x49
      00C584 5F               [ 1]   87 	clrw	x
      00C585 89               [ 2]   88 	pushw	x
      00C586 4B 00            [ 1]   89 	push	#0x00
      00C588 4B AF            [ 1]   90 	push	#<(___str_0+0)
      00C58A 4B 82            [ 1]   91 	push	#((___str_0+0) >> 8)
      00C58C CD 83 84         [ 4]   92 	call	_assert_failed
      00C58F 5B 06            [ 2]   93 	addw	sp, #6
      00C591                         94 00111$:
                                     95 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 74: assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
      00C591 0D 05            [ 1]   96 	tnz	(0x05, sp)
      00C593 27 20            [ 1]   97 	jreq	00125$
      00C595 7B 05            [ 1]   98 	ld	a, (0x05, sp)
      00C597 4A               [ 1]   99 	dec	a
      00C598 27 1B            [ 1]  100 	jreq	00125$
      00C59A 7B 05            [ 1]  101 	ld	a, (0x05, sp)
      00C59C A1 02            [ 1]  102 	cp	a, #0x02
      00C59E 27 15            [ 1]  103 	jreq	00125$
      00C5A0 7B 05            [ 1]  104 	ld	a, (0x05, sp)
      00C5A2 A1 03            [ 1]  105 	cp	a, #0x03
      00C5A4 27 0F            [ 1]  106 	jreq	00125$
      00C5A6 4B 4A            [ 1]  107 	push	#0x4a
      00C5A8 5F               [ 1]  108 	clrw	x
      00C5A9 89               [ 2]  109 	pushw	x
      00C5AA 4B 00            [ 1]  110 	push	#0x00
      00C5AC 4B AF            [ 1]  111 	push	#<(___str_0+0)
      00C5AE 4B 82            [ 1]  112 	push	#((___str_0+0) >> 8)
      00C5B0 CD 83 84         [ 4]  113 	call	_assert_failed
      00C5B3 5B 06            [ 2]  114 	addw	sp, #6
      00C5B5                        115 00125$:
                                    116 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 77: switch (Port)
      00C5B5 7B 04            [ 1]  117 	ld	a, (0x04, sp)
      00C5B7 A1 04            [ 1]  118 	cp	a, #0x04
      00C5B9 23 03            [ 2]  119 	jrule	00208$
      00C5BB CC C6 42         [ 2]  120 	jp	00108$
      00C5BE                        121 00208$:
                                    122 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
      00C5BE 7B 05            [ 1]  123 	ld	a, (0x05, sp)
      00C5C0 90 97            [ 1]  124 	ld	yl, a
                                    125 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 77: switch (Port)
      00C5C2 5F               [ 1]  126 	clrw	x
      00C5C3 7B 04            [ 1]  127 	ld	a, (0x04, sp)
      00C5C5 97               [ 1]  128 	ld	xl, a
      00C5C6 58               [ 2]  129 	sllw	x
      00C5C7 DE C5 CB         [ 2]  130 	ldw	x, (#00209$, x)
      00C5CA FC               [ 2]  131 	jp	(x)
      00C5CB                        132 00209$:
      00C5CB C5 D5                  133 	.dw	#00101$
      00C5CD C5 E7                  134 	.dw	#00102$
      00C5CF C5 FE                  135 	.dw	#00103$
      00C5D1 C6 17                  136 	.dw	#00104$
      00C5D3 C6 32                  137 	.dw	#00105$
                                    138 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 79: case EXTI_PORT_GPIOA:
      00C5D5                        139 00101$:
                                    140 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 80: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
      00C5D5 C6 50 A0         [ 1]  141 	ld	a, 0x50a0
      00C5D8 A4 FC            [ 1]  142 	and	a, #0xfc
      00C5DA C7 50 A0         [ 1]  143 	ld	0x50a0, a
                                    144 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 81: EXTI->CR1 |= (uint8_t)(SensitivityValue);
      00C5DD C6 50 A0         [ 1]  145 	ld	a, 0x50a0
      00C5E0 1A 05            [ 1]  146 	or	a, (0x05, sp)
      00C5E2 C7 50 A0         [ 1]  147 	ld	0x50a0, a
                                    148 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 82: break;
      00C5E5 20 5B            [ 2]  149 	jra	00108$
                                    150 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 83: case EXTI_PORT_GPIOB:
      00C5E7                        151 00102$:
                                    152 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 84: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
      00C5E7 C6 50 A0         [ 1]  153 	ld	a, 0x50a0
      00C5EA A4 F3            [ 1]  154 	and	a, #0xf3
      00C5EC C7 50 A0         [ 1]  155 	ld	0x50a0, a
                                    156 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
      00C5EF C6 50 A0         [ 1]  157 	ld	a, 0x50a0
      00C5F2 93               [ 1]  158 	ldw	x, y
      00C5F3 58               [ 2]  159 	sllw	x
      00C5F4 58               [ 2]  160 	sllw	x
      00C5F5 89               [ 2]  161 	pushw	x
      00C5F6 1A 02            [ 1]  162 	or	a, (2, sp)
      00C5F8 85               [ 2]  163 	popw	x
      00C5F9 C7 50 A0         [ 1]  164 	ld	0x50a0, a
                                    165 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 86: break;
      00C5FC 20 44            [ 2]  166 	jra	00108$
                                    167 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 87: case EXTI_PORT_GPIOC:
      00C5FE                        168 00103$:
                                    169 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 88: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
      00C5FE C6 50 A0         [ 1]  170 	ld	a, 0x50a0
      00C601 A4 CF            [ 1]  171 	and	a, #0xcf
      00C603 C7 50 A0         [ 1]  172 	ld	0x50a0, a
                                    173 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 89: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
      00C606 C6 50 A0         [ 1]  174 	ld	a, 0x50a0
      00C609 6B 01            [ 1]  175 	ld	(0x01, sp), a
      00C60B 90 9F            [ 1]  176 	ld	a, yl
      00C60D 4E               [ 1]  177 	swap	a
      00C60E A4 F0            [ 1]  178 	and	a, #0xf0
      00C610 1A 01            [ 1]  179 	or	a, (0x01, sp)
      00C612 C7 50 A0         [ 1]  180 	ld	0x50a0, a
                                    181 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 90: break;
      00C615 20 2B            [ 2]  182 	jra	00108$
                                    183 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 91: case EXTI_PORT_GPIOD:
      00C617                        184 00104$:
                                    185 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 92: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
      00C617 C6 50 A0         [ 1]  186 	ld	a, 0x50a0
      00C61A A4 3F            [ 1]  187 	and	a, #0x3f
      00C61C C7 50 A0         [ 1]  188 	ld	0x50a0, a
                                    189 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 93: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
      00C61F C6 50 A0         [ 1]  190 	ld	a, 0x50a0
      00C622 6B 01            [ 1]  191 	ld	(0x01, sp), a
      00C624 90 9F            [ 1]  192 	ld	a, yl
      00C626 4E               [ 1]  193 	swap	a
      00C627 A4 F0            [ 1]  194 	and	a, #0xf0
      00C629 48               [ 1]  195 	sll	a
      00C62A 48               [ 1]  196 	sll	a
      00C62B 1A 01            [ 1]  197 	or	a, (0x01, sp)
      00C62D C7 50 A0         [ 1]  198 	ld	0x50a0, a
                                    199 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 94: break;
      00C630 20 10            [ 2]  200 	jra	00108$
                                    201 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 95: case EXTI_PORT_GPIOE:
      00C632                        202 00105$:
                                    203 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 96: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
      00C632 C6 50 A1         [ 1]  204 	ld	a, 0x50a1
      00C635 A4 FC            [ 1]  205 	and	a, #0xfc
      00C637 C7 50 A1         [ 1]  206 	ld	0x50a1, a
                                    207 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 97: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      00C63A C6 50 A1         [ 1]  208 	ld	a, 0x50a1
      00C63D 1A 05            [ 1]  209 	or	a, (0x05, sp)
      00C63F C7 50 A1         [ 1]  210 	ld	0x50a1, a
                                    211 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 101: }
      00C642                        212 00108$:
                                    213 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 102: }
      00C642 84               [ 1]  214 	pop	a
      00C643 81               [ 4]  215 	ret
                                    216 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 111: void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
                                    217 ;	-----------------------------------------
                                    218 ;	 function EXTI_SetTLISensitivity
                                    219 ;	-----------------------------------------
      00C644                        220 _EXTI_SetTLISensitivity:
                                    221 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 114: assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
      00C644 0D 03            [ 1]  222 	tnz	(0x03, sp)
      00C646 27 15            [ 1]  223 	jreq	00104$
      00C648 7B 03            [ 1]  224 	ld	a, (0x03, sp)
      00C64A A1 04            [ 1]  225 	cp	a, #0x04
      00C64C 27 0F            [ 1]  226 	jreq	00104$
      00C64E 4B 72            [ 1]  227 	push	#0x72
      00C650 5F               [ 1]  228 	clrw	x
      00C651 89               [ 2]  229 	pushw	x
      00C652 4B 00            [ 1]  230 	push	#0x00
      00C654 4B AF            [ 1]  231 	push	#<(___str_0+0)
      00C656 4B 82            [ 1]  232 	push	#((___str_0+0) >> 8)
      00C658 CD 83 84         [ 4]  233 	call	_assert_failed
      00C65B 5B 06            [ 2]  234 	addw	sp, #6
      00C65D                        235 00104$:
                                    236 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 117: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
      00C65D C6 50 A1         [ 1]  237 	ld	a, 0x50a1
      00C660 A4 FB            [ 1]  238 	and	a, #0xfb
      00C662 C7 50 A1         [ 1]  239 	ld	0x50a1, a
                                    240 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 118: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      00C665 C6 50 A1         [ 1]  241 	ld	a, 0x50a1
      00C668 1A 03            [ 1]  242 	or	a, (0x03, sp)
      00C66A C7 50 A1         [ 1]  243 	ld	0x50a1, a
                                    244 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 119: }
      00C66D 81               [ 4]  245 	ret
                                    246 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 126: EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
                                    247 ;	-----------------------------------------
                                    248 ;	 function EXTI_GetExtIntSensitivity
                                    249 ;	-----------------------------------------
      00C66E                        250 _EXTI_GetExtIntSensitivity:
                                    251 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 128: uint8_t value = 0;
      00C66E 4F               [ 1]  252 	clr	a
                                    253 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 131: assert_param(IS_EXTI_PORT_OK(Port));
      00C66F 0D 03            [ 1]  254 	tnz	(0x03, sp)
      00C671 27 30            [ 1]  255 	jreq	00111$
      00C673 88               [ 1]  256 	push	a
      00C674 7B 04            [ 1]  257 	ld	a, (0x04, sp)
      00C676 4A               [ 1]  258 	dec	a
      00C677 84               [ 1]  259 	pop	a
      00C678 27 29            [ 1]  260 	jreq	00111$
      00C67A 88               [ 1]  261 	push	a
      00C67B 7B 04            [ 1]  262 	ld	a, (0x04, sp)
      00C67D A1 02            [ 1]  263 	cp	a, #0x02
      00C67F 84               [ 1]  264 	pop	a
      00C680 27 21            [ 1]  265 	jreq	00111$
      00C682 88               [ 1]  266 	push	a
      00C683 7B 04            [ 1]  267 	ld	a, (0x04, sp)
      00C685 A1 03            [ 1]  268 	cp	a, #0x03
      00C687 84               [ 1]  269 	pop	a
      00C688 27 19            [ 1]  270 	jreq	00111$
      00C68A 88               [ 1]  271 	push	a
      00C68B 7B 04            [ 1]  272 	ld	a, (0x04, sp)
      00C68D A1 04            [ 1]  273 	cp	a, #0x04
      00C68F 84               [ 1]  274 	pop	a
      00C690 27 11            [ 1]  275 	jreq	00111$
      00C692 88               [ 1]  276 	push	a
      00C693 4B 83            [ 1]  277 	push	#0x83
      00C695 5F               [ 1]  278 	clrw	x
      00C696 89               [ 2]  279 	pushw	x
      00C697 4B 00            [ 1]  280 	push	#0x00
      00C699 4B AF            [ 1]  281 	push	#<(___str_0+0)
      00C69B 4B 82            [ 1]  282 	push	#((___str_0+0) >> 8)
      00C69D CD 83 84         [ 4]  283 	call	_assert_failed
      00C6A0 5B 06            [ 2]  284 	addw	sp, #6
      00C6A2 84               [ 1]  285 	pop	a
      00C6A3                        286 00111$:
                                    287 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 133: switch (Port)
      00C6A3 88               [ 1]  288 	push	a
      00C6A4 7B 04            [ 1]  289 	ld	a, (0x04, sp)
      00C6A6 A1 04            [ 1]  290 	cp	a, #0x04
      00C6A8 84               [ 1]  291 	pop	a
      00C6A9 23 01            [ 2]  292 	jrule	00167$
      00C6AB 81               [ 4]  293 	ret
      00C6AC                        294 00167$:
      00C6AC 5F               [ 1]  295 	clrw	x
      00C6AD 7B 03            [ 1]  296 	ld	a, (0x03, sp)
      00C6AF 97               [ 1]  297 	ld	xl, a
      00C6B0 58               [ 2]  298 	sllw	x
      00C6B1 DE C6 B5         [ 2]  299 	ldw	x, (#00168$, x)
      00C6B4 FC               [ 2]  300 	jp	(x)
      00C6B5                        301 00168$:
      00C6B5 C6 BF                  302 	.dw	#00101$
      00C6B7 C6 C5                  303 	.dw	#00102$
      00C6B9 C6 CD                  304 	.dw	#00103$
      00C6BB C6 D6                  305 	.dw	#00104$
      00C6BD C6 E1                  306 	.dw	#00105$
                                    307 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 135: case EXTI_PORT_GPIOA:
      00C6BF                        308 00101$:
                                    309 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 136: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
      00C6BF C6 50 A0         [ 1]  310 	ld	a, 0x50a0
      00C6C2 A4 03            [ 1]  311 	and	a, #0x03
                                    312 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 137: break;
      00C6C4 81               [ 4]  313 	ret
                                    314 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 138: case EXTI_PORT_GPIOB:
      00C6C5                        315 00102$:
                                    316 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 139: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
      00C6C5 C6 50 A0         [ 1]  317 	ld	a, 0x50a0
      00C6C8 A4 0C            [ 1]  318 	and	a, #0x0c
      00C6CA 44               [ 1]  319 	srl	a
      00C6CB 44               [ 1]  320 	srl	a
                                    321 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 140: break;
      00C6CC 81               [ 4]  322 	ret
                                    323 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 141: case EXTI_PORT_GPIOC:
      00C6CD                        324 00103$:
                                    325 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 142: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
      00C6CD C6 50 A0         [ 1]  326 	ld	a, 0x50a0
      00C6D0 A4 30            [ 1]  327 	and	a, #0x30
      00C6D2 4E               [ 1]  328 	swap	a
      00C6D3 A4 0F            [ 1]  329 	and	a, #0x0f
                                    330 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 143: break;
      00C6D5 81               [ 4]  331 	ret
                                    332 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 144: case EXTI_PORT_GPIOD:
      00C6D6                        333 00104$:
                                    334 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 145: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
      00C6D6 C6 50 A0         [ 1]  335 	ld	a, 0x50a0
      00C6D9 A4 C0            [ 1]  336 	and	a, #0xc0
      00C6DB 4E               [ 1]  337 	swap	a
      00C6DC A4 0F            [ 1]  338 	and	a, #0x0f
      00C6DE 44               [ 1]  339 	srl	a
      00C6DF 44               [ 1]  340 	srl	a
                                    341 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 146: break;
      00C6E0 81               [ 4]  342 	ret
                                    343 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 147: case EXTI_PORT_GPIOE:
      00C6E1                        344 00105$:
                                    345 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 148: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
      00C6E1 C6 50 A1         [ 1]  346 	ld	a, 0x50a1
      00C6E4 A4 03            [ 1]  347 	and	a, #0x03
                                    348 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 152: }
                                    349 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 154: return((EXTI_Sensitivity_TypeDef)value);
                                    350 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 155: }
      00C6E6 81               [ 4]  351 	ret
                                    352 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 162: EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
                                    353 ;	-----------------------------------------
                                    354 ;	 function EXTI_GetTLISensitivity
                                    355 ;	-----------------------------------------
      00C6E7                        356 _EXTI_GetTLISensitivity:
                                    357 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 167: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
      00C6E7 C6 50 A1         [ 1]  358 	ld	a, 0x50a1
      00C6EA A4 04            [ 1]  359 	and	a, #0x04
                                    360 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 169: return((EXTI_TLISensitivity_TypeDef)value);
                                    361 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_exti.c: 170: }
      00C6EC 81               [ 4]  362 	ret
                                    363 	.area CODE
                                    364 	.area CONST
                                    365 	.area CONST
      0082AF                        366 ___str_0:
      0082AF 2E 2E 2F 2E 2E 2F 2F   367 	.ascii "../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_ex"
             53 74 64 50 65 72 69
             70 68 5F 44 72 69 76
             65 72 2F 53 54 4D 38
             53 5F 53 74 64 50 65
             72 69 70 68 5F 44 72
             69 76 65 72 2F 2F 73
             72 63 2F 73 74 6D 38
             73 5F 65 78
      0082EB 74 69 2E 63            368 	.ascii "ti.c"
      0082EF 00                     369 	.db 0x00
                                    370 	.area CODE
                                    371 	.area INITIALIZER
                                    372 	.area CABS (ABS)
