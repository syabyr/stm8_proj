                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim2
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _TIM2_DeInit
                                     13 	.globl _TIM2_TimeBaseInit
                                     14 	.globl _TIM2_OC1Init
                                     15 	.globl _TIM2_OC2Init
                                     16 	.globl _TIM2_OC3Init
                                     17 	.globl _TIM2_ICInit
                                     18 	.globl _TIM2_PWMIConfig
                                     19 	.globl _TIM2_Cmd
                                     20 	.globl _TIM2_ITConfig
                                     21 	.globl _TIM2_UpdateDisableConfig
                                     22 	.globl _TIM2_UpdateRequestConfig
                                     23 	.globl _TIM2_SelectOnePulseMode
                                     24 	.globl _TIM2_PrescalerConfig
                                     25 	.globl _TIM2_ForcedOC1Config
                                     26 	.globl _TIM2_ForcedOC2Config
                                     27 	.globl _TIM2_ForcedOC3Config
                                     28 	.globl _TIM2_ARRPreloadConfig
                                     29 	.globl _TIM2_OC1PreloadConfig
                                     30 	.globl _TIM2_OC2PreloadConfig
                                     31 	.globl _TIM2_OC3PreloadConfig
                                     32 	.globl _TIM2_GenerateEvent
                                     33 	.globl _TIM2_OC1PolarityConfig
                                     34 	.globl _TIM2_OC2PolarityConfig
                                     35 	.globl _TIM2_OC3PolarityConfig
                                     36 	.globl _TIM2_CCxCmd
                                     37 	.globl _TIM2_SelectOCxM
                                     38 	.globl _TIM2_SetCounter
                                     39 	.globl _TIM2_SetAutoreload
                                     40 	.globl _TIM2_SetCompare1
                                     41 	.globl _TIM2_SetCompare2
                                     42 	.globl _TIM2_SetCompare3
                                     43 	.globl _TIM2_SetIC1Prescaler
                                     44 	.globl _TIM2_SetIC2Prescaler
                                     45 	.globl _TIM2_SetIC3Prescaler
                                     46 	.globl _TIM2_GetCapture1
                                     47 	.globl _TIM2_GetCapture2
                                     48 	.globl _TIM2_GetCapture3
                                     49 	.globl _TIM2_GetCounter
                                     50 	.globl _TIM2_GetPrescaler
                                     51 	.globl _TIM2_GetFlagStatus
                                     52 	.globl _TIM2_ClearFlag
                                     53 	.globl _TIM2_GetITStatus
                                     54 	.globl _TIM2_ClearITPendingBit
                                     55 ;--------------------------------------------------------
                                     56 ; ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area DATA
                                     59 ;--------------------------------------------------------
                                     60 ; ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area INITIALIZED
                                     63 ;--------------------------------------------------------
                                     64 ; absolute external ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area DABS (ABS)
                                     67 
                                     68 ; default segment ordering for linker
                                     69 	.area HOME
                                     70 	.area GSINIT
                                     71 	.area GSFINAL
                                     72 	.area CONST
                                     73 	.area INITIALIZER
                                     74 	.area CODE
                                     75 
                                     76 ;--------------------------------------------------------
                                     77 ; global & static initialisations
                                     78 ;--------------------------------------------------------
                                     79 	.area HOME
                                     80 	.area GSINIT
                                     81 	.area GSFINAL
                                     82 	.area GSINIT
                                     83 ;--------------------------------------------------------
                                     84 ; Home
                                     85 ;--------------------------------------------------------
                                     86 	.area HOME
                                     87 	.area HOME
                                     88 ;--------------------------------------------------------
                                     89 ; code
                                     90 ;--------------------------------------------------------
                                     91 	.area CODE
                                     92 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 52: void TIM2_DeInit(void)
                                     93 ;	-----------------------------------------
                                     94 ;	 function TIM2_DeInit
                                     95 ;	-----------------------------------------
      009D23                         96 _TIM2_DeInit:
                                     97 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 54: TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
      009D23 35 00 53 00      [ 1]   98 	mov	0x5300+0, #0x00
                                     99 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 55: TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
      009D27 35 00 53 01      [ 1]  100 	mov	0x5301+0, #0x00
                                    101 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 56: TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
      009D2B 35 00 53 03      [ 1]  102 	mov	0x5303+0, #0x00
                                    103 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 59: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
      009D2F 35 00 53 08      [ 1]  104 	mov	0x5308+0, #0x00
                                    105 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 60: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
      009D33 35 00 53 09      [ 1]  106 	mov	0x5309+0, #0x00
                                    107 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 64: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
      009D37 35 00 53 08      [ 1]  108 	mov	0x5308+0, #0x00
                                    109 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 65: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
      009D3B 35 00 53 09      [ 1]  110 	mov	0x5309+0, #0x00
                                    111 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 66: TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
      009D3F 35 00 53 05      [ 1]  112 	mov	0x5305+0, #0x00
                                    113 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 67: TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
      009D43 35 00 53 06      [ 1]  114 	mov	0x5306+0, #0x00
                                    115 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 68: TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
      009D47 35 00 53 07      [ 1]  116 	mov	0x5307+0, #0x00
                                    117 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 69: TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
      009D4B 35 00 53 0A      [ 1]  118 	mov	0x530a+0, #0x00
                                    119 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 70: TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
      009D4F 35 00 53 0B      [ 1]  120 	mov	0x530b+0, #0x00
                                    121 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 71: TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
      009D53 35 00 53 0C      [ 1]  122 	mov	0x530c+0, #0x00
                                    123 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 72: TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
      009D57 35 FF 53 0D      [ 1]  124 	mov	0x530d+0, #0xff
                                    125 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 73: TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
      009D5B 35 FF 53 0E      [ 1]  126 	mov	0x530e+0, #0xff
                                    127 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 74: TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
      009D5F 35 00 53 0F      [ 1]  128 	mov	0x530f+0, #0x00
                                    129 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 75: TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
      009D63 35 00 53 10      [ 1]  130 	mov	0x5310+0, #0x00
                                    131 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 76: TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
      009D67 35 00 53 11      [ 1]  132 	mov	0x5311+0, #0x00
                                    133 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 77: TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
      009D6B 35 00 53 12      [ 1]  134 	mov	0x5312+0, #0x00
                                    135 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 78: TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
      009D6F 35 00 53 13      [ 1]  136 	mov	0x5313+0, #0x00
                                    137 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 79: TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
      009D73 35 00 53 14      [ 1]  138 	mov	0x5314+0, #0x00
                                    139 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 80: TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
      009D77 35 00 53 02      [ 1]  140 	mov	0x5302+0, #0x00
                                    141 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 81: }
      009D7B 81               [ 4]  142 	ret
                                    143 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 89: void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
                                    144 ;	-----------------------------------------
                                    145 ;	 function TIM2_TimeBaseInit
                                    146 ;	-----------------------------------------
      009D7C                        147 _TIM2_TimeBaseInit:
                                    148 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 93: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
      009D7C AE 53 0C         [ 2]  149 	ldw	x, #0x530c
      009D7F 7B 03            [ 1]  150 	ld	a, (0x03, sp)
      009D81 F7               [ 1]  151 	ld	(x), a
                                    152 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 95: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
      009D82 7B 04            [ 1]  153 	ld	a, (0x04, sp)
      009D84 C7 53 0D         [ 1]  154 	ld	0x530d, a
                                    155 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 96: TIM2->ARRL = (uint8_t)(TIM2_Period);
      009D87 7B 05            [ 1]  156 	ld	a, (0x05, sp)
      009D89 C7 53 0E         [ 1]  157 	ld	0x530e, a
                                    158 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 97: }
      009D8C 81               [ 4]  159 	ret
                                    160 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 108: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    161 ;	-----------------------------------------
                                    162 ;	 function TIM2_OC1Init
                                    163 ;	-----------------------------------------
      009D8D                        164 _TIM2_OC1Init:
      009D8D 89               [ 2]  165 	pushw	x
                                    166 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 114: assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
      009D8E 0D 05            [ 1]  167 	tnz	(0x05, sp)
      009D90 27 2D            [ 1]  168 	jreq	00104$
      009D92 7B 05            [ 1]  169 	ld	a, (0x05, sp)
      009D94 A1 10            [ 1]  170 	cp	a, #0x10
      009D96 27 27            [ 1]  171 	jreq	00104$
      009D98 7B 05            [ 1]  172 	ld	a, (0x05, sp)
      009D9A A1 20            [ 1]  173 	cp	a, #0x20
      009D9C 27 21            [ 1]  174 	jreq	00104$
      009D9E 7B 05            [ 1]  175 	ld	a, (0x05, sp)
      009DA0 A1 30            [ 1]  176 	cp	a, #0x30
      009DA2 27 1B            [ 1]  177 	jreq	00104$
      009DA4 7B 05            [ 1]  178 	ld	a, (0x05, sp)
      009DA6 A1 60            [ 1]  179 	cp	a, #0x60
      009DA8 27 15            [ 1]  180 	jreq	00104$
      009DAA 7B 05            [ 1]  181 	ld	a, (0x05, sp)
      009DAC A1 70            [ 1]  182 	cp	a, #0x70
      009DAE 27 0F            [ 1]  183 	jreq	00104$
      009DB0 4B 72            [ 1]  184 	push	#0x72
      009DB2 5F               [ 1]  185 	clrw	x
      009DB3 89               [ 2]  186 	pushw	x
      009DB4 4B 00            [ 1]  187 	push	#0x00
      009DB6 4B 2E            [ 1]  188 	push	#<(___str_0+0)
      009DB8 4B 81            [ 1]  189 	push	#((___str_0+0) >> 8)
      009DBA CD 85 9D         [ 4]  190 	call	_assert_failed
      009DBD 5B 06            [ 2]  191 	addw	sp, #6
      009DBF                        192 00104$:
                                    193 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 115: assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
      009DBF 0D 06            [ 1]  194 	tnz	(0x06, sp)
      009DC1 27 15            [ 1]  195 	jreq	00121$
      009DC3 7B 06            [ 1]  196 	ld	a, (0x06, sp)
      009DC5 A1 11            [ 1]  197 	cp	a, #0x11
      009DC7 27 0F            [ 1]  198 	jreq	00121$
      009DC9 4B 73            [ 1]  199 	push	#0x73
      009DCB 5F               [ 1]  200 	clrw	x
      009DCC 89               [ 2]  201 	pushw	x
      009DCD 4B 00            [ 1]  202 	push	#0x00
      009DCF 4B 2E            [ 1]  203 	push	#<(___str_0+0)
      009DD1 4B 81            [ 1]  204 	push	#((___str_0+0) >> 8)
      009DD3 CD 85 9D         [ 4]  205 	call	_assert_failed
      009DD6 5B 06            [ 2]  206 	addw	sp, #6
      009DD8                        207 00121$:
                                    208 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 116: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      009DD8 0D 09            [ 1]  209 	tnz	(0x09, sp)
      009DDA 27 15            [ 1]  210 	jreq	00126$
      009DDC 7B 09            [ 1]  211 	ld	a, (0x09, sp)
      009DDE A1 22            [ 1]  212 	cp	a, #0x22
      009DE0 27 0F            [ 1]  213 	jreq	00126$
      009DE2 4B 74            [ 1]  214 	push	#0x74
      009DE4 5F               [ 1]  215 	clrw	x
      009DE5 89               [ 2]  216 	pushw	x
      009DE6 4B 00            [ 1]  217 	push	#0x00
      009DE8 4B 2E            [ 1]  218 	push	#<(___str_0+0)
      009DEA 4B 81            [ 1]  219 	push	#((___str_0+0) >> 8)
      009DEC CD 85 9D         [ 4]  220 	call	_assert_failed
      009DEF 5B 06            [ 2]  221 	addw	sp, #6
      009DF1                        222 00126$:
                                    223 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 119: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
      009DF1 C6 53 08         [ 1]  224 	ld	a, 0x5308
      009DF4 A4 FC            [ 1]  225 	and	a, #0xfc
      009DF6 C7 53 08         [ 1]  226 	ld	0x5308, a
                                    227 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 121: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
      009DF9 C6 53 08         [ 1]  228 	ld	a, 0x5308
      009DFC 6B 01            [ 1]  229 	ld	(0x01, sp), a
      009DFE 7B 06            [ 1]  230 	ld	a, (0x06, sp)
      009E00 A4 01            [ 1]  231 	and	a, #0x01
      009E02 6B 02            [ 1]  232 	ld	(0x02, sp), a
                                    233 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 122: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
      009E04 7B 09            [ 1]  234 	ld	a, (0x09, sp)
      009E06 A4 02            [ 1]  235 	and	a, #0x02
      009E08 1A 02            [ 1]  236 	or	a, (0x02, sp)
      009E0A 1A 01            [ 1]  237 	or	a, (0x01, sp)
      009E0C C7 53 08         [ 1]  238 	ld	0x5308, a
                                    239 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 125: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
      009E0F C6 53 05         [ 1]  240 	ld	a, 0x5305
      009E12 A4 8F            [ 1]  241 	and	a, #0x8f
                                    242 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 126: (uint8_t)TIM2_OCMode);
      009E14 1A 05            [ 1]  243 	or	a, (0x05, sp)
      009E16 C7 53 05         [ 1]  244 	ld	0x5305, a
                                    245 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 129: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
      009E19 7B 07            [ 1]  246 	ld	a, (0x07, sp)
      009E1B C7 53 0F         [ 1]  247 	ld	0x530f, a
                                    248 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 130: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
      009E1E 7B 08            [ 1]  249 	ld	a, (0x08, sp)
      009E20 C7 53 10         [ 1]  250 	ld	0x5310, a
                                    251 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 131: }
      009E23 85               [ 2]  252 	popw	x
      009E24 81               [ 4]  253 	ret
                                    254 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 142: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    255 ;	-----------------------------------------
                                    256 ;	 function TIM2_OC2Init
                                    257 ;	-----------------------------------------
      009E25                        258 _TIM2_OC2Init:
      009E25 89               [ 2]  259 	pushw	x
                                    260 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 148: assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
      009E26 0D 05            [ 1]  261 	tnz	(0x05, sp)
      009E28 27 2D            [ 1]  262 	jreq	00104$
      009E2A 7B 05            [ 1]  263 	ld	a, (0x05, sp)
      009E2C A1 10            [ 1]  264 	cp	a, #0x10
      009E2E 27 27            [ 1]  265 	jreq	00104$
      009E30 7B 05            [ 1]  266 	ld	a, (0x05, sp)
      009E32 A1 20            [ 1]  267 	cp	a, #0x20
      009E34 27 21            [ 1]  268 	jreq	00104$
      009E36 7B 05            [ 1]  269 	ld	a, (0x05, sp)
      009E38 A1 30            [ 1]  270 	cp	a, #0x30
      009E3A 27 1B            [ 1]  271 	jreq	00104$
      009E3C 7B 05            [ 1]  272 	ld	a, (0x05, sp)
      009E3E A1 60            [ 1]  273 	cp	a, #0x60
      009E40 27 15            [ 1]  274 	jreq	00104$
      009E42 7B 05            [ 1]  275 	ld	a, (0x05, sp)
      009E44 A1 70            [ 1]  276 	cp	a, #0x70
      009E46 27 0F            [ 1]  277 	jreq	00104$
      009E48 4B 94            [ 1]  278 	push	#0x94
      009E4A 5F               [ 1]  279 	clrw	x
      009E4B 89               [ 2]  280 	pushw	x
      009E4C 4B 00            [ 1]  281 	push	#0x00
      009E4E 4B 2E            [ 1]  282 	push	#<(___str_0+0)
      009E50 4B 81            [ 1]  283 	push	#((___str_0+0) >> 8)
      009E52 CD 85 9D         [ 4]  284 	call	_assert_failed
      009E55 5B 06            [ 2]  285 	addw	sp, #6
      009E57                        286 00104$:
                                    287 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 149: assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
      009E57 0D 06            [ 1]  288 	tnz	(0x06, sp)
      009E59 27 15            [ 1]  289 	jreq	00121$
      009E5B 7B 06            [ 1]  290 	ld	a, (0x06, sp)
      009E5D A1 11            [ 1]  291 	cp	a, #0x11
      009E5F 27 0F            [ 1]  292 	jreq	00121$
      009E61 4B 95            [ 1]  293 	push	#0x95
      009E63 5F               [ 1]  294 	clrw	x
      009E64 89               [ 2]  295 	pushw	x
      009E65 4B 00            [ 1]  296 	push	#0x00
      009E67 4B 2E            [ 1]  297 	push	#<(___str_0+0)
      009E69 4B 81            [ 1]  298 	push	#((___str_0+0) >> 8)
      009E6B CD 85 9D         [ 4]  299 	call	_assert_failed
      009E6E 5B 06            [ 2]  300 	addw	sp, #6
      009E70                        301 00121$:
                                    302 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 150: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      009E70 0D 09            [ 1]  303 	tnz	(0x09, sp)
      009E72 27 15            [ 1]  304 	jreq	00126$
      009E74 7B 09            [ 1]  305 	ld	a, (0x09, sp)
      009E76 A1 22            [ 1]  306 	cp	a, #0x22
      009E78 27 0F            [ 1]  307 	jreq	00126$
      009E7A 4B 96            [ 1]  308 	push	#0x96
      009E7C 5F               [ 1]  309 	clrw	x
      009E7D 89               [ 2]  310 	pushw	x
      009E7E 4B 00            [ 1]  311 	push	#0x00
      009E80 4B 2E            [ 1]  312 	push	#<(___str_0+0)
      009E82 4B 81            [ 1]  313 	push	#((___str_0+0) >> 8)
      009E84 CD 85 9D         [ 4]  314 	call	_assert_failed
      009E87 5B 06            [ 2]  315 	addw	sp, #6
      009E89                        316 00126$:
                                    317 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 154: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
      009E89 C6 53 08         [ 1]  318 	ld	a, 0x5308
      009E8C A4 CF            [ 1]  319 	and	a, #0xcf
      009E8E C7 53 08         [ 1]  320 	ld	0x5308, a
                                    321 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 156: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
      009E91 C6 53 08         [ 1]  322 	ld	a, 0x5308
      009E94 6B 01            [ 1]  323 	ld	(0x01, sp), a
      009E96 7B 06            [ 1]  324 	ld	a, (0x06, sp)
      009E98 A4 10            [ 1]  325 	and	a, #0x10
      009E9A 6B 02            [ 1]  326 	ld	(0x02, sp), a
                                    327 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 157: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
      009E9C 7B 09            [ 1]  328 	ld	a, (0x09, sp)
      009E9E A4 20            [ 1]  329 	and	a, #0x20
      009EA0 1A 02            [ 1]  330 	or	a, (0x02, sp)
      009EA2 1A 01            [ 1]  331 	or	a, (0x01, sp)
      009EA4 C7 53 08         [ 1]  332 	ld	0x5308, a
                                    333 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 161: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
      009EA7 C6 53 06         [ 1]  334 	ld	a, 0x5306
      009EAA A4 8F            [ 1]  335 	and	a, #0x8f
                                    336 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 162: (uint8_t)TIM2_OCMode);
      009EAC 1A 05            [ 1]  337 	or	a, (0x05, sp)
      009EAE C7 53 06         [ 1]  338 	ld	0x5306, a
                                    339 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 166: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
      009EB1 7B 07            [ 1]  340 	ld	a, (0x07, sp)
      009EB3 C7 53 11         [ 1]  341 	ld	0x5311, a
                                    342 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 167: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
      009EB6 7B 08            [ 1]  343 	ld	a, (0x08, sp)
      009EB8 C7 53 12         [ 1]  344 	ld	0x5312, a
                                    345 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 168: }
      009EBB 85               [ 2]  346 	popw	x
      009EBC 81               [ 4]  347 	ret
                                    348 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 179: void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    349 ;	-----------------------------------------
                                    350 ;	 function TIM2_OC3Init
                                    351 ;	-----------------------------------------
      009EBD                        352 _TIM2_OC3Init:
      009EBD 89               [ 2]  353 	pushw	x
                                    354 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 185: assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
      009EBE 0D 05            [ 1]  355 	tnz	(0x05, sp)
      009EC0 27 2D            [ 1]  356 	jreq	00104$
      009EC2 7B 05            [ 1]  357 	ld	a, (0x05, sp)
      009EC4 A1 10            [ 1]  358 	cp	a, #0x10
      009EC6 27 27            [ 1]  359 	jreq	00104$
      009EC8 7B 05            [ 1]  360 	ld	a, (0x05, sp)
      009ECA A1 20            [ 1]  361 	cp	a, #0x20
      009ECC 27 21            [ 1]  362 	jreq	00104$
      009ECE 7B 05            [ 1]  363 	ld	a, (0x05, sp)
      009ED0 A1 30            [ 1]  364 	cp	a, #0x30
      009ED2 27 1B            [ 1]  365 	jreq	00104$
      009ED4 7B 05            [ 1]  366 	ld	a, (0x05, sp)
      009ED6 A1 60            [ 1]  367 	cp	a, #0x60
      009ED8 27 15            [ 1]  368 	jreq	00104$
      009EDA 7B 05            [ 1]  369 	ld	a, (0x05, sp)
      009EDC A1 70            [ 1]  370 	cp	a, #0x70
      009EDE 27 0F            [ 1]  371 	jreq	00104$
      009EE0 4B B9            [ 1]  372 	push	#0xb9
      009EE2 5F               [ 1]  373 	clrw	x
      009EE3 89               [ 2]  374 	pushw	x
      009EE4 4B 00            [ 1]  375 	push	#0x00
      009EE6 4B 2E            [ 1]  376 	push	#<(___str_0+0)
      009EE8 4B 81            [ 1]  377 	push	#((___str_0+0) >> 8)
      009EEA CD 85 9D         [ 4]  378 	call	_assert_failed
      009EED 5B 06            [ 2]  379 	addw	sp, #6
      009EEF                        380 00104$:
                                    381 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 186: assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
      009EEF 0D 06            [ 1]  382 	tnz	(0x06, sp)
      009EF1 27 15            [ 1]  383 	jreq	00121$
      009EF3 7B 06            [ 1]  384 	ld	a, (0x06, sp)
      009EF5 A1 11            [ 1]  385 	cp	a, #0x11
      009EF7 27 0F            [ 1]  386 	jreq	00121$
      009EF9 4B BA            [ 1]  387 	push	#0xba
      009EFB 5F               [ 1]  388 	clrw	x
      009EFC 89               [ 2]  389 	pushw	x
      009EFD 4B 00            [ 1]  390 	push	#0x00
      009EFF 4B 2E            [ 1]  391 	push	#<(___str_0+0)
      009F01 4B 81            [ 1]  392 	push	#((___str_0+0) >> 8)
      009F03 CD 85 9D         [ 4]  393 	call	_assert_failed
      009F06 5B 06            [ 2]  394 	addw	sp, #6
      009F08                        395 00121$:
                                    396 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 187: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      009F08 0D 09            [ 1]  397 	tnz	(0x09, sp)
      009F0A 27 15            [ 1]  398 	jreq	00126$
      009F0C 7B 09            [ 1]  399 	ld	a, (0x09, sp)
      009F0E A1 22            [ 1]  400 	cp	a, #0x22
      009F10 27 0F            [ 1]  401 	jreq	00126$
      009F12 4B BB            [ 1]  402 	push	#0xbb
      009F14 5F               [ 1]  403 	clrw	x
      009F15 89               [ 2]  404 	pushw	x
      009F16 4B 00            [ 1]  405 	push	#0x00
      009F18 4B 2E            [ 1]  406 	push	#<(___str_0+0)
      009F1A 4B 81            [ 1]  407 	push	#((___str_0+0) >> 8)
      009F1C CD 85 9D         [ 4]  408 	call	_assert_failed
      009F1F 5B 06            [ 2]  409 	addw	sp, #6
      009F21                        410 00126$:
                                    411 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 189: TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
      009F21 C6 53 09         [ 1]  412 	ld	a, 0x5309
      009F24 A4 FC            [ 1]  413 	and	a, #0xfc
      009F26 C7 53 09         [ 1]  414 	ld	0x5309, a
                                    415 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 191: TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
      009F29 C6 53 09         [ 1]  416 	ld	a, 0x5309
      009F2C 6B 01            [ 1]  417 	ld	(0x01, sp), a
      009F2E 7B 06            [ 1]  418 	ld	a, (0x06, sp)
      009F30 A4 01            [ 1]  419 	and	a, #0x01
      009F32 6B 02            [ 1]  420 	ld	(0x02, sp), a
                                    421 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 192: (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
      009F34 7B 09            [ 1]  422 	ld	a, (0x09, sp)
      009F36 A4 02            [ 1]  423 	and	a, #0x02
      009F38 1A 02            [ 1]  424 	or	a, (0x02, sp)
      009F3A 1A 01            [ 1]  425 	or	a, (0x01, sp)
      009F3C C7 53 09         [ 1]  426 	ld	0x5309, a
                                    427 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 195: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
      009F3F C6 53 07         [ 1]  428 	ld	a, 0x5307
      009F42 A4 8F            [ 1]  429 	and	a, #0x8f
                                    430 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 196: (uint8_t)TIM2_OCMode);
      009F44 1A 05            [ 1]  431 	or	a, (0x05, sp)
      009F46 C7 53 07         [ 1]  432 	ld	0x5307, a
                                    433 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 199: TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
      009F49 7B 07            [ 1]  434 	ld	a, (0x07, sp)
      009F4B C7 53 13         [ 1]  435 	ld	0x5313, a
                                    436 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 200: TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
      009F4E 7B 08            [ 1]  437 	ld	a, (0x08, sp)
      009F50 C7 53 14         [ 1]  438 	ld	0x5314, a
                                    439 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 201: }
      009F53 85               [ 2]  440 	popw	x
      009F54 81               [ 4]  441 	ret
                                    442 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 212: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
                                    443 ;	-----------------------------------------
                                    444 ;	 function TIM2_ICInit
                                    445 ;	-----------------------------------------
      009F55                        446 _TIM2_ICInit:
      009F55 88               [ 1]  447 	push	a
                                    448 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 219: assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
      009F56 7B 04            [ 1]  449 	ld	a, (0x04, sp)
      009F58 4A               [ 1]  450 	dec	a
      009F59 26 05            [ 1]  451 	jrne	00219$
      009F5B A6 01            [ 1]  452 	ld	a, #0x01
      009F5D 6B 01            [ 1]  453 	ld	(0x01, sp), a
      009F5F C5                     454 	.byte 0xc5
      009F60                        455 00219$:
      009F60 0F 01            [ 1]  456 	clr	(0x01, sp)
      009F62                        457 00220$:
      009F62 0D 04            [ 1]  458 	tnz	(0x04, sp)
      009F64 27 19            [ 1]  459 	jreq	00110$
      009F66 0D 01            [ 1]  460 	tnz	(0x01, sp)
      009F68 26 15            [ 1]  461 	jrne	00110$
      009F6A 7B 04            [ 1]  462 	ld	a, (0x04, sp)
      009F6C A1 02            [ 1]  463 	cp	a, #0x02
      009F6E 27 0F            [ 1]  464 	jreq	00110$
      009F70 4B DB            [ 1]  465 	push	#0xdb
      009F72 5F               [ 1]  466 	clrw	x
      009F73 89               [ 2]  467 	pushw	x
      009F74 4B 00            [ 1]  468 	push	#0x00
      009F76 4B 2E            [ 1]  469 	push	#<(___str_0+0)
      009F78 4B 81            [ 1]  470 	push	#((___str_0+0) >> 8)
      009F7A CD 85 9D         [ 4]  471 	call	_assert_failed
      009F7D 5B 06            [ 2]  472 	addw	sp, #6
      009F7F                        473 00110$:
                                    474 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 220: assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
      009F7F 0D 05            [ 1]  475 	tnz	(0x05, sp)
      009F81 27 15            [ 1]  476 	jreq	00118$
      009F83 7B 05            [ 1]  477 	ld	a, (0x05, sp)
      009F85 A1 44            [ 1]  478 	cp	a, #0x44
      009F87 27 0F            [ 1]  479 	jreq	00118$
      009F89 4B DC            [ 1]  480 	push	#0xdc
      009F8B 5F               [ 1]  481 	clrw	x
      009F8C 89               [ 2]  482 	pushw	x
      009F8D 4B 00            [ 1]  483 	push	#0x00
      009F8F 4B 2E            [ 1]  484 	push	#<(___str_0+0)
      009F91 4B 81            [ 1]  485 	push	#((___str_0+0) >> 8)
      009F93 CD 85 9D         [ 4]  486 	call	_assert_failed
      009F96 5B 06            [ 2]  487 	addw	sp, #6
      009F98                        488 00118$:
                                    489 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 221: assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
      009F98 7B 06            [ 1]  490 	ld	a, (0x06, sp)
      009F9A 4A               [ 1]  491 	dec	a
      009F9B 27 1B            [ 1]  492 	jreq	00123$
      009F9D 7B 06            [ 1]  493 	ld	a, (0x06, sp)
      009F9F A1 02            [ 1]  494 	cp	a, #0x02
      009FA1 27 15            [ 1]  495 	jreq	00123$
      009FA3 7B 06            [ 1]  496 	ld	a, (0x06, sp)
      009FA5 A1 03            [ 1]  497 	cp	a, #0x03
      009FA7 27 0F            [ 1]  498 	jreq	00123$
      009FA9 4B DD            [ 1]  499 	push	#0xdd
      009FAB 5F               [ 1]  500 	clrw	x
      009FAC 89               [ 2]  501 	pushw	x
      009FAD 4B 00            [ 1]  502 	push	#0x00
      009FAF 4B 2E            [ 1]  503 	push	#<(___str_0+0)
      009FB1 4B 81            [ 1]  504 	push	#((___str_0+0) >> 8)
      009FB3 CD 85 9D         [ 4]  505 	call	_assert_failed
      009FB6 5B 06            [ 2]  506 	addw	sp, #6
      009FB8                        507 00123$:
                                    508 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 222: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
      009FB8 0D 07            [ 1]  509 	tnz	(0x07, sp)
      009FBA 27 21            [ 1]  510 	jreq	00131$
      009FBC 7B 07            [ 1]  511 	ld	a, (0x07, sp)
      009FBE A1 04            [ 1]  512 	cp	a, #0x04
      009FC0 27 1B            [ 1]  513 	jreq	00131$
      009FC2 7B 07            [ 1]  514 	ld	a, (0x07, sp)
      009FC4 A1 08            [ 1]  515 	cp	a, #0x08
      009FC6 27 15            [ 1]  516 	jreq	00131$
      009FC8 7B 07            [ 1]  517 	ld	a, (0x07, sp)
      009FCA A1 0C            [ 1]  518 	cp	a, #0x0c
      009FCC 27 0F            [ 1]  519 	jreq	00131$
      009FCE 4B DE            [ 1]  520 	push	#0xde
      009FD0 5F               [ 1]  521 	clrw	x
      009FD1 89               [ 2]  522 	pushw	x
      009FD2 4B 00            [ 1]  523 	push	#0x00
      009FD4 4B 2E            [ 1]  524 	push	#<(___str_0+0)
      009FD6 4B 81            [ 1]  525 	push	#((___str_0+0) >> 8)
      009FD8 CD 85 9D         [ 4]  526 	call	_assert_failed
      009FDB 5B 06            [ 2]  527 	addw	sp, #6
      009FDD                        528 00131$:
                                    529 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 223: assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
      009FDD 7B 08            [ 1]  530 	ld	a, (0x08, sp)
      009FDF A1 0F            [ 1]  531 	cp	a, #0x0f
      009FE1 23 0F            [ 2]  532 	jrule	00142$
      009FE3 4B DF            [ 1]  533 	push	#0xdf
      009FE5 5F               [ 1]  534 	clrw	x
      009FE6 89               [ 2]  535 	pushw	x
      009FE7 4B 00            [ 1]  536 	push	#0x00
      009FE9 4B 2E            [ 1]  537 	push	#<(___str_0+0)
      009FEB 4B 81            [ 1]  538 	push	#((___str_0+0) >> 8)
      009FED CD 85 9D         [ 4]  539 	call	_assert_failed
      009FF0 5B 06            [ 2]  540 	addw	sp, #6
      009FF2                        541 00142$:
                                    542 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 225: if (TIM2_Channel == TIM2_CHANNEL_1)
      009FF2 0D 04            [ 1]  543 	tnz	(0x04, sp)
      009FF4 26 17            [ 1]  544 	jrne	00105$
                                    545 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 228: TI1_Config((uint8_t)TIM2_ICPolarity,
      009FF6 7B 08            [ 1]  546 	ld	a, (0x08, sp)
      009FF8 88               [ 1]  547 	push	a
      009FF9 7B 07            [ 1]  548 	ld	a, (0x07, sp)
      009FFB 88               [ 1]  549 	push	a
      009FFC 7B 07            [ 1]  550 	ld	a, (0x07, sp)
      009FFE 88               [ 1]  551 	push	a
      009FFF CD A7 BF         [ 4]  552 	call	_TI1_Config
      00A002 5B 03            [ 2]  553 	addw	sp, #3
                                    554 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 233: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00A004 7B 07            [ 1]  555 	ld	a, (0x07, sp)
      00A006 88               [ 1]  556 	push	a
      00A007 CD A5 E6         [ 4]  557 	call	_TIM2_SetIC1Prescaler
      00A00A 84               [ 1]  558 	pop	a
      00A00B 20 30            [ 2]  559 	jra	00107$
      00A00D                        560 00105$:
                                    561 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 235: else if (TIM2_Channel == TIM2_CHANNEL_2)
      00A00D 7B 01            [ 1]  562 	ld	a, (0x01, sp)
      00A00F 27 17            [ 1]  563 	jreq	00102$
                                    564 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 238: TI2_Config((uint8_t)TIM2_ICPolarity,
      00A011 7B 08            [ 1]  565 	ld	a, (0x08, sp)
      00A013 88               [ 1]  566 	push	a
      00A014 7B 07            [ 1]  567 	ld	a, (0x07, sp)
      00A016 88               [ 1]  568 	push	a
      00A017 7B 07            [ 1]  569 	ld	a, (0x07, sp)
      00A019 88               [ 1]  570 	push	a
      00A01A CD A7 F0         [ 4]  571 	call	_TI2_Config
      00A01D 5B 03            [ 2]  572 	addw	sp, #3
                                    573 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 243: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00A01F 7B 07            [ 1]  574 	ld	a, (0x07, sp)
      00A021 88               [ 1]  575 	push	a
      00A022 CD A6 16         [ 4]  576 	call	_TIM2_SetIC2Prescaler
      00A025 84               [ 1]  577 	pop	a
      00A026 20 15            [ 2]  578 	jra	00107$
      00A028                        579 00102$:
                                    580 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 248: TI3_Config((uint8_t)TIM2_ICPolarity,
      00A028 7B 08            [ 1]  581 	ld	a, (0x08, sp)
      00A02A 88               [ 1]  582 	push	a
      00A02B 7B 07            [ 1]  583 	ld	a, (0x07, sp)
      00A02D 88               [ 1]  584 	push	a
      00A02E 7B 07            [ 1]  585 	ld	a, (0x07, sp)
      00A030 88               [ 1]  586 	push	a
      00A031 CD A8 21         [ 4]  587 	call	_TI3_Config
      00A034 5B 03            [ 2]  588 	addw	sp, #3
                                    589 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 253: TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
      00A036 7B 07            [ 1]  590 	ld	a, (0x07, sp)
      00A038 88               [ 1]  591 	push	a
      00A039 CD A6 46         [ 4]  592 	call	_TIM2_SetIC3Prescaler
      00A03C 84               [ 1]  593 	pop	a
      00A03D                        594 00107$:
                                    595 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 255: }
      00A03D 84               [ 1]  596 	pop	a
      00A03E 81               [ 4]  597 	ret
                                    598 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 266: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
                                    599 ;	-----------------------------------------
                                    600 ;	 function TIM2_PWMIConfig
                                    601 ;	-----------------------------------------
      00A03F                        602 _TIM2_PWMIConfig:
      00A03F 89               [ 2]  603 	pushw	x
                                    604 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 276: assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
      00A040 0D 05            [ 1]  605 	tnz	(0x05, sp)
      00A042 27 14            [ 1]  606 	jreq	00113$
      00A044 7B 05            [ 1]  607 	ld	a, (0x05, sp)
      00A046 4A               [ 1]  608 	dec	a
      00A047 27 0F            [ 1]  609 	jreq	00113$
      00A049 4B 14            [ 1]  610 	push	#0x14
      00A04B 4B 01            [ 1]  611 	push	#0x01
      00A04D 5F               [ 1]  612 	clrw	x
      00A04E 89               [ 2]  613 	pushw	x
      00A04F 4B 2E            [ 1]  614 	push	#<(___str_0+0)
      00A051 4B 81            [ 1]  615 	push	#((___str_0+0) >> 8)
      00A053 CD 85 9D         [ 4]  616 	call	_assert_failed
      00A056 5B 06            [ 2]  617 	addw	sp, #6
      00A058                        618 00113$:
                                    619 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 277: assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
      00A058 7B 06            [ 1]  620 	ld	a, (0x06, sp)
      00A05A A0 44            [ 1]  621 	sub	a, #0x44
      00A05C 26 04            [ 1]  622 	jrne	00216$
      00A05E 4C               [ 1]  623 	inc	a
      00A05F 6B 01            [ 1]  624 	ld	(0x01, sp), a
      00A061 C5                     625 	.byte 0xc5
      00A062                        626 00216$:
      00A062 0F 01            [ 1]  627 	clr	(0x01, sp)
      00A064                        628 00217$:
      00A064 0D 06            [ 1]  629 	tnz	(0x06, sp)
      00A066 27 13            [ 1]  630 	jreq	00118$
      00A068 0D 01            [ 1]  631 	tnz	(0x01, sp)
      00A06A 26 0F            [ 1]  632 	jrne	00118$
      00A06C 4B 15            [ 1]  633 	push	#0x15
      00A06E 4B 01            [ 1]  634 	push	#0x01
      00A070 5F               [ 1]  635 	clrw	x
      00A071 89               [ 2]  636 	pushw	x
      00A072 4B 2E            [ 1]  637 	push	#<(___str_0+0)
      00A074 4B 81            [ 1]  638 	push	#((___str_0+0) >> 8)
      00A076 CD 85 9D         [ 4]  639 	call	_assert_failed
      00A079 5B 06            [ 2]  640 	addw	sp, #6
      00A07B                        641 00118$:
                                    642 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 278: assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
      00A07B 7B 07            [ 1]  643 	ld	a, (0x07, sp)
      00A07D 4A               [ 1]  644 	dec	a
      00A07E 26 05            [ 1]  645 	jrne	00221$
      00A080 A6 01            [ 1]  646 	ld	a, #0x01
      00A082 6B 02            [ 1]  647 	ld	(0x02, sp), a
      00A084 C5                     648 	.byte 0xc5
      00A085                        649 00221$:
      00A085 0F 02            [ 1]  650 	clr	(0x02, sp)
      00A087                        651 00222$:
      00A087 0D 02            [ 1]  652 	tnz	(0x02, sp)
      00A089 26 1B            [ 1]  653 	jrne	00123$
      00A08B 7B 07            [ 1]  654 	ld	a, (0x07, sp)
      00A08D A1 02            [ 1]  655 	cp	a, #0x02
      00A08F 27 15            [ 1]  656 	jreq	00123$
      00A091 7B 07            [ 1]  657 	ld	a, (0x07, sp)
      00A093 A1 03            [ 1]  658 	cp	a, #0x03
      00A095 27 0F            [ 1]  659 	jreq	00123$
      00A097 4B 16            [ 1]  660 	push	#0x16
      00A099 4B 01            [ 1]  661 	push	#0x01
      00A09B 5F               [ 1]  662 	clrw	x
      00A09C 89               [ 2]  663 	pushw	x
      00A09D 4B 2E            [ 1]  664 	push	#<(___str_0+0)
      00A09F 4B 81            [ 1]  665 	push	#((___str_0+0) >> 8)
      00A0A1 CD 85 9D         [ 4]  666 	call	_assert_failed
      00A0A4 5B 06            [ 2]  667 	addw	sp, #6
      00A0A6                        668 00123$:
                                    669 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 279: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
      00A0A6 0D 08            [ 1]  670 	tnz	(0x08, sp)
      00A0A8 27 21            [ 1]  671 	jreq	00131$
      00A0AA 7B 08            [ 1]  672 	ld	a, (0x08, sp)
      00A0AC A1 04            [ 1]  673 	cp	a, #0x04
      00A0AE 27 1B            [ 1]  674 	jreq	00131$
      00A0B0 7B 08            [ 1]  675 	ld	a, (0x08, sp)
      00A0B2 A1 08            [ 1]  676 	cp	a, #0x08
      00A0B4 27 15            [ 1]  677 	jreq	00131$
      00A0B6 7B 08            [ 1]  678 	ld	a, (0x08, sp)
      00A0B8 A1 0C            [ 1]  679 	cp	a, #0x0c
      00A0BA 27 0F            [ 1]  680 	jreq	00131$
      00A0BC 4B 17            [ 1]  681 	push	#0x17
      00A0BE 4B 01            [ 1]  682 	push	#0x01
      00A0C0 5F               [ 1]  683 	clrw	x
      00A0C1 89               [ 2]  684 	pushw	x
      00A0C2 4B 2E            [ 1]  685 	push	#<(___str_0+0)
      00A0C4 4B 81            [ 1]  686 	push	#((___str_0+0) >> 8)
      00A0C6 CD 85 9D         [ 4]  687 	call	_assert_failed
      00A0C9 5B 06            [ 2]  688 	addw	sp, #6
      00A0CB                        689 00131$:
                                    690 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 282: if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
      00A0CB 0D 01            [ 1]  691 	tnz	(0x01, sp)
      00A0CD 26 05            [ 1]  692 	jrne	00102$
                                    693 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 284: icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
      00A0CF A6 44            [ 1]  694 	ld	a, #0x44
      00A0D1 6B 01            [ 1]  695 	ld	(0x01, sp), a
                                    696 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 288: icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
      00A0D3 C5                     697 	.byte 0xc5
      00A0D4                        698 00102$:
      00A0D4 0F 01            [ 1]  699 	clr	(0x01, sp)
      00A0D6                        700 00103$:
                                    701 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 292: if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
      00A0D6 7B 02            [ 1]  702 	ld	a, (0x02, sp)
      00A0D8 27 06            [ 1]  703 	jreq	00105$
                                    704 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 294: icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
      00A0DA A6 02            [ 1]  705 	ld	a, #0x02
      00A0DC 6B 02            [ 1]  706 	ld	(0x02, sp), a
      00A0DE 20 04            [ 2]  707 	jra	00106$
      00A0E0                        708 00105$:
                                    709 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 298: icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
      00A0E0 A6 01            [ 1]  710 	ld	a, #0x01
      00A0E2 6B 02            [ 1]  711 	ld	(0x02, sp), a
      00A0E4                        712 00106$:
                                    713 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 301: if (TIM2_Channel == TIM2_CHANNEL_1)
      00A0E4 0D 05            [ 1]  714 	tnz	(0x05, sp)
      00A0E6 26 2C            [ 1]  715 	jrne	00108$
                                    716 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 304: TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
      00A0E8 7B 09            [ 1]  717 	ld	a, (0x09, sp)
      00A0EA 88               [ 1]  718 	push	a
      00A0EB 7B 08            [ 1]  719 	ld	a, (0x08, sp)
      00A0ED 88               [ 1]  720 	push	a
      00A0EE 7B 08            [ 1]  721 	ld	a, (0x08, sp)
      00A0F0 88               [ 1]  722 	push	a
      00A0F1 CD A7 BF         [ 4]  723 	call	_TI1_Config
      00A0F4 5B 03            [ 2]  724 	addw	sp, #3
                                    725 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 308: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00A0F6 7B 08            [ 1]  726 	ld	a, (0x08, sp)
      00A0F8 88               [ 1]  727 	push	a
      00A0F9 CD A5 E6         [ 4]  728 	call	_TIM2_SetIC1Prescaler
      00A0FC 84               [ 1]  729 	pop	a
                                    730 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 311: TI2_Config(icpolarity, icselection, TIM2_ICFilter);
      00A0FD 7B 09            [ 1]  731 	ld	a, (0x09, sp)
      00A0FF 88               [ 1]  732 	push	a
      00A100 7B 03            [ 1]  733 	ld	a, (0x03, sp)
      00A102 88               [ 1]  734 	push	a
      00A103 7B 03            [ 1]  735 	ld	a, (0x03, sp)
      00A105 88               [ 1]  736 	push	a
      00A106 CD A7 F0         [ 4]  737 	call	_TI2_Config
      00A109 5B 03            [ 2]  738 	addw	sp, #3
                                    739 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 314: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00A10B 7B 08            [ 1]  740 	ld	a, (0x08, sp)
      00A10D 88               [ 1]  741 	push	a
      00A10E CD A6 16         [ 4]  742 	call	_TIM2_SetIC2Prescaler
      00A111 84               [ 1]  743 	pop	a
      00A112 20 2A            [ 2]  744 	jra	00110$
      00A114                        745 00108$:
                                    746 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 319: TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
      00A114 7B 09            [ 1]  747 	ld	a, (0x09, sp)
      00A116 88               [ 1]  748 	push	a
      00A117 7B 08            [ 1]  749 	ld	a, (0x08, sp)
      00A119 88               [ 1]  750 	push	a
      00A11A 7B 08            [ 1]  751 	ld	a, (0x08, sp)
      00A11C 88               [ 1]  752 	push	a
      00A11D CD A7 F0         [ 4]  753 	call	_TI2_Config
      00A120 5B 03            [ 2]  754 	addw	sp, #3
                                    755 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 323: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00A122 7B 08            [ 1]  756 	ld	a, (0x08, sp)
      00A124 88               [ 1]  757 	push	a
      00A125 CD A6 16         [ 4]  758 	call	_TIM2_SetIC2Prescaler
      00A128 84               [ 1]  759 	pop	a
                                    760 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 326: TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
      00A129 7B 09            [ 1]  761 	ld	a, (0x09, sp)
      00A12B 88               [ 1]  762 	push	a
      00A12C 7B 03            [ 1]  763 	ld	a, (0x03, sp)
      00A12E 88               [ 1]  764 	push	a
      00A12F 7B 03            [ 1]  765 	ld	a, (0x03, sp)
      00A131 88               [ 1]  766 	push	a
      00A132 CD A7 BF         [ 4]  767 	call	_TI1_Config
      00A135 5B 03            [ 2]  768 	addw	sp, #3
                                    769 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 329: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00A137 7B 08            [ 1]  770 	ld	a, (0x08, sp)
      00A139 88               [ 1]  771 	push	a
      00A13A CD A5 E6         [ 4]  772 	call	_TIM2_SetIC1Prescaler
      00A13D 84               [ 1]  773 	pop	a
      00A13E                        774 00110$:
                                    775 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 331: }
      00A13E 85               [ 2]  776 	popw	x
      00A13F 81               [ 4]  777 	ret
                                    778 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 339: void TIM2_Cmd(FunctionalState NewState)
                                    779 ;	-----------------------------------------
                                    780 ;	 function TIM2_Cmd
                                    781 ;	-----------------------------------------
      00A140                        782 _TIM2_Cmd:
                                    783 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 342: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A140 0D 03            [ 1]  784 	tnz	(0x03, sp)
      00A142 27 14            [ 1]  785 	jreq	00107$
      00A144 7B 03            [ 1]  786 	ld	a, (0x03, sp)
      00A146 4A               [ 1]  787 	dec	a
      00A147 27 0F            [ 1]  788 	jreq	00107$
      00A149 4B 56            [ 1]  789 	push	#0x56
      00A14B 4B 01            [ 1]  790 	push	#0x01
      00A14D 5F               [ 1]  791 	clrw	x
      00A14E 89               [ 2]  792 	pushw	x
      00A14F 4B 2E            [ 1]  793 	push	#<(___str_0+0)
      00A151 4B 81            [ 1]  794 	push	#((___str_0+0) >> 8)
      00A153 CD 85 9D         [ 4]  795 	call	_assert_failed
      00A156 5B 06            [ 2]  796 	addw	sp, #6
      00A158                        797 00107$:
                                    798 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
      00A158 C6 53 00         [ 1]  799 	ld	a, 0x5300
                                    800 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 345: if (NewState != DISABLE)
      00A15B 0D 03            [ 1]  801 	tnz	(0x03, sp)
      00A15D 27 06            [ 1]  802 	jreq	00102$
                                    803 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
      00A15F AA 01            [ 1]  804 	or	a, #0x01
      00A161 C7 53 00         [ 1]  805 	ld	0x5300, a
      00A164 81               [ 4]  806 	ret
      00A165                        807 00102$:
                                    808 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 351: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
      00A165 A4 FE            [ 1]  809 	and	a, #0xfe
      00A167 C7 53 00         [ 1]  810 	ld	0x5300, a
                                    811 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 353: }
      00A16A 81               [ 4]  812 	ret
                                    813 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 368: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
                                    814 ;	-----------------------------------------
                                    815 ;	 function TIM2_ITConfig
                                    816 ;	-----------------------------------------
      00A16B                        817 _TIM2_ITConfig:
      00A16B 88               [ 1]  818 	push	a
                                    819 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 371: assert_param(IS_TIM2_IT_OK(TIM2_IT));
      00A16C 0D 04            [ 1]  820 	tnz	(0x04, sp)
      00A16E 27 06            [ 1]  821 	jreq	00106$
      00A170 7B 04            [ 1]  822 	ld	a, (0x04, sp)
      00A172 A1 0F            [ 1]  823 	cp	a, #0x0f
      00A174 23 0F            [ 2]  824 	jrule	00107$
      00A176                        825 00106$:
      00A176 4B 73            [ 1]  826 	push	#0x73
      00A178 4B 01            [ 1]  827 	push	#0x01
      00A17A 5F               [ 1]  828 	clrw	x
      00A17B 89               [ 2]  829 	pushw	x
      00A17C 4B 2E            [ 1]  830 	push	#<(___str_0+0)
      00A17E 4B 81            [ 1]  831 	push	#((___str_0+0) >> 8)
      00A180 CD 85 9D         [ 4]  832 	call	_assert_failed
      00A183 5B 06            [ 2]  833 	addw	sp, #6
      00A185                        834 00107$:
                                    835 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 372: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A185 0D 05            [ 1]  836 	tnz	(0x05, sp)
      00A187 27 14            [ 1]  837 	jreq	00112$
      00A189 7B 05            [ 1]  838 	ld	a, (0x05, sp)
      00A18B 4A               [ 1]  839 	dec	a
      00A18C 27 0F            [ 1]  840 	jreq	00112$
      00A18E 4B 74            [ 1]  841 	push	#0x74
      00A190 4B 01            [ 1]  842 	push	#0x01
      00A192 5F               [ 1]  843 	clrw	x
      00A193 89               [ 2]  844 	pushw	x
      00A194 4B 2E            [ 1]  845 	push	#<(___str_0+0)
      00A196 4B 81            [ 1]  846 	push	#((___str_0+0) >> 8)
      00A198 CD 85 9D         [ 4]  847 	call	_assert_failed
      00A19B 5B 06            [ 2]  848 	addw	sp, #6
      00A19D                        849 00112$:
                                    850 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
      00A19D C6 53 01         [ 1]  851 	ld	a, 0x5301
                                    852 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 374: if (NewState != DISABLE)
      00A1A0 0D 05            [ 1]  853 	tnz	(0x05, sp)
      00A1A2 27 07            [ 1]  854 	jreq	00102$
                                    855 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
      00A1A4 1A 04            [ 1]  856 	or	a, (0x04, sp)
      00A1A6 C7 53 01         [ 1]  857 	ld	0x5301, a
      00A1A9 20 0C            [ 2]  858 	jra	00104$
      00A1AB                        859 00102$:
                                    860 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 382: TIM2->IER &= (uint8_t)(~TIM2_IT);
      00A1AB 88               [ 1]  861 	push	a
      00A1AC 7B 05            [ 1]  862 	ld	a, (0x05, sp)
      00A1AE 43               [ 1]  863 	cpl	a
      00A1AF 6B 02            [ 1]  864 	ld	(0x02, sp), a
      00A1B1 84               [ 1]  865 	pop	a
      00A1B2 14 01            [ 1]  866 	and	a, (0x01, sp)
      00A1B4 C7 53 01         [ 1]  867 	ld	0x5301, a
      00A1B7                        868 00104$:
                                    869 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 384: }
      00A1B7 84               [ 1]  870 	pop	a
      00A1B8 81               [ 4]  871 	ret
                                    872 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 392: void TIM2_UpdateDisableConfig(FunctionalState NewState)
                                    873 ;	-----------------------------------------
                                    874 ;	 function TIM2_UpdateDisableConfig
                                    875 ;	-----------------------------------------
      00A1B9                        876 _TIM2_UpdateDisableConfig:
                                    877 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 395: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A1B9 0D 03            [ 1]  878 	tnz	(0x03, sp)
      00A1BB 27 14            [ 1]  879 	jreq	00107$
      00A1BD 7B 03            [ 1]  880 	ld	a, (0x03, sp)
      00A1BF 4A               [ 1]  881 	dec	a
      00A1C0 27 0F            [ 1]  882 	jreq	00107$
      00A1C2 4B 8B            [ 1]  883 	push	#0x8b
      00A1C4 4B 01            [ 1]  884 	push	#0x01
      00A1C6 5F               [ 1]  885 	clrw	x
      00A1C7 89               [ 2]  886 	pushw	x
      00A1C8 4B 2E            [ 1]  887 	push	#<(___str_0+0)
      00A1CA 4B 81            [ 1]  888 	push	#((___str_0+0) >> 8)
      00A1CC CD 85 9D         [ 4]  889 	call	_assert_failed
      00A1CF 5B 06            [ 2]  890 	addw	sp, #6
      00A1D1                        891 00107$:
                                    892 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
      00A1D1 C6 53 00         [ 1]  893 	ld	a, 0x5300
                                    894 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 398: if (NewState != DISABLE)
      00A1D4 0D 03            [ 1]  895 	tnz	(0x03, sp)
      00A1D6 27 06            [ 1]  896 	jreq	00102$
                                    897 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
      00A1D8 AA 02            [ 1]  898 	or	a, #0x02
      00A1DA C7 53 00         [ 1]  899 	ld	0x5300, a
      00A1DD 81               [ 4]  900 	ret
      00A1DE                        901 00102$:
                                    902 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 404: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
      00A1DE A4 FD            [ 1]  903 	and	a, #0xfd
      00A1E0 C7 53 00         [ 1]  904 	ld	0x5300, a
                                    905 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 406: }
      00A1E3 81               [ 4]  906 	ret
                                    907 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 416: void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
                                    908 ;	-----------------------------------------
                                    909 ;	 function TIM2_UpdateRequestConfig
                                    910 ;	-----------------------------------------
      00A1E4                        911 _TIM2_UpdateRequestConfig:
                                    912 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 419: assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
      00A1E4 0D 03            [ 1]  913 	tnz	(0x03, sp)
      00A1E6 27 14            [ 1]  914 	jreq	00107$
      00A1E8 7B 03            [ 1]  915 	ld	a, (0x03, sp)
      00A1EA 4A               [ 1]  916 	dec	a
      00A1EB 27 0F            [ 1]  917 	jreq	00107$
      00A1ED 4B A3            [ 1]  918 	push	#0xa3
      00A1EF 4B 01            [ 1]  919 	push	#0x01
      00A1F1 5F               [ 1]  920 	clrw	x
      00A1F2 89               [ 2]  921 	pushw	x
      00A1F3 4B 2E            [ 1]  922 	push	#<(___str_0+0)
      00A1F5 4B 81            [ 1]  923 	push	#((___str_0+0) >> 8)
      00A1F7 CD 85 9D         [ 4]  924 	call	_assert_failed
      00A1FA 5B 06            [ 2]  925 	addw	sp, #6
      00A1FC                        926 00107$:
                                    927 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
      00A1FC C6 53 00         [ 1]  928 	ld	a, 0x5300
                                    929 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 422: if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
      00A1FF 0D 03            [ 1]  930 	tnz	(0x03, sp)
      00A201 27 06            [ 1]  931 	jreq	00102$
                                    932 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
      00A203 AA 04            [ 1]  933 	or	a, #0x04
      00A205 C7 53 00         [ 1]  934 	ld	0x5300, a
      00A208 81               [ 4]  935 	ret
      00A209                        936 00102$:
                                    937 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 428: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
      00A209 A4 FB            [ 1]  938 	and	a, #0xfb
      00A20B C7 53 00         [ 1]  939 	ld	0x5300, a
                                    940 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 430: }
      00A20E 81               [ 4]  941 	ret
                                    942 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 440: void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
                                    943 ;	-----------------------------------------
                                    944 ;	 function TIM2_SelectOnePulseMode
                                    945 ;	-----------------------------------------
      00A20F                        946 _TIM2_SelectOnePulseMode:
                                    947 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 443: assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
      00A20F 7B 03            [ 1]  948 	ld	a, (0x03, sp)
      00A211 4A               [ 1]  949 	dec	a
      00A212 27 13            [ 1]  950 	jreq	00107$
      00A214 0D 03            [ 1]  951 	tnz	(0x03, sp)
      00A216 27 0F            [ 1]  952 	jreq	00107$
      00A218 4B BB            [ 1]  953 	push	#0xbb
      00A21A 4B 01            [ 1]  954 	push	#0x01
      00A21C 5F               [ 1]  955 	clrw	x
      00A21D 89               [ 2]  956 	pushw	x
      00A21E 4B 2E            [ 1]  957 	push	#<(___str_0+0)
      00A220 4B 81            [ 1]  958 	push	#((___str_0+0) >> 8)
      00A222 CD 85 9D         [ 4]  959 	call	_assert_failed
      00A225 5B 06            [ 2]  960 	addw	sp, #6
      00A227                        961 00107$:
                                    962 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
      00A227 C6 53 00         [ 1]  963 	ld	a, 0x5300
                                    964 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 446: if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
      00A22A 0D 03            [ 1]  965 	tnz	(0x03, sp)
      00A22C 27 06            [ 1]  966 	jreq	00102$
                                    967 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
      00A22E AA 08            [ 1]  968 	or	a, #0x08
      00A230 C7 53 00         [ 1]  969 	ld	0x5300, a
      00A233 81               [ 4]  970 	ret
      00A234                        971 00102$:
                                    972 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 452: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
      00A234 A4 F7            [ 1]  973 	and	a, #0xf7
      00A236 C7 53 00         [ 1]  974 	ld	0x5300, a
                                    975 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 454: }
      00A239 81               [ 4]  976 	ret
                                    977 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 484: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
                                    978 ;	-----------------------------------------
                                    979 ;	 function TIM2_PrescalerConfig
                                    980 ;	-----------------------------------------
      00A23A                        981 _TIM2_PrescalerConfig:
                                    982 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 488: assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
      00A23A 0D 04            [ 1]  983 	tnz	(0x04, sp)
      00A23C 27 14            [ 1]  984 	jreq	00104$
      00A23E 7B 04            [ 1]  985 	ld	a, (0x04, sp)
      00A240 4A               [ 1]  986 	dec	a
      00A241 27 0F            [ 1]  987 	jreq	00104$
      00A243 4B E8            [ 1]  988 	push	#0xe8
      00A245 4B 01            [ 1]  989 	push	#0x01
      00A247 5F               [ 1]  990 	clrw	x
      00A248 89               [ 2]  991 	pushw	x
      00A249 4B 2E            [ 1]  992 	push	#<(___str_0+0)
      00A24B 4B 81            [ 1]  993 	push	#((___str_0+0) >> 8)
      00A24D CD 85 9D         [ 4]  994 	call	_assert_failed
      00A250 5B 06            [ 2]  995 	addw	sp, #6
      00A252                        996 00104$:
                                    997 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 489: assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
      00A252 0D 03            [ 1]  998 	tnz	(0x03, sp)
      00A254 27 68            [ 1]  999 	jreq	00109$
      00A256 7B 03            [ 1] 1000 	ld	a, (0x03, sp)
      00A258 4A               [ 1] 1001 	dec	a
      00A259 27 63            [ 1] 1002 	jreq	00109$
      00A25B 7B 03            [ 1] 1003 	ld	a, (0x03, sp)
      00A25D A1 02            [ 1] 1004 	cp	a, #0x02
      00A25F 27 5D            [ 1] 1005 	jreq	00109$
      00A261 7B 03            [ 1] 1006 	ld	a, (0x03, sp)
      00A263 A1 03            [ 1] 1007 	cp	a, #0x03
      00A265 27 57            [ 1] 1008 	jreq	00109$
      00A267 7B 03            [ 1] 1009 	ld	a, (0x03, sp)
      00A269 A1 04            [ 1] 1010 	cp	a, #0x04
      00A26B 27 51            [ 1] 1011 	jreq	00109$
      00A26D 7B 03            [ 1] 1012 	ld	a, (0x03, sp)
      00A26F A1 05            [ 1] 1013 	cp	a, #0x05
      00A271 27 4B            [ 1] 1014 	jreq	00109$
      00A273 7B 03            [ 1] 1015 	ld	a, (0x03, sp)
      00A275 A1 06            [ 1] 1016 	cp	a, #0x06
      00A277 27 45            [ 1] 1017 	jreq	00109$
      00A279 7B 03            [ 1] 1018 	ld	a, (0x03, sp)
      00A27B A1 07            [ 1] 1019 	cp	a, #0x07
      00A27D 27 3F            [ 1] 1020 	jreq	00109$
      00A27F 7B 03            [ 1] 1021 	ld	a, (0x03, sp)
      00A281 A1 08            [ 1] 1022 	cp	a, #0x08
      00A283 27 39            [ 1] 1023 	jreq	00109$
      00A285 7B 03            [ 1] 1024 	ld	a, (0x03, sp)
      00A287 A1 09            [ 1] 1025 	cp	a, #0x09
      00A289 27 33            [ 1] 1026 	jreq	00109$
      00A28B 7B 03            [ 1] 1027 	ld	a, (0x03, sp)
      00A28D A1 0A            [ 1] 1028 	cp	a, #0x0a
      00A28F 27 2D            [ 1] 1029 	jreq	00109$
      00A291 7B 03            [ 1] 1030 	ld	a, (0x03, sp)
      00A293 A1 0B            [ 1] 1031 	cp	a, #0x0b
      00A295 27 27            [ 1] 1032 	jreq	00109$
      00A297 7B 03            [ 1] 1033 	ld	a, (0x03, sp)
      00A299 A1 0C            [ 1] 1034 	cp	a, #0x0c
      00A29B 27 21            [ 1] 1035 	jreq	00109$
      00A29D 7B 03            [ 1] 1036 	ld	a, (0x03, sp)
      00A29F A1 0D            [ 1] 1037 	cp	a, #0x0d
      00A2A1 27 1B            [ 1] 1038 	jreq	00109$
      00A2A3 7B 03            [ 1] 1039 	ld	a, (0x03, sp)
      00A2A5 A1 0E            [ 1] 1040 	cp	a, #0x0e
      00A2A7 27 15            [ 1] 1041 	jreq	00109$
      00A2A9 7B 03            [ 1] 1042 	ld	a, (0x03, sp)
      00A2AB A1 0F            [ 1] 1043 	cp	a, #0x0f
      00A2AD 27 0F            [ 1] 1044 	jreq	00109$
      00A2AF 4B E9            [ 1] 1045 	push	#0xe9
      00A2B1 4B 01            [ 1] 1046 	push	#0x01
      00A2B3 5F               [ 1] 1047 	clrw	x
      00A2B4 89               [ 2] 1048 	pushw	x
      00A2B5 4B 2E            [ 1] 1049 	push	#<(___str_0+0)
      00A2B7 4B 81            [ 1] 1050 	push	#((___str_0+0) >> 8)
      00A2B9 CD 85 9D         [ 4] 1051 	call	_assert_failed
      00A2BC 5B 06            [ 2] 1052 	addw	sp, #6
      00A2BE                       1053 00109$:
                                   1054 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 492: TIM2->PSCR = (uint8_t)Prescaler;
      00A2BE AE 53 0C         [ 2] 1055 	ldw	x, #0x530c
      00A2C1 7B 03            [ 1] 1056 	ld	a, (0x03, sp)
      00A2C3 F7               [ 1] 1057 	ld	(x), a
                                   1058 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 495: TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
      00A2C4 AE 53 04         [ 2] 1059 	ldw	x, #0x5304
      00A2C7 7B 04            [ 1] 1060 	ld	a, (0x04, sp)
      00A2C9 F7               [ 1] 1061 	ld	(x), a
                                   1062 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 496: }
      00A2CA 81               [ 4] 1063 	ret
                                   1064 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 507: void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                   1065 ;	-----------------------------------------
                                   1066 ;	 function TIM2_ForcedOC1Config
                                   1067 ;	-----------------------------------------
      00A2CB                       1068 _TIM2_ForcedOC1Config:
                                   1069 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 510: assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
      00A2CB 7B 03            [ 1] 1070 	ld	a, (0x03, sp)
      00A2CD A1 50            [ 1] 1071 	cp	a, #0x50
      00A2CF 27 15            [ 1] 1072 	jreq	00104$
      00A2D1 7B 03            [ 1] 1073 	ld	a, (0x03, sp)
      00A2D3 A1 40            [ 1] 1074 	cp	a, #0x40
      00A2D5 27 0F            [ 1] 1075 	jreq	00104$
      00A2D7 4B FE            [ 1] 1076 	push	#0xfe
      00A2D9 4B 01            [ 1] 1077 	push	#0x01
      00A2DB 5F               [ 1] 1078 	clrw	x
      00A2DC 89               [ 2] 1079 	pushw	x
      00A2DD 4B 2E            [ 1] 1080 	push	#<(___str_0+0)
      00A2DF 4B 81            [ 1] 1081 	push	#((___str_0+0) >> 8)
      00A2E1 CD 85 9D         [ 4] 1082 	call	_assert_failed
      00A2E4 5B 06            [ 2] 1083 	addw	sp, #6
      00A2E6                       1084 00104$:
                                   1085 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 513: TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
      00A2E6 C6 53 05         [ 1] 1086 	ld	a, 0x5305
      00A2E9 A4 8F            [ 1] 1087 	and	a, #0x8f
                                   1088 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 514: | (uint8_t)TIM2_ForcedAction);
      00A2EB 1A 03            [ 1] 1089 	or	a, (0x03, sp)
      00A2ED C7 53 05         [ 1] 1090 	ld	0x5305, a
                                   1091 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 515: }
      00A2F0 81               [ 4] 1092 	ret
                                   1093 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 526: void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                   1094 ;	-----------------------------------------
                                   1095 ;	 function TIM2_ForcedOC2Config
                                   1096 ;	-----------------------------------------
      00A2F1                       1097 _TIM2_ForcedOC2Config:
                                   1098 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 529: assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
      00A2F1 7B 03            [ 1] 1099 	ld	a, (0x03, sp)
      00A2F3 A1 50            [ 1] 1100 	cp	a, #0x50
      00A2F5 27 15            [ 1] 1101 	jreq	00104$
      00A2F7 7B 03            [ 1] 1102 	ld	a, (0x03, sp)
      00A2F9 A1 40            [ 1] 1103 	cp	a, #0x40
      00A2FB 27 0F            [ 1] 1104 	jreq	00104$
      00A2FD 4B 11            [ 1] 1105 	push	#0x11
      00A2FF 4B 02            [ 1] 1106 	push	#0x02
      00A301 5F               [ 1] 1107 	clrw	x
      00A302 89               [ 2] 1108 	pushw	x
      00A303 4B 2E            [ 1] 1109 	push	#<(___str_0+0)
      00A305 4B 81            [ 1] 1110 	push	#((___str_0+0) >> 8)
      00A307 CD 85 9D         [ 4] 1111 	call	_assert_failed
      00A30A 5B 06            [ 2] 1112 	addw	sp, #6
      00A30C                       1113 00104$:
                                   1114 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 532: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
      00A30C C6 53 06         [ 1] 1115 	ld	a, 0x5306
      00A30F A4 8F            [ 1] 1116 	and	a, #0x8f
                                   1117 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 533: | (uint8_t)TIM2_ForcedAction);
      00A311 1A 03            [ 1] 1118 	or	a, (0x03, sp)
      00A313 C7 53 06         [ 1] 1119 	ld	0x5306, a
                                   1120 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 534: }
      00A316 81               [ 4] 1121 	ret
                                   1122 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 545: void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                   1123 ;	-----------------------------------------
                                   1124 ;	 function TIM2_ForcedOC3Config
                                   1125 ;	-----------------------------------------
      00A317                       1126 _TIM2_ForcedOC3Config:
                                   1127 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 548: assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
      00A317 7B 03            [ 1] 1128 	ld	a, (0x03, sp)
      00A319 A1 50            [ 1] 1129 	cp	a, #0x50
      00A31B 27 15            [ 1] 1130 	jreq	00104$
      00A31D 7B 03            [ 1] 1131 	ld	a, (0x03, sp)
      00A31F A1 40            [ 1] 1132 	cp	a, #0x40
      00A321 27 0F            [ 1] 1133 	jreq	00104$
      00A323 4B 24            [ 1] 1134 	push	#0x24
      00A325 4B 02            [ 1] 1135 	push	#0x02
      00A327 5F               [ 1] 1136 	clrw	x
      00A328 89               [ 2] 1137 	pushw	x
      00A329 4B 2E            [ 1] 1138 	push	#<(___str_0+0)
      00A32B 4B 81            [ 1] 1139 	push	#((___str_0+0) >> 8)
      00A32D CD 85 9D         [ 4] 1140 	call	_assert_failed
      00A330 5B 06            [ 2] 1141 	addw	sp, #6
      00A332                       1142 00104$:
                                   1143 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 551: TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
      00A332 C6 53 07         [ 1] 1144 	ld	a, 0x5307
      00A335 A4 8F            [ 1] 1145 	and	a, #0x8f
                                   1146 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 552: | (uint8_t)TIM2_ForcedAction);
      00A337 1A 03            [ 1] 1147 	or	a, (0x03, sp)
      00A339 C7 53 07         [ 1] 1148 	ld	0x5307, a
                                   1149 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 553: }
      00A33C 81               [ 4] 1150 	ret
                                   1151 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 561: void TIM2_ARRPreloadConfig(FunctionalState NewState)
                                   1152 ;	-----------------------------------------
                                   1153 ;	 function TIM2_ARRPreloadConfig
                                   1154 ;	-----------------------------------------
      00A33D                       1155 _TIM2_ARRPreloadConfig:
                                   1156 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 564: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A33D 0D 03            [ 1] 1157 	tnz	(0x03, sp)
      00A33F 27 14            [ 1] 1158 	jreq	00107$
      00A341 7B 03            [ 1] 1159 	ld	a, (0x03, sp)
      00A343 4A               [ 1] 1160 	dec	a
      00A344 27 0F            [ 1] 1161 	jreq	00107$
      00A346 4B 34            [ 1] 1162 	push	#0x34
      00A348 4B 02            [ 1] 1163 	push	#0x02
      00A34A 5F               [ 1] 1164 	clrw	x
      00A34B 89               [ 2] 1165 	pushw	x
      00A34C 4B 2E            [ 1] 1166 	push	#<(___str_0+0)
      00A34E 4B 81            [ 1] 1167 	push	#((___str_0+0) >> 8)
      00A350 CD 85 9D         [ 4] 1168 	call	_assert_failed
      00A353 5B 06            [ 2] 1169 	addw	sp, #6
      00A355                       1170 00107$:
                                   1171 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
      00A355 C6 53 00         [ 1] 1172 	ld	a, 0x5300
                                   1173 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 567: if (NewState != DISABLE)
      00A358 0D 03            [ 1] 1174 	tnz	(0x03, sp)
      00A35A 27 06            [ 1] 1175 	jreq	00102$
                                   1176 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
      00A35C AA 80            [ 1] 1177 	or	a, #0x80
      00A35E C7 53 00         [ 1] 1178 	ld	0x5300, a
      00A361 81               [ 4] 1179 	ret
      00A362                       1180 00102$:
                                   1181 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 573: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
      00A362 A4 7F            [ 1] 1182 	and	a, #0x7f
      00A364 C7 53 00         [ 1] 1183 	ld	0x5300, a
                                   1184 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 575: }
      00A367 81               [ 4] 1185 	ret
                                   1186 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 583: void TIM2_OC1PreloadConfig(FunctionalState NewState)
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function TIM2_OC1PreloadConfig
                                   1189 ;	-----------------------------------------
      00A368                       1190 _TIM2_OC1PreloadConfig:
                                   1191 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 586: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A368 0D 03            [ 1] 1192 	tnz	(0x03, sp)
      00A36A 27 14            [ 1] 1193 	jreq	00107$
      00A36C 7B 03            [ 1] 1194 	ld	a, (0x03, sp)
      00A36E 4A               [ 1] 1195 	dec	a
      00A36F 27 0F            [ 1] 1196 	jreq	00107$
      00A371 4B 4A            [ 1] 1197 	push	#0x4a
      00A373 4B 02            [ 1] 1198 	push	#0x02
      00A375 5F               [ 1] 1199 	clrw	x
      00A376 89               [ 2] 1200 	pushw	x
      00A377 4B 2E            [ 1] 1201 	push	#<(___str_0+0)
      00A379 4B 81            [ 1] 1202 	push	#((___str_0+0) >> 8)
      00A37B CD 85 9D         [ 4] 1203 	call	_assert_failed
      00A37E 5B 06            [ 2] 1204 	addw	sp, #6
      00A380                       1205 00107$:
                                   1206 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
      00A380 C6 53 05         [ 1] 1207 	ld	a, 0x5305
                                   1208 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 589: if (NewState != DISABLE)
      00A383 0D 03            [ 1] 1209 	tnz	(0x03, sp)
      00A385 27 06            [ 1] 1210 	jreq	00102$
                                   1211 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
      00A387 AA 08            [ 1] 1212 	or	a, #0x08
      00A389 C7 53 05         [ 1] 1213 	ld	0x5305, a
      00A38C 81               [ 4] 1214 	ret
      00A38D                       1215 00102$:
                                   1216 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 595: TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      00A38D A4 F7            [ 1] 1217 	and	a, #0xf7
      00A38F C7 53 05         [ 1] 1218 	ld	0x5305, a
                                   1219 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 597: }
      00A392 81               [ 4] 1220 	ret
                                   1221 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 605: void TIM2_OC2PreloadConfig(FunctionalState NewState)
                                   1222 ;	-----------------------------------------
                                   1223 ;	 function TIM2_OC2PreloadConfig
                                   1224 ;	-----------------------------------------
      00A393                       1225 _TIM2_OC2PreloadConfig:
                                   1226 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 608: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A393 0D 03            [ 1] 1227 	tnz	(0x03, sp)
      00A395 27 14            [ 1] 1228 	jreq	00107$
      00A397 7B 03            [ 1] 1229 	ld	a, (0x03, sp)
      00A399 4A               [ 1] 1230 	dec	a
      00A39A 27 0F            [ 1] 1231 	jreq	00107$
      00A39C 4B 60            [ 1] 1232 	push	#0x60
      00A39E 4B 02            [ 1] 1233 	push	#0x02
      00A3A0 5F               [ 1] 1234 	clrw	x
      00A3A1 89               [ 2] 1235 	pushw	x
      00A3A2 4B 2E            [ 1] 1236 	push	#<(___str_0+0)
      00A3A4 4B 81            [ 1] 1237 	push	#((___str_0+0) >> 8)
      00A3A6 CD 85 9D         [ 4] 1238 	call	_assert_failed
      00A3A9 5B 06            [ 2] 1239 	addw	sp, #6
      00A3AB                       1240 00107$:
                                   1241 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
      00A3AB C6 53 06         [ 1] 1242 	ld	a, 0x5306
                                   1243 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 611: if (NewState != DISABLE)
      00A3AE 0D 03            [ 1] 1244 	tnz	(0x03, sp)
      00A3B0 27 06            [ 1] 1245 	jreq	00102$
                                   1246 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
      00A3B2 AA 08            [ 1] 1247 	or	a, #0x08
      00A3B4 C7 53 06         [ 1] 1248 	ld	0x5306, a
      00A3B7 81               [ 4] 1249 	ret
      00A3B8                       1250 00102$:
                                   1251 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 617: TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      00A3B8 A4 F7            [ 1] 1252 	and	a, #0xf7
      00A3BA C7 53 06         [ 1] 1253 	ld	0x5306, a
                                   1254 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 619: }
      00A3BD 81               [ 4] 1255 	ret
                                   1256 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 627: void TIM2_OC3PreloadConfig(FunctionalState NewState)
                                   1257 ;	-----------------------------------------
                                   1258 ;	 function TIM2_OC3PreloadConfig
                                   1259 ;	-----------------------------------------
      00A3BE                       1260 _TIM2_OC3PreloadConfig:
                                   1261 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 630: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A3BE 0D 03            [ 1] 1262 	tnz	(0x03, sp)
      00A3C0 27 14            [ 1] 1263 	jreq	00107$
      00A3C2 7B 03            [ 1] 1264 	ld	a, (0x03, sp)
      00A3C4 4A               [ 1] 1265 	dec	a
      00A3C5 27 0F            [ 1] 1266 	jreq	00107$
      00A3C7 4B 76            [ 1] 1267 	push	#0x76
      00A3C9 4B 02            [ 1] 1268 	push	#0x02
      00A3CB 5F               [ 1] 1269 	clrw	x
      00A3CC 89               [ 2] 1270 	pushw	x
      00A3CD 4B 2E            [ 1] 1271 	push	#<(___str_0+0)
      00A3CF 4B 81            [ 1] 1272 	push	#((___str_0+0) >> 8)
      00A3D1 CD 85 9D         [ 4] 1273 	call	_assert_failed
      00A3D4 5B 06            [ 2] 1274 	addw	sp, #6
      00A3D6                       1275 00107$:
                                   1276 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
      00A3D6 C6 53 07         [ 1] 1277 	ld	a, 0x5307
                                   1278 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 633: if (NewState != DISABLE)
      00A3D9 0D 03            [ 1] 1279 	tnz	(0x03, sp)
      00A3DB 27 06            [ 1] 1280 	jreq	00102$
                                   1281 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
      00A3DD AA 08            [ 1] 1282 	or	a, #0x08
      00A3DF C7 53 07         [ 1] 1283 	ld	0x5307, a
      00A3E2 81               [ 4] 1284 	ret
      00A3E3                       1285 00102$:
                                   1286 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 639: TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      00A3E3 A4 F7            [ 1] 1287 	and	a, #0xf7
      00A3E5 C7 53 07         [ 1] 1288 	ld	0x5307, a
                                   1289 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 641: }
      00A3E8 81               [ 4] 1290 	ret
                                   1291 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 653: void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
                                   1292 ;	-----------------------------------------
                                   1293 ;	 function TIM2_GenerateEvent
                                   1294 ;	-----------------------------------------
      00A3E9                       1295 _TIM2_GenerateEvent:
                                   1296 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 656: assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
      00A3E9 0D 03            [ 1] 1297 	tnz	(0x03, sp)
      00A3EB 26 0F            [ 1] 1298 	jrne	00104$
      00A3ED 4B 90            [ 1] 1299 	push	#0x90
      00A3EF 4B 02            [ 1] 1300 	push	#0x02
      00A3F1 5F               [ 1] 1301 	clrw	x
      00A3F2 89               [ 2] 1302 	pushw	x
      00A3F3 4B 2E            [ 1] 1303 	push	#<(___str_0+0)
      00A3F5 4B 81            [ 1] 1304 	push	#((___str_0+0) >> 8)
      00A3F7 CD 85 9D         [ 4] 1305 	call	_assert_failed
      00A3FA 5B 06            [ 2] 1306 	addw	sp, #6
      00A3FC                       1307 00104$:
                                   1308 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 659: TIM2->EGR = (uint8_t)TIM2_EventSource;
      00A3FC AE 53 04         [ 2] 1309 	ldw	x, #0x5304
      00A3FF 7B 03            [ 1] 1310 	ld	a, (0x03, sp)
      00A401 F7               [ 1] 1311 	ld	(x), a
                                   1312 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 660: }
      00A402 81               [ 4] 1313 	ret
                                   1314 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 670: void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1315 ;	-----------------------------------------
                                   1316 ;	 function TIM2_OC1PolarityConfig
                                   1317 ;	-----------------------------------------
      00A403                       1318 _TIM2_OC1PolarityConfig:
                                   1319 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 673: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00A403 0D 03            [ 1] 1320 	tnz	(0x03, sp)
      00A405 27 15            [ 1] 1321 	jreq	00107$
      00A407 7B 03            [ 1] 1322 	ld	a, (0x03, sp)
      00A409 A1 22            [ 1] 1323 	cp	a, #0x22
      00A40B 27 0F            [ 1] 1324 	jreq	00107$
      00A40D 4B A1            [ 1] 1325 	push	#0xa1
      00A40F 4B 02            [ 1] 1326 	push	#0x02
      00A411 5F               [ 1] 1327 	clrw	x
      00A412 89               [ 2] 1328 	pushw	x
      00A413 4B 2E            [ 1] 1329 	push	#<(___str_0+0)
      00A415 4B 81            [ 1] 1330 	push	#((___str_0+0) >> 8)
      00A417 CD 85 9D         [ 4] 1331 	call	_assert_failed
      00A41A 5B 06            [ 2] 1332 	addw	sp, #6
      00A41C                       1333 00107$:
                                   1334 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
      00A41C C6 53 08         [ 1] 1335 	ld	a, 0x5308
                                   1336 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 676: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00A41F 0D 03            [ 1] 1337 	tnz	(0x03, sp)
      00A421 27 06            [ 1] 1338 	jreq	00102$
                                   1339 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
      00A423 AA 02            [ 1] 1340 	or	a, #0x02
      00A425 C7 53 08         [ 1] 1341 	ld	0x5308, a
      00A428 81               [ 4] 1342 	ret
      00A429                       1343 00102$:
                                   1344 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 682: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
      00A429 A4 FD            [ 1] 1345 	and	a, #0xfd
      00A42B C7 53 08         [ 1] 1346 	ld	0x5308, a
                                   1347 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 684: }
      00A42E 81               [ 4] 1348 	ret
                                   1349 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 694: void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1350 ;	-----------------------------------------
                                   1351 ;	 function TIM2_OC2PolarityConfig
                                   1352 ;	-----------------------------------------
      00A42F                       1353 _TIM2_OC2PolarityConfig:
                                   1354 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 697: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00A42F 0D 03            [ 1] 1355 	tnz	(0x03, sp)
      00A431 27 15            [ 1] 1356 	jreq	00107$
      00A433 7B 03            [ 1] 1357 	ld	a, (0x03, sp)
      00A435 A1 22            [ 1] 1358 	cp	a, #0x22
      00A437 27 0F            [ 1] 1359 	jreq	00107$
      00A439 4B B9            [ 1] 1360 	push	#0xb9
      00A43B 4B 02            [ 1] 1361 	push	#0x02
      00A43D 5F               [ 1] 1362 	clrw	x
      00A43E 89               [ 2] 1363 	pushw	x
      00A43F 4B 2E            [ 1] 1364 	push	#<(___str_0+0)
      00A441 4B 81            [ 1] 1365 	push	#((___str_0+0) >> 8)
      00A443 CD 85 9D         [ 4] 1366 	call	_assert_failed
      00A446 5B 06            [ 2] 1367 	addw	sp, #6
      00A448                       1368 00107$:
                                   1369 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      00A448 C6 53 08         [ 1] 1370 	ld	a, 0x5308
                                   1371 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 700: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00A44B 0D 03            [ 1] 1372 	tnz	(0x03, sp)
      00A44D 27 06            [ 1] 1373 	jreq	00102$
                                   1374 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      00A44F AA 20            [ 1] 1375 	or	a, #0x20
      00A451 C7 53 08         [ 1] 1376 	ld	0x5308, a
      00A454 81               [ 4] 1377 	ret
      00A455                       1378 00102$:
                                   1379 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 706: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
      00A455 A4 DF            [ 1] 1380 	and	a, #0xdf
      00A457 C7 53 08         [ 1] 1381 	ld	0x5308, a
                                   1382 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 708: }
      00A45A 81               [ 4] 1383 	ret
                                   1384 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 718: void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1385 ;	-----------------------------------------
                                   1386 ;	 function TIM2_OC3PolarityConfig
                                   1387 ;	-----------------------------------------
      00A45B                       1388 _TIM2_OC3PolarityConfig:
                                   1389 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 721: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00A45B 0D 03            [ 1] 1390 	tnz	(0x03, sp)
      00A45D 27 15            [ 1] 1391 	jreq	00107$
      00A45F 7B 03            [ 1] 1392 	ld	a, (0x03, sp)
      00A461 A1 22            [ 1] 1393 	cp	a, #0x22
      00A463 27 0F            [ 1] 1394 	jreq	00107$
      00A465 4B D1            [ 1] 1395 	push	#0xd1
      00A467 4B 02            [ 1] 1396 	push	#0x02
      00A469 5F               [ 1] 1397 	clrw	x
      00A46A 89               [ 2] 1398 	pushw	x
      00A46B 4B 2E            [ 1] 1399 	push	#<(___str_0+0)
      00A46D 4B 81            [ 1] 1400 	push	#((___str_0+0) >> 8)
      00A46F CD 85 9D         [ 4] 1401 	call	_assert_failed
      00A472 5B 06            [ 2] 1402 	addw	sp, #6
      00A474                       1403 00107$:
                                   1404 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
      00A474 C6 53 09         [ 1] 1405 	ld	a, 0x5309
                                   1406 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 724: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00A477 0D 03            [ 1] 1407 	tnz	(0x03, sp)
      00A479 27 06            [ 1] 1408 	jreq	00102$
                                   1409 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
      00A47B AA 02            [ 1] 1410 	or	a, #0x02
      00A47D C7 53 09         [ 1] 1411 	ld	0x5309, a
      00A480 81               [ 4] 1412 	ret
      00A481                       1413 00102$:
                                   1414 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 730: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
      00A481 A4 FD            [ 1] 1415 	and	a, #0xfd
      00A483 C7 53 09         [ 1] 1416 	ld	0x5309, a
                                   1417 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 732: }
      00A486 81               [ 4] 1418 	ret
                                   1419 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 745: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
                                   1420 ;	-----------------------------------------
                                   1421 ;	 function TIM2_CCxCmd
                                   1422 ;	-----------------------------------------
      00A487                       1423 _TIM2_CCxCmd:
      00A487 88               [ 1] 1424 	push	a
                                   1425 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 748: assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
      00A488 7B 04            [ 1] 1426 	ld	a, (0x04, sp)
      00A48A 4A               [ 1] 1427 	dec	a
      00A48B 26 05            [ 1] 1428 	jrne	00182$
      00A48D A6 01            [ 1] 1429 	ld	a, #0x01
      00A48F 6B 01            [ 1] 1430 	ld	(0x01, sp), a
      00A491 C5                    1431 	.byte 0xc5
      00A492                       1432 00182$:
      00A492 0F 01            [ 1] 1433 	clr	(0x01, sp)
      00A494                       1434 00183$:
      00A494 0D 04            [ 1] 1435 	tnz	(0x04, sp)
      00A496 27 19            [ 1] 1436 	jreq	00119$
      00A498 0D 01            [ 1] 1437 	tnz	(0x01, sp)
      00A49A 26 15            [ 1] 1438 	jrne	00119$
      00A49C 7B 04            [ 1] 1439 	ld	a, (0x04, sp)
      00A49E A1 02            [ 1] 1440 	cp	a, #0x02
      00A4A0 27 0F            [ 1] 1441 	jreq	00119$
      00A4A2 4B EC            [ 1] 1442 	push	#0xec
      00A4A4 4B 02            [ 1] 1443 	push	#0x02
      00A4A6 5F               [ 1] 1444 	clrw	x
      00A4A7 89               [ 2] 1445 	pushw	x
      00A4A8 4B 2E            [ 1] 1446 	push	#<(___str_0+0)
      00A4AA 4B 81            [ 1] 1447 	push	#((___str_0+0) >> 8)
      00A4AC CD 85 9D         [ 4] 1448 	call	_assert_failed
      00A4AF 5B 06            [ 2] 1449 	addw	sp, #6
      00A4B1                       1450 00119$:
                                   1451 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 749: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A4B1 0D 05            [ 1] 1452 	tnz	(0x05, sp)
      00A4B3 27 14            [ 1] 1453 	jreq	00127$
      00A4B5 7B 05            [ 1] 1454 	ld	a, (0x05, sp)
      00A4B7 4A               [ 1] 1455 	dec	a
      00A4B8 27 0F            [ 1] 1456 	jreq	00127$
      00A4BA 4B ED            [ 1] 1457 	push	#0xed
      00A4BC 4B 02            [ 1] 1458 	push	#0x02
      00A4BE 5F               [ 1] 1459 	clrw	x
      00A4BF 89               [ 2] 1460 	pushw	x
      00A4C0 4B 2E            [ 1] 1461 	push	#<(___str_0+0)
      00A4C2 4B 81            [ 1] 1462 	push	#((___str_0+0) >> 8)
      00A4C4 CD 85 9D         [ 4] 1463 	call	_assert_failed
      00A4C7 5B 06            [ 2] 1464 	addw	sp, #6
      00A4C9                       1465 00127$:
                                   1466 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 751: if (TIM2_Channel == TIM2_CHANNEL_1)
      00A4C9 0D 04            [ 1] 1467 	tnz	(0x04, sp)
      00A4CB 26 15            [ 1] 1468 	jrne	00114$
                                   1469 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
      00A4CD C6 53 08         [ 1] 1470 	ld	a, 0x5308
                                   1471 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 754: if (NewState != DISABLE)
      00A4D0 0D 05            [ 1] 1472 	tnz	(0x05, sp)
      00A4D2 27 07            [ 1] 1473 	jreq	00102$
                                   1474 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
      00A4D4 AA 01            [ 1] 1475 	or	a, #0x01
      00A4D6 C7 53 08         [ 1] 1476 	ld	0x5308, a
      00A4D9 20 33            [ 2] 1477 	jra	00116$
      00A4DB                       1478 00102$:
                                   1479 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 760: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00A4DB A4 FE            [ 1] 1480 	and	a, #0xfe
      00A4DD C7 53 08         [ 1] 1481 	ld	0x5308, a
      00A4E0 20 2C            [ 2] 1482 	jra	00116$
      00A4E2                       1483 00114$:
                                   1484 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 764: else if (TIM2_Channel == TIM2_CHANNEL_2)
      00A4E2 7B 01            [ 1] 1485 	ld	a, (0x01, sp)
      00A4E4 27 15            [ 1] 1486 	jreq	00111$
                                   1487 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
      00A4E6 C6 53 08         [ 1] 1488 	ld	a, 0x5308
                                   1489 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 767: if (NewState != DISABLE)
      00A4E9 0D 05            [ 1] 1490 	tnz	(0x05, sp)
      00A4EB 27 07            [ 1] 1491 	jreq	00105$
                                   1492 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 769: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
      00A4ED AA 10            [ 1] 1493 	or	a, #0x10
      00A4EF C7 53 08         [ 1] 1494 	ld	0x5308, a
      00A4F2 20 1A            [ 2] 1495 	jra	00116$
      00A4F4                       1496 00105$:
                                   1497 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 773: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00A4F4 A4 EF            [ 1] 1498 	and	a, #0xef
      00A4F6 C7 53 08         [ 1] 1499 	ld	0x5308, a
      00A4F9 20 13            [ 2] 1500 	jra	00116$
      00A4FB                       1501 00111$:
                                   1502 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
      00A4FB C6 53 09         [ 1] 1503 	ld	a, 0x5309
                                   1504 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 779: if (NewState != DISABLE)
      00A4FE 0D 05            [ 1] 1505 	tnz	(0x05, sp)
      00A500 27 07            [ 1] 1506 	jreq	00108$
                                   1507 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
      00A502 AA 01            [ 1] 1508 	or	a, #0x01
      00A504 C7 53 09         [ 1] 1509 	ld	0x5309, a
      00A507 20 05            [ 2] 1510 	jra	00116$
      00A509                       1511 00108$:
                                   1512 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 785: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
      00A509 A4 FE            [ 1] 1513 	and	a, #0xfe
      00A50B C7 53 09         [ 1] 1514 	ld	0x5309, a
      00A50E                       1515 00116$:
                                   1516 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 788: }
      00A50E 84               [ 1] 1517 	pop	a
      00A50F 81               [ 4] 1518 	ret
                                   1519 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 810: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
                                   1520 ;	-----------------------------------------
                                   1521 ;	 function TIM2_SelectOCxM
                                   1522 ;	-----------------------------------------
      00A510                       1523 _TIM2_SelectOCxM:
      00A510 88               [ 1] 1524 	push	a
                                   1525 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 813: assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
      00A511 7B 04            [ 1] 1526 	ld	a, (0x04, sp)
      00A513 4A               [ 1] 1527 	dec	a
      00A514 26 05            [ 1] 1528 	jrne	00206$
      00A516 A6 01            [ 1] 1529 	ld	a, #0x01
      00A518 6B 01            [ 1] 1530 	ld	(0x01, sp), a
      00A51A C5                    1531 	.byte 0xc5
      00A51B                       1532 00206$:
      00A51B 0F 01            [ 1] 1533 	clr	(0x01, sp)
      00A51D                       1534 00207$:
      00A51D 0D 04            [ 1] 1535 	tnz	(0x04, sp)
      00A51F 27 19            [ 1] 1536 	jreq	00110$
      00A521 0D 01            [ 1] 1537 	tnz	(0x01, sp)
      00A523 26 15            [ 1] 1538 	jrne	00110$
      00A525 7B 04            [ 1] 1539 	ld	a, (0x04, sp)
      00A527 A1 02            [ 1] 1540 	cp	a, #0x02
      00A529 27 0F            [ 1] 1541 	jreq	00110$
      00A52B 4B 2D            [ 1] 1542 	push	#0x2d
      00A52D 4B 03            [ 1] 1543 	push	#0x03
      00A52F 5F               [ 1] 1544 	clrw	x
      00A530 89               [ 2] 1545 	pushw	x
      00A531 4B 2E            [ 1] 1546 	push	#<(___str_0+0)
      00A533 4B 81            [ 1] 1547 	push	#((___str_0+0) >> 8)
      00A535 CD 85 9D         [ 4] 1548 	call	_assert_failed
      00A538 5B 06            [ 2] 1549 	addw	sp, #6
      00A53A                       1550 00110$:
                                   1551 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 814: assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
      00A53A 0D 05            [ 1] 1552 	tnz	(0x05, sp)
      00A53C 27 39            [ 1] 1553 	jreq	00118$
      00A53E 7B 05            [ 1] 1554 	ld	a, (0x05, sp)
      00A540 A1 10            [ 1] 1555 	cp	a, #0x10
      00A542 27 33            [ 1] 1556 	jreq	00118$
      00A544 7B 05            [ 1] 1557 	ld	a, (0x05, sp)
      00A546 A1 20            [ 1] 1558 	cp	a, #0x20
      00A548 27 2D            [ 1] 1559 	jreq	00118$
      00A54A 7B 05            [ 1] 1560 	ld	a, (0x05, sp)
      00A54C A1 30            [ 1] 1561 	cp	a, #0x30
      00A54E 27 27            [ 1] 1562 	jreq	00118$
      00A550 7B 05            [ 1] 1563 	ld	a, (0x05, sp)
      00A552 A1 60            [ 1] 1564 	cp	a, #0x60
      00A554 27 21            [ 1] 1565 	jreq	00118$
      00A556 7B 05            [ 1] 1566 	ld	a, (0x05, sp)
      00A558 A1 70            [ 1] 1567 	cp	a, #0x70
      00A55A 27 1B            [ 1] 1568 	jreq	00118$
      00A55C 7B 05            [ 1] 1569 	ld	a, (0x05, sp)
      00A55E A1 50            [ 1] 1570 	cp	a, #0x50
      00A560 27 15            [ 1] 1571 	jreq	00118$
      00A562 7B 05            [ 1] 1572 	ld	a, (0x05, sp)
      00A564 A1 40            [ 1] 1573 	cp	a, #0x40
      00A566 27 0F            [ 1] 1574 	jreq	00118$
      00A568 4B 2E            [ 1] 1575 	push	#0x2e
      00A56A 4B 03            [ 1] 1576 	push	#0x03
      00A56C 5F               [ 1] 1577 	clrw	x
      00A56D 89               [ 2] 1578 	pushw	x
      00A56E 4B 2E            [ 1] 1579 	push	#<(___str_0+0)
      00A570 4B 81            [ 1] 1580 	push	#((___str_0+0) >> 8)
      00A572 CD 85 9D         [ 4] 1581 	call	_assert_failed
      00A575 5B 06            [ 2] 1582 	addw	sp, #6
      00A577                       1583 00118$:
                                   1584 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 816: if (TIM2_Channel == TIM2_CHANNEL_1)
      00A577 0D 04            [ 1] 1585 	tnz	(0x04, sp)
      00A579 26 10            [ 1] 1586 	jrne	00105$
                                   1587 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 819: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00A57B 72 11 53 08      [ 1] 1588 	bres	21256, #0
                                   1589 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 822: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
      00A57F C6 53 05         [ 1] 1590 	ld	a, 0x5305
      00A582 A4 8F            [ 1] 1591 	and	a, #0x8f
                                   1592 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 823: | (uint8_t)TIM2_OCMode);
      00A584 1A 05            [ 1] 1593 	or	a, (0x05, sp)
      00A586 C7 53 05         [ 1] 1594 	ld	0x5305, a
      00A589 20 22            [ 2] 1595 	jra	00107$
      00A58B                       1596 00105$:
                                   1597 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 825: else if (TIM2_Channel == TIM2_CHANNEL_2)
      00A58B 7B 01            [ 1] 1598 	ld	a, (0x01, sp)
      00A58D 27 10            [ 1] 1599 	jreq	00102$
                                   1600 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00A58F 72 19 53 08      [ 1] 1601 	bres	21256, #4
                                   1602 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 831: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
      00A593 C6 53 06         [ 1] 1603 	ld	a, 0x5306
      00A596 A4 8F            [ 1] 1604 	and	a, #0x8f
                                   1605 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 832: | (uint8_t)TIM2_OCMode);
      00A598 1A 05            [ 1] 1606 	or	a, (0x05, sp)
      00A59A C7 53 06         [ 1] 1607 	ld	0x5306, a
      00A59D 20 0E            [ 2] 1608 	jra	00107$
      00A59F                       1609 00102$:
                                   1610 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 837: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
      00A59F 72 11 53 09      [ 1] 1611 	bres	21257, #0
                                   1612 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 840: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
      00A5A3 C6 53 07         [ 1] 1613 	ld	a, 0x5307
      00A5A6 A4 8F            [ 1] 1614 	and	a, #0x8f
                                   1615 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 841: | (uint8_t)TIM2_OCMode);
      00A5A8 1A 05            [ 1] 1616 	or	a, (0x05, sp)
      00A5AA C7 53 07         [ 1] 1617 	ld	0x5307, a
      00A5AD                       1618 00107$:
                                   1619 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 843: }
      00A5AD 84               [ 1] 1620 	pop	a
      00A5AE 81               [ 4] 1621 	ret
                                   1622 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 851: void TIM2_SetCounter(uint16_t Counter)
                                   1623 ;	-----------------------------------------
                                   1624 ;	 function TIM2_SetCounter
                                   1625 ;	-----------------------------------------
      00A5AF                       1626 _TIM2_SetCounter:
                                   1627 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 854: TIM2->CNTRH = (uint8_t)(Counter >> 8);
      00A5AF 7B 03            [ 1] 1628 	ld	a, (0x03, sp)
      00A5B1 C7 53 0A         [ 1] 1629 	ld	0x530a, a
                                   1630 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 855: TIM2->CNTRL = (uint8_t)(Counter);
      00A5B4 7B 04            [ 1] 1631 	ld	a, (0x04, sp)
      00A5B6 C7 53 0B         [ 1] 1632 	ld	0x530b, a
                                   1633 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 856: }
      00A5B9 81               [ 4] 1634 	ret
                                   1635 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 864: void TIM2_SetAutoreload(uint16_t Autoreload)
                                   1636 ;	-----------------------------------------
                                   1637 ;	 function TIM2_SetAutoreload
                                   1638 ;	-----------------------------------------
      00A5BA                       1639 _TIM2_SetAutoreload:
                                   1640 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 867: TIM2->ARRH = (uint8_t)(Autoreload >> 8);
      00A5BA 7B 03            [ 1] 1641 	ld	a, (0x03, sp)
      00A5BC C7 53 0D         [ 1] 1642 	ld	0x530d, a
                                   1643 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 868: TIM2->ARRL = (uint8_t)(Autoreload);
      00A5BF 7B 04            [ 1] 1644 	ld	a, (0x04, sp)
      00A5C1 C7 53 0E         [ 1] 1645 	ld	0x530e, a
                                   1646 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 869: }
      00A5C4 81               [ 4] 1647 	ret
                                   1648 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 877: void TIM2_SetCompare1(uint16_t Compare1)
                                   1649 ;	-----------------------------------------
                                   1650 ;	 function TIM2_SetCompare1
                                   1651 ;	-----------------------------------------
      00A5C5                       1652 _TIM2_SetCompare1:
                                   1653 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 880: TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
      00A5C5 7B 03            [ 1] 1654 	ld	a, (0x03, sp)
      00A5C7 C7 53 0F         [ 1] 1655 	ld	0x530f, a
                                   1656 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 881: TIM2->CCR1L = (uint8_t)(Compare1);
      00A5CA 7B 04            [ 1] 1657 	ld	a, (0x04, sp)
      00A5CC C7 53 10         [ 1] 1658 	ld	0x5310, a
                                   1659 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 882: }
      00A5CF 81               [ 4] 1660 	ret
                                   1661 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 890: void TIM2_SetCompare2(uint16_t Compare2)
                                   1662 ;	-----------------------------------------
                                   1663 ;	 function TIM2_SetCompare2
                                   1664 ;	-----------------------------------------
      00A5D0                       1665 _TIM2_SetCompare2:
                                   1666 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 893: TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
      00A5D0 7B 03            [ 1] 1667 	ld	a, (0x03, sp)
      00A5D2 C7 53 11         [ 1] 1668 	ld	0x5311, a
                                   1669 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 894: TIM2->CCR2L = (uint8_t)(Compare2);
      00A5D5 7B 04            [ 1] 1670 	ld	a, (0x04, sp)
      00A5D7 C7 53 12         [ 1] 1671 	ld	0x5312, a
                                   1672 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 895: }
      00A5DA 81               [ 4] 1673 	ret
                                   1674 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 903: void TIM2_SetCompare3(uint16_t Compare3)
                                   1675 ;	-----------------------------------------
                                   1676 ;	 function TIM2_SetCompare3
                                   1677 ;	-----------------------------------------
      00A5DB                       1678 _TIM2_SetCompare3:
                                   1679 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 906: TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
      00A5DB 7B 03            [ 1] 1680 	ld	a, (0x03, sp)
      00A5DD C7 53 13         [ 1] 1681 	ld	0x5313, a
                                   1682 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 907: TIM2->CCR3L = (uint8_t)(Compare3);
      00A5E0 7B 04            [ 1] 1683 	ld	a, (0x04, sp)
      00A5E2 C7 53 14         [ 1] 1684 	ld	0x5314, a
                                   1685 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 908: }
      00A5E5 81               [ 4] 1686 	ret
                                   1687 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 920: void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
                                   1688 ;	-----------------------------------------
                                   1689 ;	 function TIM2_SetIC1Prescaler
                                   1690 ;	-----------------------------------------
      00A5E6                       1691 _TIM2_SetIC1Prescaler:
                                   1692 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 923: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
      00A5E6 0D 03            [ 1] 1693 	tnz	(0x03, sp)
      00A5E8 27 21            [ 1] 1694 	jreq	00104$
      00A5EA 7B 03            [ 1] 1695 	ld	a, (0x03, sp)
      00A5EC A1 04            [ 1] 1696 	cp	a, #0x04
      00A5EE 27 1B            [ 1] 1697 	jreq	00104$
      00A5F0 7B 03            [ 1] 1698 	ld	a, (0x03, sp)
      00A5F2 A1 08            [ 1] 1699 	cp	a, #0x08
      00A5F4 27 15            [ 1] 1700 	jreq	00104$
      00A5F6 7B 03            [ 1] 1701 	ld	a, (0x03, sp)
      00A5F8 A1 0C            [ 1] 1702 	cp	a, #0x0c
      00A5FA 27 0F            [ 1] 1703 	jreq	00104$
      00A5FC 4B 9B            [ 1] 1704 	push	#0x9b
      00A5FE 4B 03            [ 1] 1705 	push	#0x03
      00A600 5F               [ 1] 1706 	clrw	x
      00A601 89               [ 2] 1707 	pushw	x
      00A602 4B 2E            [ 1] 1708 	push	#<(___str_0+0)
      00A604 4B 81            [ 1] 1709 	push	#((___str_0+0) >> 8)
      00A606 CD 85 9D         [ 4] 1710 	call	_assert_failed
      00A609 5B 06            [ 2] 1711 	addw	sp, #6
      00A60B                       1712 00104$:
                                   1713 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 926: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      00A60B C6 53 05         [ 1] 1714 	ld	a, 0x5305
      00A60E A4 F3            [ 1] 1715 	and	a, #0xf3
                                   1716 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 927: | (uint8_t)TIM2_IC1Prescaler);
      00A610 1A 03            [ 1] 1717 	or	a, (0x03, sp)
      00A612 C7 53 05         [ 1] 1718 	ld	0x5305, a
                                   1719 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 928: }
      00A615 81               [ 4] 1720 	ret
                                   1721 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 940: void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
                                   1722 ;	-----------------------------------------
                                   1723 ;	 function TIM2_SetIC2Prescaler
                                   1724 ;	-----------------------------------------
      00A616                       1725 _TIM2_SetIC2Prescaler:
                                   1726 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 943: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
      00A616 0D 03            [ 1] 1727 	tnz	(0x03, sp)
      00A618 27 21            [ 1] 1728 	jreq	00104$
      00A61A 7B 03            [ 1] 1729 	ld	a, (0x03, sp)
      00A61C A1 04            [ 1] 1730 	cp	a, #0x04
      00A61E 27 1B            [ 1] 1731 	jreq	00104$
      00A620 7B 03            [ 1] 1732 	ld	a, (0x03, sp)
      00A622 A1 08            [ 1] 1733 	cp	a, #0x08
      00A624 27 15            [ 1] 1734 	jreq	00104$
      00A626 7B 03            [ 1] 1735 	ld	a, (0x03, sp)
      00A628 A1 0C            [ 1] 1736 	cp	a, #0x0c
      00A62A 27 0F            [ 1] 1737 	jreq	00104$
      00A62C 4B AF            [ 1] 1738 	push	#0xaf
      00A62E 4B 03            [ 1] 1739 	push	#0x03
      00A630 5F               [ 1] 1740 	clrw	x
      00A631 89               [ 2] 1741 	pushw	x
      00A632 4B 2E            [ 1] 1742 	push	#<(___str_0+0)
      00A634 4B 81            [ 1] 1743 	push	#((___str_0+0) >> 8)
      00A636 CD 85 9D         [ 4] 1744 	call	_assert_failed
      00A639 5B 06            [ 2] 1745 	addw	sp, #6
      00A63B                       1746 00104$:
                                   1747 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 946: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      00A63B C6 53 06         [ 1] 1748 	ld	a, 0x5306
      00A63E A4 F3            [ 1] 1749 	and	a, #0xf3
                                   1750 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 947: | (uint8_t)TIM2_IC2Prescaler);
      00A640 1A 03            [ 1] 1751 	or	a, (0x03, sp)
      00A642 C7 53 06         [ 1] 1752 	ld	0x5306, a
                                   1753 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 948: }
      00A645 81               [ 4] 1754 	ret
                                   1755 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 960: void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
                                   1756 ;	-----------------------------------------
                                   1757 ;	 function TIM2_SetIC3Prescaler
                                   1758 ;	-----------------------------------------
      00A646                       1759 _TIM2_SetIC3Prescaler:
                                   1760 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 964: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
      00A646 0D 03            [ 1] 1761 	tnz	(0x03, sp)
      00A648 27 21            [ 1] 1762 	jreq	00104$
      00A64A 7B 03            [ 1] 1763 	ld	a, (0x03, sp)
      00A64C A1 04            [ 1] 1764 	cp	a, #0x04
      00A64E 27 1B            [ 1] 1765 	jreq	00104$
      00A650 7B 03            [ 1] 1766 	ld	a, (0x03, sp)
      00A652 A1 08            [ 1] 1767 	cp	a, #0x08
      00A654 27 15            [ 1] 1768 	jreq	00104$
      00A656 7B 03            [ 1] 1769 	ld	a, (0x03, sp)
      00A658 A1 0C            [ 1] 1770 	cp	a, #0x0c
      00A65A 27 0F            [ 1] 1771 	jreq	00104$
      00A65C 4B C4            [ 1] 1772 	push	#0xc4
      00A65E 4B 03            [ 1] 1773 	push	#0x03
      00A660 5F               [ 1] 1774 	clrw	x
      00A661 89               [ 2] 1775 	pushw	x
      00A662 4B 2E            [ 1] 1776 	push	#<(___str_0+0)
      00A664 4B 81            [ 1] 1777 	push	#((___str_0+0) >> 8)
      00A666 CD 85 9D         [ 4] 1778 	call	_assert_failed
      00A669 5B 06            [ 2] 1779 	addw	sp, #6
      00A66B                       1780 00104$:
                                   1781 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 966: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      00A66B C6 53 07         [ 1] 1782 	ld	a, 0x5307
      00A66E A4 F3            [ 1] 1783 	and	a, #0xf3
                                   1784 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 967: | (uint8_t)TIM2_IC3Prescaler);
      00A670 1A 03            [ 1] 1785 	or	a, (0x03, sp)
      00A672 C7 53 07         [ 1] 1786 	ld	0x5307, a
                                   1787 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 968: }
      00A675 81               [ 4] 1788 	ret
                                   1789 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 975: uint16_t TIM2_GetCapture1(void)
                                   1790 ;	-----------------------------------------
                                   1791 ;	 function TIM2_GetCapture1
                                   1792 ;	-----------------------------------------
      00A676                       1793 _TIM2_GetCapture1:
      00A676 89               [ 2] 1794 	pushw	x
                                   1795 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 981: tmpccr1h = TIM2->CCR1H;
      00A677 C6 53 0F         [ 1] 1796 	ld	a, 0x530f
      00A67A 95               [ 1] 1797 	ld	xh, a
                                   1798 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 982: tmpccr1l = TIM2->CCR1L;
      00A67B C6 53 10         [ 1] 1799 	ld	a, 0x5310
                                   1800 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 984: tmpccr1 = (uint16_t)(tmpccr1l);
      00A67E 97               [ 1] 1801 	ld	xl, a
      00A67F 4F               [ 1] 1802 	clr	a
                                   1803 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 985: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      00A680 0F 02            [ 1] 1804 	clr	(0x02, sp)
      00A682 89               [ 2] 1805 	pushw	x
      00A683 1A 01            [ 1] 1806 	or	a, (1, sp)
      00A685 85               [ 2] 1807 	popw	x
      00A686 01               [ 1] 1808 	rrwa	x
      00A687 1A 02            [ 1] 1809 	or	a, (0x02, sp)
      00A689 97               [ 1] 1810 	ld	xl, a
                                   1811 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 987: return (uint16_t)tmpccr1;
                                   1812 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 988: }
      00A68A 5B 02            [ 2] 1813 	addw	sp, #2
      00A68C 81               [ 4] 1814 	ret
                                   1815 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 995: uint16_t TIM2_GetCapture2(void)
                                   1816 ;	-----------------------------------------
                                   1817 ;	 function TIM2_GetCapture2
                                   1818 ;	-----------------------------------------
      00A68D                       1819 _TIM2_GetCapture2:
      00A68D 89               [ 2] 1820 	pushw	x
                                   1821 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1001: tmpccr2h = TIM2->CCR2H;
      00A68E C6 53 11         [ 1] 1822 	ld	a, 0x5311
      00A691 95               [ 1] 1823 	ld	xh, a
                                   1824 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1002: tmpccr2l = TIM2->CCR2L;
      00A692 C6 53 12         [ 1] 1825 	ld	a, 0x5312
                                   1826 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1004: tmpccr2 = (uint16_t)(tmpccr2l);
      00A695 97               [ 1] 1827 	ld	xl, a
      00A696 4F               [ 1] 1828 	clr	a
                                   1829 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1005: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      00A697 0F 02            [ 1] 1830 	clr	(0x02, sp)
      00A699 89               [ 2] 1831 	pushw	x
      00A69A 1A 01            [ 1] 1832 	or	a, (1, sp)
      00A69C 85               [ 2] 1833 	popw	x
      00A69D 01               [ 1] 1834 	rrwa	x
      00A69E 1A 02            [ 1] 1835 	or	a, (0x02, sp)
      00A6A0 97               [ 1] 1836 	ld	xl, a
                                   1837 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1007: return (uint16_t)tmpccr2;
                                   1838 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1008: }
      00A6A1 5B 02            [ 2] 1839 	addw	sp, #2
      00A6A3 81               [ 4] 1840 	ret
                                   1841 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1015: uint16_t TIM2_GetCapture3(void)
                                   1842 ;	-----------------------------------------
                                   1843 ;	 function TIM2_GetCapture3
                                   1844 ;	-----------------------------------------
      00A6A4                       1845 _TIM2_GetCapture3:
      00A6A4 89               [ 2] 1846 	pushw	x
                                   1847 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1021: tmpccr3h = TIM2->CCR3H;
      00A6A5 C6 53 13         [ 1] 1848 	ld	a, 0x5313
      00A6A8 95               [ 1] 1849 	ld	xh, a
                                   1850 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1022: tmpccr3l = TIM2->CCR3L;
      00A6A9 C6 53 14         [ 1] 1851 	ld	a, 0x5314
                                   1852 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1024: tmpccr3 = (uint16_t)(tmpccr3l);
      00A6AC 97               [ 1] 1853 	ld	xl, a
      00A6AD 4F               [ 1] 1854 	clr	a
                                   1855 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1025: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
      00A6AE 0F 02            [ 1] 1856 	clr	(0x02, sp)
      00A6B0 89               [ 2] 1857 	pushw	x
      00A6B1 1A 01            [ 1] 1858 	or	a, (1, sp)
      00A6B3 85               [ 2] 1859 	popw	x
      00A6B4 01               [ 1] 1860 	rrwa	x
      00A6B5 1A 02            [ 1] 1861 	or	a, (0x02, sp)
      00A6B7 97               [ 1] 1862 	ld	xl, a
                                   1863 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1027: return (uint16_t)tmpccr3;
                                   1864 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1028: }
      00A6B8 5B 02            [ 2] 1865 	addw	sp, #2
      00A6BA 81               [ 4] 1866 	ret
                                   1867 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1035: uint16_t TIM2_GetCounter(void)
                                   1868 ;	-----------------------------------------
                                   1869 ;	 function TIM2_GetCounter
                                   1870 ;	-----------------------------------------
      00A6BB                       1871 _TIM2_GetCounter:
      00A6BB 52 04            [ 2] 1872 	sub	sp, #4
                                   1873 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1039: tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
      00A6BD C6 53 0A         [ 1] 1874 	ld	a, 0x530a
      00A6C0 5F               [ 1] 1875 	clrw	x
      00A6C1 95               [ 1] 1876 	ld	xh, a
      00A6C2 4F               [ 1] 1877 	clr	a
      00A6C3 6B 02            [ 1] 1878 	ld	(0x02, sp), a
                                   1879 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1041: return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
      00A6C5 C6 53 0B         [ 1] 1880 	ld	a, 0x530b
      00A6C8 0F 03            [ 1] 1881 	clr	(0x03, sp)
      00A6CA 1A 02            [ 1] 1882 	or	a, (0x02, sp)
      00A6CC 02               [ 1] 1883 	rlwa	x
      00A6CD 1A 03            [ 1] 1884 	or	a, (0x03, sp)
      00A6CF 95               [ 1] 1885 	ld	xh, a
                                   1886 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1042: }
      00A6D0 5B 04            [ 2] 1887 	addw	sp, #4
      00A6D2 81               [ 4] 1888 	ret
                                   1889 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1049: TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
                                   1890 ;	-----------------------------------------
                                   1891 ;	 function TIM2_GetPrescaler
                                   1892 ;	-----------------------------------------
      00A6D3                       1893 _TIM2_GetPrescaler:
                                   1894 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1052: return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
      00A6D3 C6 53 0C         [ 1] 1895 	ld	a, 0x530c
                                   1896 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1053: }
      00A6D6 81               [ 4] 1897 	ret
                                   1898 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1068: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   1899 ;	-----------------------------------------
                                   1900 ;	 function TIM2_GetFlagStatus
                                   1901 ;	-----------------------------------------
      00A6D7                       1902 _TIM2_GetFlagStatus:
      00A6D7 88               [ 1] 1903 	push	a
                                   1904 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1074: assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
      00A6D8 1E 04            [ 2] 1905 	ldw	x, (0x04, sp)
      00A6DA A3 00 01         [ 2] 1906 	cpw	x, #0x0001
      00A6DD 27 31            [ 1] 1907 	jreq	00107$
      00A6DF A3 00 02         [ 2] 1908 	cpw	x, #0x0002
      00A6E2 27 2C            [ 1] 1909 	jreq	00107$
      00A6E4 A3 00 04         [ 2] 1910 	cpw	x, #0x0004
      00A6E7 27 27            [ 1] 1911 	jreq	00107$
      00A6E9 A3 00 08         [ 2] 1912 	cpw	x, #0x0008
      00A6EC 27 22            [ 1] 1913 	jreq	00107$
      00A6EE A3 02 00         [ 2] 1914 	cpw	x, #0x0200
      00A6F1 27 1D            [ 1] 1915 	jreq	00107$
      00A6F3 A3 04 00         [ 2] 1916 	cpw	x, #0x0400
      00A6F6 27 18            [ 1] 1917 	jreq	00107$
      00A6F8 A3 08 00         [ 2] 1918 	cpw	x, #0x0800
      00A6FB 27 13            [ 1] 1919 	jreq	00107$
      00A6FD 89               [ 2] 1920 	pushw	x
      00A6FE 4B 32            [ 1] 1921 	push	#0x32
      00A700 4B 04            [ 1] 1922 	push	#0x04
      00A702 4B 00            [ 1] 1923 	push	#0x00
      00A704 4B 00            [ 1] 1924 	push	#0x00
      00A706 4B 2E            [ 1] 1925 	push	#<(___str_0+0)
      00A708 4B 81            [ 1] 1926 	push	#((___str_0+0) >> 8)
      00A70A CD 85 9D         [ 4] 1927 	call	_assert_failed
      00A70D 5B 06            [ 2] 1928 	addw	sp, #6
      00A70F 85               [ 2] 1929 	popw	x
      00A710                       1930 00107$:
                                   1931 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1076: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
      00A710 C6 53 02         [ 1] 1932 	ld	a, 0x5302
      00A713 6B 01            [ 1] 1933 	ld	(0x01, sp), a
      00A715 7B 05            [ 1] 1934 	ld	a, (0x05, sp)
      00A717 14 01            [ 1] 1935 	and	a, (0x01, sp)
      00A719 6B 01            [ 1] 1936 	ld	(0x01, sp), a
                                   1937 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1077: tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
                                   1938 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1079: if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
      00A71B C6 53 03         [ 1] 1939 	ld	a, 0x5303
      00A71E 89               [ 2] 1940 	pushw	x
      00A71F 14 01            [ 1] 1941 	and	a, (1, sp)
      00A721 85               [ 2] 1942 	popw	x
      00A722 1A 01            [ 1] 1943 	or	a, (0x01, sp)
      00A724 27 03            [ 1] 1944 	jreq	00102$
                                   1945 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1081: bitstatus = SET;
      00A726 A6 01            [ 1] 1946 	ld	a, #0x01
                                   1947 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1085: bitstatus = RESET;
      00A728 21                    1948 	.byte 0x21
      00A729                       1949 00102$:
      00A729 4F               [ 1] 1950 	clr	a
      00A72A                       1951 00103$:
                                   1952 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1087: return (FlagStatus)bitstatus;
                                   1953 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1088: }
      00A72A 5B 01            [ 2] 1954 	addw	sp, #1
      00A72C 81               [ 4] 1955 	ret
                                   1956 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1103: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   1957 ;	-----------------------------------------
                                   1958 ;	 function TIM2_ClearFlag
                                   1959 ;	-----------------------------------------
      00A72D                       1960 _TIM2_ClearFlag:
      00A72D 89               [ 2] 1961 	pushw	x
                                   1962 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1106: assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
      00A72E 16 05            [ 2] 1963 	ldw	y, (0x05, sp)
      00A730 17 01            [ 2] 1964 	ldw	(0x01, sp), y
      00A732 7B 02            [ 1] 1965 	ld	a, (0x02, sp)
      00A734 A4 F0            [ 1] 1966 	and	a, #0xf0
      00A736 97               [ 1] 1967 	ld	xl, a
      00A737 7B 01            [ 1] 1968 	ld	a, (0x01, sp)
      00A739 A4 F1            [ 1] 1969 	and	a, #0xf1
      00A73B 95               [ 1] 1970 	ld	xh, a
      00A73C 5D               [ 2] 1971 	tnzw	x
      00A73D 26 04            [ 1] 1972 	jrne	00103$
      00A73F 1E 01            [ 2] 1973 	ldw	x, (0x01, sp)
      00A741 26 0F            [ 1] 1974 	jrne	00104$
      00A743                       1975 00103$:
      00A743 4B 52            [ 1] 1976 	push	#0x52
      00A745 4B 04            [ 1] 1977 	push	#0x04
      00A747 5F               [ 1] 1978 	clrw	x
      00A748 89               [ 2] 1979 	pushw	x
      00A749 4B 2E            [ 1] 1980 	push	#<(___str_0+0)
      00A74B 4B 81            [ 1] 1981 	push	#((___str_0+0) >> 8)
      00A74D CD 85 9D         [ 4] 1982 	call	_assert_failed
      00A750 5B 06            [ 2] 1983 	addw	sp, #6
      00A752                       1984 00104$:
                                   1985 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1109: TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
      00A752 7B 02            [ 1] 1986 	ld	a, (0x02, sp)
      00A754 43               [ 1] 1987 	cpl	a
      00A755 C7 53 02         [ 1] 1988 	ld	0x5302, a
                                   1989 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1110: TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
      00A758 35 FF 53 03      [ 1] 1990 	mov	0x5303+0, #0xff
                                   1991 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1111: }
      00A75C 85               [ 2] 1992 	popw	x
      00A75D 81               [ 4] 1993 	ret
                                   1994 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1123: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
                                   1995 ;	-----------------------------------------
                                   1996 ;	 function TIM2_GetITStatus
                                   1997 ;	-----------------------------------------
      00A75E                       1998 _TIM2_GetITStatus:
      00A75E 88               [ 1] 1999 	push	a
                                   2000 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1129: assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
      00A75F 7B 04            [ 1] 2001 	ld	a, (0x04, sp)
      00A761 4A               [ 1] 2002 	dec	a
      00A762 27 21            [ 1] 2003 	jreq	00108$
      00A764 7B 04            [ 1] 2004 	ld	a, (0x04, sp)
      00A766 A1 02            [ 1] 2005 	cp	a, #0x02
      00A768 27 1B            [ 1] 2006 	jreq	00108$
      00A76A 7B 04            [ 1] 2007 	ld	a, (0x04, sp)
      00A76C A1 04            [ 1] 2008 	cp	a, #0x04
      00A76E 27 15            [ 1] 2009 	jreq	00108$
      00A770 7B 04            [ 1] 2010 	ld	a, (0x04, sp)
      00A772 A1 08            [ 1] 2011 	cp	a, #0x08
      00A774 27 0F            [ 1] 2012 	jreq	00108$
      00A776 4B 69            [ 1] 2013 	push	#0x69
      00A778 4B 04            [ 1] 2014 	push	#0x04
      00A77A 5F               [ 1] 2015 	clrw	x
      00A77B 89               [ 2] 2016 	pushw	x
      00A77C 4B 2E            [ 1] 2017 	push	#<(___str_0+0)
      00A77E 4B 81            [ 1] 2018 	push	#((___str_0+0) >> 8)
      00A780 CD 85 9D         [ 4] 2019 	call	_assert_failed
      00A783 5B 06            [ 2] 2020 	addw	sp, #6
      00A785                       2021 00108$:
                                   2022 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1131: TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
      00A785 C6 53 02         [ 1] 2023 	ld	a, 0x5302
      00A788 14 04            [ 1] 2024 	and	a, (0x04, sp)
      00A78A 6B 01            [ 1] 2025 	ld	(0x01, sp), a
                                   2026 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1133: TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
      00A78C C6 53 01         [ 1] 2027 	ld	a, 0x5301
      00A78F 14 04            [ 1] 2028 	and	a, (0x04, sp)
                                   2029 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1135: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
      00A791 0D 01            [ 1] 2030 	tnz	(0x01, sp)
      00A793 27 06            [ 1] 2031 	jreq	00102$
      00A795 4D               [ 1] 2032 	tnz	a
      00A796 27 03            [ 1] 2033 	jreq	00102$
                                   2034 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1137: bitstatus = SET;
      00A798 A6 01            [ 1] 2035 	ld	a, #0x01
                                   2036 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1141: bitstatus = RESET;
      00A79A 21                    2037 	.byte 0x21
      00A79B                       2038 00102$:
      00A79B 4F               [ 1] 2039 	clr	a
      00A79C                       2040 00103$:
                                   2041 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1143: return (ITStatus)(bitstatus);
                                   2042 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1144: }
      00A79C 5B 01            [ 2] 2043 	addw	sp, #1
      00A79E 81               [ 4] 2044 	ret
                                   2045 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1156: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
                                   2046 ;	-----------------------------------------
                                   2047 ;	 function TIM2_ClearITPendingBit
                                   2048 ;	-----------------------------------------
      00A79F                       2049 _TIM2_ClearITPendingBit:
                                   2050 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1159: assert_param(IS_TIM2_IT_OK(TIM2_IT));
      00A79F 0D 03            [ 1] 2051 	tnz	(0x03, sp)
      00A7A1 27 06            [ 1] 2052 	jreq	00103$
      00A7A3 7B 03            [ 1] 2053 	ld	a, (0x03, sp)
      00A7A5 A1 0F            [ 1] 2054 	cp	a, #0x0f
      00A7A7 23 0F            [ 2] 2055 	jrule	00104$
      00A7A9                       2056 00103$:
      00A7A9 4B 87            [ 1] 2057 	push	#0x87
      00A7AB 4B 04            [ 1] 2058 	push	#0x04
      00A7AD 5F               [ 1] 2059 	clrw	x
      00A7AE 89               [ 2] 2060 	pushw	x
      00A7AF 4B 2E            [ 1] 2061 	push	#<(___str_0+0)
      00A7B1 4B 81            [ 1] 2062 	push	#((___str_0+0) >> 8)
      00A7B3 CD 85 9D         [ 4] 2063 	call	_assert_failed
      00A7B6 5B 06            [ 2] 2064 	addw	sp, #6
      00A7B8                       2065 00104$:
                                   2066 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1162: TIM2->SR1 = (uint8_t)(~TIM2_IT);
      00A7B8 7B 03            [ 1] 2067 	ld	a, (0x03, sp)
      00A7BA 43               [ 1] 2068 	cpl	a
      00A7BB C7 53 02         [ 1] 2069 	ld	0x5302, a
                                   2070 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1163: }
      00A7BE 81               [ 4] 2071 	ret
                                   2072 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1181: static void TI1_Config(uint8_t TIM2_ICPolarity,
                                   2073 ;	-----------------------------------------
                                   2074 ;	 function TI1_Config
                                   2075 ;	-----------------------------------------
      00A7BF                       2076 _TI1_Config:
      00A7BF 88               [ 1] 2077 	push	a
                                   2078 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1186: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00A7C0 72 11 53 08      [ 1] 2079 	bres	21256, #0
                                   2080 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1189: TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
      00A7C4 C6 53 05         [ 1] 2081 	ld	a, 0x5305
      00A7C7 A4 0C            [ 1] 2082 	and	a, #0x0c
      00A7C9 6B 01            [ 1] 2083 	ld	(0x01, sp), a
                                   2084 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1190: | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      00A7CB 7B 06            [ 1] 2085 	ld	a, (0x06, sp)
      00A7CD 4E               [ 1] 2086 	swap	a
      00A7CE A4 F0            [ 1] 2087 	and	a, #0xf0
      00A7D0 1A 05            [ 1] 2088 	or	a, (0x05, sp)
      00A7D2 1A 01            [ 1] 2089 	or	a, (0x01, sp)
      00A7D4 C7 53 05         [ 1] 2090 	ld	0x5305, a
                                   2091 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1186: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00A7D7 C6 53 08         [ 1] 2092 	ld	a, 0x5308
                                   2093 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1193: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      00A7DA 0D 04            [ 1] 2094 	tnz	(0x04, sp)
      00A7DC 27 07            [ 1] 2095 	jreq	00102$
                                   2096 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1195: TIM2->CCER1 |= TIM2_CCER1_CC1P;
      00A7DE AA 02            [ 1] 2097 	or	a, #0x02
      00A7E0 C7 53 08         [ 1] 2098 	ld	0x5308, a
      00A7E3 20 05            [ 2] 2099 	jra	00103$
      00A7E5                       2100 00102$:
                                   2101 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1199: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
      00A7E5 A4 FD            [ 1] 2102 	and	a, #0xfd
      00A7E7 C7 53 08         [ 1] 2103 	ld	0x5308, a
      00A7EA                       2104 00103$:
                                   2105 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1202: TIM2->CCER1 |= TIM2_CCER1_CC1E;
      00A7EA 72 10 53 08      [ 1] 2106 	bset	21256, #0
                                   2107 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1203: }
      00A7EE 84               [ 1] 2108 	pop	a
      00A7EF 81               [ 4] 2109 	ret
                                   2110 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1221: static void TI2_Config(uint8_t TIM2_ICPolarity,
                                   2111 ;	-----------------------------------------
                                   2112 ;	 function TI2_Config
                                   2113 ;	-----------------------------------------
      00A7F0                       2114 _TI2_Config:
      00A7F0 88               [ 1] 2115 	push	a
                                   2116 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1226: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00A7F1 72 19 53 08      [ 1] 2117 	bres	21256, #4
                                   2118 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1229: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
      00A7F5 C6 53 06         [ 1] 2119 	ld	a, 0x5306
      00A7F8 A4 0C            [ 1] 2120 	and	a, #0x0c
      00A7FA 6B 01            [ 1] 2121 	ld	(0x01, sp), a
                                   2122 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1230: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      00A7FC 7B 06            [ 1] 2123 	ld	a, (0x06, sp)
      00A7FE 4E               [ 1] 2124 	swap	a
      00A7FF A4 F0            [ 1] 2125 	and	a, #0xf0
      00A801 1A 05            [ 1] 2126 	or	a, (0x05, sp)
      00A803 1A 01            [ 1] 2127 	or	a, (0x01, sp)
      00A805 C7 53 06         [ 1] 2128 	ld	0x5306, a
                                   2129 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1226: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00A808 C6 53 08         [ 1] 2130 	ld	a, 0x5308
                                   2131 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1234: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      00A80B 0D 04            [ 1] 2132 	tnz	(0x04, sp)
      00A80D 27 07            [ 1] 2133 	jreq	00102$
                                   2134 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1236: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      00A80F AA 20            [ 1] 2135 	or	a, #0x20
      00A811 C7 53 08         [ 1] 2136 	ld	0x5308, a
      00A814 20 05            [ 2] 2137 	jra	00103$
      00A816                       2138 00102$:
                                   2139 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1240: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
      00A816 A4 DF            [ 1] 2140 	and	a, #0xdf
      00A818 C7 53 08         [ 1] 2141 	ld	0x5308, a
      00A81B                       2142 00103$:
                                   2143 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1244: TIM2->CCER1 |= TIM2_CCER1_CC2E;
      00A81B 72 18 53 08      [ 1] 2144 	bset	21256, #4
                                   2145 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1245: }
      00A81F 84               [ 1] 2146 	pop	a
      00A820 81               [ 4] 2147 	ret
                                   2148 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1261: static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
                                   2149 ;	-----------------------------------------
                                   2150 ;	 function TI3_Config
                                   2151 ;	-----------------------------------------
      00A821                       2152 _TI3_Config:
      00A821 88               [ 1] 2153 	push	a
                                   2154 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1265: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
      00A822 72 11 53 09      [ 1] 2155 	bres	21257, #0
                                   2156 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1268: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
      00A826 C6 53 07         [ 1] 2157 	ld	a, 0x5307
      00A829 A4 0C            [ 1] 2158 	and	a, #0x0c
      00A82B 6B 01            [ 1] 2159 	ld	(0x01, sp), a
                                   2160 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1269: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      00A82D 7B 06            [ 1] 2161 	ld	a, (0x06, sp)
      00A82F 4E               [ 1] 2162 	swap	a
      00A830 A4 F0            [ 1] 2163 	and	a, #0xf0
      00A832 1A 05            [ 1] 2164 	or	a, (0x05, sp)
      00A834 1A 01            [ 1] 2165 	or	a, (0x01, sp)
      00A836 C7 53 07         [ 1] 2166 	ld	0x5307, a
                                   2167 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1265: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
      00A839 C6 53 09         [ 1] 2168 	ld	a, 0x5309
                                   2169 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1273: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      00A83C 0D 04            [ 1] 2170 	tnz	(0x04, sp)
      00A83E 27 07            [ 1] 2171 	jreq	00102$
                                   2172 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1275: TIM2->CCER2 |= TIM2_CCER2_CC3P;
      00A840 AA 02            [ 1] 2173 	or	a, #0x02
      00A842 C7 53 09         [ 1] 2174 	ld	0x5309, a
      00A845 20 05            [ 2] 2175 	jra	00103$
      00A847                       2176 00102$:
                                   2177 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1279: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
      00A847 A4 FD            [ 1] 2178 	and	a, #0xfd
      00A849 C7 53 09         [ 1] 2179 	ld	0x5309, a
      00A84C                       2180 00103$:
                                   2181 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1282: TIM2->CCER2 |= TIM2_CCER2_CC3E;
      00A84C 72 10 53 09      [ 1] 2182 	bset	21257, #0
                                   2183 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim2.c: 1283: }
      00A850 84               [ 1] 2184 	pop	a
      00A851 81               [ 4] 2185 	ret
                                   2186 	.area CODE
                                   2187 	.area CONST
                                   2188 	.area CONST
      00812E                       2189 ___str_0:
      00812E 2F 55 73 65 72 73 2F  2190 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      00816A 4D 38 53 5F 53 74 64  2191 	.ascii "M8S_StdPeriph_Driver/src/stm8s_tim2.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 32
             2E 63
      00818F 00                    2192 	.db 0x00
                                   2193 	.area CODE
                                   2194 	.area INITIALIZER
                                   2195 	.area CABS (ABS)
