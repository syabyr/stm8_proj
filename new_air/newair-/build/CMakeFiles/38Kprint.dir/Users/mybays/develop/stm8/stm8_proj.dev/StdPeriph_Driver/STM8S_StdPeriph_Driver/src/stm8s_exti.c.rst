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
      00A6EF                         58 _EXTI_DeInit:
                                     59 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 55: EXTI->CR1 = EXTI_CR1_RESET_VALUE;
      00A6EF 35 00 50 A0      [ 1]   60 	mov	0x50a0+0, #0x00
                                     61 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 56: EXTI->CR2 = EXTI_CR2_RESET_VALUE;
      00A6F3 35 00 50 A1      [ 1]   62 	mov	0x50a1+0, #0x00
                                     63 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 57: }
      00A6F7 81               [ 4]   64 	ret
                                     65 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 70: void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
                                     66 ;	-----------------------------------------
                                     67 ;	 function EXTI_SetExtIntSensitivity
                                     68 ;	-----------------------------------------
      00A6F8                         69 _EXTI_SetExtIntSensitivity:
      00A6F8 88               [ 1]   70 	push	a
                                     71 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 73: assert_param(IS_EXTI_PORT_OK(Port));
      00A6F9 0D 04            [ 1]   72 	tnz	(0x04, sp)
      00A6FB 27 26            [ 1]   73 	jreq	00111$
      00A6FD 7B 04            [ 1]   74 	ld	a, (0x04, sp)
      00A6FF 4A               [ 1]   75 	dec	a
      00A700 27 21            [ 1]   76 	jreq	00111$
      00A702 7B 04            [ 1]   77 	ld	a, (0x04, sp)
      00A704 A1 02            [ 1]   78 	cp	a, #0x02
      00A706 27 1B            [ 1]   79 	jreq	00111$
      00A708 7B 04            [ 1]   80 	ld	a, (0x04, sp)
      00A70A A1 03            [ 1]   81 	cp	a, #0x03
      00A70C 27 15            [ 1]   82 	jreq	00111$
      00A70E 7B 04            [ 1]   83 	ld	a, (0x04, sp)
      00A710 A1 04            [ 1]   84 	cp	a, #0x04
      00A712 27 0F            [ 1]   85 	jreq	00111$
      00A714 4B 49            [ 1]   86 	push	#0x49
      00A716 5F               [ 1]   87 	clrw	x
      00A717 89               [ 2]   88 	pushw	x
      00A718 4B 00            [ 1]   89 	push	#0x00
      00A71A 4B 8C            [ 1]   90 	push	#<(___str_0+0)
      00A71C 4B 82            [ 1]   91 	push	#((___str_0+0) >> 8)
      00A71E CD 85 5C         [ 4]   92 	call	_assert_failed
      00A721 5B 06            [ 2]   93 	addw	sp, #6
      00A723                         94 00111$:
                                     95 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 74: assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
      00A723 0D 05            [ 1]   96 	tnz	(0x05, sp)
      00A725 27 20            [ 1]   97 	jreq	00125$
      00A727 7B 05            [ 1]   98 	ld	a, (0x05, sp)
      00A729 4A               [ 1]   99 	dec	a
      00A72A 27 1B            [ 1]  100 	jreq	00125$
      00A72C 7B 05            [ 1]  101 	ld	a, (0x05, sp)
      00A72E A1 02            [ 1]  102 	cp	a, #0x02
      00A730 27 15            [ 1]  103 	jreq	00125$
      00A732 7B 05            [ 1]  104 	ld	a, (0x05, sp)
      00A734 A1 03            [ 1]  105 	cp	a, #0x03
      00A736 27 0F            [ 1]  106 	jreq	00125$
      00A738 4B 4A            [ 1]  107 	push	#0x4a
      00A73A 5F               [ 1]  108 	clrw	x
      00A73B 89               [ 2]  109 	pushw	x
      00A73C 4B 00            [ 1]  110 	push	#0x00
      00A73E 4B 8C            [ 1]  111 	push	#<(___str_0+0)
      00A740 4B 82            [ 1]  112 	push	#((___str_0+0) >> 8)
      00A742 CD 85 5C         [ 4]  113 	call	_assert_failed
      00A745 5B 06            [ 2]  114 	addw	sp, #6
      00A747                        115 00125$:
                                    116 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 77: switch (Port)
      00A747 7B 04            [ 1]  117 	ld	a, (0x04, sp)
      00A749 A1 04            [ 1]  118 	cp	a, #0x04
      00A74B 23 03            [ 2]  119 	jrule	00208$
      00A74D CC A7 D4         [ 2]  120 	jp	00108$
      00A750                        121 00208$:
                                    122 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
      00A750 7B 05            [ 1]  123 	ld	a, (0x05, sp)
      00A752 90 97            [ 1]  124 	ld	yl, a
                                    125 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 77: switch (Port)
      00A754 5F               [ 1]  126 	clrw	x
      00A755 7B 04            [ 1]  127 	ld	a, (0x04, sp)
      00A757 97               [ 1]  128 	ld	xl, a
      00A758 58               [ 2]  129 	sllw	x
      00A759 DE A7 5D         [ 2]  130 	ldw	x, (#00209$, x)
      00A75C FC               [ 2]  131 	jp	(x)
      00A75D                        132 00209$:
      00A75D A7 67                  133 	.dw	#00101$
      00A75F A7 79                  134 	.dw	#00102$
      00A761 A7 90                  135 	.dw	#00103$
      00A763 A7 A9                  136 	.dw	#00104$
      00A765 A7 C4                  137 	.dw	#00105$
                                    138 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 79: case EXTI_PORT_GPIOA:
      00A767                        139 00101$:
                                    140 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 80: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
      00A767 C6 50 A0         [ 1]  141 	ld	a, 0x50a0
      00A76A A4 FC            [ 1]  142 	and	a, #0xfc
      00A76C C7 50 A0         [ 1]  143 	ld	0x50a0, a
                                    144 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 81: EXTI->CR1 |= (uint8_t)(SensitivityValue);
      00A76F C6 50 A0         [ 1]  145 	ld	a, 0x50a0
      00A772 1A 05            [ 1]  146 	or	a, (0x05, sp)
      00A774 C7 50 A0         [ 1]  147 	ld	0x50a0, a
                                    148 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 82: break;
      00A777 20 5B            [ 2]  149 	jra	00108$
                                    150 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 83: case EXTI_PORT_GPIOB:
      00A779                        151 00102$:
                                    152 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 84: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
      00A779 C6 50 A0         [ 1]  153 	ld	a, 0x50a0
      00A77C A4 F3            [ 1]  154 	and	a, #0xf3
      00A77E C7 50 A0         [ 1]  155 	ld	0x50a0, a
                                    156 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
      00A781 C6 50 A0         [ 1]  157 	ld	a, 0x50a0
      00A784 93               [ 1]  158 	ldw	x, y
      00A785 58               [ 2]  159 	sllw	x
      00A786 58               [ 2]  160 	sllw	x
      00A787 89               [ 2]  161 	pushw	x
      00A788 1A 02            [ 1]  162 	or	a, (2, sp)
      00A78A 85               [ 2]  163 	popw	x
      00A78B C7 50 A0         [ 1]  164 	ld	0x50a0, a
                                    165 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 86: break;
      00A78E 20 44            [ 2]  166 	jra	00108$
                                    167 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 87: case EXTI_PORT_GPIOC:
      00A790                        168 00103$:
                                    169 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 88: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
      00A790 C6 50 A0         [ 1]  170 	ld	a, 0x50a0
      00A793 A4 CF            [ 1]  171 	and	a, #0xcf
      00A795 C7 50 A0         [ 1]  172 	ld	0x50a0, a
                                    173 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 89: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
      00A798 C6 50 A0         [ 1]  174 	ld	a, 0x50a0
      00A79B 6B 01            [ 1]  175 	ld	(0x01, sp), a
      00A79D 90 9F            [ 1]  176 	ld	a, yl
      00A79F 4E               [ 1]  177 	swap	a
      00A7A0 A4 F0            [ 1]  178 	and	a, #0xf0
      00A7A2 1A 01            [ 1]  179 	or	a, (0x01, sp)
      00A7A4 C7 50 A0         [ 1]  180 	ld	0x50a0, a
                                    181 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 90: break;
      00A7A7 20 2B            [ 2]  182 	jra	00108$
                                    183 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 91: case EXTI_PORT_GPIOD:
      00A7A9                        184 00104$:
                                    185 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 92: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
      00A7A9 C6 50 A0         [ 1]  186 	ld	a, 0x50a0
      00A7AC A4 3F            [ 1]  187 	and	a, #0x3f
      00A7AE C7 50 A0         [ 1]  188 	ld	0x50a0, a
                                    189 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 93: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
      00A7B1 C6 50 A0         [ 1]  190 	ld	a, 0x50a0
      00A7B4 6B 01            [ 1]  191 	ld	(0x01, sp), a
      00A7B6 90 9F            [ 1]  192 	ld	a, yl
      00A7B8 4E               [ 1]  193 	swap	a
      00A7B9 A4 F0            [ 1]  194 	and	a, #0xf0
      00A7BB 48               [ 1]  195 	sll	a
      00A7BC 48               [ 1]  196 	sll	a
      00A7BD 1A 01            [ 1]  197 	or	a, (0x01, sp)
      00A7BF C7 50 A0         [ 1]  198 	ld	0x50a0, a
                                    199 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 94: break;
      00A7C2 20 10            [ 2]  200 	jra	00108$
                                    201 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 95: case EXTI_PORT_GPIOE:
      00A7C4                        202 00105$:
                                    203 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 96: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
      00A7C4 C6 50 A1         [ 1]  204 	ld	a, 0x50a1
      00A7C7 A4 FC            [ 1]  205 	and	a, #0xfc
      00A7C9 C7 50 A1         [ 1]  206 	ld	0x50a1, a
                                    207 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 97: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      00A7CC C6 50 A1         [ 1]  208 	ld	a, 0x50a1
      00A7CF 1A 05            [ 1]  209 	or	a, (0x05, sp)
      00A7D1 C7 50 A1         [ 1]  210 	ld	0x50a1, a
                                    211 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 101: }
      00A7D4                        212 00108$:
                                    213 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 102: }
      00A7D4 84               [ 1]  214 	pop	a
      00A7D5 81               [ 4]  215 	ret
                                    216 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 111: void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
                                    217 ;	-----------------------------------------
                                    218 ;	 function EXTI_SetTLISensitivity
                                    219 ;	-----------------------------------------
      00A7D6                        220 _EXTI_SetTLISensitivity:
                                    221 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 114: assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
      00A7D6 0D 03            [ 1]  222 	tnz	(0x03, sp)
      00A7D8 27 15            [ 1]  223 	jreq	00104$
      00A7DA 7B 03            [ 1]  224 	ld	a, (0x03, sp)
      00A7DC A1 04            [ 1]  225 	cp	a, #0x04
      00A7DE 27 0F            [ 1]  226 	jreq	00104$
      00A7E0 4B 72            [ 1]  227 	push	#0x72
      00A7E2 5F               [ 1]  228 	clrw	x
      00A7E3 89               [ 2]  229 	pushw	x
      00A7E4 4B 00            [ 1]  230 	push	#0x00
      00A7E6 4B 8C            [ 1]  231 	push	#<(___str_0+0)
      00A7E8 4B 82            [ 1]  232 	push	#((___str_0+0) >> 8)
      00A7EA CD 85 5C         [ 4]  233 	call	_assert_failed
      00A7ED 5B 06            [ 2]  234 	addw	sp, #6
      00A7EF                        235 00104$:
                                    236 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 117: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
      00A7EF C6 50 A1         [ 1]  237 	ld	a, 0x50a1
      00A7F2 A4 FB            [ 1]  238 	and	a, #0xfb
      00A7F4 C7 50 A1         [ 1]  239 	ld	0x50a1, a
                                    240 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 118: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      00A7F7 C6 50 A1         [ 1]  241 	ld	a, 0x50a1
      00A7FA 1A 03            [ 1]  242 	or	a, (0x03, sp)
      00A7FC C7 50 A1         [ 1]  243 	ld	0x50a1, a
                                    244 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 119: }
      00A7FF 81               [ 4]  245 	ret
                                    246 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 126: EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
                                    247 ;	-----------------------------------------
                                    248 ;	 function EXTI_GetExtIntSensitivity
                                    249 ;	-----------------------------------------
      00A800                        250 _EXTI_GetExtIntSensitivity:
                                    251 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 128: uint8_t value = 0;
      00A800 4F               [ 1]  252 	clr	a
                                    253 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 131: assert_param(IS_EXTI_PORT_OK(Port));
      00A801 0D 03            [ 1]  254 	tnz	(0x03, sp)
      00A803 27 30            [ 1]  255 	jreq	00111$
      00A805 88               [ 1]  256 	push	a
      00A806 7B 04            [ 1]  257 	ld	a, (0x04, sp)
      00A808 4A               [ 1]  258 	dec	a
      00A809 84               [ 1]  259 	pop	a
      00A80A 27 29            [ 1]  260 	jreq	00111$
      00A80C 88               [ 1]  261 	push	a
      00A80D 7B 04            [ 1]  262 	ld	a, (0x04, sp)
      00A80F A1 02            [ 1]  263 	cp	a, #0x02
      00A811 84               [ 1]  264 	pop	a
      00A812 27 21            [ 1]  265 	jreq	00111$
      00A814 88               [ 1]  266 	push	a
      00A815 7B 04            [ 1]  267 	ld	a, (0x04, sp)
      00A817 A1 03            [ 1]  268 	cp	a, #0x03
      00A819 84               [ 1]  269 	pop	a
      00A81A 27 19            [ 1]  270 	jreq	00111$
      00A81C 88               [ 1]  271 	push	a
      00A81D 7B 04            [ 1]  272 	ld	a, (0x04, sp)
      00A81F A1 04            [ 1]  273 	cp	a, #0x04
      00A821 84               [ 1]  274 	pop	a
      00A822 27 11            [ 1]  275 	jreq	00111$
      00A824 88               [ 1]  276 	push	a
      00A825 4B 83            [ 1]  277 	push	#0x83
      00A827 5F               [ 1]  278 	clrw	x
      00A828 89               [ 2]  279 	pushw	x
      00A829 4B 00            [ 1]  280 	push	#0x00
      00A82B 4B 8C            [ 1]  281 	push	#<(___str_0+0)
      00A82D 4B 82            [ 1]  282 	push	#((___str_0+0) >> 8)
      00A82F CD 85 5C         [ 4]  283 	call	_assert_failed
      00A832 5B 06            [ 2]  284 	addw	sp, #6
      00A834 84               [ 1]  285 	pop	a
      00A835                        286 00111$:
                                    287 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 133: switch (Port)
      00A835 88               [ 1]  288 	push	a
      00A836 7B 04            [ 1]  289 	ld	a, (0x04, sp)
      00A838 A1 04            [ 1]  290 	cp	a, #0x04
      00A83A 84               [ 1]  291 	pop	a
      00A83B 23 01            [ 2]  292 	jrule	00167$
      00A83D 81               [ 4]  293 	ret
      00A83E                        294 00167$:
      00A83E 5F               [ 1]  295 	clrw	x
      00A83F 7B 03            [ 1]  296 	ld	a, (0x03, sp)
      00A841 97               [ 1]  297 	ld	xl, a
      00A842 58               [ 2]  298 	sllw	x
      00A843 DE A8 47         [ 2]  299 	ldw	x, (#00168$, x)
      00A846 FC               [ 2]  300 	jp	(x)
      00A847                        301 00168$:
      00A847 A8 51                  302 	.dw	#00101$
      00A849 A8 57                  303 	.dw	#00102$
      00A84B A8 5F                  304 	.dw	#00103$
      00A84D A8 68                  305 	.dw	#00104$
      00A84F A8 73                  306 	.dw	#00105$
                                    307 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 135: case EXTI_PORT_GPIOA:
      00A851                        308 00101$:
                                    309 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 136: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
      00A851 C6 50 A0         [ 1]  310 	ld	a, 0x50a0
      00A854 A4 03            [ 1]  311 	and	a, #0x03
                                    312 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 137: break;
      00A856 81               [ 4]  313 	ret
                                    314 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 138: case EXTI_PORT_GPIOB:
      00A857                        315 00102$:
                                    316 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 139: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
      00A857 C6 50 A0         [ 1]  317 	ld	a, 0x50a0
      00A85A A4 0C            [ 1]  318 	and	a, #0x0c
      00A85C 44               [ 1]  319 	srl	a
      00A85D 44               [ 1]  320 	srl	a
                                    321 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 140: break;
      00A85E 81               [ 4]  322 	ret
                                    323 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 141: case EXTI_PORT_GPIOC:
      00A85F                        324 00103$:
                                    325 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 142: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
      00A85F C6 50 A0         [ 1]  326 	ld	a, 0x50a0
      00A862 A4 30            [ 1]  327 	and	a, #0x30
      00A864 4E               [ 1]  328 	swap	a
      00A865 A4 0F            [ 1]  329 	and	a, #0x0f
                                    330 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 143: break;
      00A867 81               [ 4]  331 	ret
                                    332 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 144: case EXTI_PORT_GPIOD:
      00A868                        333 00104$:
                                    334 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 145: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
      00A868 C6 50 A0         [ 1]  335 	ld	a, 0x50a0
      00A86B A4 C0            [ 1]  336 	and	a, #0xc0
      00A86D 4E               [ 1]  337 	swap	a
      00A86E A4 0F            [ 1]  338 	and	a, #0x0f
      00A870 44               [ 1]  339 	srl	a
      00A871 44               [ 1]  340 	srl	a
                                    341 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 146: break;
      00A872 81               [ 4]  342 	ret
                                    343 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 147: case EXTI_PORT_GPIOE:
      00A873                        344 00105$:
                                    345 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 148: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
      00A873 C6 50 A1         [ 1]  346 	ld	a, 0x50a1
      00A876 A4 03            [ 1]  347 	and	a, #0x03
                                    348 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 152: }
                                    349 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 154: return((EXTI_Sensitivity_TypeDef)value);
                                    350 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 155: }
      00A878 81               [ 4]  351 	ret
                                    352 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 162: EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
                                    353 ;	-----------------------------------------
                                    354 ;	 function EXTI_GetTLISensitivity
                                    355 ;	-----------------------------------------
      00A879                        356 _EXTI_GetTLISensitivity:
                                    357 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 167: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
      00A879 C6 50 A1         [ 1]  358 	ld	a, 0x50a1
      00A87C A4 04            [ 1]  359 	and	a, #0x04
                                    360 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 169: return((EXTI_TLISensitivity_TypeDef)value);
                                    361 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 170: }
      00A87E 81               [ 4]  362 	ret
                                    363 	.area CODE
                                    364 	.area CONST
                                    365 	.area CONST
      00828C                        366 ___str_0:
      00828C 2F 55 73 65 72 73 2F   367 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      0082C8 4D 38 53 5F 53 74 64   368 	.ascii "M8S_StdPeriph_Driver/src/stm8s_exti.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 65 78 74 69
             2E 63
      0082ED 00                     369 	.db 0x00
                                    370 	.area CODE
                                    371 	.area INITIALIZER
                                    372 	.area CABS (ABS)
