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
                                     92 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 52: void TIM2_DeInit(void)
                                     93 ;	-----------------------------------------
                                     94 ;	 function TIM2_DeInit
                                     95 ;	-----------------------------------------
      00AD1E                         96 _TIM2_DeInit:
                                     97 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 54: TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
      00AD1E 35 00 53 00      [ 1]   98 	mov	0x5300+0, #0x00
                                     99 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 55: TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
      00AD22 35 00 53 01      [ 1]  100 	mov	0x5301+0, #0x00
                                    101 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 56: TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
      00AD26 35 00 53 03      [ 1]  102 	mov	0x5303+0, #0x00
                                    103 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 59: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
      00AD2A 35 00 53 08      [ 1]  104 	mov	0x5308+0, #0x00
                                    105 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 60: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
      00AD2E 35 00 53 09      [ 1]  106 	mov	0x5309+0, #0x00
                                    107 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 64: TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
      00AD32 35 00 53 08      [ 1]  108 	mov	0x5308+0, #0x00
                                    109 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 65: TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
      00AD36 35 00 53 09      [ 1]  110 	mov	0x5309+0, #0x00
                                    111 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 66: TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
      00AD3A 35 00 53 05      [ 1]  112 	mov	0x5305+0, #0x00
                                    113 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 67: TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
      00AD3E 35 00 53 06      [ 1]  114 	mov	0x5306+0, #0x00
                                    115 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 68: TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
      00AD42 35 00 53 07      [ 1]  116 	mov	0x5307+0, #0x00
                                    117 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 69: TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
      00AD46 35 00 53 0A      [ 1]  118 	mov	0x530a+0, #0x00
                                    119 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 70: TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
      00AD4A 35 00 53 0B      [ 1]  120 	mov	0x530b+0, #0x00
                                    121 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 71: TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
      00AD4E 35 00 53 0C      [ 1]  122 	mov	0x530c+0, #0x00
                                    123 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 72: TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
      00AD52 35 FF 53 0D      [ 1]  124 	mov	0x530d+0, #0xff
                                    125 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 73: TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
      00AD56 35 FF 53 0E      [ 1]  126 	mov	0x530e+0, #0xff
                                    127 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 74: TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
      00AD5A 35 00 53 0F      [ 1]  128 	mov	0x530f+0, #0x00
                                    129 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 75: TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
      00AD5E 35 00 53 10      [ 1]  130 	mov	0x5310+0, #0x00
                                    131 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 76: TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
      00AD62 35 00 53 11      [ 1]  132 	mov	0x5311+0, #0x00
                                    133 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 77: TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
      00AD66 35 00 53 12      [ 1]  134 	mov	0x5312+0, #0x00
                                    135 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 78: TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
      00AD6A 35 00 53 13      [ 1]  136 	mov	0x5313+0, #0x00
                                    137 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 79: TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
      00AD6E 35 00 53 14      [ 1]  138 	mov	0x5314+0, #0x00
                                    139 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 80: TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
      00AD72 35 00 53 02      [ 1]  140 	mov	0x5302+0, #0x00
                                    141 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 81: }
      00AD76 81               [ 4]  142 	ret
                                    143 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 89: void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
                                    144 ;	-----------------------------------------
                                    145 ;	 function TIM2_TimeBaseInit
                                    146 ;	-----------------------------------------
      00AD77                        147 _TIM2_TimeBaseInit:
                                    148 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 93: TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
      00AD77 AE 53 0C         [ 2]  149 	ldw	x, #0x530c
      00AD7A 7B 03            [ 1]  150 	ld	a, (0x03, sp)
      00AD7C F7               [ 1]  151 	ld	(x), a
                                    152 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 95: TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
      00AD7D 7B 04            [ 1]  153 	ld	a, (0x04, sp)
      00AD7F C7 53 0D         [ 1]  154 	ld	0x530d, a
                                    155 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 96: TIM2->ARRL = (uint8_t)(TIM2_Period);
      00AD82 7B 05            [ 1]  156 	ld	a, (0x05, sp)
      00AD84 C7 53 0E         [ 1]  157 	ld	0x530e, a
                                    158 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 97: }
      00AD87 81               [ 4]  159 	ret
                                    160 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 108: void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    161 ;	-----------------------------------------
                                    162 ;	 function TIM2_OC1Init
                                    163 ;	-----------------------------------------
      00AD88                        164 _TIM2_OC1Init:
      00AD88 89               [ 2]  165 	pushw	x
                                    166 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 114: assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
      00AD89 0D 05            [ 1]  167 	tnz	(0x05, sp)
      00AD8B 27 2D            [ 1]  168 	jreq	00104$
      00AD8D 7B 05            [ 1]  169 	ld	a, (0x05, sp)
      00AD8F A1 10            [ 1]  170 	cp	a, #0x10
      00AD91 27 27            [ 1]  171 	jreq	00104$
      00AD93 7B 05            [ 1]  172 	ld	a, (0x05, sp)
      00AD95 A1 20            [ 1]  173 	cp	a, #0x20
      00AD97 27 21            [ 1]  174 	jreq	00104$
      00AD99 7B 05            [ 1]  175 	ld	a, (0x05, sp)
      00AD9B A1 30            [ 1]  176 	cp	a, #0x30
      00AD9D 27 1B            [ 1]  177 	jreq	00104$
      00AD9F 7B 05            [ 1]  178 	ld	a, (0x05, sp)
      00ADA1 A1 60            [ 1]  179 	cp	a, #0x60
      00ADA3 27 15            [ 1]  180 	jreq	00104$
      00ADA5 7B 05            [ 1]  181 	ld	a, (0x05, sp)
      00ADA7 A1 70            [ 1]  182 	cp	a, #0x70
      00ADA9 27 0F            [ 1]  183 	jreq	00104$
      00ADAB 4B 72            [ 1]  184 	push	#0x72
      00ADAD 5F               [ 1]  185 	clrw	x
      00ADAE 89               [ 2]  186 	pushw	x
      00ADAF 4B 00            [ 1]  187 	push	#0x00
      00ADB1 4B AB            [ 1]  188 	push	#<(___str_0+0)
      00ADB3 4B 81            [ 1]  189 	push	#((___str_0+0) >> 8)
      00ADB5 CD 83 84         [ 4]  190 	call	_assert_failed
      00ADB8 5B 06            [ 2]  191 	addw	sp, #6
      00ADBA                        192 00104$:
                                    193 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 115: assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
      00ADBA 0D 06            [ 1]  194 	tnz	(0x06, sp)
      00ADBC 27 15            [ 1]  195 	jreq	00121$
      00ADBE 7B 06            [ 1]  196 	ld	a, (0x06, sp)
      00ADC0 A1 11            [ 1]  197 	cp	a, #0x11
      00ADC2 27 0F            [ 1]  198 	jreq	00121$
      00ADC4 4B 73            [ 1]  199 	push	#0x73
      00ADC6 5F               [ 1]  200 	clrw	x
      00ADC7 89               [ 2]  201 	pushw	x
      00ADC8 4B 00            [ 1]  202 	push	#0x00
      00ADCA 4B AB            [ 1]  203 	push	#<(___str_0+0)
      00ADCC 4B 81            [ 1]  204 	push	#((___str_0+0) >> 8)
      00ADCE CD 83 84         [ 4]  205 	call	_assert_failed
      00ADD1 5B 06            [ 2]  206 	addw	sp, #6
      00ADD3                        207 00121$:
                                    208 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 116: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00ADD3 0D 09            [ 1]  209 	tnz	(0x09, sp)
      00ADD5 27 15            [ 1]  210 	jreq	00126$
      00ADD7 7B 09            [ 1]  211 	ld	a, (0x09, sp)
      00ADD9 A1 22            [ 1]  212 	cp	a, #0x22
      00ADDB 27 0F            [ 1]  213 	jreq	00126$
      00ADDD 4B 74            [ 1]  214 	push	#0x74
      00ADDF 5F               [ 1]  215 	clrw	x
      00ADE0 89               [ 2]  216 	pushw	x
      00ADE1 4B 00            [ 1]  217 	push	#0x00
      00ADE3 4B AB            [ 1]  218 	push	#<(___str_0+0)
      00ADE5 4B 81            [ 1]  219 	push	#((___str_0+0) >> 8)
      00ADE7 CD 83 84         [ 4]  220 	call	_assert_failed
      00ADEA 5B 06            [ 2]  221 	addw	sp, #6
      00ADEC                        222 00126$:
                                    223 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 119: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
      00ADEC C6 53 08         [ 1]  224 	ld	a, 0x5308
      00ADEF A4 FC            [ 1]  225 	and	a, #0xfc
      00ADF1 C7 53 08         [ 1]  226 	ld	0x5308, a
                                    227 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 121: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
      00ADF4 C6 53 08         [ 1]  228 	ld	a, 0x5308
      00ADF7 6B 01            [ 1]  229 	ld	(0x01, sp), a
      00ADF9 7B 06            [ 1]  230 	ld	a, (0x06, sp)
      00ADFB A4 01            [ 1]  231 	and	a, #0x01
      00ADFD 6B 02            [ 1]  232 	ld	(0x02, sp), a
                                    233 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 122: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
      00ADFF 7B 09            [ 1]  234 	ld	a, (0x09, sp)
      00AE01 A4 02            [ 1]  235 	and	a, #0x02
      00AE03 1A 02            [ 1]  236 	or	a, (0x02, sp)
      00AE05 1A 01            [ 1]  237 	or	a, (0x01, sp)
      00AE07 C7 53 08         [ 1]  238 	ld	0x5308, a
                                    239 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 125: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
      00AE0A C6 53 05         [ 1]  240 	ld	a, 0x5305
      00AE0D A4 8F            [ 1]  241 	and	a, #0x8f
                                    242 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 126: (uint8_t)TIM2_OCMode);
      00AE0F 1A 05            [ 1]  243 	or	a, (0x05, sp)
      00AE11 C7 53 05         [ 1]  244 	ld	0x5305, a
                                    245 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 129: TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
      00AE14 7B 07            [ 1]  246 	ld	a, (0x07, sp)
      00AE16 C7 53 0F         [ 1]  247 	ld	0x530f, a
                                    248 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 130: TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
      00AE19 7B 08            [ 1]  249 	ld	a, (0x08, sp)
      00AE1B C7 53 10         [ 1]  250 	ld	0x5310, a
                                    251 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 131: }
      00AE1E 85               [ 2]  252 	popw	x
      00AE1F 81               [ 4]  253 	ret
                                    254 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 142: void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    255 ;	-----------------------------------------
                                    256 ;	 function TIM2_OC2Init
                                    257 ;	-----------------------------------------
      00AE20                        258 _TIM2_OC2Init:
      00AE20 89               [ 2]  259 	pushw	x
                                    260 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 148: assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
      00AE21 0D 05            [ 1]  261 	tnz	(0x05, sp)
      00AE23 27 2D            [ 1]  262 	jreq	00104$
      00AE25 7B 05            [ 1]  263 	ld	a, (0x05, sp)
      00AE27 A1 10            [ 1]  264 	cp	a, #0x10
      00AE29 27 27            [ 1]  265 	jreq	00104$
      00AE2B 7B 05            [ 1]  266 	ld	a, (0x05, sp)
      00AE2D A1 20            [ 1]  267 	cp	a, #0x20
      00AE2F 27 21            [ 1]  268 	jreq	00104$
      00AE31 7B 05            [ 1]  269 	ld	a, (0x05, sp)
      00AE33 A1 30            [ 1]  270 	cp	a, #0x30
      00AE35 27 1B            [ 1]  271 	jreq	00104$
      00AE37 7B 05            [ 1]  272 	ld	a, (0x05, sp)
      00AE39 A1 60            [ 1]  273 	cp	a, #0x60
      00AE3B 27 15            [ 1]  274 	jreq	00104$
      00AE3D 7B 05            [ 1]  275 	ld	a, (0x05, sp)
      00AE3F A1 70            [ 1]  276 	cp	a, #0x70
      00AE41 27 0F            [ 1]  277 	jreq	00104$
      00AE43 4B 94            [ 1]  278 	push	#0x94
      00AE45 5F               [ 1]  279 	clrw	x
      00AE46 89               [ 2]  280 	pushw	x
      00AE47 4B 00            [ 1]  281 	push	#0x00
      00AE49 4B AB            [ 1]  282 	push	#<(___str_0+0)
      00AE4B 4B 81            [ 1]  283 	push	#((___str_0+0) >> 8)
      00AE4D CD 83 84         [ 4]  284 	call	_assert_failed
      00AE50 5B 06            [ 2]  285 	addw	sp, #6
      00AE52                        286 00104$:
                                    287 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 149: assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
      00AE52 0D 06            [ 1]  288 	tnz	(0x06, sp)
      00AE54 27 15            [ 1]  289 	jreq	00121$
      00AE56 7B 06            [ 1]  290 	ld	a, (0x06, sp)
      00AE58 A1 11            [ 1]  291 	cp	a, #0x11
      00AE5A 27 0F            [ 1]  292 	jreq	00121$
      00AE5C 4B 95            [ 1]  293 	push	#0x95
      00AE5E 5F               [ 1]  294 	clrw	x
      00AE5F 89               [ 2]  295 	pushw	x
      00AE60 4B 00            [ 1]  296 	push	#0x00
      00AE62 4B AB            [ 1]  297 	push	#<(___str_0+0)
      00AE64 4B 81            [ 1]  298 	push	#((___str_0+0) >> 8)
      00AE66 CD 83 84         [ 4]  299 	call	_assert_failed
      00AE69 5B 06            [ 2]  300 	addw	sp, #6
      00AE6B                        301 00121$:
                                    302 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 150: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00AE6B 0D 09            [ 1]  303 	tnz	(0x09, sp)
      00AE6D 27 15            [ 1]  304 	jreq	00126$
      00AE6F 7B 09            [ 1]  305 	ld	a, (0x09, sp)
      00AE71 A1 22            [ 1]  306 	cp	a, #0x22
      00AE73 27 0F            [ 1]  307 	jreq	00126$
      00AE75 4B 96            [ 1]  308 	push	#0x96
      00AE77 5F               [ 1]  309 	clrw	x
      00AE78 89               [ 2]  310 	pushw	x
      00AE79 4B 00            [ 1]  311 	push	#0x00
      00AE7B 4B AB            [ 1]  312 	push	#<(___str_0+0)
      00AE7D 4B 81            [ 1]  313 	push	#((___str_0+0) >> 8)
      00AE7F CD 83 84         [ 4]  314 	call	_assert_failed
      00AE82 5B 06            [ 2]  315 	addw	sp, #6
      00AE84                        316 00126$:
                                    317 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 154: TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
      00AE84 C6 53 08         [ 1]  318 	ld	a, 0x5308
      00AE87 A4 CF            [ 1]  319 	and	a, #0xcf
      00AE89 C7 53 08         [ 1]  320 	ld	0x5308, a
                                    321 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 156: TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
      00AE8C C6 53 08         [ 1]  322 	ld	a, 0x5308
      00AE8F 6B 01            [ 1]  323 	ld	(0x01, sp), a
      00AE91 7B 06            [ 1]  324 	ld	a, (0x06, sp)
      00AE93 A4 10            [ 1]  325 	and	a, #0x10
      00AE95 6B 02            [ 1]  326 	ld	(0x02, sp), a
                                    327 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 157: (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
      00AE97 7B 09            [ 1]  328 	ld	a, (0x09, sp)
      00AE99 A4 20            [ 1]  329 	and	a, #0x20
      00AE9B 1A 02            [ 1]  330 	or	a, (0x02, sp)
      00AE9D 1A 01            [ 1]  331 	or	a, (0x01, sp)
      00AE9F C7 53 08         [ 1]  332 	ld	0x5308, a
                                    333 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 161: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
      00AEA2 C6 53 06         [ 1]  334 	ld	a, 0x5306
      00AEA5 A4 8F            [ 1]  335 	and	a, #0x8f
                                    336 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 162: (uint8_t)TIM2_OCMode);
      00AEA7 1A 05            [ 1]  337 	or	a, (0x05, sp)
      00AEA9 C7 53 06         [ 1]  338 	ld	0x5306, a
                                    339 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 166: TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
      00AEAC 7B 07            [ 1]  340 	ld	a, (0x07, sp)
      00AEAE C7 53 11         [ 1]  341 	ld	0x5311, a
                                    342 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 167: TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
      00AEB1 7B 08            [ 1]  343 	ld	a, (0x08, sp)
      00AEB3 C7 53 12         [ 1]  344 	ld	0x5312, a
                                    345 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 168: }
      00AEB6 85               [ 2]  346 	popw	x
      00AEB7 81               [ 4]  347 	ret
                                    348 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 179: void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
                                    349 ;	-----------------------------------------
                                    350 ;	 function TIM2_OC3Init
                                    351 ;	-----------------------------------------
      00AEB8                        352 _TIM2_OC3Init:
      00AEB8 89               [ 2]  353 	pushw	x
                                    354 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 185: assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
      00AEB9 0D 05            [ 1]  355 	tnz	(0x05, sp)
      00AEBB 27 2D            [ 1]  356 	jreq	00104$
      00AEBD 7B 05            [ 1]  357 	ld	a, (0x05, sp)
      00AEBF A1 10            [ 1]  358 	cp	a, #0x10
      00AEC1 27 27            [ 1]  359 	jreq	00104$
      00AEC3 7B 05            [ 1]  360 	ld	a, (0x05, sp)
      00AEC5 A1 20            [ 1]  361 	cp	a, #0x20
      00AEC7 27 21            [ 1]  362 	jreq	00104$
      00AEC9 7B 05            [ 1]  363 	ld	a, (0x05, sp)
      00AECB A1 30            [ 1]  364 	cp	a, #0x30
      00AECD 27 1B            [ 1]  365 	jreq	00104$
      00AECF 7B 05            [ 1]  366 	ld	a, (0x05, sp)
      00AED1 A1 60            [ 1]  367 	cp	a, #0x60
      00AED3 27 15            [ 1]  368 	jreq	00104$
      00AED5 7B 05            [ 1]  369 	ld	a, (0x05, sp)
      00AED7 A1 70            [ 1]  370 	cp	a, #0x70
      00AED9 27 0F            [ 1]  371 	jreq	00104$
      00AEDB 4B B9            [ 1]  372 	push	#0xb9
      00AEDD 5F               [ 1]  373 	clrw	x
      00AEDE 89               [ 2]  374 	pushw	x
      00AEDF 4B 00            [ 1]  375 	push	#0x00
      00AEE1 4B AB            [ 1]  376 	push	#<(___str_0+0)
      00AEE3 4B 81            [ 1]  377 	push	#((___str_0+0) >> 8)
      00AEE5 CD 83 84         [ 4]  378 	call	_assert_failed
      00AEE8 5B 06            [ 2]  379 	addw	sp, #6
      00AEEA                        380 00104$:
                                    381 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 186: assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
      00AEEA 0D 06            [ 1]  382 	tnz	(0x06, sp)
      00AEEC 27 15            [ 1]  383 	jreq	00121$
      00AEEE 7B 06            [ 1]  384 	ld	a, (0x06, sp)
      00AEF0 A1 11            [ 1]  385 	cp	a, #0x11
      00AEF2 27 0F            [ 1]  386 	jreq	00121$
      00AEF4 4B BA            [ 1]  387 	push	#0xba
      00AEF6 5F               [ 1]  388 	clrw	x
      00AEF7 89               [ 2]  389 	pushw	x
      00AEF8 4B 00            [ 1]  390 	push	#0x00
      00AEFA 4B AB            [ 1]  391 	push	#<(___str_0+0)
      00AEFC 4B 81            [ 1]  392 	push	#((___str_0+0) >> 8)
      00AEFE CD 83 84         [ 4]  393 	call	_assert_failed
      00AF01 5B 06            [ 2]  394 	addw	sp, #6
      00AF03                        395 00121$:
                                    396 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 187: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00AF03 0D 09            [ 1]  397 	tnz	(0x09, sp)
      00AF05 27 15            [ 1]  398 	jreq	00126$
      00AF07 7B 09            [ 1]  399 	ld	a, (0x09, sp)
      00AF09 A1 22            [ 1]  400 	cp	a, #0x22
      00AF0B 27 0F            [ 1]  401 	jreq	00126$
      00AF0D 4B BB            [ 1]  402 	push	#0xbb
      00AF0F 5F               [ 1]  403 	clrw	x
      00AF10 89               [ 2]  404 	pushw	x
      00AF11 4B 00            [ 1]  405 	push	#0x00
      00AF13 4B AB            [ 1]  406 	push	#<(___str_0+0)
      00AF15 4B 81            [ 1]  407 	push	#((___str_0+0) >> 8)
      00AF17 CD 83 84         [ 4]  408 	call	_assert_failed
      00AF1A 5B 06            [ 2]  409 	addw	sp, #6
      00AF1C                        410 00126$:
                                    411 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 189: TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
      00AF1C C6 53 09         [ 1]  412 	ld	a, 0x5309
      00AF1F A4 FC            [ 1]  413 	and	a, #0xfc
      00AF21 C7 53 09         [ 1]  414 	ld	0x5309, a
                                    415 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 191: TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
      00AF24 C6 53 09         [ 1]  416 	ld	a, 0x5309
      00AF27 6B 01            [ 1]  417 	ld	(0x01, sp), a
      00AF29 7B 06            [ 1]  418 	ld	a, (0x06, sp)
      00AF2B A4 01            [ 1]  419 	and	a, #0x01
      00AF2D 6B 02            [ 1]  420 	ld	(0x02, sp), a
                                    421 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 192: (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
      00AF2F 7B 09            [ 1]  422 	ld	a, (0x09, sp)
      00AF31 A4 02            [ 1]  423 	and	a, #0x02
      00AF33 1A 02            [ 1]  424 	or	a, (0x02, sp)
      00AF35 1A 01            [ 1]  425 	or	a, (0x01, sp)
      00AF37 C7 53 09         [ 1]  426 	ld	0x5309, a
                                    427 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 195: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
      00AF3A C6 53 07         [ 1]  428 	ld	a, 0x5307
      00AF3D A4 8F            [ 1]  429 	and	a, #0x8f
                                    430 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 196: (uint8_t)TIM2_OCMode);
      00AF3F 1A 05            [ 1]  431 	or	a, (0x05, sp)
      00AF41 C7 53 07         [ 1]  432 	ld	0x5307, a
                                    433 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 199: TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
      00AF44 7B 07            [ 1]  434 	ld	a, (0x07, sp)
      00AF46 C7 53 13         [ 1]  435 	ld	0x5313, a
                                    436 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 200: TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
      00AF49 7B 08            [ 1]  437 	ld	a, (0x08, sp)
      00AF4B C7 53 14         [ 1]  438 	ld	0x5314, a
                                    439 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 201: }
      00AF4E 85               [ 2]  440 	popw	x
      00AF4F 81               [ 4]  441 	ret
                                    442 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 212: void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
                                    443 ;	-----------------------------------------
                                    444 ;	 function TIM2_ICInit
                                    445 ;	-----------------------------------------
      00AF50                        446 _TIM2_ICInit:
      00AF50 88               [ 1]  447 	push	a
                                    448 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 219: assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
      00AF51 7B 04            [ 1]  449 	ld	a, (0x04, sp)
      00AF53 4A               [ 1]  450 	dec	a
      00AF54 26 05            [ 1]  451 	jrne	00219$
      00AF56 A6 01            [ 1]  452 	ld	a, #0x01
      00AF58 6B 01            [ 1]  453 	ld	(0x01, sp), a
      00AF5A C5                     454 	.byte 0xc5
      00AF5B                        455 00219$:
      00AF5B 0F 01            [ 1]  456 	clr	(0x01, sp)
      00AF5D                        457 00220$:
      00AF5D 0D 04            [ 1]  458 	tnz	(0x04, sp)
      00AF5F 27 19            [ 1]  459 	jreq	00110$
      00AF61 0D 01            [ 1]  460 	tnz	(0x01, sp)
      00AF63 26 15            [ 1]  461 	jrne	00110$
      00AF65 7B 04            [ 1]  462 	ld	a, (0x04, sp)
      00AF67 A1 02            [ 1]  463 	cp	a, #0x02
      00AF69 27 0F            [ 1]  464 	jreq	00110$
      00AF6B 4B DB            [ 1]  465 	push	#0xdb
      00AF6D 5F               [ 1]  466 	clrw	x
      00AF6E 89               [ 2]  467 	pushw	x
      00AF6F 4B 00            [ 1]  468 	push	#0x00
      00AF71 4B AB            [ 1]  469 	push	#<(___str_0+0)
      00AF73 4B 81            [ 1]  470 	push	#((___str_0+0) >> 8)
      00AF75 CD 83 84         [ 4]  471 	call	_assert_failed
      00AF78 5B 06            [ 2]  472 	addw	sp, #6
      00AF7A                        473 00110$:
                                    474 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 220: assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
      00AF7A 0D 05            [ 1]  475 	tnz	(0x05, sp)
      00AF7C 27 15            [ 1]  476 	jreq	00118$
      00AF7E 7B 05            [ 1]  477 	ld	a, (0x05, sp)
      00AF80 A1 44            [ 1]  478 	cp	a, #0x44
      00AF82 27 0F            [ 1]  479 	jreq	00118$
      00AF84 4B DC            [ 1]  480 	push	#0xdc
      00AF86 5F               [ 1]  481 	clrw	x
      00AF87 89               [ 2]  482 	pushw	x
      00AF88 4B 00            [ 1]  483 	push	#0x00
      00AF8A 4B AB            [ 1]  484 	push	#<(___str_0+0)
      00AF8C 4B 81            [ 1]  485 	push	#((___str_0+0) >> 8)
      00AF8E CD 83 84         [ 4]  486 	call	_assert_failed
      00AF91 5B 06            [ 2]  487 	addw	sp, #6
      00AF93                        488 00118$:
                                    489 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 221: assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
      00AF93 7B 06            [ 1]  490 	ld	a, (0x06, sp)
      00AF95 4A               [ 1]  491 	dec	a
      00AF96 27 1B            [ 1]  492 	jreq	00123$
      00AF98 7B 06            [ 1]  493 	ld	a, (0x06, sp)
      00AF9A A1 02            [ 1]  494 	cp	a, #0x02
      00AF9C 27 15            [ 1]  495 	jreq	00123$
      00AF9E 7B 06            [ 1]  496 	ld	a, (0x06, sp)
      00AFA0 A1 03            [ 1]  497 	cp	a, #0x03
      00AFA2 27 0F            [ 1]  498 	jreq	00123$
      00AFA4 4B DD            [ 1]  499 	push	#0xdd
      00AFA6 5F               [ 1]  500 	clrw	x
      00AFA7 89               [ 2]  501 	pushw	x
      00AFA8 4B 00            [ 1]  502 	push	#0x00
      00AFAA 4B AB            [ 1]  503 	push	#<(___str_0+0)
      00AFAC 4B 81            [ 1]  504 	push	#((___str_0+0) >> 8)
      00AFAE CD 83 84         [ 4]  505 	call	_assert_failed
      00AFB1 5B 06            [ 2]  506 	addw	sp, #6
      00AFB3                        507 00123$:
                                    508 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 222: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
      00AFB3 0D 07            [ 1]  509 	tnz	(0x07, sp)
      00AFB5 27 21            [ 1]  510 	jreq	00131$
      00AFB7 7B 07            [ 1]  511 	ld	a, (0x07, sp)
      00AFB9 A1 04            [ 1]  512 	cp	a, #0x04
      00AFBB 27 1B            [ 1]  513 	jreq	00131$
      00AFBD 7B 07            [ 1]  514 	ld	a, (0x07, sp)
      00AFBF A1 08            [ 1]  515 	cp	a, #0x08
      00AFC1 27 15            [ 1]  516 	jreq	00131$
      00AFC3 7B 07            [ 1]  517 	ld	a, (0x07, sp)
      00AFC5 A1 0C            [ 1]  518 	cp	a, #0x0c
      00AFC7 27 0F            [ 1]  519 	jreq	00131$
      00AFC9 4B DE            [ 1]  520 	push	#0xde
      00AFCB 5F               [ 1]  521 	clrw	x
      00AFCC 89               [ 2]  522 	pushw	x
      00AFCD 4B 00            [ 1]  523 	push	#0x00
      00AFCF 4B AB            [ 1]  524 	push	#<(___str_0+0)
      00AFD1 4B 81            [ 1]  525 	push	#((___str_0+0) >> 8)
      00AFD3 CD 83 84         [ 4]  526 	call	_assert_failed
      00AFD6 5B 06            [ 2]  527 	addw	sp, #6
      00AFD8                        528 00131$:
                                    529 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 223: assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
      00AFD8 7B 08            [ 1]  530 	ld	a, (0x08, sp)
      00AFDA A1 0F            [ 1]  531 	cp	a, #0x0f
      00AFDC 23 0F            [ 2]  532 	jrule	00142$
      00AFDE 4B DF            [ 1]  533 	push	#0xdf
      00AFE0 5F               [ 1]  534 	clrw	x
      00AFE1 89               [ 2]  535 	pushw	x
      00AFE2 4B 00            [ 1]  536 	push	#0x00
      00AFE4 4B AB            [ 1]  537 	push	#<(___str_0+0)
      00AFE6 4B 81            [ 1]  538 	push	#((___str_0+0) >> 8)
      00AFE8 CD 83 84         [ 4]  539 	call	_assert_failed
      00AFEB 5B 06            [ 2]  540 	addw	sp, #6
      00AFED                        541 00142$:
                                    542 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 225: if (TIM2_Channel == TIM2_CHANNEL_1)
      00AFED 0D 04            [ 1]  543 	tnz	(0x04, sp)
      00AFEF 26 17            [ 1]  544 	jrne	00105$
                                    545 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 228: TI1_Config((uint8_t)TIM2_ICPolarity,
      00AFF1 7B 08            [ 1]  546 	ld	a, (0x08, sp)
      00AFF3 88               [ 1]  547 	push	a
      00AFF4 7B 07            [ 1]  548 	ld	a, (0x07, sp)
      00AFF6 88               [ 1]  549 	push	a
      00AFF7 7B 07            [ 1]  550 	ld	a, (0x07, sp)
      00AFF9 88               [ 1]  551 	push	a
      00AFFA CD B7 BA         [ 4]  552 	call	_TI1_Config
      00AFFD 5B 03            [ 2]  553 	addw	sp, #3
                                    554 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 233: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00AFFF 7B 07            [ 1]  555 	ld	a, (0x07, sp)
      00B001 88               [ 1]  556 	push	a
      00B002 CD B5 E1         [ 4]  557 	call	_TIM2_SetIC1Prescaler
      00B005 84               [ 1]  558 	pop	a
      00B006 20 30            [ 2]  559 	jra	00107$
      00B008                        560 00105$:
                                    561 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 235: else if (TIM2_Channel == TIM2_CHANNEL_2)
      00B008 7B 01            [ 1]  562 	ld	a, (0x01, sp)
      00B00A 27 17            [ 1]  563 	jreq	00102$
                                    564 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 238: TI2_Config((uint8_t)TIM2_ICPolarity,
      00B00C 7B 08            [ 1]  565 	ld	a, (0x08, sp)
      00B00E 88               [ 1]  566 	push	a
      00B00F 7B 07            [ 1]  567 	ld	a, (0x07, sp)
      00B011 88               [ 1]  568 	push	a
      00B012 7B 07            [ 1]  569 	ld	a, (0x07, sp)
      00B014 88               [ 1]  570 	push	a
      00B015 CD B7 EB         [ 4]  571 	call	_TI2_Config
      00B018 5B 03            [ 2]  572 	addw	sp, #3
                                    573 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 243: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00B01A 7B 07            [ 1]  574 	ld	a, (0x07, sp)
      00B01C 88               [ 1]  575 	push	a
      00B01D CD B6 11         [ 4]  576 	call	_TIM2_SetIC2Prescaler
      00B020 84               [ 1]  577 	pop	a
      00B021 20 15            [ 2]  578 	jra	00107$
      00B023                        579 00102$:
                                    580 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 248: TI3_Config((uint8_t)TIM2_ICPolarity,
      00B023 7B 08            [ 1]  581 	ld	a, (0x08, sp)
      00B025 88               [ 1]  582 	push	a
      00B026 7B 07            [ 1]  583 	ld	a, (0x07, sp)
      00B028 88               [ 1]  584 	push	a
      00B029 7B 07            [ 1]  585 	ld	a, (0x07, sp)
      00B02B 88               [ 1]  586 	push	a
      00B02C CD B8 1C         [ 4]  587 	call	_TI3_Config
      00B02F 5B 03            [ 2]  588 	addw	sp, #3
                                    589 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 253: TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
      00B031 7B 07            [ 1]  590 	ld	a, (0x07, sp)
      00B033 88               [ 1]  591 	push	a
      00B034 CD B6 41         [ 4]  592 	call	_TIM2_SetIC3Prescaler
      00B037 84               [ 1]  593 	pop	a
      00B038                        594 00107$:
                                    595 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 255: }
      00B038 84               [ 1]  596 	pop	a
      00B039 81               [ 4]  597 	ret
                                    598 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 266: void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
                                    599 ;	-----------------------------------------
                                    600 ;	 function TIM2_PWMIConfig
                                    601 ;	-----------------------------------------
      00B03A                        602 _TIM2_PWMIConfig:
      00B03A 89               [ 2]  603 	pushw	x
                                    604 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 276: assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
      00B03B 0D 05            [ 1]  605 	tnz	(0x05, sp)
      00B03D 27 14            [ 1]  606 	jreq	00113$
      00B03F 7B 05            [ 1]  607 	ld	a, (0x05, sp)
      00B041 4A               [ 1]  608 	dec	a
      00B042 27 0F            [ 1]  609 	jreq	00113$
      00B044 4B 14            [ 1]  610 	push	#0x14
      00B046 4B 01            [ 1]  611 	push	#0x01
      00B048 5F               [ 1]  612 	clrw	x
      00B049 89               [ 2]  613 	pushw	x
      00B04A 4B AB            [ 1]  614 	push	#<(___str_0+0)
      00B04C 4B 81            [ 1]  615 	push	#((___str_0+0) >> 8)
      00B04E CD 83 84         [ 4]  616 	call	_assert_failed
      00B051 5B 06            [ 2]  617 	addw	sp, #6
      00B053                        618 00113$:
                                    619 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 277: assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
      00B053 7B 06            [ 1]  620 	ld	a, (0x06, sp)
      00B055 A0 44            [ 1]  621 	sub	a, #0x44
      00B057 26 04            [ 1]  622 	jrne	00216$
      00B059 4C               [ 1]  623 	inc	a
      00B05A 6B 01            [ 1]  624 	ld	(0x01, sp), a
      00B05C C5                     625 	.byte 0xc5
      00B05D                        626 00216$:
      00B05D 0F 01            [ 1]  627 	clr	(0x01, sp)
      00B05F                        628 00217$:
      00B05F 0D 06            [ 1]  629 	tnz	(0x06, sp)
      00B061 27 13            [ 1]  630 	jreq	00118$
      00B063 0D 01            [ 1]  631 	tnz	(0x01, sp)
      00B065 26 0F            [ 1]  632 	jrne	00118$
      00B067 4B 15            [ 1]  633 	push	#0x15
      00B069 4B 01            [ 1]  634 	push	#0x01
      00B06B 5F               [ 1]  635 	clrw	x
      00B06C 89               [ 2]  636 	pushw	x
      00B06D 4B AB            [ 1]  637 	push	#<(___str_0+0)
      00B06F 4B 81            [ 1]  638 	push	#((___str_0+0) >> 8)
      00B071 CD 83 84         [ 4]  639 	call	_assert_failed
      00B074 5B 06            [ 2]  640 	addw	sp, #6
      00B076                        641 00118$:
                                    642 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 278: assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
      00B076 7B 07            [ 1]  643 	ld	a, (0x07, sp)
      00B078 4A               [ 1]  644 	dec	a
      00B079 26 05            [ 1]  645 	jrne	00221$
      00B07B A6 01            [ 1]  646 	ld	a, #0x01
      00B07D 6B 02            [ 1]  647 	ld	(0x02, sp), a
      00B07F C5                     648 	.byte 0xc5
      00B080                        649 00221$:
      00B080 0F 02            [ 1]  650 	clr	(0x02, sp)
      00B082                        651 00222$:
      00B082 0D 02            [ 1]  652 	tnz	(0x02, sp)
      00B084 26 1B            [ 1]  653 	jrne	00123$
      00B086 7B 07            [ 1]  654 	ld	a, (0x07, sp)
      00B088 A1 02            [ 1]  655 	cp	a, #0x02
      00B08A 27 15            [ 1]  656 	jreq	00123$
      00B08C 7B 07            [ 1]  657 	ld	a, (0x07, sp)
      00B08E A1 03            [ 1]  658 	cp	a, #0x03
      00B090 27 0F            [ 1]  659 	jreq	00123$
      00B092 4B 16            [ 1]  660 	push	#0x16
      00B094 4B 01            [ 1]  661 	push	#0x01
      00B096 5F               [ 1]  662 	clrw	x
      00B097 89               [ 2]  663 	pushw	x
      00B098 4B AB            [ 1]  664 	push	#<(___str_0+0)
      00B09A 4B 81            [ 1]  665 	push	#((___str_0+0) >> 8)
      00B09C CD 83 84         [ 4]  666 	call	_assert_failed
      00B09F 5B 06            [ 2]  667 	addw	sp, #6
      00B0A1                        668 00123$:
                                    669 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 279: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
      00B0A1 0D 08            [ 1]  670 	tnz	(0x08, sp)
      00B0A3 27 21            [ 1]  671 	jreq	00131$
      00B0A5 7B 08            [ 1]  672 	ld	a, (0x08, sp)
      00B0A7 A1 04            [ 1]  673 	cp	a, #0x04
      00B0A9 27 1B            [ 1]  674 	jreq	00131$
      00B0AB 7B 08            [ 1]  675 	ld	a, (0x08, sp)
      00B0AD A1 08            [ 1]  676 	cp	a, #0x08
      00B0AF 27 15            [ 1]  677 	jreq	00131$
      00B0B1 7B 08            [ 1]  678 	ld	a, (0x08, sp)
      00B0B3 A1 0C            [ 1]  679 	cp	a, #0x0c
      00B0B5 27 0F            [ 1]  680 	jreq	00131$
      00B0B7 4B 17            [ 1]  681 	push	#0x17
      00B0B9 4B 01            [ 1]  682 	push	#0x01
      00B0BB 5F               [ 1]  683 	clrw	x
      00B0BC 89               [ 2]  684 	pushw	x
      00B0BD 4B AB            [ 1]  685 	push	#<(___str_0+0)
      00B0BF 4B 81            [ 1]  686 	push	#((___str_0+0) >> 8)
      00B0C1 CD 83 84         [ 4]  687 	call	_assert_failed
      00B0C4 5B 06            [ 2]  688 	addw	sp, #6
      00B0C6                        689 00131$:
                                    690 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 282: if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
      00B0C6 0D 01            [ 1]  691 	tnz	(0x01, sp)
      00B0C8 26 05            [ 1]  692 	jrne	00102$
                                    693 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 284: icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
      00B0CA A6 44            [ 1]  694 	ld	a, #0x44
      00B0CC 6B 01            [ 1]  695 	ld	(0x01, sp), a
                                    696 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 288: icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
      00B0CE C5                     697 	.byte 0xc5
      00B0CF                        698 00102$:
      00B0CF 0F 01            [ 1]  699 	clr	(0x01, sp)
      00B0D1                        700 00103$:
                                    701 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 292: if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
      00B0D1 7B 02            [ 1]  702 	ld	a, (0x02, sp)
      00B0D3 27 06            [ 1]  703 	jreq	00105$
                                    704 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 294: icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
      00B0D5 A6 02            [ 1]  705 	ld	a, #0x02
      00B0D7 6B 02            [ 1]  706 	ld	(0x02, sp), a
      00B0D9 20 04            [ 2]  707 	jra	00106$
      00B0DB                        708 00105$:
                                    709 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 298: icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
      00B0DB A6 01            [ 1]  710 	ld	a, #0x01
      00B0DD 6B 02            [ 1]  711 	ld	(0x02, sp), a
      00B0DF                        712 00106$:
                                    713 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 301: if (TIM2_Channel == TIM2_CHANNEL_1)
      00B0DF 0D 05            [ 1]  714 	tnz	(0x05, sp)
      00B0E1 26 2C            [ 1]  715 	jrne	00108$
                                    716 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 304: TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
      00B0E3 7B 09            [ 1]  717 	ld	a, (0x09, sp)
      00B0E5 88               [ 1]  718 	push	a
      00B0E6 7B 08            [ 1]  719 	ld	a, (0x08, sp)
      00B0E8 88               [ 1]  720 	push	a
      00B0E9 7B 08            [ 1]  721 	ld	a, (0x08, sp)
      00B0EB 88               [ 1]  722 	push	a
      00B0EC CD B7 BA         [ 4]  723 	call	_TI1_Config
      00B0EF 5B 03            [ 2]  724 	addw	sp, #3
                                    725 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 308: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00B0F1 7B 08            [ 1]  726 	ld	a, (0x08, sp)
      00B0F3 88               [ 1]  727 	push	a
      00B0F4 CD B5 E1         [ 4]  728 	call	_TIM2_SetIC1Prescaler
      00B0F7 84               [ 1]  729 	pop	a
                                    730 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 311: TI2_Config(icpolarity, icselection, TIM2_ICFilter);
      00B0F8 7B 09            [ 1]  731 	ld	a, (0x09, sp)
      00B0FA 88               [ 1]  732 	push	a
      00B0FB 7B 03            [ 1]  733 	ld	a, (0x03, sp)
      00B0FD 88               [ 1]  734 	push	a
      00B0FE 7B 03            [ 1]  735 	ld	a, (0x03, sp)
      00B100 88               [ 1]  736 	push	a
      00B101 CD B7 EB         [ 4]  737 	call	_TI2_Config
      00B104 5B 03            [ 2]  738 	addw	sp, #3
                                    739 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 314: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00B106 7B 08            [ 1]  740 	ld	a, (0x08, sp)
      00B108 88               [ 1]  741 	push	a
      00B109 CD B6 11         [ 4]  742 	call	_TIM2_SetIC2Prescaler
      00B10C 84               [ 1]  743 	pop	a
      00B10D 20 2A            [ 2]  744 	jra	00110$
      00B10F                        745 00108$:
                                    746 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 319: TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
      00B10F 7B 09            [ 1]  747 	ld	a, (0x09, sp)
      00B111 88               [ 1]  748 	push	a
      00B112 7B 08            [ 1]  749 	ld	a, (0x08, sp)
      00B114 88               [ 1]  750 	push	a
      00B115 7B 08            [ 1]  751 	ld	a, (0x08, sp)
      00B117 88               [ 1]  752 	push	a
      00B118 CD B7 EB         [ 4]  753 	call	_TI2_Config
      00B11B 5B 03            [ 2]  754 	addw	sp, #3
                                    755 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 323: TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
      00B11D 7B 08            [ 1]  756 	ld	a, (0x08, sp)
      00B11F 88               [ 1]  757 	push	a
      00B120 CD B6 11         [ 4]  758 	call	_TIM2_SetIC2Prescaler
      00B123 84               [ 1]  759 	pop	a
                                    760 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 326: TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
      00B124 7B 09            [ 1]  761 	ld	a, (0x09, sp)
      00B126 88               [ 1]  762 	push	a
      00B127 7B 03            [ 1]  763 	ld	a, (0x03, sp)
      00B129 88               [ 1]  764 	push	a
      00B12A 7B 03            [ 1]  765 	ld	a, (0x03, sp)
      00B12C 88               [ 1]  766 	push	a
      00B12D CD B7 BA         [ 4]  767 	call	_TI1_Config
      00B130 5B 03            [ 2]  768 	addw	sp, #3
                                    769 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 329: TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
      00B132 7B 08            [ 1]  770 	ld	a, (0x08, sp)
      00B134 88               [ 1]  771 	push	a
      00B135 CD B5 E1         [ 4]  772 	call	_TIM2_SetIC1Prescaler
      00B138 84               [ 1]  773 	pop	a
      00B139                        774 00110$:
                                    775 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 331: }
      00B139 85               [ 2]  776 	popw	x
      00B13A 81               [ 4]  777 	ret
                                    778 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 339: void TIM2_Cmd(FunctionalState NewState)
                                    779 ;	-----------------------------------------
                                    780 ;	 function TIM2_Cmd
                                    781 ;	-----------------------------------------
      00B13B                        782 _TIM2_Cmd:
                                    783 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 342: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B13B 0D 03            [ 1]  784 	tnz	(0x03, sp)
      00B13D 27 14            [ 1]  785 	jreq	00107$
      00B13F 7B 03            [ 1]  786 	ld	a, (0x03, sp)
      00B141 4A               [ 1]  787 	dec	a
      00B142 27 0F            [ 1]  788 	jreq	00107$
      00B144 4B 56            [ 1]  789 	push	#0x56
      00B146 4B 01            [ 1]  790 	push	#0x01
      00B148 5F               [ 1]  791 	clrw	x
      00B149 89               [ 2]  792 	pushw	x
      00B14A 4B AB            [ 1]  793 	push	#<(___str_0+0)
      00B14C 4B 81            [ 1]  794 	push	#((___str_0+0) >> 8)
      00B14E CD 83 84         [ 4]  795 	call	_assert_failed
      00B151 5B 06            [ 2]  796 	addw	sp, #6
      00B153                        797 00107$:
                                    798 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
      00B153 C6 53 00         [ 1]  799 	ld	a, 0x5300
                                    800 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 345: if (NewState != DISABLE)
      00B156 0D 03            [ 1]  801 	tnz	(0x03, sp)
      00B158 27 06            [ 1]  802 	jreq	00102$
                                    803 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 347: TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
      00B15A AA 01            [ 1]  804 	or	a, #0x01
      00B15C C7 53 00         [ 1]  805 	ld	0x5300, a
      00B15F 81               [ 4]  806 	ret
      00B160                        807 00102$:
                                    808 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 351: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
      00B160 A4 FE            [ 1]  809 	and	a, #0xfe
      00B162 C7 53 00         [ 1]  810 	ld	0x5300, a
                                    811 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 353: }
      00B165 81               [ 4]  812 	ret
                                    813 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 368: void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
                                    814 ;	-----------------------------------------
                                    815 ;	 function TIM2_ITConfig
                                    816 ;	-----------------------------------------
      00B166                        817 _TIM2_ITConfig:
      00B166 88               [ 1]  818 	push	a
                                    819 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 371: assert_param(IS_TIM2_IT_OK(TIM2_IT));
      00B167 0D 04            [ 1]  820 	tnz	(0x04, sp)
      00B169 27 06            [ 1]  821 	jreq	00106$
      00B16B 7B 04            [ 1]  822 	ld	a, (0x04, sp)
      00B16D A1 0F            [ 1]  823 	cp	a, #0x0f
      00B16F 23 0F            [ 2]  824 	jrule	00107$
      00B171                        825 00106$:
      00B171 4B 73            [ 1]  826 	push	#0x73
      00B173 4B 01            [ 1]  827 	push	#0x01
      00B175 5F               [ 1]  828 	clrw	x
      00B176 89               [ 2]  829 	pushw	x
      00B177 4B AB            [ 1]  830 	push	#<(___str_0+0)
      00B179 4B 81            [ 1]  831 	push	#((___str_0+0) >> 8)
      00B17B CD 83 84         [ 4]  832 	call	_assert_failed
      00B17E 5B 06            [ 2]  833 	addw	sp, #6
      00B180                        834 00107$:
                                    835 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 372: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B180 0D 05            [ 1]  836 	tnz	(0x05, sp)
      00B182 27 14            [ 1]  837 	jreq	00112$
      00B184 7B 05            [ 1]  838 	ld	a, (0x05, sp)
      00B186 4A               [ 1]  839 	dec	a
      00B187 27 0F            [ 1]  840 	jreq	00112$
      00B189 4B 74            [ 1]  841 	push	#0x74
      00B18B 4B 01            [ 1]  842 	push	#0x01
      00B18D 5F               [ 1]  843 	clrw	x
      00B18E 89               [ 2]  844 	pushw	x
      00B18F 4B AB            [ 1]  845 	push	#<(___str_0+0)
      00B191 4B 81            [ 1]  846 	push	#((___str_0+0) >> 8)
      00B193 CD 83 84         [ 4]  847 	call	_assert_failed
      00B196 5B 06            [ 2]  848 	addw	sp, #6
      00B198                        849 00112$:
                                    850 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
      00B198 C6 53 01         [ 1]  851 	ld	a, 0x5301
                                    852 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 374: if (NewState != DISABLE)
      00B19B 0D 05            [ 1]  853 	tnz	(0x05, sp)
      00B19D 27 07            [ 1]  854 	jreq	00102$
                                    855 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 377: TIM2->IER |= (uint8_t)TIM2_IT;
      00B19F 1A 04            [ 1]  856 	or	a, (0x04, sp)
      00B1A1 C7 53 01         [ 1]  857 	ld	0x5301, a
      00B1A4 20 0C            [ 2]  858 	jra	00104$
      00B1A6                        859 00102$:
                                    860 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 382: TIM2->IER &= (uint8_t)(~TIM2_IT);
      00B1A6 88               [ 1]  861 	push	a
      00B1A7 7B 05            [ 1]  862 	ld	a, (0x05, sp)
      00B1A9 43               [ 1]  863 	cpl	a
      00B1AA 6B 02            [ 1]  864 	ld	(0x02, sp), a
      00B1AC 84               [ 1]  865 	pop	a
      00B1AD 14 01            [ 1]  866 	and	a, (0x01, sp)
      00B1AF C7 53 01         [ 1]  867 	ld	0x5301, a
      00B1B2                        868 00104$:
                                    869 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 384: }
      00B1B2 84               [ 1]  870 	pop	a
      00B1B3 81               [ 4]  871 	ret
                                    872 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 392: void TIM2_UpdateDisableConfig(FunctionalState NewState)
                                    873 ;	-----------------------------------------
                                    874 ;	 function TIM2_UpdateDisableConfig
                                    875 ;	-----------------------------------------
      00B1B4                        876 _TIM2_UpdateDisableConfig:
                                    877 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 395: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B1B4 0D 03            [ 1]  878 	tnz	(0x03, sp)
      00B1B6 27 14            [ 1]  879 	jreq	00107$
      00B1B8 7B 03            [ 1]  880 	ld	a, (0x03, sp)
      00B1BA 4A               [ 1]  881 	dec	a
      00B1BB 27 0F            [ 1]  882 	jreq	00107$
      00B1BD 4B 8B            [ 1]  883 	push	#0x8b
      00B1BF 4B 01            [ 1]  884 	push	#0x01
      00B1C1 5F               [ 1]  885 	clrw	x
      00B1C2 89               [ 2]  886 	pushw	x
      00B1C3 4B AB            [ 1]  887 	push	#<(___str_0+0)
      00B1C5 4B 81            [ 1]  888 	push	#((___str_0+0) >> 8)
      00B1C7 CD 83 84         [ 4]  889 	call	_assert_failed
      00B1CA 5B 06            [ 2]  890 	addw	sp, #6
      00B1CC                        891 00107$:
                                    892 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
      00B1CC C6 53 00         [ 1]  893 	ld	a, 0x5300
                                    894 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 398: if (NewState != DISABLE)
      00B1CF 0D 03            [ 1]  895 	tnz	(0x03, sp)
      00B1D1 27 06            [ 1]  896 	jreq	00102$
                                    897 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 400: TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
      00B1D3 AA 02            [ 1]  898 	or	a, #0x02
      00B1D5 C7 53 00         [ 1]  899 	ld	0x5300, a
      00B1D8 81               [ 4]  900 	ret
      00B1D9                        901 00102$:
                                    902 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 404: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
      00B1D9 A4 FD            [ 1]  903 	and	a, #0xfd
      00B1DB C7 53 00         [ 1]  904 	ld	0x5300, a
                                    905 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 406: }
      00B1DE 81               [ 4]  906 	ret
                                    907 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 416: void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
                                    908 ;	-----------------------------------------
                                    909 ;	 function TIM2_UpdateRequestConfig
                                    910 ;	-----------------------------------------
      00B1DF                        911 _TIM2_UpdateRequestConfig:
                                    912 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 419: assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
      00B1DF 0D 03            [ 1]  913 	tnz	(0x03, sp)
      00B1E1 27 14            [ 1]  914 	jreq	00107$
      00B1E3 7B 03            [ 1]  915 	ld	a, (0x03, sp)
      00B1E5 4A               [ 1]  916 	dec	a
      00B1E6 27 0F            [ 1]  917 	jreq	00107$
      00B1E8 4B A3            [ 1]  918 	push	#0xa3
      00B1EA 4B 01            [ 1]  919 	push	#0x01
      00B1EC 5F               [ 1]  920 	clrw	x
      00B1ED 89               [ 2]  921 	pushw	x
      00B1EE 4B AB            [ 1]  922 	push	#<(___str_0+0)
      00B1F0 4B 81            [ 1]  923 	push	#((___str_0+0) >> 8)
      00B1F2 CD 83 84         [ 4]  924 	call	_assert_failed
      00B1F5 5B 06            [ 2]  925 	addw	sp, #6
      00B1F7                        926 00107$:
                                    927 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
      00B1F7 C6 53 00         [ 1]  928 	ld	a, 0x5300
                                    929 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 422: if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
      00B1FA 0D 03            [ 1]  930 	tnz	(0x03, sp)
      00B1FC 27 06            [ 1]  931 	jreq	00102$
                                    932 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 424: TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
      00B1FE AA 04            [ 1]  933 	or	a, #0x04
      00B200 C7 53 00         [ 1]  934 	ld	0x5300, a
      00B203 81               [ 4]  935 	ret
      00B204                        936 00102$:
                                    937 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 428: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
      00B204 A4 FB            [ 1]  938 	and	a, #0xfb
      00B206 C7 53 00         [ 1]  939 	ld	0x5300, a
                                    940 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 430: }
      00B209 81               [ 4]  941 	ret
                                    942 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 440: void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
                                    943 ;	-----------------------------------------
                                    944 ;	 function TIM2_SelectOnePulseMode
                                    945 ;	-----------------------------------------
      00B20A                        946 _TIM2_SelectOnePulseMode:
                                    947 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 443: assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
      00B20A 7B 03            [ 1]  948 	ld	a, (0x03, sp)
      00B20C 4A               [ 1]  949 	dec	a
      00B20D 27 13            [ 1]  950 	jreq	00107$
      00B20F 0D 03            [ 1]  951 	tnz	(0x03, sp)
      00B211 27 0F            [ 1]  952 	jreq	00107$
      00B213 4B BB            [ 1]  953 	push	#0xbb
      00B215 4B 01            [ 1]  954 	push	#0x01
      00B217 5F               [ 1]  955 	clrw	x
      00B218 89               [ 2]  956 	pushw	x
      00B219 4B AB            [ 1]  957 	push	#<(___str_0+0)
      00B21B 4B 81            [ 1]  958 	push	#((___str_0+0) >> 8)
      00B21D CD 83 84         [ 4]  959 	call	_assert_failed
      00B220 5B 06            [ 2]  960 	addw	sp, #6
      00B222                        961 00107$:
                                    962 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
      00B222 C6 53 00         [ 1]  963 	ld	a, 0x5300
                                    964 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 446: if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
      00B225 0D 03            [ 1]  965 	tnz	(0x03, sp)
      00B227 27 06            [ 1]  966 	jreq	00102$
                                    967 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 448: TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
      00B229 AA 08            [ 1]  968 	or	a, #0x08
      00B22B C7 53 00         [ 1]  969 	ld	0x5300, a
      00B22E 81               [ 4]  970 	ret
      00B22F                        971 00102$:
                                    972 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 452: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
      00B22F A4 F7            [ 1]  973 	and	a, #0xf7
      00B231 C7 53 00         [ 1]  974 	ld	0x5300, a
                                    975 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 454: }
      00B234 81               [ 4]  976 	ret
                                    977 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 484: void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
                                    978 ;	-----------------------------------------
                                    979 ;	 function TIM2_PrescalerConfig
                                    980 ;	-----------------------------------------
      00B235                        981 _TIM2_PrescalerConfig:
                                    982 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 488: assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
      00B235 0D 04            [ 1]  983 	tnz	(0x04, sp)
      00B237 27 14            [ 1]  984 	jreq	00104$
      00B239 7B 04            [ 1]  985 	ld	a, (0x04, sp)
      00B23B 4A               [ 1]  986 	dec	a
      00B23C 27 0F            [ 1]  987 	jreq	00104$
      00B23E 4B E8            [ 1]  988 	push	#0xe8
      00B240 4B 01            [ 1]  989 	push	#0x01
      00B242 5F               [ 1]  990 	clrw	x
      00B243 89               [ 2]  991 	pushw	x
      00B244 4B AB            [ 1]  992 	push	#<(___str_0+0)
      00B246 4B 81            [ 1]  993 	push	#((___str_0+0) >> 8)
      00B248 CD 83 84         [ 4]  994 	call	_assert_failed
      00B24B 5B 06            [ 2]  995 	addw	sp, #6
      00B24D                        996 00104$:
                                    997 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 489: assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
      00B24D 0D 03            [ 1]  998 	tnz	(0x03, sp)
      00B24F 27 68            [ 1]  999 	jreq	00109$
      00B251 7B 03            [ 1] 1000 	ld	a, (0x03, sp)
      00B253 4A               [ 1] 1001 	dec	a
      00B254 27 63            [ 1] 1002 	jreq	00109$
      00B256 7B 03            [ 1] 1003 	ld	a, (0x03, sp)
      00B258 A1 02            [ 1] 1004 	cp	a, #0x02
      00B25A 27 5D            [ 1] 1005 	jreq	00109$
      00B25C 7B 03            [ 1] 1006 	ld	a, (0x03, sp)
      00B25E A1 03            [ 1] 1007 	cp	a, #0x03
      00B260 27 57            [ 1] 1008 	jreq	00109$
      00B262 7B 03            [ 1] 1009 	ld	a, (0x03, sp)
      00B264 A1 04            [ 1] 1010 	cp	a, #0x04
      00B266 27 51            [ 1] 1011 	jreq	00109$
      00B268 7B 03            [ 1] 1012 	ld	a, (0x03, sp)
      00B26A A1 05            [ 1] 1013 	cp	a, #0x05
      00B26C 27 4B            [ 1] 1014 	jreq	00109$
      00B26E 7B 03            [ 1] 1015 	ld	a, (0x03, sp)
      00B270 A1 06            [ 1] 1016 	cp	a, #0x06
      00B272 27 45            [ 1] 1017 	jreq	00109$
      00B274 7B 03            [ 1] 1018 	ld	a, (0x03, sp)
      00B276 A1 07            [ 1] 1019 	cp	a, #0x07
      00B278 27 3F            [ 1] 1020 	jreq	00109$
      00B27A 7B 03            [ 1] 1021 	ld	a, (0x03, sp)
      00B27C A1 08            [ 1] 1022 	cp	a, #0x08
      00B27E 27 39            [ 1] 1023 	jreq	00109$
      00B280 7B 03            [ 1] 1024 	ld	a, (0x03, sp)
      00B282 A1 09            [ 1] 1025 	cp	a, #0x09
      00B284 27 33            [ 1] 1026 	jreq	00109$
      00B286 7B 03            [ 1] 1027 	ld	a, (0x03, sp)
      00B288 A1 0A            [ 1] 1028 	cp	a, #0x0a
      00B28A 27 2D            [ 1] 1029 	jreq	00109$
      00B28C 7B 03            [ 1] 1030 	ld	a, (0x03, sp)
      00B28E A1 0B            [ 1] 1031 	cp	a, #0x0b
      00B290 27 27            [ 1] 1032 	jreq	00109$
      00B292 7B 03            [ 1] 1033 	ld	a, (0x03, sp)
      00B294 A1 0C            [ 1] 1034 	cp	a, #0x0c
      00B296 27 21            [ 1] 1035 	jreq	00109$
      00B298 7B 03            [ 1] 1036 	ld	a, (0x03, sp)
      00B29A A1 0D            [ 1] 1037 	cp	a, #0x0d
      00B29C 27 1B            [ 1] 1038 	jreq	00109$
      00B29E 7B 03            [ 1] 1039 	ld	a, (0x03, sp)
      00B2A0 A1 0E            [ 1] 1040 	cp	a, #0x0e
      00B2A2 27 15            [ 1] 1041 	jreq	00109$
      00B2A4 7B 03            [ 1] 1042 	ld	a, (0x03, sp)
      00B2A6 A1 0F            [ 1] 1043 	cp	a, #0x0f
      00B2A8 27 0F            [ 1] 1044 	jreq	00109$
      00B2AA 4B E9            [ 1] 1045 	push	#0xe9
      00B2AC 4B 01            [ 1] 1046 	push	#0x01
      00B2AE 5F               [ 1] 1047 	clrw	x
      00B2AF 89               [ 2] 1048 	pushw	x
      00B2B0 4B AB            [ 1] 1049 	push	#<(___str_0+0)
      00B2B2 4B 81            [ 1] 1050 	push	#((___str_0+0) >> 8)
      00B2B4 CD 83 84         [ 4] 1051 	call	_assert_failed
      00B2B7 5B 06            [ 2] 1052 	addw	sp, #6
      00B2B9                       1053 00109$:
                                   1054 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 492: TIM2->PSCR = (uint8_t)Prescaler;
      00B2B9 AE 53 0C         [ 2] 1055 	ldw	x, #0x530c
      00B2BC 7B 03            [ 1] 1056 	ld	a, (0x03, sp)
      00B2BE F7               [ 1] 1057 	ld	(x), a
                                   1058 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 495: TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
      00B2BF AE 53 04         [ 2] 1059 	ldw	x, #0x5304
      00B2C2 7B 04            [ 1] 1060 	ld	a, (0x04, sp)
      00B2C4 F7               [ 1] 1061 	ld	(x), a
                                   1062 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 496: }
      00B2C5 81               [ 4] 1063 	ret
                                   1064 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 507: void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                   1065 ;	-----------------------------------------
                                   1066 ;	 function TIM2_ForcedOC1Config
                                   1067 ;	-----------------------------------------
      00B2C6                       1068 _TIM2_ForcedOC1Config:
                                   1069 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 510: assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
      00B2C6 7B 03            [ 1] 1070 	ld	a, (0x03, sp)
      00B2C8 A1 50            [ 1] 1071 	cp	a, #0x50
      00B2CA 27 15            [ 1] 1072 	jreq	00104$
      00B2CC 7B 03            [ 1] 1073 	ld	a, (0x03, sp)
      00B2CE A1 40            [ 1] 1074 	cp	a, #0x40
      00B2D0 27 0F            [ 1] 1075 	jreq	00104$
      00B2D2 4B FE            [ 1] 1076 	push	#0xfe
      00B2D4 4B 01            [ 1] 1077 	push	#0x01
      00B2D6 5F               [ 1] 1078 	clrw	x
      00B2D7 89               [ 2] 1079 	pushw	x
      00B2D8 4B AB            [ 1] 1080 	push	#<(___str_0+0)
      00B2DA 4B 81            [ 1] 1081 	push	#((___str_0+0) >> 8)
      00B2DC CD 83 84         [ 4] 1082 	call	_assert_failed
      00B2DF 5B 06            [ 2] 1083 	addw	sp, #6
      00B2E1                       1084 00104$:
                                   1085 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 513: TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
      00B2E1 C6 53 05         [ 1] 1086 	ld	a, 0x5305
      00B2E4 A4 8F            [ 1] 1087 	and	a, #0x8f
                                   1088 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 514: | (uint8_t)TIM2_ForcedAction);
      00B2E6 1A 03            [ 1] 1089 	or	a, (0x03, sp)
      00B2E8 C7 53 05         [ 1] 1090 	ld	0x5305, a
                                   1091 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 515: }
      00B2EB 81               [ 4] 1092 	ret
                                   1093 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 526: void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                   1094 ;	-----------------------------------------
                                   1095 ;	 function TIM2_ForcedOC2Config
                                   1096 ;	-----------------------------------------
      00B2EC                       1097 _TIM2_ForcedOC2Config:
                                   1098 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 529: assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
      00B2EC 7B 03            [ 1] 1099 	ld	a, (0x03, sp)
      00B2EE A1 50            [ 1] 1100 	cp	a, #0x50
      00B2F0 27 15            [ 1] 1101 	jreq	00104$
      00B2F2 7B 03            [ 1] 1102 	ld	a, (0x03, sp)
      00B2F4 A1 40            [ 1] 1103 	cp	a, #0x40
      00B2F6 27 0F            [ 1] 1104 	jreq	00104$
      00B2F8 4B 11            [ 1] 1105 	push	#0x11
      00B2FA 4B 02            [ 1] 1106 	push	#0x02
      00B2FC 5F               [ 1] 1107 	clrw	x
      00B2FD 89               [ 2] 1108 	pushw	x
      00B2FE 4B AB            [ 1] 1109 	push	#<(___str_0+0)
      00B300 4B 81            [ 1] 1110 	push	#((___str_0+0) >> 8)
      00B302 CD 83 84         [ 4] 1111 	call	_assert_failed
      00B305 5B 06            [ 2] 1112 	addw	sp, #6
      00B307                       1113 00104$:
                                   1114 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 532: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
      00B307 C6 53 06         [ 1] 1115 	ld	a, 0x5306
      00B30A A4 8F            [ 1] 1116 	and	a, #0x8f
                                   1117 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 533: | (uint8_t)TIM2_ForcedAction);
      00B30C 1A 03            [ 1] 1118 	or	a, (0x03, sp)
      00B30E C7 53 06         [ 1] 1119 	ld	0x5306, a
                                   1120 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 534: }
      00B311 81               [ 4] 1121 	ret
                                   1122 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 545: void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
                                   1123 ;	-----------------------------------------
                                   1124 ;	 function TIM2_ForcedOC3Config
                                   1125 ;	-----------------------------------------
      00B312                       1126 _TIM2_ForcedOC3Config:
                                   1127 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 548: assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
      00B312 7B 03            [ 1] 1128 	ld	a, (0x03, sp)
      00B314 A1 50            [ 1] 1129 	cp	a, #0x50
      00B316 27 15            [ 1] 1130 	jreq	00104$
      00B318 7B 03            [ 1] 1131 	ld	a, (0x03, sp)
      00B31A A1 40            [ 1] 1132 	cp	a, #0x40
      00B31C 27 0F            [ 1] 1133 	jreq	00104$
      00B31E 4B 24            [ 1] 1134 	push	#0x24
      00B320 4B 02            [ 1] 1135 	push	#0x02
      00B322 5F               [ 1] 1136 	clrw	x
      00B323 89               [ 2] 1137 	pushw	x
      00B324 4B AB            [ 1] 1138 	push	#<(___str_0+0)
      00B326 4B 81            [ 1] 1139 	push	#((___str_0+0) >> 8)
      00B328 CD 83 84         [ 4] 1140 	call	_assert_failed
      00B32B 5B 06            [ 2] 1141 	addw	sp, #6
      00B32D                       1142 00104$:
                                   1143 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 551: TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
      00B32D C6 53 07         [ 1] 1144 	ld	a, 0x5307
      00B330 A4 8F            [ 1] 1145 	and	a, #0x8f
                                   1146 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 552: | (uint8_t)TIM2_ForcedAction);
      00B332 1A 03            [ 1] 1147 	or	a, (0x03, sp)
      00B334 C7 53 07         [ 1] 1148 	ld	0x5307, a
                                   1149 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 553: }
      00B337 81               [ 4] 1150 	ret
                                   1151 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 561: void TIM2_ARRPreloadConfig(FunctionalState NewState)
                                   1152 ;	-----------------------------------------
                                   1153 ;	 function TIM2_ARRPreloadConfig
                                   1154 ;	-----------------------------------------
      00B338                       1155 _TIM2_ARRPreloadConfig:
                                   1156 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 564: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B338 0D 03            [ 1] 1157 	tnz	(0x03, sp)
      00B33A 27 14            [ 1] 1158 	jreq	00107$
      00B33C 7B 03            [ 1] 1159 	ld	a, (0x03, sp)
      00B33E 4A               [ 1] 1160 	dec	a
      00B33F 27 0F            [ 1] 1161 	jreq	00107$
      00B341 4B 34            [ 1] 1162 	push	#0x34
      00B343 4B 02            [ 1] 1163 	push	#0x02
      00B345 5F               [ 1] 1164 	clrw	x
      00B346 89               [ 2] 1165 	pushw	x
      00B347 4B AB            [ 1] 1166 	push	#<(___str_0+0)
      00B349 4B 81            [ 1] 1167 	push	#((___str_0+0) >> 8)
      00B34B CD 83 84         [ 4] 1168 	call	_assert_failed
      00B34E 5B 06            [ 2] 1169 	addw	sp, #6
      00B350                       1170 00107$:
                                   1171 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
      00B350 C6 53 00         [ 1] 1172 	ld	a, 0x5300
                                   1173 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 567: if (NewState != DISABLE)
      00B353 0D 03            [ 1] 1174 	tnz	(0x03, sp)
      00B355 27 06            [ 1] 1175 	jreq	00102$
                                   1176 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 569: TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
      00B357 AA 80            [ 1] 1177 	or	a, #0x80
      00B359 C7 53 00         [ 1] 1178 	ld	0x5300, a
      00B35C 81               [ 4] 1179 	ret
      00B35D                       1180 00102$:
                                   1181 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 573: TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
      00B35D A4 7F            [ 1] 1182 	and	a, #0x7f
      00B35F C7 53 00         [ 1] 1183 	ld	0x5300, a
                                   1184 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 575: }
      00B362 81               [ 4] 1185 	ret
                                   1186 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 583: void TIM2_OC1PreloadConfig(FunctionalState NewState)
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function TIM2_OC1PreloadConfig
                                   1189 ;	-----------------------------------------
      00B363                       1190 _TIM2_OC1PreloadConfig:
                                   1191 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 586: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B363 0D 03            [ 1] 1192 	tnz	(0x03, sp)
      00B365 27 14            [ 1] 1193 	jreq	00107$
      00B367 7B 03            [ 1] 1194 	ld	a, (0x03, sp)
      00B369 4A               [ 1] 1195 	dec	a
      00B36A 27 0F            [ 1] 1196 	jreq	00107$
      00B36C 4B 4A            [ 1] 1197 	push	#0x4a
      00B36E 4B 02            [ 1] 1198 	push	#0x02
      00B370 5F               [ 1] 1199 	clrw	x
      00B371 89               [ 2] 1200 	pushw	x
      00B372 4B AB            [ 1] 1201 	push	#<(___str_0+0)
      00B374 4B 81            [ 1] 1202 	push	#((___str_0+0) >> 8)
      00B376 CD 83 84         [ 4] 1203 	call	_assert_failed
      00B379 5B 06            [ 2] 1204 	addw	sp, #6
      00B37B                       1205 00107$:
                                   1206 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
      00B37B C6 53 05         [ 1] 1207 	ld	a, 0x5305
                                   1208 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 589: if (NewState != DISABLE)
      00B37E 0D 03            [ 1] 1209 	tnz	(0x03, sp)
      00B380 27 06            [ 1] 1210 	jreq	00102$
                                   1211 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 591: TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
      00B382 AA 08            [ 1] 1212 	or	a, #0x08
      00B384 C7 53 05         [ 1] 1213 	ld	0x5305, a
      00B387 81               [ 4] 1214 	ret
      00B388                       1215 00102$:
                                   1216 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 595: TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      00B388 A4 F7            [ 1] 1217 	and	a, #0xf7
      00B38A C7 53 05         [ 1] 1218 	ld	0x5305, a
                                   1219 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 597: }
      00B38D 81               [ 4] 1220 	ret
                                   1221 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 605: void TIM2_OC2PreloadConfig(FunctionalState NewState)
                                   1222 ;	-----------------------------------------
                                   1223 ;	 function TIM2_OC2PreloadConfig
                                   1224 ;	-----------------------------------------
      00B38E                       1225 _TIM2_OC2PreloadConfig:
                                   1226 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 608: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B38E 0D 03            [ 1] 1227 	tnz	(0x03, sp)
      00B390 27 14            [ 1] 1228 	jreq	00107$
      00B392 7B 03            [ 1] 1229 	ld	a, (0x03, sp)
      00B394 4A               [ 1] 1230 	dec	a
      00B395 27 0F            [ 1] 1231 	jreq	00107$
      00B397 4B 60            [ 1] 1232 	push	#0x60
      00B399 4B 02            [ 1] 1233 	push	#0x02
      00B39B 5F               [ 1] 1234 	clrw	x
      00B39C 89               [ 2] 1235 	pushw	x
      00B39D 4B AB            [ 1] 1236 	push	#<(___str_0+0)
      00B39F 4B 81            [ 1] 1237 	push	#((___str_0+0) >> 8)
      00B3A1 CD 83 84         [ 4] 1238 	call	_assert_failed
      00B3A4 5B 06            [ 2] 1239 	addw	sp, #6
      00B3A6                       1240 00107$:
                                   1241 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
      00B3A6 C6 53 06         [ 1] 1242 	ld	a, 0x5306
                                   1243 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 611: if (NewState != DISABLE)
      00B3A9 0D 03            [ 1] 1244 	tnz	(0x03, sp)
      00B3AB 27 06            [ 1] 1245 	jreq	00102$
                                   1246 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 613: TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
      00B3AD AA 08            [ 1] 1247 	or	a, #0x08
      00B3AF C7 53 06         [ 1] 1248 	ld	0x5306, a
      00B3B2 81               [ 4] 1249 	ret
      00B3B3                       1250 00102$:
                                   1251 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 617: TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      00B3B3 A4 F7            [ 1] 1252 	and	a, #0xf7
      00B3B5 C7 53 06         [ 1] 1253 	ld	0x5306, a
                                   1254 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 619: }
      00B3B8 81               [ 4] 1255 	ret
                                   1256 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 627: void TIM2_OC3PreloadConfig(FunctionalState NewState)
                                   1257 ;	-----------------------------------------
                                   1258 ;	 function TIM2_OC3PreloadConfig
                                   1259 ;	-----------------------------------------
      00B3B9                       1260 _TIM2_OC3PreloadConfig:
                                   1261 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 630: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B3B9 0D 03            [ 1] 1262 	tnz	(0x03, sp)
      00B3BB 27 14            [ 1] 1263 	jreq	00107$
      00B3BD 7B 03            [ 1] 1264 	ld	a, (0x03, sp)
      00B3BF 4A               [ 1] 1265 	dec	a
      00B3C0 27 0F            [ 1] 1266 	jreq	00107$
      00B3C2 4B 76            [ 1] 1267 	push	#0x76
      00B3C4 4B 02            [ 1] 1268 	push	#0x02
      00B3C6 5F               [ 1] 1269 	clrw	x
      00B3C7 89               [ 2] 1270 	pushw	x
      00B3C8 4B AB            [ 1] 1271 	push	#<(___str_0+0)
      00B3CA 4B 81            [ 1] 1272 	push	#((___str_0+0) >> 8)
      00B3CC CD 83 84         [ 4] 1273 	call	_assert_failed
      00B3CF 5B 06            [ 2] 1274 	addw	sp, #6
      00B3D1                       1275 00107$:
                                   1276 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
      00B3D1 C6 53 07         [ 1] 1277 	ld	a, 0x5307
                                   1278 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 633: if (NewState != DISABLE)
      00B3D4 0D 03            [ 1] 1279 	tnz	(0x03, sp)
      00B3D6 27 06            [ 1] 1280 	jreq	00102$
                                   1281 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 635: TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
      00B3D8 AA 08            [ 1] 1282 	or	a, #0x08
      00B3DA C7 53 07         [ 1] 1283 	ld	0x5307, a
      00B3DD 81               [ 4] 1284 	ret
      00B3DE                       1285 00102$:
                                   1286 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 639: TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
      00B3DE A4 F7            [ 1] 1287 	and	a, #0xf7
      00B3E0 C7 53 07         [ 1] 1288 	ld	0x5307, a
                                   1289 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 641: }
      00B3E3 81               [ 4] 1290 	ret
                                   1291 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 653: void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
                                   1292 ;	-----------------------------------------
                                   1293 ;	 function TIM2_GenerateEvent
                                   1294 ;	-----------------------------------------
      00B3E4                       1295 _TIM2_GenerateEvent:
                                   1296 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 656: assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
      00B3E4 0D 03            [ 1] 1297 	tnz	(0x03, sp)
      00B3E6 26 0F            [ 1] 1298 	jrne	00104$
      00B3E8 4B 90            [ 1] 1299 	push	#0x90
      00B3EA 4B 02            [ 1] 1300 	push	#0x02
      00B3EC 5F               [ 1] 1301 	clrw	x
      00B3ED 89               [ 2] 1302 	pushw	x
      00B3EE 4B AB            [ 1] 1303 	push	#<(___str_0+0)
      00B3F0 4B 81            [ 1] 1304 	push	#((___str_0+0) >> 8)
      00B3F2 CD 83 84         [ 4] 1305 	call	_assert_failed
      00B3F5 5B 06            [ 2] 1306 	addw	sp, #6
      00B3F7                       1307 00104$:
                                   1308 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 659: TIM2->EGR = (uint8_t)TIM2_EventSource;
      00B3F7 AE 53 04         [ 2] 1309 	ldw	x, #0x5304
      00B3FA 7B 03            [ 1] 1310 	ld	a, (0x03, sp)
      00B3FC F7               [ 1] 1311 	ld	(x), a
                                   1312 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 660: }
      00B3FD 81               [ 4] 1313 	ret
                                   1314 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 670: void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1315 ;	-----------------------------------------
                                   1316 ;	 function TIM2_OC1PolarityConfig
                                   1317 ;	-----------------------------------------
      00B3FE                       1318 _TIM2_OC1PolarityConfig:
                                   1319 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 673: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00B3FE 0D 03            [ 1] 1320 	tnz	(0x03, sp)
      00B400 27 15            [ 1] 1321 	jreq	00107$
      00B402 7B 03            [ 1] 1322 	ld	a, (0x03, sp)
      00B404 A1 22            [ 1] 1323 	cp	a, #0x22
      00B406 27 0F            [ 1] 1324 	jreq	00107$
      00B408 4B A1            [ 1] 1325 	push	#0xa1
      00B40A 4B 02            [ 1] 1326 	push	#0x02
      00B40C 5F               [ 1] 1327 	clrw	x
      00B40D 89               [ 2] 1328 	pushw	x
      00B40E 4B AB            [ 1] 1329 	push	#<(___str_0+0)
      00B410 4B 81            [ 1] 1330 	push	#((___str_0+0) >> 8)
      00B412 CD 83 84         [ 4] 1331 	call	_assert_failed
      00B415 5B 06            [ 2] 1332 	addw	sp, #6
      00B417                       1333 00107$:
                                   1334 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
      00B417 C6 53 08         [ 1] 1335 	ld	a, 0x5308
                                   1336 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 676: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00B41A 0D 03            [ 1] 1337 	tnz	(0x03, sp)
      00B41C 27 06            [ 1] 1338 	jreq	00102$
                                   1339 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 678: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
      00B41E AA 02            [ 1] 1340 	or	a, #0x02
      00B420 C7 53 08         [ 1] 1341 	ld	0x5308, a
      00B423 81               [ 4] 1342 	ret
      00B424                       1343 00102$:
                                   1344 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 682: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
      00B424 A4 FD            [ 1] 1345 	and	a, #0xfd
      00B426 C7 53 08         [ 1] 1346 	ld	0x5308, a
                                   1347 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 684: }
      00B429 81               [ 4] 1348 	ret
                                   1349 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 694: void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1350 ;	-----------------------------------------
                                   1351 ;	 function TIM2_OC2PolarityConfig
                                   1352 ;	-----------------------------------------
      00B42A                       1353 _TIM2_OC2PolarityConfig:
                                   1354 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 697: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00B42A 0D 03            [ 1] 1355 	tnz	(0x03, sp)
      00B42C 27 15            [ 1] 1356 	jreq	00107$
      00B42E 7B 03            [ 1] 1357 	ld	a, (0x03, sp)
      00B430 A1 22            [ 1] 1358 	cp	a, #0x22
      00B432 27 0F            [ 1] 1359 	jreq	00107$
      00B434 4B B9            [ 1] 1360 	push	#0xb9
      00B436 4B 02            [ 1] 1361 	push	#0x02
      00B438 5F               [ 1] 1362 	clrw	x
      00B439 89               [ 2] 1363 	pushw	x
      00B43A 4B AB            [ 1] 1364 	push	#<(___str_0+0)
      00B43C 4B 81            [ 1] 1365 	push	#((___str_0+0) >> 8)
      00B43E CD 83 84         [ 4] 1366 	call	_assert_failed
      00B441 5B 06            [ 2] 1367 	addw	sp, #6
      00B443                       1368 00107$:
                                   1369 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      00B443 C6 53 08         [ 1] 1370 	ld	a, 0x5308
                                   1371 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 700: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00B446 0D 03            [ 1] 1372 	tnz	(0x03, sp)
      00B448 27 06            [ 1] 1373 	jreq	00102$
                                   1374 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 702: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      00B44A AA 20            [ 1] 1375 	or	a, #0x20
      00B44C C7 53 08         [ 1] 1376 	ld	0x5308, a
      00B44F 81               [ 4] 1377 	ret
      00B450                       1378 00102$:
                                   1379 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 706: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
      00B450 A4 DF            [ 1] 1380 	and	a, #0xdf
      00B452 C7 53 08         [ 1] 1381 	ld	0x5308, a
                                   1382 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 708: }
      00B455 81               [ 4] 1383 	ret
                                   1384 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 718: void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
                                   1385 ;	-----------------------------------------
                                   1386 ;	 function TIM2_OC3PolarityConfig
                                   1387 ;	-----------------------------------------
      00B456                       1388 _TIM2_OC3PolarityConfig:
                                   1389 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 721: assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
      00B456 0D 03            [ 1] 1390 	tnz	(0x03, sp)
      00B458 27 15            [ 1] 1391 	jreq	00107$
      00B45A 7B 03            [ 1] 1392 	ld	a, (0x03, sp)
      00B45C A1 22            [ 1] 1393 	cp	a, #0x22
      00B45E 27 0F            [ 1] 1394 	jreq	00107$
      00B460 4B D1            [ 1] 1395 	push	#0xd1
      00B462 4B 02            [ 1] 1396 	push	#0x02
      00B464 5F               [ 1] 1397 	clrw	x
      00B465 89               [ 2] 1398 	pushw	x
      00B466 4B AB            [ 1] 1399 	push	#<(___str_0+0)
      00B468 4B 81            [ 1] 1400 	push	#((___str_0+0) >> 8)
      00B46A CD 83 84         [ 4] 1401 	call	_assert_failed
      00B46D 5B 06            [ 2] 1402 	addw	sp, #6
      00B46F                       1403 00107$:
                                   1404 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
      00B46F C6 53 09         [ 1] 1405 	ld	a, 0x5309
                                   1406 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 724: if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
      00B472 0D 03            [ 1] 1407 	tnz	(0x03, sp)
      00B474 27 06            [ 1] 1408 	jreq	00102$
                                   1409 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 726: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
      00B476 AA 02            [ 1] 1410 	or	a, #0x02
      00B478 C7 53 09         [ 1] 1411 	ld	0x5309, a
      00B47B 81               [ 4] 1412 	ret
      00B47C                       1413 00102$:
                                   1414 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 730: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
      00B47C A4 FD            [ 1] 1415 	and	a, #0xfd
      00B47E C7 53 09         [ 1] 1416 	ld	0x5309, a
                                   1417 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 732: }
      00B481 81               [ 4] 1418 	ret
                                   1419 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 745: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
                                   1420 ;	-----------------------------------------
                                   1421 ;	 function TIM2_CCxCmd
                                   1422 ;	-----------------------------------------
      00B482                       1423 _TIM2_CCxCmd:
      00B482 88               [ 1] 1424 	push	a
                                   1425 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 748: assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
      00B483 7B 04            [ 1] 1426 	ld	a, (0x04, sp)
      00B485 4A               [ 1] 1427 	dec	a
      00B486 26 05            [ 1] 1428 	jrne	00182$
      00B488 A6 01            [ 1] 1429 	ld	a, #0x01
      00B48A 6B 01            [ 1] 1430 	ld	(0x01, sp), a
      00B48C C5                    1431 	.byte 0xc5
      00B48D                       1432 00182$:
      00B48D 0F 01            [ 1] 1433 	clr	(0x01, sp)
      00B48F                       1434 00183$:
      00B48F 0D 04            [ 1] 1435 	tnz	(0x04, sp)
      00B491 27 19            [ 1] 1436 	jreq	00119$
      00B493 0D 01            [ 1] 1437 	tnz	(0x01, sp)
      00B495 26 15            [ 1] 1438 	jrne	00119$
      00B497 7B 04            [ 1] 1439 	ld	a, (0x04, sp)
      00B499 A1 02            [ 1] 1440 	cp	a, #0x02
      00B49B 27 0F            [ 1] 1441 	jreq	00119$
      00B49D 4B EC            [ 1] 1442 	push	#0xec
      00B49F 4B 02            [ 1] 1443 	push	#0x02
      00B4A1 5F               [ 1] 1444 	clrw	x
      00B4A2 89               [ 2] 1445 	pushw	x
      00B4A3 4B AB            [ 1] 1446 	push	#<(___str_0+0)
      00B4A5 4B 81            [ 1] 1447 	push	#((___str_0+0) >> 8)
      00B4A7 CD 83 84         [ 4] 1448 	call	_assert_failed
      00B4AA 5B 06            [ 2] 1449 	addw	sp, #6
      00B4AC                       1450 00119$:
                                   1451 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 749: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B4AC 0D 05            [ 1] 1452 	tnz	(0x05, sp)
      00B4AE 27 14            [ 1] 1453 	jreq	00127$
      00B4B0 7B 05            [ 1] 1454 	ld	a, (0x05, sp)
      00B4B2 4A               [ 1] 1455 	dec	a
      00B4B3 27 0F            [ 1] 1456 	jreq	00127$
      00B4B5 4B ED            [ 1] 1457 	push	#0xed
      00B4B7 4B 02            [ 1] 1458 	push	#0x02
      00B4B9 5F               [ 1] 1459 	clrw	x
      00B4BA 89               [ 2] 1460 	pushw	x
      00B4BB 4B AB            [ 1] 1461 	push	#<(___str_0+0)
      00B4BD 4B 81            [ 1] 1462 	push	#((___str_0+0) >> 8)
      00B4BF CD 83 84         [ 4] 1463 	call	_assert_failed
      00B4C2 5B 06            [ 2] 1464 	addw	sp, #6
      00B4C4                       1465 00127$:
                                   1466 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 751: if (TIM2_Channel == TIM2_CHANNEL_1)
      00B4C4 0D 04            [ 1] 1467 	tnz	(0x04, sp)
      00B4C6 26 15            [ 1] 1468 	jrne	00114$
                                   1469 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
      00B4C8 C6 53 08         [ 1] 1470 	ld	a, 0x5308
                                   1471 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 754: if (NewState != DISABLE)
      00B4CB 0D 05            [ 1] 1472 	tnz	(0x05, sp)
      00B4CD 27 07            [ 1] 1473 	jreq	00102$
                                   1474 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
      00B4CF AA 01            [ 1] 1475 	or	a, #0x01
      00B4D1 C7 53 08         [ 1] 1476 	ld	0x5308, a
      00B4D4 20 33            [ 2] 1477 	jra	00116$
      00B4D6                       1478 00102$:
                                   1479 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 760: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00B4D6 A4 FE            [ 1] 1480 	and	a, #0xfe
      00B4D8 C7 53 08         [ 1] 1481 	ld	0x5308, a
      00B4DB 20 2C            [ 2] 1482 	jra	00116$
      00B4DD                       1483 00114$:
                                   1484 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 764: else if (TIM2_Channel == TIM2_CHANNEL_2)
      00B4DD 7B 01            [ 1] 1485 	ld	a, (0x01, sp)
      00B4DF 27 15            [ 1] 1486 	jreq	00111$
                                   1487 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 756: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
      00B4E1 C6 53 08         [ 1] 1488 	ld	a, 0x5308
                                   1489 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 767: if (NewState != DISABLE)
      00B4E4 0D 05            [ 1] 1490 	tnz	(0x05, sp)
      00B4E6 27 07            [ 1] 1491 	jreq	00105$
                                   1492 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 769: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
      00B4E8 AA 10            [ 1] 1493 	or	a, #0x10
      00B4EA C7 53 08         [ 1] 1494 	ld	0x5308, a
      00B4ED 20 1A            [ 2] 1495 	jra	00116$
      00B4EF                       1496 00105$:
                                   1497 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 773: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00B4EF A4 EF            [ 1] 1498 	and	a, #0xef
      00B4F1 C7 53 08         [ 1] 1499 	ld	0x5308, a
      00B4F4 20 13            [ 2] 1500 	jra	00116$
      00B4F6                       1501 00111$:
                                   1502 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
      00B4F6 C6 53 09         [ 1] 1503 	ld	a, 0x5309
                                   1504 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 779: if (NewState != DISABLE)
      00B4F9 0D 05            [ 1] 1505 	tnz	(0x05, sp)
      00B4FB 27 07            [ 1] 1506 	jreq	00108$
                                   1507 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 781: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
      00B4FD AA 01            [ 1] 1508 	or	a, #0x01
      00B4FF C7 53 09         [ 1] 1509 	ld	0x5309, a
      00B502 20 05            [ 2] 1510 	jra	00116$
      00B504                       1511 00108$:
                                   1512 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 785: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
      00B504 A4 FE            [ 1] 1513 	and	a, #0xfe
      00B506 C7 53 09         [ 1] 1514 	ld	0x5309, a
      00B509                       1515 00116$:
                                   1516 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 788: }
      00B509 84               [ 1] 1517 	pop	a
      00B50A 81               [ 4] 1518 	ret
                                   1519 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 810: void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
                                   1520 ;	-----------------------------------------
                                   1521 ;	 function TIM2_SelectOCxM
                                   1522 ;	-----------------------------------------
      00B50B                       1523 _TIM2_SelectOCxM:
      00B50B 88               [ 1] 1524 	push	a
                                   1525 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 813: assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
      00B50C 7B 04            [ 1] 1526 	ld	a, (0x04, sp)
      00B50E 4A               [ 1] 1527 	dec	a
      00B50F 26 05            [ 1] 1528 	jrne	00206$
      00B511 A6 01            [ 1] 1529 	ld	a, #0x01
      00B513 6B 01            [ 1] 1530 	ld	(0x01, sp), a
      00B515 C5                    1531 	.byte 0xc5
      00B516                       1532 00206$:
      00B516 0F 01            [ 1] 1533 	clr	(0x01, sp)
      00B518                       1534 00207$:
      00B518 0D 04            [ 1] 1535 	tnz	(0x04, sp)
      00B51A 27 19            [ 1] 1536 	jreq	00110$
      00B51C 0D 01            [ 1] 1537 	tnz	(0x01, sp)
      00B51E 26 15            [ 1] 1538 	jrne	00110$
      00B520 7B 04            [ 1] 1539 	ld	a, (0x04, sp)
      00B522 A1 02            [ 1] 1540 	cp	a, #0x02
      00B524 27 0F            [ 1] 1541 	jreq	00110$
      00B526 4B 2D            [ 1] 1542 	push	#0x2d
      00B528 4B 03            [ 1] 1543 	push	#0x03
      00B52A 5F               [ 1] 1544 	clrw	x
      00B52B 89               [ 2] 1545 	pushw	x
      00B52C 4B AB            [ 1] 1546 	push	#<(___str_0+0)
      00B52E 4B 81            [ 1] 1547 	push	#((___str_0+0) >> 8)
      00B530 CD 83 84         [ 4] 1548 	call	_assert_failed
      00B533 5B 06            [ 2] 1549 	addw	sp, #6
      00B535                       1550 00110$:
                                   1551 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 814: assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
      00B535 0D 05            [ 1] 1552 	tnz	(0x05, sp)
      00B537 27 39            [ 1] 1553 	jreq	00118$
      00B539 7B 05            [ 1] 1554 	ld	a, (0x05, sp)
      00B53B A1 10            [ 1] 1555 	cp	a, #0x10
      00B53D 27 33            [ 1] 1556 	jreq	00118$
      00B53F 7B 05            [ 1] 1557 	ld	a, (0x05, sp)
      00B541 A1 20            [ 1] 1558 	cp	a, #0x20
      00B543 27 2D            [ 1] 1559 	jreq	00118$
      00B545 7B 05            [ 1] 1560 	ld	a, (0x05, sp)
      00B547 A1 30            [ 1] 1561 	cp	a, #0x30
      00B549 27 27            [ 1] 1562 	jreq	00118$
      00B54B 7B 05            [ 1] 1563 	ld	a, (0x05, sp)
      00B54D A1 60            [ 1] 1564 	cp	a, #0x60
      00B54F 27 21            [ 1] 1565 	jreq	00118$
      00B551 7B 05            [ 1] 1566 	ld	a, (0x05, sp)
      00B553 A1 70            [ 1] 1567 	cp	a, #0x70
      00B555 27 1B            [ 1] 1568 	jreq	00118$
      00B557 7B 05            [ 1] 1569 	ld	a, (0x05, sp)
      00B559 A1 50            [ 1] 1570 	cp	a, #0x50
      00B55B 27 15            [ 1] 1571 	jreq	00118$
      00B55D 7B 05            [ 1] 1572 	ld	a, (0x05, sp)
      00B55F A1 40            [ 1] 1573 	cp	a, #0x40
      00B561 27 0F            [ 1] 1574 	jreq	00118$
      00B563 4B 2E            [ 1] 1575 	push	#0x2e
      00B565 4B 03            [ 1] 1576 	push	#0x03
      00B567 5F               [ 1] 1577 	clrw	x
      00B568 89               [ 2] 1578 	pushw	x
      00B569 4B AB            [ 1] 1579 	push	#<(___str_0+0)
      00B56B 4B 81            [ 1] 1580 	push	#((___str_0+0) >> 8)
      00B56D CD 83 84         [ 4] 1581 	call	_assert_failed
      00B570 5B 06            [ 2] 1582 	addw	sp, #6
      00B572                       1583 00118$:
                                   1584 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 816: if (TIM2_Channel == TIM2_CHANNEL_1)
      00B572 0D 04            [ 1] 1585 	tnz	(0x04, sp)
      00B574 26 10            [ 1] 1586 	jrne	00105$
                                   1587 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 819: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00B576 72 11 53 08      [ 1] 1588 	bres	21256, #0
                                   1589 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 822: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
      00B57A C6 53 05         [ 1] 1590 	ld	a, 0x5305
      00B57D A4 8F            [ 1] 1591 	and	a, #0x8f
                                   1592 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 823: | (uint8_t)TIM2_OCMode);
      00B57F 1A 05            [ 1] 1593 	or	a, (0x05, sp)
      00B581 C7 53 05         [ 1] 1594 	ld	0x5305, a
      00B584 20 22            [ 2] 1595 	jra	00107$
      00B586                       1596 00105$:
                                   1597 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 825: else if (TIM2_Channel == TIM2_CHANNEL_2)
      00B586 7B 01            [ 1] 1598 	ld	a, (0x01, sp)
      00B588 27 10            [ 1] 1599 	jreq	00102$
                                   1600 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 828: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00B58A 72 19 53 08      [ 1] 1601 	bres	21256, #4
                                   1602 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 831: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
      00B58E C6 53 06         [ 1] 1603 	ld	a, 0x5306
      00B591 A4 8F            [ 1] 1604 	and	a, #0x8f
                                   1605 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 832: | (uint8_t)TIM2_OCMode);
      00B593 1A 05            [ 1] 1606 	or	a, (0x05, sp)
      00B595 C7 53 06         [ 1] 1607 	ld	0x5306, a
      00B598 20 0E            [ 2] 1608 	jra	00107$
      00B59A                       1609 00102$:
                                   1610 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 837: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
      00B59A 72 11 53 09      [ 1] 1611 	bres	21257, #0
                                   1612 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 840: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
      00B59E C6 53 07         [ 1] 1613 	ld	a, 0x5307
      00B5A1 A4 8F            [ 1] 1614 	and	a, #0x8f
                                   1615 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 841: | (uint8_t)TIM2_OCMode);
      00B5A3 1A 05            [ 1] 1616 	or	a, (0x05, sp)
      00B5A5 C7 53 07         [ 1] 1617 	ld	0x5307, a
      00B5A8                       1618 00107$:
                                   1619 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 843: }
      00B5A8 84               [ 1] 1620 	pop	a
      00B5A9 81               [ 4] 1621 	ret
                                   1622 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 851: void TIM2_SetCounter(uint16_t Counter)
                                   1623 ;	-----------------------------------------
                                   1624 ;	 function TIM2_SetCounter
                                   1625 ;	-----------------------------------------
      00B5AA                       1626 _TIM2_SetCounter:
                                   1627 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 854: TIM2->CNTRH = (uint8_t)(Counter >> 8);
      00B5AA 7B 03            [ 1] 1628 	ld	a, (0x03, sp)
      00B5AC C7 53 0A         [ 1] 1629 	ld	0x530a, a
                                   1630 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 855: TIM2->CNTRL = (uint8_t)(Counter);
      00B5AF 7B 04            [ 1] 1631 	ld	a, (0x04, sp)
      00B5B1 C7 53 0B         [ 1] 1632 	ld	0x530b, a
                                   1633 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 856: }
      00B5B4 81               [ 4] 1634 	ret
                                   1635 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 864: void TIM2_SetAutoreload(uint16_t Autoreload)
                                   1636 ;	-----------------------------------------
                                   1637 ;	 function TIM2_SetAutoreload
                                   1638 ;	-----------------------------------------
      00B5B5                       1639 _TIM2_SetAutoreload:
                                   1640 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 867: TIM2->ARRH = (uint8_t)(Autoreload >> 8);
      00B5B5 7B 03            [ 1] 1641 	ld	a, (0x03, sp)
      00B5B7 C7 53 0D         [ 1] 1642 	ld	0x530d, a
                                   1643 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 868: TIM2->ARRL = (uint8_t)(Autoreload);
      00B5BA 7B 04            [ 1] 1644 	ld	a, (0x04, sp)
      00B5BC C7 53 0E         [ 1] 1645 	ld	0x530e, a
                                   1646 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 869: }
      00B5BF 81               [ 4] 1647 	ret
                                   1648 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 877: void TIM2_SetCompare1(uint16_t Compare1)
                                   1649 ;	-----------------------------------------
                                   1650 ;	 function TIM2_SetCompare1
                                   1651 ;	-----------------------------------------
      00B5C0                       1652 _TIM2_SetCompare1:
                                   1653 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 880: TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
      00B5C0 7B 03            [ 1] 1654 	ld	a, (0x03, sp)
      00B5C2 C7 53 0F         [ 1] 1655 	ld	0x530f, a
                                   1656 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 881: TIM2->CCR1L = (uint8_t)(Compare1);
      00B5C5 7B 04            [ 1] 1657 	ld	a, (0x04, sp)
      00B5C7 C7 53 10         [ 1] 1658 	ld	0x5310, a
                                   1659 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 882: }
      00B5CA 81               [ 4] 1660 	ret
                                   1661 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 890: void TIM2_SetCompare2(uint16_t Compare2)
                                   1662 ;	-----------------------------------------
                                   1663 ;	 function TIM2_SetCompare2
                                   1664 ;	-----------------------------------------
      00B5CB                       1665 _TIM2_SetCompare2:
                                   1666 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 893: TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
      00B5CB 7B 03            [ 1] 1667 	ld	a, (0x03, sp)
      00B5CD C7 53 11         [ 1] 1668 	ld	0x5311, a
                                   1669 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 894: TIM2->CCR2L = (uint8_t)(Compare2);
      00B5D0 7B 04            [ 1] 1670 	ld	a, (0x04, sp)
      00B5D2 C7 53 12         [ 1] 1671 	ld	0x5312, a
                                   1672 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 895: }
      00B5D5 81               [ 4] 1673 	ret
                                   1674 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 903: void TIM2_SetCompare3(uint16_t Compare3)
                                   1675 ;	-----------------------------------------
                                   1676 ;	 function TIM2_SetCompare3
                                   1677 ;	-----------------------------------------
      00B5D6                       1678 _TIM2_SetCompare3:
                                   1679 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 906: TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
      00B5D6 7B 03            [ 1] 1680 	ld	a, (0x03, sp)
      00B5D8 C7 53 13         [ 1] 1681 	ld	0x5313, a
                                   1682 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 907: TIM2->CCR3L = (uint8_t)(Compare3);
      00B5DB 7B 04            [ 1] 1683 	ld	a, (0x04, sp)
      00B5DD C7 53 14         [ 1] 1684 	ld	0x5314, a
                                   1685 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 908: }
      00B5E0 81               [ 4] 1686 	ret
                                   1687 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 920: void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
                                   1688 ;	-----------------------------------------
                                   1689 ;	 function TIM2_SetIC1Prescaler
                                   1690 ;	-----------------------------------------
      00B5E1                       1691 _TIM2_SetIC1Prescaler:
                                   1692 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 923: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
      00B5E1 0D 03            [ 1] 1693 	tnz	(0x03, sp)
      00B5E3 27 21            [ 1] 1694 	jreq	00104$
      00B5E5 7B 03            [ 1] 1695 	ld	a, (0x03, sp)
      00B5E7 A1 04            [ 1] 1696 	cp	a, #0x04
      00B5E9 27 1B            [ 1] 1697 	jreq	00104$
      00B5EB 7B 03            [ 1] 1698 	ld	a, (0x03, sp)
      00B5ED A1 08            [ 1] 1699 	cp	a, #0x08
      00B5EF 27 15            [ 1] 1700 	jreq	00104$
      00B5F1 7B 03            [ 1] 1701 	ld	a, (0x03, sp)
      00B5F3 A1 0C            [ 1] 1702 	cp	a, #0x0c
      00B5F5 27 0F            [ 1] 1703 	jreq	00104$
      00B5F7 4B 9B            [ 1] 1704 	push	#0x9b
      00B5F9 4B 03            [ 1] 1705 	push	#0x03
      00B5FB 5F               [ 1] 1706 	clrw	x
      00B5FC 89               [ 2] 1707 	pushw	x
      00B5FD 4B AB            [ 1] 1708 	push	#<(___str_0+0)
      00B5FF 4B 81            [ 1] 1709 	push	#((___str_0+0) >> 8)
      00B601 CD 83 84         [ 4] 1710 	call	_assert_failed
      00B604 5B 06            [ 2] 1711 	addw	sp, #6
      00B606                       1712 00104$:
                                   1713 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 926: TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      00B606 C6 53 05         [ 1] 1714 	ld	a, 0x5305
      00B609 A4 F3            [ 1] 1715 	and	a, #0xf3
                                   1716 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 927: | (uint8_t)TIM2_IC1Prescaler);
      00B60B 1A 03            [ 1] 1717 	or	a, (0x03, sp)
      00B60D C7 53 05         [ 1] 1718 	ld	0x5305, a
                                   1719 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 928: }
      00B610 81               [ 4] 1720 	ret
                                   1721 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 940: void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
                                   1722 ;	-----------------------------------------
                                   1723 ;	 function TIM2_SetIC2Prescaler
                                   1724 ;	-----------------------------------------
      00B611                       1725 _TIM2_SetIC2Prescaler:
                                   1726 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 943: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
      00B611 0D 03            [ 1] 1727 	tnz	(0x03, sp)
      00B613 27 21            [ 1] 1728 	jreq	00104$
      00B615 7B 03            [ 1] 1729 	ld	a, (0x03, sp)
      00B617 A1 04            [ 1] 1730 	cp	a, #0x04
      00B619 27 1B            [ 1] 1731 	jreq	00104$
      00B61B 7B 03            [ 1] 1732 	ld	a, (0x03, sp)
      00B61D A1 08            [ 1] 1733 	cp	a, #0x08
      00B61F 27 15            [ 1] 1734 	jreq	00104$
      00B621 7B 03            [ 1] 1735 	ld	a, (0x03, sp)
      00B623 A1 0C            [ 1] 1736 	cp	a, #0x0c
      00B625 27 0F            [ 1] 1737 	jreq	00104$
      00B627 4B AF            [ 1] 1738 	push	#0xaf
      00B629 4B 03            [ 1] 1739 	push	#0x03
      00B62B 5F               [ 1] 1740 	clrw	x
      00B62C 89               [ 2] 1741 	pushw	x
      00B62D 4B AB            [ 1] 1742 	push	#<(___str_0+0)
      00B62F 4B 81            [ 1] 1743 	push	#((___str_0+0) >> 8)
      00B631 CD 83 84         [ 4] 1744 	call	_assert_failed
      00B634 5B 06            [ 2] 1745 	addw	sp, #6
      00B636                       1746 00104$:
                                   1747 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 946: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      00B636 C6 53 06         [ 1] 1748 	ld	a, 0x5306
      00B639 A4 F3            [ 1] 1749 	and	a, #0xf3
                                   1750 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 947: | (uint8_t)TIM2_IC2Prescaler);
      00B63B 1A 03            [ 1] 1751 	or	a, (0x03, sp)
      00B63D C7 53 06         [ 1] 1752 	ld	0x5306, a
                                   1753 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 948: }
      00B640 81               [ 4] 1754 	ret
                                   1755 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 960: void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
                                   1756 ;	-----------------------------------------
                                   1757 ;	 function TIM2_SetIC3Prescaler
                                   1758 ;	-----------------------------------------
      00B641                       1759 _TIM2_SetIC3Prescaler:
                                   1760 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 964: assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
      00B641 0D 03            [ 1] 1761 	tnz	(0x03, sp)
      00B643 27 21            [ 1] 1762 	jreq	00104$
      00B645 7B 03            [ 1] 1763 	ld	a, (0x03, sp)
      00B647 A1 04            [ 1] 1764 	cp	a, #0x04
      00B649 27 1B            [ 1] 1765 	jreq	00104$
      00B64B 7B 03            [ 1] 1766 	ld	a, (0x03, sp)
      00B64D A1 08            [ 1] 1767 	cp	a, #0x08
      00B64F 27 15            [ 1] 1768 	jreq	00104$
      00B651 7B 03            [ 1] 1769 	ld	a, (0x03, sp)
      00B653 A1 0C            [ 1] 1770 	cp	a, #0x0c
      00B655 27 0F            [ 1] 1771 	jreq	00104$
      00B657 4B C4            [ 1] 1772 	push	#0xc4
      00B659 4B 03            [ 1] 1773 	push	#0x03
      00B65B 5F               [ 1] 1774 	clrw	x
      00B65C 89               [ 2] 1775 	pushw	x
      00B65D 4B AB            [ 1] 1776 	push	#<(___str_0+0)
      00B65F 4B 81            [ 1] 1777 	push	#((___str_0+0) >> 8)
      00B661 CD 83 84         [ 4] 1778 	call	_assert_failed
      00B664 5B 06            [ 2] 1779 	addw	sp, #6
      00B666                       1780 00104$:
                                   1781 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 966: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
      00B666 C6 53 07         [ 1] 1782 	ld	a, 0x5307
      00B669 A4 F3            [ 1] 1783 	and	a, #0xf3
                                   1784 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 967: | (uint8_t)TIM2_IC3Prescaler);
      00B66B 1A 03            [ 1] 1785 	or	a, (0x03, sp)
      00B66D C7 53 07         [ 1] 1786 	ld	0x5307, a
                                   1787 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 968: }
      00B670 81               [ 4] 1788 	ret
                                   1789 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 975: uint16_t TIM2_GetCapture1(void)
                                   1790 ;	-----------------------------------------
                                   1791 ;	 function TIM2_GetCapture1
                                   1792 ;	-----------------------------------------
      00B671                       1793 _TIM2_GetCapture1:
      00B671 89               [ 2] 1794 	pushw	x
                                   1795 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 981: tmpccr1h = TIM2->CCR1H;
      00B672 C6 53 0F         [ 1] 1796 	ld	a, 0x530f
      00B675 95               [ 1] 1797 	ld	xh, a
                                   1798 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 982: tmpccr1l = TIM2->CCR1L;
      00B676 C6 53 10         [ 1] 1799 	ld	a, 0x5310
                                   1800 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 984: tmpccr1 = (uint16_t)(tmpccr1l);
      00B679 97               [ 1] 1801 	ld	xl, a
      00B67A 4F               [ 1] 1802 	clr	a
                                   1803 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 985: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      00B67B 0F 02            [ 1] 1804 	clr	(0x02, sp)
      00B67D 89               [ 2] 1805 	pushw	x
      00B67E 1A 01            [ 1] 1806 	or	a, (1, sp)
      00B680 85               [ 2] 1807 	popw	x
      00B681 01               [ 1] 1808 	rrwa	x
      00B682 1A 02            [ 1] 1809 	or	a, (0x02, sp)
      00B684 97               [ 1] 1810 	ld	xl, a
                                   1811 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 987: return (uint16_t)tmpccr1;
                                   1812 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 988: }
      00B685 5B 02            [ 2] 1813 	addw	sp, #2
      00B687 81               [ 4] 1814 	ret
                                   1815 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 995: uint16_t TIM2_GetCapture2(void)
                                   1816 ;	-----------------------------------------
                                   1817 ;	 function TIM2_GetCapture2
                                   1818 ;	-----------------------------------------
      00B688                       1819 _TIM2_GetCapture2:
      00B688 89               [ 2] 1820 	pushw	x
                                   1821 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1001: tmpccr2h = TIM2->CCR2H;
      00B689 C6 53 11         [ 1] 1822 	ld	a, 0x5311
      00B68C 95               [ 1] 1823 	ld	xh, a
                                   1824 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1002: tmpccr2l = TIM2->CCR2L;
      00B68D C6 53 12         [ 1] 1825 	ld	a, 0x5312
                                   1826 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1004: tmpccr2 = (uint16_t)(tmpccr2l);
      00B690 97               [ 1] 1827 	ld	xl, a
      00B691 4F               [ 1] 1828 	clr	a
                                   1829 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1005: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      00B692 0F 02            [ 1] 1830 	clr	(0x02, sp)
      00B694 89               [ 2] 1831 	pushw	x
      00B695 1A 01            [ 1] 1832 	or	a, (1, sp)
      00B697 85               [ 2] 1833 	popw	x
      00B698 01               [ 1] 1834 	rrwa	x
      00B699 1A 02            [ 1] 1835 	or	a, (0x02, sp)
      00B69B 97               [ 1] 1836 	ld	xl, a
                                   1837 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1007: return (uint16_t)tmpccr2;
                                   1838 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1008: }
      00B69C 5B 02            [ 2] 1839 	addw	sp, #2
      00B69E 81               [ 4] 1840 	ret
                                   1841 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1015: uint16_t TIM2_GetCapture3(void)
                                   1842 ;	-----------------------------------------
                                   1843 ;	 function TIM2_GetCapture3
                                   1844 ;	-----------------------------------------
      00B69F                       1845 _TIM2_GetCapture3:
      00B69F 89               [ 2] 1846 	pushw	x
                                   1847 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1021: tmpccr3h = TIM2->CCR3H;
      00B6A0 C6 53 13         [ 1] 1848 	ld	a, 0x5313
      00B6A3 95               [ 1] 1849 	ld	xh, a
                                   1850 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1022: tmpccr3l = TIM2->CCR3L;
      00B6A4 C6 53 14         [ 1] 1851 	ld	a, 0x5314
                                   1852 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1024: tmpccr3 = (uint16_t)(tmpccr3l);
      00B6A7 97               [ 1] 1853 	ld	xl, a
      00B6A8 4F               [ 1] 1854 	clr	a
                                   1855 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1025: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
      00B6A9 0F 02            [ 1] 1856 	clr	(0x02, sp)
      00B6AB 89               [ 2] 1857 	pushw	x
      00B6AC 1A 01            [ 1] 1858 	or	a, (1, sp)
      00B6AE 85               [ 2] 1859 	popw	x
      00B6AF 01               [ 1] 1860 	rrwa	x
      00B6B0 1A 02            [ 1] 1861 	or	a, (0x02, sp)
      00B6B2 97               [ 1] 1862 	ld	xl, a
                                   1863 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1027: return (uint16_t)tmpccr3;
                                   1864 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1028: }
      00B6B3 5B 02            [ 2] 1865 	addw	sp, #2
      00B6B5 81               [ 4] 1866 	ret
                                   1867 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1035: uint16_t TIM2_GetCounter(void)
                                   1868 ;	-----------------------------------------
                                   1869 ;	 function TIM2_GetCounter
                                   1870 ;	-----------------------------------------
      00B6B6                       1871 _TIM2_GetCounter:
      00B6B6 52 04            [ 2] 1872 	sub	sp, #4
                                   1873 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1039: tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
      00B6B8 C6 53 0A         [ 1] 1874 	ld	a, 0x530a
      00B6BB 5F               [ 1] 1875 	clrw	x
      00B6BC 95               [ 1] 1876 	ld	xh, a
      00B6BD 4F               [ 1] 1877 	clr	a
      00B6BE 6B 02            [ 1] 1878 	ld	(0x02, sp), a
                                   1879 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1041: return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
      00B6C0 C6 53 0B         [ 1] 1880 	ld	a, 0x530b
      00B6C3 0F 03            [ 1] 1881 	clr	(0x03, sp)
      00B6C5 1A 02            [ 1] 1882 	or	a, (0x02, sp)
      00B6C7 02               [ 1] 1883 	rlwa	x
      00B6C8 1A 03            [ 1] 1884 	or	a, (0x03, sp)
      00B6CA 95               [ 1] 1885 	ld	xh, a
                                   1886 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1042: }
      00B6CB 5B 04            [ 2] 1887 	addw	sp, #4
      00B6CD 81               [ 4] 1888 	ret
                                   1889 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1049: TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
                                   1890 ;	-----------------------------------------
                                   1891 ;	 function TIM2_GetPrescaler
                                   1892 ;	-----------------------------------------
      00B6CE                       1893 _TIM2_GetPrescaler:
                                   1894 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1052: return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
      00B6CE C6 53 0C         [ 1] 1895 	ld	a, 0x530c
                                   1896 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1053: }
      00B6D1 81               [ 4] 1897 	ret
                                   1898 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1068: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   1899 ;	-----------------------------------------
                                   1900 ;	 function TIM2_GetFlagStatus
                                   1901 ;	-----------------------------------------
      00B6D2                       1902 _TIM2_GetFlagStatus:
      00B6D2 88               [ 1] 1903 	push	a
                                   1904 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1074: assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
      00B6D3 1E 04            [ 2] 1905 	ldw	x, (0x04, sp)
      00B6D5 A3 00 01         [ 2] 1906 	cpw	x, #0x0001
      00B6D8 27 31            [ 1] 1907 	jreq	00107$
      00B6DA A3 00 02         [ 2] 1908 	cpw	x, #0x0002
      00B6DD 27 2C            [ 1] 1909 	jreq	00107$
      00B6DF A3 00 04         [ 2] 1910 	cpw	x, #0x0004
      00B6E2 27 27            [ 1] 1911 	jreq	00107$
      00B6E4 A3 00 08         [ 2] 1912 	cpw	x, #0x0008
      00B6E7 27 22            [ 1] 1913 	jreq	00107$
      00B6E9 A3 02 00         [ 2] 1914 	cpw	x, #0x0200
      00B6EC 27 1D            [ 1] 1915 	jreq	00107$
      00B6EE A3 04 00         [ 2] 1916 	cpw	x, #0x0400
      00B6F1 27 18            [ 1] 1917 	jreq	00107$
      00B6F3 A3 08 00         [ 2] 1918 	cpw	x, #0x0800
      00B6F6 27 13            [ 1] 1919 	jreq	00107$
      00B6F8 89               [ 2] 1920 	pushw	x
      00B6F9 4B 32            [ 1] 1921 	push	#0x32
      00B6FB 4B 04            [ 1] 1922 	push	#0x04
      00B6FD 4B 00            [ 1] 1923 	push	#0x00
      00B6FF 4B 00            [ 1] 1924 	push	#0x00
      00B701 4B AB            [ 1] 1925 	push	#<(___str_0+0)
      00B703 4B 81            [ 1] 1926 	push	#((___str_0+0) >> 8)
      00B705 CD 83 84         [ 4] 1927 	call	_assert_failed
      00B708 5B 06            [ 2] 1928 	addw	sp, #6
      00B70A 85               [ 2] 1929 	popw	x
      00B70B                       1930 00107$:
                                   1931 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1076: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
      00B70B C6 53 02         [ 1] 1932 	ld	a, 0x5302
      00B70E 6B 01            [ 1] 1933 	ld	(0x01, sp), a
      00B710 7B 05            [ 1] 1934 	ld	a, (0x05, sp)
      00B712 14 01            [ 1] 1935 	and	a, (0x01, sp)
      00B714 6B 01            [ 1] 1936 	ld	(0x01, sp), a
                                   1937 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1077: tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
                                   1938 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1079: if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
      00B716 C6 53 03         [ 1] 1939 	ld	a, 0x5303
      00B719 89               [ 2] 1940 	pushw	x
      00B71A 14 01            [ 1] 1941 	and	a, (1, sp)
      00B71C 85               [ 2] 1942 	popw	x
      00B71D 1A 01            [ 1] 1943 	or	a, (0x01, sp)
      00B71F 27 03            [ 1] 1944 	jreq	00102$
                                   1945 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1081: bitstatus = SET;
      00B721 A6 01            [ 1] 1946 	ld	a, #0x01
                                   1947 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1085: bitstatus = RESET;
      00B723 21                    1948 	.byte 0x21
      00B724                       1949 00102$:
      00B724 4F               [ 1] 1950 	clr	a
      00B725                       1951 00103$:
                                   1952 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1087: return (FlagStatus)bitstatus;
                                   1953 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1088: }
      00B725 5B 01            [ 2] 1954 	addw	sp, #1
      00B727 81               [ 4] 1955 	ret
                                   1956 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1103: void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
                                   1957 ;	-----------------------------------------
                                   1958 ;	 function TIM2_ClearFlag
                                   1959 ;	-----------------------------------------
      00B728                       1960 _TIM2_ClearFlag:
      00B728 89               [ 2] 1961 	pushw	x
                                   1962 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1106: assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
      00B729 16 05            [ 2] 1963 	ldw	y, (0x05, sp)
      00B72B 17 01            [ 2] 1964 	ldw	(0x01, sp), y
      00B72D 7B 02            [ 1] 1965 	ld	a, (0x02, sp)
      00B72F A4 F0            [ 1] 1966 	and	a, #0xf0
      00B731 97               [ 1] 1967 	ld	xl, a
      00B732 7B 01            [ 1] 1968 	ld	a, (0x01, sp)
      00B734 A4 F1            [ 1] 1969 	and	a, #0xf1
      00B736 95               [ 1] 1970 	ld	xh, a
      00B737 5D               [ 2] 1971 	tnzw	x
      00B738 26 04            [ 1] 1972 	jrne	00103$
      00B73A 1E 01            [ 2] 1973 	ldw	x, (0x01, sp)
      00B73C 26 0F            [ 1] 1974 	jrne	00104$
      00B73E                       1975 00103$:
      00B73E 4B 52            [ 1] 1976 	push	#0x52
      00B740 4B 04            [ 1] 1977 	push	#0x04
      00B742 5F               [ 1] 1978 	clrw	x
      00B743 89               [ 2] 1979 	pushw	x
      00B744 4B AB            [ 1] 1980 	push	#<(___str_0+0)
      00B746 4B 81            [ 1] 1981 	push	#((___str_0+0) >> 8)
      00B748 CD 83 84         [ 4] 1982 	call	_assert_failed
      00B74B 5B 06            [ 2] 1983 	addw	sp, #6
      00B74D                       1984 00104$:
                                   1985 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1109: TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
      00B74D 7B 02            [ 1] 1986 	ld	a, (0x02, sp)
      00B74F 43               [ 1] 1987 	cpl	a
      00B750 C7 53 02         [ 1] 1988 	ld	0x5302, a
                                   1989 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1110: TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
      00B753 35 FF 53 03      [ 1] 1990 	mov	0x5303+0, #0xff
                                   1991 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1111: }
      00B757 85               [ 2] 1992 	popw	x
      00B758 81               [ 4] 1993 	ret
                                   1994 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1123: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
                                   1995 ;	-----------------------------------------
                                   1996 ;	 function TIM2_GetITStatus
                                   1997 ;	-----------------------------------------
      00B759                       1998 _TIM2_GetITStatus:
      00B759 88               [ 1] 1999 	push	a
                                   2000 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1129: assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
      00B75A 7B 04            [ 1] 2001 	ld	a, (0x04, sp)
      00B75C 4A               [ 1] 2002 	dec	a
      00B75D 27 21            [ 1] 2003 	jreq	00108$
      00B75F 7B 04            [ 1] 2004 	ld	a, (0x04, sp)
      00B761 A1 02            [ 1] 2005 	cp	a, #0x02
      00B763 27 1B            [ 1] 2006 	jreq	00108$
      00B765 7B 04            [ 1] 2007 	ld	a, (0x04, sp)
      00B767 A1 04            [ 1] 2008 	cp	a, #0x04
      00B769 27 15            [ 1] 2009 	jreq	00108$
      00B76B 7B 04            [ 1] 2010 	ld	a, (0x04, sp)
      00B76D A1 08            [ 1] 2011 	cp	a, #0x08
      00B76F 27 0F            [ 1] 2012 	jreq	00108$
      00B771 4B 69            [ 1] 2013 	push	#0x69
      00B773 4B 04            [ 1] 2014 	push	#0x04
      00B775 5F               [ 1] 2015 	clrw	x
      00B776 89               [ 2] 2016 	pushw	x
      00B777 4B AB            [ 1] 2017 	push	#<(___str_0+0)
      00B779 4B 81            [ 1] 2018 	push	#((___str_0+0) >> 8)
      00B77B CD 83 84         [ 4] 2019 	call	_assert_failed
      00B77E 5B 06            [ 2] 2020 	addw	sp, #6
      00B780                       2021 00108$:
                                   2022 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1131: TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
      00B780 C6 53 02         [ 1] 2023 	ld	a, 0x5302
      00B783 14 04            [ 1] 2024 	and	a, (0x04, sp)
      00B785 6B 01            [ 1] 2025 	ld	(0x01, sp), a
                                   2026 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1133: TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
      00B787 C6 53 01         [ 1] 2027 	ld	a, 0x5301
      00B78A 14 04            [ 1] 2028 	and	a, (0x04, sp)
                                   2029 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1135: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
      00B78C 0D 01            [ 1] 2030 	tnz	(0x01, sp)
      00B78E 27 06            [ 1] 2031 	jreq	00102$
      00B790 4D               [ 1] 2032 	tnz	a
      00B791 27 03            [ 1] 2033 	jreq	00102$
                                   2034 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1137: bitstatus = SET;
      00B793 A6 01            [ 1] 2035 	ld	a, #0x01
                                   2036 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1141: bitstatus = RESET;
      00B795 21                    2037 	.byte 0x21
      00B796                       2038 00102$:
      00B796 4F               [ 1] 2039 	clr	a
      00B797                       2040 00103$:
                                   2041 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1143: return (ITStatus)(bitstatus);
                                   2042 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1144: }
      00B797 5B 01            [ 2] 2043 	addw	sp, #1
      00B799 81               [ 4] 2044 	ret
                                   2045 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1156: void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
                                   2046 ;	-----------------------------------------
                                   2047 ;	 function TIM2_ClearITPendingBit
                                   2048 ;	-----------------------------------------
      00B79A                       2049 _TIM2_ClearITPendingBit:
                                   2050 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1159: assert_param(IS_TIM2_IT_OK(TIM2_IT));
      00B79A 0D 03            [ 1] 2051 	tnz	(0x03, sp)
      00B79C 27 06            [ 1] 2052 	jreq	00103$
      00B79E 7B 03            [ 1] 2053 	ld	a, (0x03, sp)
      00B7A0 A1 0F            [ 1] 2054 	cp	a, #0x0f
      00B7A2 23 0F            [ 2] 2055 	jrule	00104$
      00B7A4                       2056 00103$:
      00B7A4 4B 87            [ 1] 2057 	push	#0x87
      00B7A6 4B 04            [ 1] 2058 	push	#0x04
      00B7A8 5F               [ 1] 2059 	clrw	x
      00B7A9 89               [ 2] 2060 	pushw	x
      00B7AA 4B AB            [ 1] 2061 	push	#<(___str_0+0)
      00B7AC 4B 81            [ 1] 2062 	push	#((___str_0+0) >> 8)
      00B7AE CD 83 84         [ 4] 2063 	call	_assert_failed
      00B7B1 5B 06            [ 2] 2064 	addw	sp, #6
      00B7B3                       2065 00104$:
                                   2066 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1162: TIM2->SR1 = (uint8_t)(~TIM2_IT);
      00B7B3 7B 03            [ 1] 2067 	ld	a, (0x03, sp)
      00B7B5 43               [ 1] 2068 	cpl	a
      00B7B6 C7 53 02         [ 1] 2069 	ld	0x5302, a
                                   2070 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1163: }
      00B7B9 81               [ 4] 2071 	ret
                                   2072 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1181: static void TI1_Config(uint8_t TIM2_ICPolarity,
                                   2073 ;	-----------------------------------------
                                   2074 ;	 function TI1_Config
                                   2075 ;	-----------------------------------------
      00B7BA                       2076 _TI1_Config:
      00B7BA 88               [ 1] 2077 	push	a
                                   2078 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1186: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00B7BB 72 11 53 08      [ 1] 2079 	bres	21256, #0
                                   2080 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1189: TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
      00B7BF C6 53 05         [ 1] 2081 	ld	a, 0x5305
      00B7C2 A4 0C            [ 1] 2082 	and	a, #0x0c
      00B7C4 6B 01            [ 1] 2083 	ld	(0x01, sp), a
                                   2084 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1190: | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      00B7C6 7B 06            [ 1] 2085 	ld	a, (0x06, sp)
      00B7C8 4E               [ 1] 2086 	swap	a
      00B7C9 A4 F0            [ 1] 2087 	and	a, #0xf0
      00B7CB 1A 05            [ 1] 2088 	or	a, (0x05, sp)
      00B7CD 1A 01            [ 1] 2089 	or	a, (0x01, sp)
      00B7CF C7 53 05         [ 1] 2090 	ld	0x5305, a
                                   2091 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1186: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
      00B7D2 C6 53 08         [ 1] 2092 	ld	a, 0x5308
                                   2093 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1193: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      00B7D5 0D 04            [ 1] 2094 	tnz	(0x04, sp)
      00B7D7 27 07            [ 1] 2095 	jreq	00102$
                                   2096 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1195: TIM2->CCER1 |= TIM2_CCER1_CC1P;
      00B7D9 AA 02            [ 1] 2097 	or	a, #0x02
      00B7DB C7 53 08         [ 1] 2098 	ld	0x5308, a
      00B7DE 20 05            [ 2] 2099 	jra	00103$
      00B7E0                       2100 00102$:
                                   2101 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1199: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
      00B7E0 A4 FD            [ 1] 2102 	and	a, #0xfd
      00B7E2 C7 53 08         [ 1] 2103 	ld	0x5308, a
      00B7E5                       2104 00103$:
                                   2105 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1202: TIM2->CCER1 |= TIM2_CCER1_CC1E;
      00B7E5 72 10 53 08      [ 1] 2106 	bset	21256, #0
                                   2107 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1203: }
      00B7E9 84               [ 1] 2108 	pop	a
      00B7EA 81               [ 4] 2109 	ret
                                   2110 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1221: static void TI2_Config(uint8_t TIM2_ICPolarity,
                                   2111 ;	-----------------------------------------
                                   2112 ;	 function TI2_Config
                                   2113 ;	-----------------------------------------
      00B7EB                       2114 _TI2_Config:
      00B7EB 88               [ 1] 2115 	push	a
                                   2116 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1226: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00B7EC 72 19 53 08      [ 1] 2117 	bres	21256, #4
                                   2118 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1229: TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
      00B7F0 C6 53 06         [ 1] 2119 	ld	a, 0x5306
      00B7F3 A4 0C            [ 1] 2120 	and	a, #0x0c
      00B7F5 6B 01            [ 1] 2121 	ld	(0x01, sp), a
                                   2122 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1230: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      00B7F7 7B 06            [ 1] 2123 	ld	a, (0x06, sp)
      00B7F9 4E               [ 1] 2124 	swap	a
      00B7FA A4 F0            [ 1] 2125 	and	a, #0xf0
      00B7FC 1A 05            [ 1] 2126 	or	a, (0x05, sp)
      00B7FE 1A 01            [ 1] 2127 	or	a, (0x01, sp)
      00B800 C7 53 06         [ 1] 2128 	ld	0x5306, a
                                   2129 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1226: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
      00B803 C6 53 08         [ 1] 2130 	ld	a, 0x5308
                                   2131 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1234: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      00B806 0D 04            [ 1] 2132 	tnz	(0x04, sp)
      00B808 27 07            [ 1] 2133 	jreq	00102$
                                   2134 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1236: TIM2->CCER1 |= TIM2_CCER1_CC2P;
      00B80A AA 20            [ 1] 2135 	or	a, #0x20
      00B80C C7 53 08         [ 1] 2136 	ld	0x5308, a
      00B80F 20 05            [ 2] 2137 	jra	00103$
      00B811                       2138 00102$:
                                   2139 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1240: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
      00B811 A4 DF            [ 1] 2140 	and	a, #0xdf
      00B813 C7 53 08         [ 1] 2141 	ld	0x5308, a
      00B816                       2142 00103$:
                                   2143 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1244: TIM2->CCER1 |= TIM2_CCER1_CC2E;
      00B816 72 18 53 08      [ 1] 2144 	bset	21256, #4
                                   2145 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1245: }
      00B81A 84               [ 1] 2146 	pop	a
      00B81B 81               [ 4] 2147 	ret
                                   2148 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1261: static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
                                   2149 ;	-----------------------------------------
                                   2150 ;	 function TI3_Config
                                   2151 ;	-----------------------------------------
      00B81C                       2152 _TI3_Config:
      00B81C 88               [ 1] 2153 	push	a
                                   2154 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1265: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
      00B81D 72 11 53 09      [ 1] 2155 	bres	21257, #0
                                   2156 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1268: TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
      00B821 C6 53 07         [ 1] 2157 	ld	a, 0x5307
      00B824 A4 0C            [ 1] 2158 	and	a, #0x0c
      00B826 6B 01            [ 1] 2159 	ld	(0x01, sp), a
                                   2160 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1269: | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
      00B828 7B 06            [ 1] 2161 	ld	a, (0x06, sp)
      00B82A 4E               [ 1] 2162 	swap	a
      00B82B A4 F0            [ 1] 2163 	and	a, #0xf0
      00B82D 1A 05            [ 1] 2164 	or	a, (0x05, sp)
      00B82F 1A 01            [ 1] 2165 	or	a, (0x01, sp)
      00B831 C7 53 07         [ 1] 2166 	ld	0x5307, a
                                   2167 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1265: TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
      00B834 C6 53 09         [ 1] 2168 	ld	a, 0x5309
                                   2169 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1273: if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
      00B837 0D 04            [ 1] 2170 	tnz	(0x04, sp)
      00B839 27 07            [ 1] 2171 	jreq	00102$
                                   2172 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1275: TIM2->CCER2 |= TIM2_CCER2_CC3P;
      00B83B AA 02            [ 1] 2173 	or	a, #0x02
      00B83D C7 53 09         [ 1] 2174 	ld	0x5309, a
      00B840 20 05            [ 2] 2175 	jra	00103$
      00B842                       2176 00102$:
                                   2177 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1279: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
      00B842 A4 FD            [ 1] 2178 	and	a, #0xfd
      00B844 C7 53 09         [ 1] 2179 	ld	0x5309, a
      00B847                       2180 00103$:
                                   2181 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1282: TIM2->CCER2 |= TIM2_CCER2_CC3E;
      00B847 72 10 53 09      [ 1] 2182 	bset	21257, #0
                                   2183 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim2.c: 1283: }
      00B84B 84               [ 1] 2184 	pop	a
      00B84C 81               [ 4] 2185 	ret
                                   2186 	.area CODE
                                   2187 	.area CONST
                                   2188 	.area CONST
      0081AB                       2189 ___str_0:
      0081AB 2E 2E 2F 2E 2E 2F 2F  2190 	.ascii "../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_ti"
             53 74 64 50 65 72 69
             70 68 5F 44 72 69 76
             65 72 2F 53 54 4D 38
             53 5F 53 74 64 50 65
             72 69 70 68 5F 44 72
             69 76 65 72 2F 2F 73
             72 63 2F 73 74 6D 38
             73 5F 74 69
      0081E7 6D 32 2E 63           2191 	.ascii "m2.c"
      0081EB 00                    2192 	.db 0x00
                                   2193 	.area CODE
                                   2194 	.area INITIALIZER
                                   2195 	.area CABS (ABS)
