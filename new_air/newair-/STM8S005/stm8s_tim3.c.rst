                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim3
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _TIM3_DeInit
                                     13 	.globl _TIM3_TimeBaseInit
                                     14 	.globl _TIM3_OC1Init
                                     15 	.globl _TIM3_OC2Init
                                     16 	.globl _TIM3_ICInit
                                     17 	.globl _TIM3_PWMIConfig
                                     18 	.globl _TIM3_Cmd
                                     19 	.globl _TIM3_ITConfig
                                     20 	.globl _TIM3_UpdateDisableConfig
                                     21 	.globl _TIM3_UpdateRequestConfig
                                     22 	.globl _TIM3_SelectOnePulseMode
                                     23 	.globl _TIM3_PrescalerConfig
                                     24 	.globl _TIM3_ForcedOC1Config
                                     25 	.globl _TIM3_ForcedOC2Config
                                     26 	.globl _TIM3_ARRPreloadConfig
                                     27 	.globl _TIM3_OC1PreloadConfig
                                     28 	.globl _TIM3_OC2PreloadConfig
                                     29 	.globl _TIM3_GenerateEvent
                                     30 	.globl _TIM3_OC1PolarityConfig
                                     31 	.globl _TIM3_OC2PolarityConfig
                                     32 	.globl _TIM3_CCxCmd
                                     33 	.globl _TIM3_SelectOCxM
                                     34 	.globl _TIM3_SetCounter
                                     35 	.globl _TIM3_SetAutoreload
                                     36 	.globl _TIM3_SetCompare1
                                     37 	.globl _TIM3_SetCompare2
                                     38 	.globl _TIM3_SetIC1Prescaler
                                     39 	.globl _TIM3_SetIC2Prescaler
                                     40 	.globl _TIM3_GetCapture1
                                     41 	.globl _TIM3_GetCapture2
                                     42 	.globl _TIM3_GetCounter
                                     43 	.globl _TIM3_GetPrescaler
                                     44 	.globl _TIM3_GetFlagStatus
                                     45 	.globl _TIM3_ClearFlag
                                     46 	.globl _TIM3_GetITStatus
                                     47 	.globl _TIM3_ClearITPendingBit
                                     48 ;--------------------------------------------------------
                                     49 ; ram data
                                     50 ;--------------------------------------------------------
                                     51 	.area DATA
                                     52 ;--------------------------------------------------------
                                     53 ; ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area INITIALIZED
                                     56 ;--------------------------------------------------------
                                     57 ; absolute external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area DABS (ABS)
                                     60 
                                     61 ; default segment ordering for linker
                                     62 	.area HOME
                                     63 	.area GSINIT
                                     64 	.area GSFINAL
                                     65 	.area CONST
                                     66 	.area INITIALIZER
                                     67 	.area CODE
                                     68 
                                     69 ;--------------------------------------------------------
                                     70 ; global & static initialisations
                                     71 ;--------------------------------------------------------
                                     72 	.area HOME
                                     73 	.area GSINIT
                                     74 	.area GSFINAL
                                     75 	.area GSINIT
                                     76 ;--------------------------------------------------------
                                     77 ; Home
                                     78 ;--------------------------------------------------------
                                     79 	.area HOME
                                     80 	.area HOME
                                     81 ;--------------------------------------------------------
                                     82 ; code
                                     83 ;--------------------------------------------------------
                                     84 	.area CODE
                                     85 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 51: void TIM3_DeInit(void)
                                     86 ;	-----------------------------------------
                                     87 ;	 function TIM3_DeInit
                                     88 ;	-----------------------------------------
      00B84D                         89 _TIM3_DeInit:
                                     90 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 53: TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
      00B84D 35 00 53 20      [ 1]   91 	mov	0x5320+0, #0x00
                                     92 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 54: TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
      00B851 35 00 53 21      [ 1]   93 	mov	0x5321+0, #0x00
                                     94 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 55: TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
      00B855 35 00 53 23      [ 1]   95 	mov	0x5323+0, #0x00
                                     96 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 58: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
      00B859 35 00 53 27      [ 1]   97 	mov	0x5327+0, #0x00
                                     98 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 61: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
      00B85D 35 00 53 27      [ 1]   99 	mov	0x5327+0, #0x00
                                    100 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 62: TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
      00B861 35 00 53 25      [ 1]  101 	mov	0x5325+0, #0x00
                                    102 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 63: TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
      00B865 35 00 53 26      [ 1]  103 	mov	0x5326+0, #0x00
                                    104 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 64: TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
      00B869 35 00 53 28      [ 1]  105 	mov	0x5328+0, #0x00
                                    106 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 65: TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
      00B86D 35 00 53 29      [ 1]  107 	mov	0x5329+0, #0x00
                                    108 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 66: TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
      00B871 35 00 53 2A      [ 1]  109 	mov	0x532a+0, #0x00
                                    110 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 67: TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
      00B875 35 FF 53 2B      [ 1]  111 	mov	0x532b+0, #0xff
                                    112 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 68: TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
      00B879 35 FF 53 2C      [ 1]  113 	mov	0x532c+0, #0xff
                                    114 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 69: TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
      00B87D 35 00 53 2D      [ 1]  115 	mov	0x532d+0, #0x00
                                    116 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 70: TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
      00B881 35 00 53 2E      [ 1]  117 	mov	0x532e+0, #0x00
                                    118 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 71: TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
      00B885 35 00 53 2F      [ 1]  119 	mov	0x532f+0, #0x00
                                    120 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 72: TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
      00B889 35 00 53 30      [ 1]  121 	mov	0x5330+0, #0x00
                                    122 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 73: TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
      00B88D 35 00 53 22      [ 1]  123 	mov	0x5322+0, #0x00
                                    124 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 74: }
      00B891 81               [ 4]  125 	ret
                                    126 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 82: void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
                                    127 ;	-----------------------------------------
                                    128 ;	 function TIM3_TimeBaseInit
                                    129 ;	-----------------------------------------
      00B892                        130 _TIM3_TimeBaseInit:
                                    131 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 86: TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
      00B892 AE 53 2A         [ 2]  132 	ldw	x, #0x532a
      00B895 7B 03            [ 1]  133 	ld	a, (0x03, sp)
      00B897 F7               [ 1]  134 	ld	(x), a
                                    135 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 88: TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
      00B898 7B 04            [ 1]  136 	ld	a, (0x04, sp)
      00B89A C7 53 2B         [ 1]  137 	ld	0x532b, a
                                    138 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 89: TIM3->ARRL = (uint8_t)(TIM3_Period);
      00B89D 7B 05            [ 1]  139 	ld	a, (0x05, sp)
      00B89F C7 53 2C         [ 1]  140 	ld	0x532c, a
                                    141 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 90: }
      00B8A2 81               [ 4]  142 	ret
                                    143 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 100: void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
                                    144 ;	-----------------------------------------
                                    145 ;	 function TIM3_OC1Init
                                    146 ;	-----------------------------------------
      00B8A3                        147 _TIM3_OC1Init:
      00B8A3 89               [ 2]  148 	pushw	x
                                    149 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 106: assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
      00B8A4 0D 05            [ 1]  150 	tnz	(0x05, sp)
      00B8A6 27 2D            [ 1]  151 	jreq	00104$
      00B8A8 7B 05            [ 1]  152 	ld	a, (0x05, sp)
      00B8AA A1 10            [ 1]  153 	cp	a, #0x10
      00B8AC 27 27            [ 1]  154 	jreq	00104$
      00B8AE 7B 05            [ 1]  155 	ld	a, (0x05, sp)
      00B8B0 A1 20            [ 1]  156 	cp	a, #0x20
      00B8B2 27 21            [ 1]  157 	jreq	00104$
      00B8B4 7B 05            [ 1]  158 	ld	a, (0x05, sp)
      00B8B6 A1 30            [ 1]  159 	cp	a, #0x30
      00B8B8 27 1B            [ 1]  160 	jreq	00104$
      00B8BA 7B 05            [ 1]  161 	ld	a, (0x05, sp)
      00B8BC A1 60            [ 1]  162 	cp	a, #0x60
      00B8BE 27 15            [ 1]  163 	jreq	00104$
      00B8C0 7B 05            [ 1]  164 	ld	a, (0x05, sp)
      00B8C2 A1 70            [ 1]  165 	cp	a, #0x70
      00B8C4 27 0F            [ 1]  166 	jreq	00104$
      00B8C6 4B 6A            [ 1]  167 	push	#0x6a
      00B8C8 5F               [ 1]  168 	clrw	x
      00B8C9 89               [ 2]  169 	pushw	x
      00B8CA 4B 00            [ 1]  170 	push	#0x00
      00B8CC 4B EC            [ 1]  171 	push	#<(___str_0+0)
      00B8CE 4B 81            [ 1]  172 	push	#((___str_0+0) >> 8)
      00B8D0 CD 83 84         [ 4]  173 	call	_assert_failed
      00B8D3 5B 06            [ 2]  174 	addw	sp, #6
      00B8D5                        175 00104$:
                                    176 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 107: assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
      00B8D5 0D 06            [ 1]  177 	tnz	(0x06, sp)
      00B8D7 27 15            [ 1]  178 	jreq	00121$
      00B8D9 7B 06            [ 1]  179 	ld	a, (0x06, sp)
      00B8DB A1 11            [ 1]  180 	cp	a, #0x11
      00B8DD 27 0F            [ 1]  181 	jreq	00121$
      00B8DF 4B 6B            [ 1]  182 	push	#0x6b
      00B8E1 5F               [ 1]  183 	clrw	x
      00B8E2 89               [ 2]  184 	pushw	x
      00B8E3 4B 00            [ 1]  185 	push	#0x00
      00B8E5 4B EC            [ 1]  186 	push	#<(___str_0+0)
      00B8E7 4B 81            [ 1]  187 	push	#((___str_0+0) >> 8)
      00B8E9 CD 83 84         [ 4]  188 	call	_assert_failed
      00B8EC 5B 06            [ 2]  189 	addw	sp, #6
      00B8EE                        190 00121$:
                                    191 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 108: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
      00B8EE 0D 09            [ 1]  192 	tnz	(0x09, sp)
      00B8F0 27 15            [ 1]  193 	jreq	00126$
      00B8F2 7B 09            [ 1]  194 	ld	a, (0x09, sp)
      00B8F4 A1 22            [ 1]  195 	cp	a, #0x22
      00B8F6 27 0F            [ 1]  196 	jreq	00126$
      00B8F8 4B 6C            [ 1]  197 	push	#0x6c
      00B8FA 5F               [ 1]  198 	clrw	x
      00B8FB 89               [ 2]  199 	pushw	x
      00B8FC 4B 00            [ 1]  200 	push	#0x00
      00B8FE 4B EC            [ 1]  201 	push	#<(___str_0+0)
      00B900 4B 81            [ 1]  202 	push	#((___str_0+0) >> 8)
      00B902 CD 83 84         [ 4]  203 	call	_assert_failed
      00B905 5B 06            [ 2]  204 	addw	sp, #6
      00B907                        205 00126$:
                                    206 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 111: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
      00B907 C6 53 27         [ 1]  207 	ld	a, 0x5327
      00B90A A4 FC            [ 1]  208 	and	a, #0xfc
      00B90C C7 53 27         [ 1]  209 	ld	0x5327, a
                                    210 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 113: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
      00B90F C6 53 27         [ 1]  211 	ld	a, 0x5327
      00B912 6B 01            [ 1]  212 	ld	(0x01, sp), a
      00B914 7B 06            [ 1]  213 	ld	a, (0x06, sp)
      00B916 A4 01            [ 1]  214 	and	a, #0x01
      00B918 6B 02            [ 1]  215 	ld	(0x02, sp), a
      00B91A 7B 09            [ 1]  216 	ld	a, (0x09, sp)
      00B91C A4 02            [ 1]  217 	and	a, #0x02
      00B91E 1A 02            [ 1]  218 	or	a, (0x02, sp)
      00B920 1A 01            [ 1]  219 	or	a, (0x01, sp)
      00B922 C7 53 27         [ 1]  220 	ld	0x5327, a
                                    221 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 116: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      00B925 C6 53 25         [ 1]  222 	ld	a, 0x5325
      00B928 A4 8F            [ 1]  223 	and	a, #0x8f
      00B92A 1A 05            [ 1]  224 	or	a, (0x05, sp)
      00B92C C7 53 25         [ 1]  225 	ld	0x5325, a
                                    226 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 119: TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
      00B92F 7B 07            [ 1]  227 	ld	a, (0x07, sp)
      00B931 C7 53 2D         [ 1]  228 	ld	0x532d, a
                                    229 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 120: TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
      00B934 7B 08            [ 1]  230 	ld	a, (0x08, sp)
      00B936 C7 53 2E         [ 1]  231 	ld	0x532e, a
                                    232 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 121: }
      00B939 85               [ 2]  233 	popw	x
      00B93A 81               [ 4]  234 	ret
                                    235 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 131: void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
                                    236 ;	-----------------------------------------
                                    237 ;	 function TIM3_OC2Init
                                    238 ;	-----------------------------------------
      00B93B                        239 _TIM3_OC2Init:
      00B93B 89               [ 2]  240 	pushw	x
                                    241 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 137: assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
      00B93C 0D 05            [ 1]  242 	tnz	(0x05, sp)
      00B93E 27 2D            [ 1]  243 	jreq	00104$
      00B940 7B 05            [ 1]  244 	ld	a, (0x05, sp)
      00B942 A1 10            [ 1]  245 	cp	a, #0x10
      00B944 27 27            [ 1]  246 	jreq	00104$
      00B946 7B 05            [ 1]  247 	ld	a, (0x05, sp)
      00B948 A1 20            [ 1]  248 	cp	a, #0x20
      00B94A 27 21            [ 1]  249 	jreq	00104$
      00B94C 7B 05            [ 1]  250 	ld	a, (0x05, sp)
      00B94E A1 30            [ 1]  251 	cp	a, #0x30
      00B950 27 1B            [ 1]  252 	jreq	00104$
      00B952 7B 05            [ 1]  253 	ld	a, (0x05, sp)
      00B954 A1 60            [ 1]  254 	cp	a, #0x60
      00B956 27 15            [ 1]  255 	jreq	00104$
      00B958 7B 05            [ 1]  256 	ld	a, (0x05, sp)
      00B95A A1 70            [ 1]  257 	cp	a, #0x70
      00B95C 27 0F            [ 1]  258 	jreq	00104$
      00B95E 4B 89            [ 1]  259 	push	#0x89
      00B960 5F               [ 1]  260 	clrw	x
      00B961 89               [ 2]  261 	pushw	x
      00B962 4B 00            [ 1]  262 	push	#0x00
      00B964 4B EC            [ 1]  263 	push	#<(___str_0+0)
      00B966 4B 81            [ 1]  264 	push	#((___str_0+0) >> 8)
      00B968 CD 83 84         [ 4]  265 	call	_assert_failed
      00B96B 5B 06            [ 2]  266 	addw	sp, #6
      00B96D                        267 00104$:
                                    268 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 138: assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
      00B96D 0D 06            [ 1]  269 	tnz	(0x06, sp)
      00B96F 27 15            [ 1]  270 	jreq	00121$
      00B971 7B 06            [ 1]  271 	ld	a, (0x06, sp)
      00B973 A1 11            [ 1]  272 	cp	a, #0x11
      00B975 27 0F            [ 1]  273 	jreq	00121$
      00B977 4B 8A            [ 1]  274 	push	#0x8a
      00B979 5F               [ 1]  275 	clrw	x
      00B97A 89               [ 2]  276 	pushw	x
      00B97B 4B 00            [ 1]  277 	push	#0x00
      00B97D 4B EC            [ 1]  278 	push	#<(___str_0+0)
      00B97F 4B 81            [ 1]  279 	push	#((___str_0+0) >> 8)
      00B981 CD 83 84         [ 4]  280 	call	_assert_failed
      00B984 5B 06            [ 2]  281 	addw	sp, #6
      00B986                        282 00121$:
                                    283 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 139: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
      00B986 0D 09            [ 1]  284 	tnz	(0x09, sp)
      00B988 27 15            [ 1]  285 	jreq	00126$
      00B98A 7B 09            [ 1]  286 	ld	a, (0x09, sp)
      00B98C A1 22            [ 1]  287 	cp	a, #0x22
      00B98E 27 0F            [ 1]  288 	jreq	00126$
      00B990 4B 8B            [ 1]  289 	push	#0x8b
      00B992 5F               [ 1]  290 	clrw	x
      00B993 89               [ 2]  291 	pushw	x
      00B994 4B 00            [ 1]  292 	push	#0x00
      00B996 4B EC            [ 1]  293 	push	#<(___str_0+0)
      00B998 4B 81            [ 1]  294 	push	#((___str_0+0) >> 8)
      00B99A CD 83 84         [ 4]  295 	call	_assert_failed
      00B99D 5B 06            [ 2]  296 	addw	sp, #6
      00B99F                        297 00126$:
                                    298 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 143: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
      00B99F C6 53 27         [ 1]  299 	ld	a, 0x5327
      00B9A2 A4 CF            [ 1]  300 	and	a, #0xcf
      00B9A4 C7 53 27         [ 1]  301 	ld	0x5327, a
                                    302 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 145: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
      00B9A7 C6 53 27         [ 1]  303 	ld	a, 0x5327
      00B9AA 6B 01            [ 1]  304 	ld	(0x01, sp), a
      00B9AC 7B 06            [ 1]  305 	ld	a, (0x06, sp)
      00B9AE A4 10            [ 1]  306 	and	a, #0x10
      00B9B0 6B 02            [ 1]  307 	ld	(0x02, sp), a
      00B9B2 7B 09            [ 1]  308 	ld	a, (0x09, sp)
      00B9B4 A4 20            [ 1]  309 	and	a, #0x20
      00B9B6 1A 02            [ 1]  310 	or	a, (0x02, sp)
      00B9B8 1A 01            [ 1]  311 	or	a, (0x01, sp)
      00B9BA C7 53 27         [ 1]  312 	ld	0x5327, a
                                    313 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 149: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      00B9BD C6 53 26         [ 1]  314 	ld	a, 0x5326
      00B9C0 A4 8F            [ 1]  315 	and	a, #0x8f
      00B9C2 1A 05            [ 1]  316 	or	a, (0x05, sp)
      00B9C4 C7 53 26         [ 1]  317 	ld	0x5326, a
                                    318 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 153: TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
      00B9C7 7B 07            [ 1]  319 	ld	a, (0x07, sp)
      00B9C9 C7 53 2F         [ 1]  320 	ld	0x532f, a
                                    321 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 154: TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
      00B9CC 7B 08            [ 1]  322 	ld	a, (0x08, sp)
      00B9CE C7 53 30         [ 1]  323 	ld	0x5330, a
                                    324 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 155: }
      00B9D1 85               [ 2]  325 	popw	x
      00B9D2 81               [ 4]  326 	ret
                                    327 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 166: void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
                                    328 ;	-----------------------------------------
                                    329 ;	 function TIM3_ICInit
                                    330 ;	-----------------------------------------
      00B9D3                        331 _TIM3_ICInit:
      00B9D3 88               [ 1]  332 	push	a
                                    333 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 173: assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
      00B9D4 7B 04            [ 1]  334 	ld	a, (0x04, sp)
      00B9D6 4A               [ 1]  335 	dec	a
      00B9D7 26 05            [ 1]  336 	jrne	00203$
      00B9D9 A6 01            [ 1]  337 	ld	a, #0x01
      00B9DB 6B 01            [ 1]  338 	ld	(0x01, sp), a
      00B9DD C5                     339 	.byte 0xc5
      00B9DE                        340 00203$:
      00B9DE 0F 01            [ 1]  341 	clr	(0x01, sp)
      00B9E0                        342 00204$:
      00B9E0 0D 04            [ 1]  343 	tnz	(0x04, sp)
      00B9E2 27 13            [ 1]  344 	jreq	00107$
      00B9E4 0D 01            [ 1]  345 	tnz	(0x01, sp)
      00B9E6 26 0F            [ 1]  346 	jrne	00107$
      00B9E8 4B AD            [ 1]  347 	push	#0xad
      00B9EA 5F               [ 1]  348 	clrw	x
      00B9EB 89               [ 2]  349 	pushw	x
      00B9EC 4B 00            [ 1]  350 	push	#0x00
      00B9EE 4B EC            [ 1]  351 	push	#<(___str_0+0)
      00B9F0 4B 81            [ 1]  352 	push	#((___str_0+0) >> 8)
      00B9F2 CD 83 84         [ 4]  353 	call	_assert_failed
      00B9F5 5B 06            [ 2]  354 	addw	sp, #6
      00B9F7                        355 00107$:
                                    356 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 174: assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
      00B9F7 0D 05            [ 1]  357 	tnz	(0x05, sp)
      00B9F9 27 15            [ 1]  358 	jreq	00112$
      00B9FB 7B 05            [ 1]  359 	ld	a, (0x05, sp)
      00B9FD A1 44            [ 1]  360 	cp	a, #0x44
      00B9FF 27 0F            [ 1]  361 	jreq	00112$
      00BA01 4B AE            [ 1]  362 	push	#0xae
      00BA03 5F               [ 1]  363 	clrw	x
      00BA04 89               [ 2]  364 	pushw	x
      00BA05 4B 00            [ 1]  365 	push	#0x00
      00BA07 4B EC            [ 1]  366 	push	#<(___str_0+0)
      00BA09 4B 81            [ 1]  367 	push	#((___str_0+0) >> 8)
      00BA0B CD 83 84         [ 4]  368 	call	_assert_failed
      00BA0E 5B 06            [ 2]  369 	addw	sp, #6
      00BA10                        370 00112$:
                                    371 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 175: assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
      00BA10 7B 06            [ 1]  372 	ld	a, (0x06, sp)
      00BA12 4A               [ 1]  373 	dec	a
      00BA13 27 1B            [ 1]  374 	jreq	00117$
      00BA15 7B 06            [ 1]  375 	ld	a, (0x06, sp)
      00BA17 A1 02            [ 1]  376 	cp	a, #0x02
      00BA19 27 15            [ 1]  377 	jreq	00117$
      00BA1B 7B 06            [ 1]  378 	ld	a, (0x06, sp)
      00BA1D A1 03            [ 1]  379 	cp	a, #0x03
      00BA1F 27 0F            [ 1]  380 	jreq	00117$
      00BA21 4B AF            [ 1]  381 	push	#0xaf
      00BA23 5F               [ 1]  382 	clrw	x
      00BA24 89               [ 2]  383 	pushw	x
      00BA25 4B 00            [ 1]  384 	push	#0x00
      00BA27 4B EC            [ 1]  385 	push	#<(___str_0+0)
      00BA29 4B 81            [ 1]  386 	push	#((___str_0+0) >> 8)
      00BA2B CD 83 84         [ 4]  387 	call	_assert_failed
      00BA2E 5B 06            [ 2]  388 	addw	sp, #6
      00BA30                        389 00117$:
                                    390 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 176: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
      00BA30 0D 07            [ 1]  391 	tnz	(0x07, sp)
      00BA32 27 21            [ 1]  392 	jreq	00125$
      00BA34 7B 07            [ 1]  393 	ld	a, (0x07, sp)
      00BA36 A1 04            [ 1]  394 	cp	a, #0x04
      00BA38 27 1B            [ 1]  395 	jreq	00125$
      00BA3A 7B 07            [ 1]  396 	ld	a, (0x07, sp)
      00BA3C A1 08            [ 1]  397 	cp	a, #0x08
      00BA3E 27 15            [ 1]  398 	jreq	00125$
      00BA40 7B 07            [ 1]  399 	ld	a, (0x07, sp)
      00BA42 A1 0C            [ 1]  400 	cp	a, #0x0c
      00BA44 27 0F            [ 1]  401 	jreq	00125$
      00BA46 4B B0            [ 1]  402 	push	#0xb0
      00BA48 5F               [ 1]  403 	clrw	x
      00BA49 89               [ 2]  404 	pushw	x
      00BA4A 4B 00            [ 1]  405 	push	#0x00
      00BA4C 4B EC            [ 1]  406 	push	#<(___str_0+0)
      00BA4E 4B 81            [ 1]  407 	push	#((___str_0+0) >> 8)
      00BA50 CD 83 84         [ 4]  408 	call	_assert_failed
      00BA53 5B 06            [ 2]  409 	addw	sp, #6
      00BA55                        410 00125$:
                                    411 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 177: assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
      00BA55 7B 08            [ 1]  412 	ld	a, (0x08, sp)
      00BA57 A1 0F            [ 1]  413 	cp	a, #0x0f
      00BA59 23 0F            [ 2]  414 	jrule	00136$
      00BA5B 4B B1            [ 1]  415 	push	#0xb1
      00BA5D 5F               [ 1]  416 	clrw	x
      00BA5E 89               [ 2]  417 	pushw	x
      00BA5F 4B 00            [ 1]  418 	push	#0x00
      00BA61 4B EC            [ 1]  419 	push	#<(___str_0+0)
      00BA63 4B 81            [ 1]  420 	push	#((___str_0+0) >> 8)
      00BA65 CD 83 84         [ 4]  421 	call	_assert_failed
      00BA68 5B 06            [ 2]  422 	addw	sp, #6
      00BA6A                        423 00136$:
                                    424 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 179: if (TIM3_Channel != TIM3_CHANNEL_2)
      00BA6A 0D 01            [ 1]  425 	tnz	(0x01, sp)
      00BA6C 26 17            [ 1]  426 	jrne	00102$
                                    427 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 182: TI1_Config((uint8_t)TIM3_ICPolarity,
      00BA6E 7B 08            [ 1]  428 	ld	a, (0x08, sp)
      00BA70 88               [ 1]  429 	push	a
      00BA71 7B 07            [ 1]  430 	ld	a, (0x07, sp)
      00BA73 88               [ 1]  431 	push	a
      00BA74 7B 07            [ 1]  432 	ld	a, (0x07, sp)
      00BA76 88               [ 1]  433 	push	a
      00BA77 CD C0 FD         [ 4]  434 	call	_TI1_Config
      00BA7A 5B 03            [ 2]  435 	addw	sp, #3
                                    436 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 187: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      00BA7C 7B 07            [ 1]  437 	ld	a, (0x07, sp)
      00BA7E 88               [ 1]  438 	push	a
      00BA7F CD BF 73         [ 4]  439 	call	_TIM3_SetIC1Prescaler
      00BA82 84               [ 1]  440 	pop	a
      00BA83 20 15            [ 2]  441 	jra	00104$
      00BA85                        442 00102$:
                                    443 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 192: TI2_Config((uint8_t)TIM3_ICPolarity,
      00BA85 7B 08            [ 1]  444 	ld	a, (0x08, sp)
      00BA87 88               [ 1]  445 	push	a
      00BA88 7B 07            [ 1]  446 	ld	a, (0x07, sp)
      00BA8A 88               [ 1]  447 	push	a
      00BA8B 7B 07            [ 1]  448 	ld	a, (0x07, sp)
      00BA8D 88               [ 1]  449 	push	a
      00BA8E CD C1 2E         [ 4]  450 	call	_TI2_Config
      00BA91 5B 03            [ 2]  451 	addw	sp, #3
                                    452 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 197: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      00BA93 7B 07            [ 1]  453 	ld	a, (0x07, sp)
      00BA95 88               [ 1]  454 	push	a
      00BA96 CD BF A3         [ 4]  455 	call	_TIM3_SetIC2Prescaler
      00BA99 84               [ 1]  456 	pop	a
      00BA9A                        457 00104$:
                                    458 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 199: }
      00BA9A 84               [ 1]  459 	pop	a
      00BA9B 81               [ 4]  460 	ret
                                    461 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 210: void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
                                    462 ;	-----------------------------------------
                                    463 ;	 function TIM3_PWMIConfig
                                    464 ;	-----------------------------------------
      00BA9C                        465 _TIM3_PWMIConfig:
      00BA9C 52 03            [ 2]  466 	sub	sp, #3
                                    467 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 220: assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
      00BA9E 7B 06            [ 1]  468 	ld	a, (0x06, sp)
      00BAA0 4A               [ 1]  469 	dec	a
      00BAA1 26 05            [ 1]  470 	jrne	00212$
      00BAA3 A6 01            [ 1]  471 	ld	a, #0x01
      00BAA5 6B 01            [ 1]  472 	ld	(0x01, sp), a
      00BAA7 C5                     473 	.byte 0xc5
      00BAA8                        474 00212$:
      00BAA8 0F 01            [ 1]  475 	clr	(0x01, sp)
      00BAAA                        476 00213$:
      00BAAA 0D 06            [ 1]  477 	tnz	(0x06, sp)
      00BAAC 27 13            [ 1]  478 	jreq	00113$
      00BAAE 0D 01            [ 1]  479 	tnz	(0x01, sp)
      00BAB0 26 0F            [ 1]  480 	jrne	00113$
      00BAB2 4B DC            [ 1]  481 	push	#0xdc
      00BAB4 5F               [ 1]  482 	clrw	x
      00BAB5 89               [ 2]  483 	pushw	x
      00BAB6 4B 00            [ 1]  484 	push	#0x00
      00BAB8 4B EC            [ 1]  485 	push	#<(___str_0+0)
      00BABA 4B 81            [ 1]  486 	push	#((___str_0+0) >> 8)
      00BABC CD 83 84         [ 4]  487 	call	_assert_failed
      00BABF 5B 06            [ 2]  488 	addw	sp, #6
      00BAC1                        489 00113$:
                                    490 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 221: assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
      00BAC1 7B 07            [ 1]  491 	ld	a, (0x07, sp)
      00BAC3 A0 44            [ 1]  492 	sub	a, #0x44
      00BAC5 26 04            [ 1]  493 	jrne	00217$
      00BAC7 4C               [ 1]  494 	inc	a
      00BAC8 6B 02            [ 1]  495 	ld	(0x02, sp), a
      00BACA C5                     496 	.byte 0xc5
      00BACB                        497 00217$:
      00BACB 0F 02            [ 1]  498 	clr	(0x02, sp)
      00BACD                        499 00218$:
      00BACD 0D 07            [ 1]  500 	tnz	(0x07, sp)
      00BACF 27 13            [ 1]  501 	jreq	00118$
      00BAD1 0D 02            [ 1]  502 	tnz	(0x02, sp)
      00BAD3 26 0F            [ 1]  503 	jrne	00118$
      00BAD5 4B DD            [ 1]  504 	push	#0xdd
      00BAD7 5F               [ 1]  505 	clrw	x
      00BAD8 89               [ 2]  506 	pushw	x
      00BAD9 4B 00            [ 1]  507 	push	#0x00
      00BADB 4B EC            [ 1]  508 	push	#<(___str_0+0)
      00BADD 4B 81            [ 1]  509 	push	#((___str_0+0) >> 8)
      00BADF CD 83 84         [ 4]  510 	call	_assert_failed
      00BAE2 5B 06            [ 2]  511 	addw	sp, #6
      00BAE4                        512 00118$:
                                    513 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 222: assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
      00BAE4 7B 08            [ 1]  514 	ld	a, (0x08, sp)
      00BAE6 4A               [ 1]  515 	dec	a
      00BAE7 26 05            [ 1]  516 	jrne	00222$
      00BAE9 A6 01            [ 1]  517 	ld	a, #0x01
      00BAEB 6B 03            [ 1]  518 	ld	(0x03, sp), a
      00BAED C5                     519 	.byte 0xc5
      00BAEE                        520 00222$:
      00BAEE 0F 03            [ 1]  521 	clr	(0x03, sp)
      00BAF0                        522 00223$:
      00BAF0 0D 03            [ 1]  523 	tnz	(0x03, sp)
      00BAF2 26 1B            [ 1]  524 	jrne	00123$
      00BAF4 7B 08            [ 1]  525 	ld	a, (0x08, sp)
      00BAF6 A1 02            [ 1]  526 	cp	a, #0x02
      00BAF8 27 15            [ 1]  527 	jreq	00123$
      00BAFA 7B 08            [ 1]  528 	ld	a, (0x08, sp)
      00BAFC A1 03            [ 1]  529 	cp	a, #0x03
      00BAFE 27 0F            [ 1]  530 	jreq	00123$
      00BB00 4B DE            [ 1]  531 	push	#0xde
      00BB02 5F               [ 1]  532 	clrw	x
      00BB03 89               [ 2]  533 	pushw	x
      00BB04 4B 00            [ 1]  534 	push	#0x00
      00BB06 4B EC            [ 1]  535 	push	#<(___str_0+0)
      00BB08 4B 81            [ 1]  536 	push	#((___str_0+0) >> 8)
      00BB0A CD 83 84         [ 4]  537 	call	_assert_failed
      00BB0D 5B 06            [ 2]  538 	addw	sp, #6
      00BB0F                        539 00123$:
                                    540 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 223: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
      00BB0F 0D 09            [ 1]  541 	tnz	(0x09, sp)
      00BB11 27 21            [ 1]  542 	jreq	00131$
      00BB13 7B 09            [ 1]  543 	ld	a, (0x09, sp)
      00BB15 A1 04            [ 1]  544 	cp	a, #0x04
      00BB17 27 1B            [ 1]  545 	jreq	00131$
      00BB19 7B 09            [ 1]  546 	ld	a, (0x09, sp)
      00BB1B A1 08            [ 1]  547 	cp	a, #0x08
      00BB1D 27 15            [ 1]  548 	jreq	00131$
      00BB1F 7B 09            [ 1]  549 	ld	a, (0x09, sp)
      00BB21 A1 0C            [ 1]  550 	cp	a, #0x0c
      00BB23 27 0F            [ 1]  551 	jreq	00131$
      00BB25 4B DF            [ 1]  552 	push	#0xdf
      00BB27 5F               [ 1]  553 	clrw	x
      00BB28 89               [ 2]  554 	pushw	x
      00BB29 4B 00            [ 1]  555 	push	#0x00
      00BB2B 4B EC            [ 1]  556 	push	#<(___str_0+0)
      00BB2D 4B 81            [ 1]  557 	push	#((___str_0+0) >> 8)
      00BB2F CD 83 84         [ 4]  558 	call	_assert_failed
      00BB32 5B 06            [ 2]  559 	addw	sp, #6
      00BB34                        560 00131$:
                                    561 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 226: if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
      00BB34 0D 02            [ 1]  562 	tnz	(0x02, sp)
      00BB36 26 05            [ 1]  563 	jrne	00102$
                                    564 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 228: icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
      00BB38 A6 44            [ 1]  565 	ld	a, #0x44
      00BB3A 6B 02            [ 1]  566 	ld	(0x02, sp), a
                                    567 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 232: icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
      00BB3C C5                     568 	.byte 0xc5
      00BB3D                        569 00102$:
      00BB3D 0F 02            [ 1]  570 	clr	(0x02, sp)
      00BB3F                        571 00103$:
                                    572 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 236: if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
      00BB3F 7B 03            [ 1]  573 	ld	a, (0x03, sp)
      00BB41 27 06            [ 1]  574 	jreq	00105$
                                    575 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 238: icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
      00BB43 A6 02            [ 1]  576 	ld	a, #0x02
      00BB45 6B 03            [ 1]  577 	ld	(0x03, sp), a
      00BB47 20 04            [ 2]  578 	jra	00106$
      00BB49                        579 00105$:
                                    580 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 242: icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
      00BB49 A6 01            [ 1]  581 	ld	a, #0x01
      00BB4B 6B 03            [ 1]  582 	ld	(0x03, sp), a
      00BB4D                        583 00106$:
                                    584 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 245: if (TIM3_Channel != TIM3_CHANNEL_2)
      00BB4D 0D 01            [ 1]  585 	tnz	(0x01, sp)
      00BB4F 26 2C            [ 1]  586 	jrne	00108$
                                    587 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 248: TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
      00BB51 7B 0A            [ 1]  588 	ld	a, (0x0a, sp)
      00BB53 88               [ 1]  589 	push	a
      00BB54 7B 09            [ 1]  590 	ld	a, (0x09, sp)
      00BB56 88               [ 1]  591 	push	a
      00BB57 7B 09            [ 1]  592 	ld	a, (0x09, sp)
      00BB59 88               [ 1]  593 	push	a
      00BB5A CD C0 FD         [ 4]  594 	call	_TI1_Config
      00BB5D 5B 03            [ 2]  595 	addw	sp, #3
                                    596 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 252: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      00BB5F 7B 09            [ 1]  597 	ld	a, (0x09, sp)
      00BB61 88               [ 1]  598 	push	a
      00BB62 CD BF 73         [ 4]  599 	call	_TIM3_SetIC1Prescaler
      00BB65 84               [ 1]  600 	pop	a
                                    601 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 255: TI2_Config(icpolarity, icselection, TIM3_ICFilter);
      00BB66 7B 0A            [ 1]  602 	ld	a, (0x0a, sp)
      00BB68 88               [ 1]  603 	push	a
      00BB69 7B 04            [ 1]  604 	ld	a, (0x04, sp)
      00BB6B 88               [ 1]  605 	push	a
      00BB6C 7B 04            [ 1]  606 	ld	a, (0x04, sp)
      00BB6E 88               [ 1]  607 	push	a
      00BB6F CD C1 2E         [ 4]  608 	call	_TI2_Config
      00BB72 5B 03            [ 2]  609 	addw	sp, #3
                                    610 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 258: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      00BB74 7B 09            [ 1]  611 	ld	a, (0x09, sp)
      00BB76 88               [ 1]  612 	push	a
      00BB77 CD BF A3         [ 4]  613 	call	_TIM3_SetIC2Prescaler
      00BB7A 84               [ 1]  614 	pop	a
      00BB7B 20 2A            [ 2]  615 	jra	00110$
      00BB7D                        616 00108$:
                                    617 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 263: TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
      00BB7D 7B 0A            [ 1]  618 	ld	a, (0x0a, sp)
      00BB7F 88               [ 1]  619 	push	a
      00BB80 7B 09            [ 1]  620 	ld	a, (0x09, sp)
      00BB82 88               [ 1]  621 	push	a
      00BB83 7B 09            [ 1]  622 	ld	a, (0x09, sp)
      00BB85 88               [ 1]  623 	push	a
      00BB86 CD C1 2E         [ 4]  624 	call	_TI2_Config
      00BB89 5B 03            [ 2]  625 	addw	sp, #3
                                    626 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 267: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      00BB8B 7B 09            [ 1]  627 	ld	a, (0x09, sp)
      00BB8D 88               [ 1]  628 	push	a
      00BB8E CD BF A3         [ 4]  629 	call	_TIM3_SetIC2Prescaler
      00BB91 84               [ 1]  630 	pop	a
                                    631 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 270: TI1_Config(icpolarity, icselection, TIM3_ICFilter);
      00BB92 7B 0A            [ 1]  632 	ld	a, (0x0a, sp)
      00BB94 88               [ 1]  633 	push	a
      00BB95 7B 04            [ 1]  634 	ld	a, (0x04, sp)
      00BB97 88               [ 1]  635 	push	a
      00BB98 7B 04            [ 1]  636 	ld	a, (0x04, sp)
      00BB9A 88               [ 1]  637 	push	a
      00BB9B CD C0 FD         [ 4]  638 	call	_TI1_Config
      00BB9E 5B 03            [ 2]  639 	addw	sp, #3
                                    640 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 273: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      00BBA0 7B 09            [ 1]  641 	ld	a, (0x09, sp)
      00BBA2 88               [ 1]  642 	push	a
      00BBA3 CD BF 73         [ 4]  643 	call	_TIM3_SetIC1Prescaler
      00BBA6 84               [ 1]  644 	pop	a
      00BBA7                        645 00110$:
                                    646 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 275: }
      00BBA7 5B 03            [ 2]  647 	addw	sp, #3
      00BBA9 81               [ 4]  648 	ret
                                    649 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 283: void TIM3_Cmd(FunctionalState NewState)
                                    650 ;	-----------------------------------------
                                    651 ;	 function TIM3_Cmd
                                    652 ;	-----------------------------------------
      00BBAA                        653 _TIM3_Cmd:
                                    654 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 286: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BBAA 0D 03            [ 1]  655 	tnz	(0x03, sp)
      00BBAC 27 14            [ 1]  656 	jreq	00107$
      00BBAE 7B 03            [ 1]  657 	ld	a, (0x03, sp)
      00BBB0 4A               [ 1]  658 	dec	a
      00BBB1 27 0F            [ 1]  659 	jreq	00107$
      00BBB3 4B 1E            [ 1]  660 	push	#0x1e
      00BBB5 4B 01            [ 1]  661 	push	#0x01
      00BBB7 5F               [ 1]  662 	clrw	x
      00BBB8 89               [ 2]  663 	pushw	x
      00BBB9 4B EC            [ 1]  664 	push	#<(___str_0+0)
      00BBBB 4B 81            [ 1]  665 	push	#((___str_0+0) >> 8)
      00BBBD CD 83 84         [ 4]  666 	call	_assert_failed
      00BBC0 5B 06            [ 2]  667 	addw	sp, #6
      00BBC2                        668 00107$:
                                    669 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
      00BBC2 C6 53 20         [ 1]  670 	ld	a, 0x5320
                                    671 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 289: if (NewState != DISABLE)
      00BBC5 0D 03            [ 1]  672 	tnz	(0x03, sp)
      00BBC7 27 06            [ 1]  673 	jreq	00102$
                                    674 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
      00BBC9 AA 01            [ 1]  675 	or	a, #0x01
      00BBCB C7 53 20         [ 1]  676 	ld	0x5320, a
      00BBCE 81               [ 4]  677 	ret
      00BBCF                        678 00102$:
                                    679 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 295: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
      00BBCF A4 FE            [ 1]  680 	and	a, #0xfe
      00BBD1 C7 53 20         [ 1]  681 	ld	0x5320, a
                                    682 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 297: }
      00BBD4 81               [ 4]  683 	ret
                                    684 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 311: void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
                                    685 ;	-----------------------------------------
                                    686 ;	 function TIM3_ITConfig
                                    687 ;	-----------------------------------------
      00BBD5                        688 _TIM3_ITConfig:
      00BBD5 88               [ 1]  689 	push	a
                                    690 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 314: assert_param(IS_TIM3_IT_OK(TIM3_IT));
      00BBD6 0D 04            [ 1]  691 	tnz	(0x04, sp)
      00BBD8 27 06            [ 1]  692 	jreq	00106$
      00BBDA 7B 04            [ 1]  693 	ld	a, (0x04, sp)
      00BBDC A1 07            [ 1]  694 	cp	a, #0x07
      00BBDE 23 0F            [ 2]  695 	jrule	00107$
      00BBE0                        696 00106$:
      00BBE0 4B 3A            [ 1]  697 	push	#0x3a
      00BBE2 4B 01            [ 1]  698 	push	#0x01
      00BBE4 5F               [ 1]  699 	clrw	x
      00BBE5 89               [ 2]  700 	pushw	x
      00BBE6 4B EC            [ 1]  701 	push	#<(___str_0+0)
      00BBE8 4B 81            [ 1]  702 	push	#((___str_0+0) >> 8)
      00BBEA CD 83 84         [ 4]  703 	call	_assert_failed
      00BBED 5B 06            [ 2]  704 	addw	sp, #6
      00BBEF                        705 00107$:
                                    706 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 315: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BBEF 0D 05            [ 1]  707 	tnz	(0x05, sp)
      00BBF1 27 14            [ 1]  708 	jreq	00112$
      00BBF3 7B 05            [ 1]  709 	ld	a, (0x05, sp)
      00BBF5 4A               [ 1]  710 	dec	a
      00BBF6 27 0F            [ 1]  711 	jreq	00112$
      00BBF8 4B 3B            [ 1]  712 	push	#0x3b
      00BBFA 4B 01            [ 1]  713 	push	#0x01
      00BBFC 5F               [ 1]  714 	clrw	x
      00BBFD 89               [ 2]  715 	pushw	x
      00BBFE 4B EC            [ 1]  716 	push	#<(___str_0+0)
      00BC00 4B 81            [ 1]  717 	push	#((___str_0+0) >> 8)
      00BC02 CD 83 84         [ 4]  718 	call	_assert_failed
      00BC05 5B 06            [ 2]  719 	addw	sp, #6
      00BC07                        720 00112$:
                                    721 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
      00BC07 C6 53 21         [ 1]  722 	ld	a, 0x5321
                                    723 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 317: if (NewState != DISABLE)
      00BC0A 0D 05            [ 1]  724 	tnz	(0x05, sp)
      00BC0C 27 07            [ 1]  725 	jreq	00102$
                                    726 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
      00BC0E 1A 04            [ 1]  727 	or	a, (0x04, sp)
      00BC10 C7 53 21         [ 1]  728 	ld	0x5321, a
      00BC13 20 0C            [ 2]  729 	jra	00104$
      00BC15                        730 00102$:
                                    731 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 325: TIM3->IER &= (uint8_t)(~TIM3_IT);
      00BC15 88               [ 1]  732 	push	a
      00BC16 7B 05            [ 1]  733 	ld	a, (0x05, sp)
      00BC18 43               [ 1]  734 	cpl	a
      00BC19 6B 02            [ 1]  735 	ld	(0x02, sp), a
      00BC1B 84               [ 1]  736 	pop	a
      00BC1C 14 01            [ 1]  737 	and	a, (0x01, sp)
      00BC1E C7 53 21         [ 1]  738 	ld	0x5321, a
      00BC21                        739 00104$:
                                    740 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 327: }
      00BC21 84               [ 1]  741 	pop	a
      00BC22 81               [ 4]  742 	ret
                                    743 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 335: void TIM3_UpdateDisableConfig(FunctionalState NewState)
                                    744 ;	-----------------------------------------
                                    745 ;	 function TIM3_UpdateDisableConfig
                                    746 ;	-----------------------------------------
      00BC23                        747 _TIM3_UpdateDisableConfig:
                                    748 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 338: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BC23 0D 03            [ 1]  749 	tnz	(0x03, sp)
      00BC25 27 14            [ 1]  750 	jreq	00107$
      00BC27 7B 03            [ 1]  751 	ld	a, (0x03, sp)
      00BC29 4A               [ 1]  752 	dec	a
      00BC2A 27 0F            [ 1]  753 	jreq	00107$
      00BC2C 4B 52            [ 1]  754 	push	#0x52
      00BC2E 4B 01            [ 1]  755 	push	#0x01
      00BC30 5F               [ 1]  756 	clrw	x
      00BC31 89               [ 2]  757 	pushw	x
      00BC32 4B EC            [ 1]  758 	push	#<(___str_0+0)
      00BC34 4B 81            [ 1]  759 	push	#((___str_0+0) >> 8)
      00BC36 CD 83 84         [ 4]  760 	call	_assert_failed
      00BC39 5B 06            [ 2]  761 	addw	sp, #6
      00BC3B                        762 00107$:
                                    763 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
      00BC3B C6 53 20         [ 1]  764 	ld	a, 0x5320
                                    765 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 341: if (NewState != DISABLE)
      00BC3E 0D 03            [ 1]  766 	tnz	(0x03, sp)
      00BC40 27 06            [ 1]  767 	jreq	00102$
                                    768 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
      00BC42 AA 02            [ 1]  769 	or	a, #0x02
      00BC44 C7 53 20         [ 1]  770 	ld	0x5320, a
      00BC47 81               [ 4]  771 	ret
      00BC48                        772 00102$:
                                    773 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 347: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
      00BC48 A4 FD            [ 1]  774 	and	a, #0xfd
      00BC4A C7 53 20         [ 1]  775 	ld	0x5320, a
                                    776 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 349: }
      00BC4D 81               [ 4]  777 	ret
                                    778 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 359: void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
                                    779 ;	-----------------------------------------
                                    780 ;	 function TIM3_UpdateRequestConfig
                                    781 ;	-----------------------------------------
      00BC4E                        782 _TIM3_UpdateRequestConfig:
                                    783 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 362: assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
      00BC4E 0D 03            [ 1]  784 	tnz	(0x03, sp)
      00BC50 27 14            [ 1]  785 	jreq	00107$
      00BC52 7B 03            [ 1]  786 	ld	a, (0x03, sp)
      00BC54 4A               [ 1]  787 	dec	a
      00BC55 27 0F            [ 1]  788 	jreq	00107$
      00BC57 4B 6A            [ 1]  789 	push	#0x6a
      00BC59 4B 01            [ 1]  790 	push	#0x01
      00BC5B 5F               [ 1]  791 	clrw	x
      00BC5C 89               [ 2]  792 	pushw	x
      00BC5D 4B EC            [ 1]  793 	push	#<(___str_0+0)
      00BC5F 4B 81            [ 1]  794 	push	#((___str_0+0) >> 8)
      00BC61 CD 83 84         [ 4]  795 	call	_assert_failed
      00BC64 5B 06            [ 2]  796 	addw	sp, #6
      00BC66                        797 00107$:
                                    798 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
      00BC66 C6 53 20         [ 1]  799 	ld	a, 0x5320
                                    800 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 365: if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
      00BC69 0D 03            [ 1]  801 	tnz	(0x03, sp)
      00BC6B 27 06            [ 1]  802 	jreq	00102$
                                    803 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
      00BC6D AA 04            [ 1]  804 	or	a, #0x04
      00BC6F C7 53 20         [ 1]  805 	ld	0x5320, a
      00BC72 81               [ 4]  806 	ret
      00BC73                        807 00102$:
                                    808 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 371: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
      00BC73 A4 FB            [ 1]  809 	and	a, #0xfb
      00BC75 C7 53 20         [ 1]  810 	ld	0x5320, a
                                    811 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 373: }
      00BC78 81               [ 4]  812 	ret
                                    813 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 383: void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
                                    814 ;	-----------------------------------------
                                    815 ;	 function TIM3_SelectOnePulseMode
                                    816 ;	-----------------------------------------
      00BC79                        817 _TIM3_SelectOnePulseMode:
                                    818 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 386: assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
      00BC79 7B 03            [ 1]  819 	ld	a, (0x03, sp)
      00BC7B 4A               [ 1]  820 	dec	a
      00BC7C 27 13            [ 1]  821 	jreq	00107$
      00BC7E 0D 03            [ 1]  822 	tnz	(0x03, sp)
      00BC80 27 0F            [ 1]  823 	jreq	00107$
      00BC82 4B 82            [ 1]  824 	push	#0x82
      00BC84 4B 01            [ 1]  825 	push	#0x01
      00BC86 5F               [ 1]  826 	clrw	x
      00BC87 89               [ 2]  827 	pushw	x
      00BC88 4B EC            [ 1]  828 	push	#<(___str_0+0)
      00BC8A 4B 81            [ 1]  829 	push	#((___str_0+0) >> 8)
      00BC8C CD 83 84         [ 4]  830 	call	_assert_failed
      00BC8F 5B 06            [ 2]  831 	addw	sp, #6
      00BC91                        832 00107$:
                                    833 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
      00BC91 C6 53 20         [ 1]  834 	ld	a, 0x5320
                                    835 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 389: if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
      00BC94 0D 03            [ 1]  836 	tnz	(0x03, sp)
      00BC96 27 06            [ 1]  837 	jreq	00102$
                                    838 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
      00BC98 AA 08            [ 1]  839 	or	a, #0x08
      00BC9A C7 53 20         [ 1]  840 	ld	0x5320, a
      00BC9D 81               [ 4]  841 	ret
      00BC9E                        842 00102$:
                                    843 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 395: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
      00BC9E A4 F7            [ 1]  844 	and	a, #0xf7
      00BCA0 C7 53 20         [ 1]  845 	ld	0x5320, a
                                    846 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 397: }
      00BCA3 81               [ 4]  847 	ret
                                    848 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 427: void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
                                    849 ;	-----------------------------------------
                                    850 ;	 function TIM3_PrescalerConfig
                                    851 ;	-----------------------------------------
      00BCA4                        852 _TIM3_PrescalerConfig:
                                    853 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 431: assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
      00BCA4 0D 04            [ 1]  854 	tnz	(0x04, sp)
      00BCA6 27 14            [ 1]  855 	jreq	00104$
      00BCA8 7B 04            [ 1]  856 	ld	a, (0x04, sp)
      00BCAA 4A               [ 1]  857 	dec	a
      00BCAB 27 0F            [ 1]  858 	jreq	00104$
      00BCAD 4B AF            [ 1]  859 	push	#0xaf
      00BCAF 4B 01            [ 1]  860 	push	#0x01
      00BCB1 5F               [ 1]  861 	clrw	x
      00BCB2 89               [ 2]  862 	pushw	x
      00BCB3 4B EC            [ 1]  863 	push	#<(___str_0+0)
      00BCB5 4B 81            [ 1]  864 	push	#((___str_0+0) >> 8)
      00BCB7 CD 83 84         [ 4]  865 	call	_assert_failed
      00BCBA 5B 06            [ 2]  866 	addw	sp, #6
      00BCBC                        867 00104$:
                                    868 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 432: assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
      00BCBC 0D 03            [ 1]  869 	tnz	(0x03, sp)
      00BCBE 27 68            [ 1]  870 	jreq	00109$
      00BCC0 7B 03            [ 1]  871 	ld	a, (0x03, sp)
      00BCC2 4A               [ 1]  872 	dec	a
      00BCC3 27 63            [ 1]  873 	jreq	00109$
      00BCC5 7B 03            [ 1]  874 	ld	a, (0x03, sp)
      00BCC7 A1 02            [ 1]  875 	cp	a, #0x02
      00BCC9 27 5D            [ 1]  876 	jreq	00109$
      00BCCB 7B 03            [ 1]  877 	ld	a, (0x03, sp)
      00BCCD A1 03            [ 1]  878 	cp	a, #0x03
      00BCCF 27 57            [ 1]  879 	jreq	00109$
      00BCD1 7B 03            [ 1]  880 	ld	a, (0x03, sp)
      00BCD3 A1 04            [ 1]  881 	cp	a, #0x04
      00BCD5 27 51            [ 1]  882 	jreq	00109$
      00BCD7 7B 03            [ 1]  883 	ld	a, (0x03, sp)
      00BCD9 A1 05            [ 1]  884 	cp	a, #0x05
      00BCDB 27 4B            [ 1]  885 	jreq	00109$
      00BCDD 7B 03            [ 1]  886 	ld	a, (0x03, sp)
      00BCDF A1 06            [ 1]  887 	cp	a, #0x06
      00BCE1 27 45            [ 1]  888 	jreq	00109$
      00BCE3 7B 03            [ 1]  889 	ld	a, (0x03, sp)
      00BCE5 A1 07            [ 1]  890 	cp	a, #0x07
      00BCE7 27 3F            [ 1]  891 	jreq	00109$
      00BCE9 7B 03            [ 1]  892 	ld	a, (0x03, sp)
      00BCEB A1 08            [ 1]  893 	cp	a, #0x08
      00BCED 27 39            [ 1]  894 	jreq	00109$
      00BCEF 7B 03            [ 1]  895 	ld	a, (0x03, sp)
      00BCF1 A1 09            [ 1]  896 	cp	a, #0x09
      00BCF3 27 33            [ 1]  897 	jreq	00109$
      00BCF5 7B 03            [ 1]  898 	ld	a, (0x03, sp)
      00BCF7 A1 0A            [ 1]  899 	cp	a, #0x0a
      00BCF9 27 2D            [ 1]  900 	jreq	00109$
      00BCFB 7B 03            [ 1]  901 	ld	a, (0x03, sp)
      00BCFD A1 0B            [ 1]  902 	cp	a, #0x0b
      00BCFF 27 27            [ 1]  903 	jreq	00109$
      00BD01 7B 03            [ 1]  904 	ld	a, (0x03, sp)
      00BD03 A1 0C            [ 1]  905 	cp	a, #0x0c
      00BD05 27 21            [ 1]  906 	jreq	00109$
      00BD07 7B 03            [ 1]  907 	ld	a, (0x03, sp)
      00BD09 A1 0D            [ 1]  908 	cp	a, #0x0d
      00BD0B 27 1B            [ 1]  909 	jreq	00109$
      00BD0D 7B 03            [ 1]  910 	ld	a, (0x03, sp)
      00BD0F A1 0E            [ 1]  911 	cp	a, #0x0e
      00BD11 27 15            [ 1]  912 	jreq	00109$
      00BD13 7B 03            [ 1]  913 	ld	a, (0x03, sp)
      00BD15 A1 0F            [ 1]  914 	cp	a, #0x0f
      00BD17 27 0F            [ 1]  915 	jreq	00109$
      00BD19 4B B0            [ 1]  916 	push	#0xb0
      00BD1B 4B 01            [ 1]  917 	push	#0x01
      00BD1D 5F               [ 1]  918 	clrw	x
      00BD1E 89               [ 2]  919 	pushw	x
      00BD1F 4B EC            [ 1]  920 	push	#<(___str_0+0)
      00BD21 4B 81            [ 1]  921 	push	#((___str_0+0) >> 8)
      00BD23 CD 83 84         [ 4]  922 	call	_assert_failed
      00BD26 5B 06            [ 2]  923 	addw	sp, #6
      00BD28                        924 00109$:
                                    925 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 435: TIM3->PSCR = (uint8_t)Prescaler;
      00BD28 AE 53 2A         [ 2]  926 	ldw	x, #0x532a
      00BD2B 7B 03            [ 1]  927 	ld	a, (0x03, sp)
      00BD2D F7               [ 1]  928 	ld	(x), a
                                    929 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 438: TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
      00BD2E AE 53 24         [ 2]  930 	ldw	x, #0x5324
      00BD31 7B 04            [ 1]  931 	ld	a, (0x04, sp)
      00BD33 F7               [ 1]  932 	ld	(x), a
                                    933 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 439: }
      00BD34 81               [ 4]  934 	ret
                                    935 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 450: void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
                                    936 ;	-----------------------------------------
                                    937 ;	 function TIM3_ForcedOC1Config
                                    938 ;	-----------------------------------------
      00BD35                        939 _TIM3_ForcedOC1Config:
                                    940 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 453: assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
      00BD35 7B 03            [ 1]  941 	ld	a, (0x03, sp)
      00BD37 A1 50            [ 1]  942 	cp	a, #0x50
      00BD39 27 15            [ 1]  943 	jreq	00104$
      00BD3B 7B 03            [ 1]  944 	ld	a, (0x03, sp)
      00BD3D A1 40            [ 1]  945 	cp	a, #0x40
      00BD3F 27 0F            [ 1]  946 	jreq	00104$
      00BD41 4B C5            [ 1]  947 	push	#0xc5
      00BD43 4B 01            [ 1]  948 	push	#0x01
      00BD45 5F               [ 1]  949 	clrw	x
      00BD46 89               [ 2]  950 	pushw	x
      00BD47 4B EC            [ 1]  951 	push	#<(___str_0+0)
      00BD49 4B 81            [ 1]  952 	push	#((___str_0+0) >> 8)
      00BD4B CD 83 84         [ 4]  953 	call	_assert_failed
      00BD4E 5B 06            [ 2]  954 	addw	sp, #6
      00BD50                        955 00104$:
                                    956 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 456: TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
      00BD50 C6 53 25         [ 1]  957 	ld	a, 0x5325
      00BD53 A4 8F            [ 1]  958 	and	a, #0x8f
      00BD55 1A 03            [ 1]  959 	or	a, (0x03, sp)
      00BD57 C7 53 25         [ 1]  960 	ld	0x5325, a
                                    961 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 457: }
      00BD5A 81               [ 4]  962 	ret
                                    963 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 468: void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
                                    964 ;	-----------------------------------------
                                    965 ;	 function TIM3_ForcedOC2Config
                                    966 ;	-----------------------------------------
      00BD5B                        967 _TIM3_ForcedOC2Config:
                                    968 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 471: assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
      00BD5B 7B 03            [ 1]  969 	ld	a, (0x03, sp)
      00BD5D A1 50            [ 1]  970 	cp	a, #0x50
      00BD5F 27 15            [ 1]  971 	jreq	00104$
      00BD61 7B 03            [ 1]  972 	ld	a, (0x03, sp)
      00BD63 A1 40            [ 1]  973 	cp	a, #0x40
      00BD65 27 0F            [ 1]  974 	jreq	00104$
      00BD67 4B D7            [ 1]  975 	push	#0xd7
      00BD69 4B 01            [ 1]  976 	push	#0x01
      00BD6B 5F               [ 1]  977 	clrw	x
      00BD6C 89               [ 2]  978 	pushw	x
      00BD6D 4B EC            [ 1]  979 	push	#<(___str_0+0)
      00BD6F 4B 81            [ 1]  980 	push	#((___str_0+0) >> 8)
      00BD71 CD 83 84         [ 4]  981 	call	_assert_failed
      00BD74 5B 06            [ 2]  982 	addw	sp, #6
      00BD76                        983 00104$:
                                    984 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 474: TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
      00BD76 C6 53 26         [ 1]  985 	ld	a, 0x5326
      00BD79 A4 8F            [ 1]  986 	and	a, #0x8f
      00BD7B 1A 03            [ 1]  987 	or	a, (0x03, sp)
      00BD7D C7 53 26         [ 1]  988 	ld	0x5326, a
                                    989 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 475: }
      00BD80 81               [ 4]  990 	ret
                                    991 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 483: void TIM3_ARRPreloadConfig(FunctionalState NewState)
                                    992 ;	-----------------------------------------
                                    993 ;	 function TIM3_ARRPreloadConfig
                                    994 ;	-----------------------------------------
      00BD81                        995 _TIM3_ARRPreloadConfig:
                                    996 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 486: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BD81 0D 03            [ 1]  997 	tnz	(0x03, sp)
      00BD83 27 14            [ 1]  998 	jreq	00107$
      00BD85 7B 03            [ 1]  999 	ld	a, (0x03, sp)
      00BD87 4A               [ 1] 1000 	dec	a
      00BD88 27 0F            [ 1] 1001 	jreq	00107$
      00BD8A 4B E6            [ 1] 1002 	push	#0xe6
      00BD8C 4B 01            [ 1] 1003 	push	#0x01
      00BD8E 5F               [ 1] 1004 	clrw	x
      00BD8F 89               [ 2] 1005 	pushw	x
      00BD90 4B EC            [ 1] 1006 	push	#<(___str_0+0)
      00BD92 4B 81            [ 1] 1007 	push	#((___str_0+0) >> 8)
      00BD94 CD 83 84         [ 4] 1008 	call	_assert_failed
      00BD97 5B 06            [ 2] 1009 	addw	sp, #6
      00BD99                       1010 00107$:
                                   1011 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
      00BD99 C6 53 20         [ 1] 1012 	ld	a, 0x5320
                                   1013 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 489: if (NewState != DISABLE)
      00BD9C 0D 03            [ 1] 1014 	tnz	(0x03, sp)
      00BD9E 27 06            [ 1] 1015 	jreq	00102$
                                   1016 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
      00BDA0 AA 80            [ 1] 1017 	or	a, #0x80
      00BDA2 C7 53 20         [ 1] 1018 	ld	0x5320, a
      00BDA5 81               [ 4] 1019 	ret
      00BDA6                       1020 00102$:
                                   1021 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 495: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
      00BDA6 A4 7F            [ 1] 1022 	and	a, #0x7f
      00BDA8 C7 53 20         [ 1] 1023 	ld	0x5320, a
                                   1024 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 497: }
      00BDAB 81               [ 4] 1025 	ret
                                   1026 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 505: void TIM3_OC1PreloadConfig(FunctionalState NewState)
                                   1027 ;	-----------------------------------------
                                   1028 ;	 function TIM3_OC1PreloadConfig
                                   1029 ;	-----------------------------------------
      00BDAC                       1030 _TIM3_OC1PreloadConfig:
                                   1031 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 508: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BDAC 0D 03            [ 1] 1032 	tnz	(0x03, sp)
      00BDAE 27 14            [ 1] 1033 	jreq	00107$
      00BDB0 7B 03            [ 1] 1034 	ld	a, (0x03, sp)
      00BDB2 4A               [ 1] 1035 	dec	a
      00BDB3 27 0F            [ 1] 1036 	jreq	00107$
      00BDB5 4B FC            [ 1] 1037 	push	#0xfc
      00BDB7 4B 01            [ 1] 1038 	push	#0x01
      00BDB9 5F               [ 1] 1039 	clrw	x
      00BDBA 89               [ 2] 1040 	pushw	x
      00BDBB 4B EC            [ 1] 1041 	push	#<(___str_0+0)
      00BDBD 4B 81            [ 1] 1042 	push	#((___str_0+0) >> 8)
      00BDBF CD 83 84         [ 4] 1043 	call	_assert_failed
      00BDC2 5B 06            [ 2] 1044 	addw	sp, #6
      00BDC4                       1045 00107$:
                                   1046 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
      00BDC4 C6 53 25         [ 1] 1047 	ld	a, 0x5325
                                   1048 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 511: if (NewState != DISABLE)
      00BDC7 0D 03            [ 1] 1049 	tnz	(0x03, sp)
      00BDC9 27 06            [ 1] 1050 	jreq	00102$
                                   1051 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
      00BDCB AA 08            [ 1] 1052 	or	a, #0x08
      00BDCD C7 53 25         [ 1] 1053 	ld	0x5325, a
      00BDD0 81               [ 4] 1054 	ret
      00BDD1                       1055 00102$:
                                   1056 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 517: TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
      00BDD1 A4 F7            [ 1] 1057 	and	a, #0xf7
      00BDD3 C7 53 25         [ 1] 1058 	ld	0x5325, a
                                   1059 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 519: }
      00BDD6 81               [ 4] 1060 	ret
                                   1061 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 527: void TIM3_OC2PreloadConfig(FunctionalState NewState)
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function TIM3_OC2PreloadConfig
                                   1064 ;	-----------------------------------------
      00BDD7                       1065 _TIM3_OC2PreloadConfig:
                                   1066 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 530: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BDD7 0D 03            [ 1] 1067 	tnz	(0x03, sp)
      00BDD9 27 14            [ 1] 1068 	jreq	00107$
      00BDDB 7B 03            [ 1] 1069 	ld	a, (0x03, sp)
      00BDDD 4A               [ 1] 1070 	dec	a
      00BDDE 27 0F            [ 1] 1071 	jreq	00107$
      00BDE0 4B 12            [ 1] 1072 	push	#0x12
      00BDE2 4B 02            [ 1] 1073 	push	#0x02
      00BDE4 5F               [ 1] 1074 	clrw	x
      00BDE5 89               [ 2] 1075 	pushw	x
      00BDE6 4B EC            [ 1] 1076 	push	#<(___str_0+0)
      00BDE8 4B 81            [ 1] 1077 	push	#((___str_0+0) >> 8)
      00BDEA CD 83 84         [ 4] 1078 	call	_assert_failed
      00BDED 5B 06            [ 2] 1079 	addw	sp, #6
      00BDEF                       1080 00107$:
                                   1081 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
      00BDEF C6 53 26         [ 1] 1082 	ld	a, 0x5326
                                   1083 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 533: if (NewState != DISABLE)
      00BDF2 0D 03            [ 1] 1084 	tnz	(0x03, sp)
      00BDF4 27 06            [ 1] 1085 	jreq	00102$
                                   1086 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
      00BDF6 AA 08            [ 1] 1087 	or	a, #0x08
      00BDF8 C7 53 26         [ 1] 1088 	ld	0x5326, a
      00BDFB 81               [ 4] 1089 	ret
      00BDFC                       1090 00102$:
                                   1091 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 539: TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
      00BDFC A4 F7            [ 1] 1092 	and	a, #0xf7
      00BDFE C7 53 26         [ 1] 1093 	ld	0x5326, a
                                   1094 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 541: }
      00BE01 81               [ 4] 1095 	ret
                                   1096 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 552: void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
                                   1097 ;	-----------------------------------------
                                   1098 ;	 function TIM3_GenerateEvent
                                   1099 ;	-----------------------------------------
      00BE02                       1100 _TIM3_GenerateEvent:
                                   1101 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 555: assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
      00BE02 0D 03            [ 1] 1102 	tnz	(0x03, sp)
      00BE04 26 0F            [ 1] 1103 	jrne	00104$
      00BE06 4B 2B            [ 1] 1104 	push	#0x2b
      00BE08 4B 02            [ 1] 1105 	push	#0x02
      00BE0A 5F               [ 1] 1106 	clrw	x
      00BE0B 89               [ 2] 1107 	pushw	x
      00BE0C 4B EC            [ 1] 1108 	push	#<(___str_0+0)
      00BE0E 4B 81            [ 1] 1109 	push	#((___str_0+0) >> 8)
      00BE10 CD 83 84         [ 4] 1110 	call	_assert_failed
      00BE13 5B 06            [ 2] 1111 	addw	sp, #6
      00BE15                       1112 00104$:
                                   1113 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 558: TIM3->EGR = (uint8_t)TIM3_EventSource;
      00BE15 AE 53 24         [ 2] 1114 	ldw	x, #0x5324
      00BE18 7B 03            [ 1] 1115 	ld	a, (0x03, sp)
      00BE1A F7               [ 1] 1116 	ld	(x), a
                                   1117 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 559: }
      00BE1B 81               [ 4] 1118 	ret
                                   1119 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 569: void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
                                   1120 ;	-----------------------------------------
                                   1121 ;	 function TIM3_OC1PolarityConfig
                                   1122 ;	-----------------------------------------
      00BE1C                       1123 _TIM3_OC1PolarityConfig:
                                   1124 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 572: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
      00BE1C 0D 03            [ 1] 1125 	tnz	(0x03, sp)
      00BE1E 27 15            [ 1] 1126 	jreq	00107$
      00BE20 7B 03            [ 1] 1127 	ld	a, (0x03, sp)
      00BE22 A1 22            [ 1] 1128 	cp	a, #0x22
      00BE24 27 0F            [ 1] 1129 	jreq	00107$
      00BE26 4B 3C            [ 1] 1130 	push	#0x3c
      00BE28 4B 02            [ 1] 1131 	push	#0x02
      00BE2A 5F               [ 1] 1132 	clrw	x
      00BE2B 89               [ 2] 1133 	pushw	x
      00BE2C 4B EC            [ 1] 1134 	push	#<(___str_0+0)
      00BE2E 4B 81            [ 1] 1135 	push	#((___str_0+0) >> 8)
      00BE30 CD 83 84         [ 4] 1136 	call	_assert_failed
      00BE33 5B 06            [ 2] 1137 	addw	sp, #6
      00BE35                       1138 00107$:
                                   1139 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      00BE35 C6 53 27         [ 1] 1140 	ld	a, 0x5327
                                   1141 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 575: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
      00BE38 0D 03            [ 1] 1142 	tnz	(0x03, sp)
      00BE3A 27 06            [ 1] 1143 	jreq	00102$
                                   1144 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      00BE3C AA 02            [ 1] 1145 	or	a, #0x02
      00BE3E C7 53 27         [ 1] 1146 	ld	0x5327, a
      00BE41 81               [ 4] 1147 	ret
      00BE42                       1148 00102$:
                                   1149 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 581: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
      00BE42 A4 FD            [ 1] 1150 	and	a, #0xfd
      00BE44 C7 53 27         [ 1] 1151 	ld	0x5327, a
                                   1152 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 583: }
      00BE47 81               [ 4] 1153 	ret
                                   1154 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 593: void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
                                   1155 ;	-----------------------------------------
                                   1156 ;	 function TIM3_OC2PolarityConfig
                                   1157 ;	-----------------------------------------
      00BE48                       1158 _TIM3_OC2PolarityConfig:
                                   1159 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 596: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
      00BE48 0D 03            [ 1] 1160 	tnz	(0x03, sp)
      00BE4A 27 15            [ 1] 1161 	jreq	00107$
      00BE4C 7B 03            [ 1] 1162 	ld	a, (0x03, sp)
      00BE4E A1 22            [ 1] 1163 	cp	a, #0x22
      00BE50 27 0F            [ 1] 1164 	jreq	00107$
      00BE52 4B 54            [ 1] 1165 	push	#0x54
      00BE54 4B 02            [ 1] 1166 	push	#0x02
      00BE56 5F               [ 1] 1167 	clrw	x
      00BE57 89               [ 2] 1168 	pushw	x
      00BE58 4B EC            [ 1] 1169 	push	#<(___str_0+0)
      00BE5A 4B 81            [ 1] 1170 	push	#((___str_0+0) >> 8)
      00BE5C CD 83 84         [ 4] 1171 	call	_assert_failed
      00BE5F 5B 06            [ 2] 1172 	addw	sp, #6
      00BE61                       1173 00107$:
                                   1174 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      00BE61 C6 53 27         [ 1] 1175 	ld	a, 0x5327
                                   1176 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 599: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
      00BE64 0D 03            [ 1] 1177 	tnz	(0x03, sp)
      00BE66 27 06            [ 1] 1178 	jreq	00102$
                                   1179 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      00BE68 AA 20            [ 1] 1180 	or	a, #0x20
      00BE6A C7 53 27         [ 1] 1181 	ld	0x5327, a
      00BE6D 81               [ 4] 1182 	ret
      00BE6E                       1183 00102$:
                                   1184 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 605: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
      00BE6E A4 DF            [ 1] 1185 	and	a, #0xdf
      00BE70 C7 53 27         [ 1] 1186 	ld	0x5327, a
                                   1187 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 607: }
      00BE73 81               [ 4] 1188 	ret
                                   1189 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 619: void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
                                   1190 ;	-----------------------------------------
                                   1191 ;	 function TIM3_CCxCmd
                                   1192 ;	-----------------------------------------
      00BE74                       1193 _TIM3_CCxCmd:
                                   1194 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 622: assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
      00BE74 0D 03            [ 1] 1195 	tnz	(0x03, sp)
      00BE76 27 14            [ 1] 1196 	jreq	00113$
      00BE78 7B 03            [ 1] 1197 	ld	a, (0x03, sp)
      00BE7A 4A               [ 1] 1198 	dec	a
      00BE7B 27 0F            [ 1] 1199 	jreq	00113$
      00BE7D 4B 6E            [ 1] 1200 	push	#0x6e
      00BE7F 4B 02            [ 1] 1201 	push	#0x02
      00BE81 5F               [ 1] 1202 	clrw	x
      00BE82 89               [ 2] 1203 	pushw	x
      00BE83 4B EC            [ 1] 1204 	push	#<(___str_0+0)
      00BE85 4B 81            [ 1] 1205 	push	#((___str_0+0) >> 8)
      00BE87 CD 83 84         [ 4] 1206 	call	_assert_failed
      00BE8A 5B 06            [ 2] 1207 	addw	sp, #6
      00BE8C                       1208 00113$:
                                   1209 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 623: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BE8C 0D 04            [ 1] 1210 	tnz	(0x04, sp)
      00BE8E 27 14            [ 1] 1211 	jreq	00118$
      00BE90 7B 04            [ 1] 1212 	ld	a, (0x04, sp)
      00BE92 4A               [ 1] 1213 	dec	a
      00BE93 27 0F            [ 1] 1214 	jreq	00118$
      00BE95 4B 6F            [ 1] 1215 	push	#0x6f
      00BE97 4B 02            [ 1] 1216 	push	#0x02
      00BE99 5F               [ 1] 1217 	clrw	x
      00BE9A 89               [ 2] 1218 	pushw	x
      00BE9B 4B EC            [ 1] 1219 	push	#<(___str_0+0)
      00BE9D 4B 81            [ 1] 1220 	push	#((___str_0+0) >> 8)
      00BE9F CD 83 84         [ 4] 1221 	call	_assert_failed
      00BEA2 5B 06            [ 2] 1222 	addw	sp, #6
      00BEA4                       1223 00118$:
                                   1224 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      00BEA4 C6 53 27         [ 1] 1225 	ld	a, 0x5327
                                   1226 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 625: if (TIM3_Channel == TIM3_CHANNEL_1)
      00BEA7 0D 03            [ 1] 1227 	tnz	(0x03, sp)
      00BEA9 26 10            [ 1] 1228 	jrne	00108$
                                   1229 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 628: if (NewState != DISABLE)
      00BEAB 0D 04            [ 1] 1230 	tnz	(0x04, sp)
      00BEAD 27 06            [ 1] 1231 	jreq	00102$
                                   1232 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      00BEAF AA 01            [ 1] 1233 	or	a, #0x01
      00BEB1 C7 53 27         [ 1] 1234 	ld	0x5327, a
      00BEB4 81               [ 4] 1235 	ret
      00BEB5                       1236 00102$:
                                   1237 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 634: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00BEB5 A4 FE            [ 1] 1238 	and	a, #0xfe
      00BEB7 C7 53 27         [ 1] 1239 	ld	0x5327, a
      00BEBA 81               [ 4] 1240 	ret
      00BEBB                       1241 00108$:
                                   1242 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 641: if (NewState != DISABLE)
      00BEBB 0D 04            [ 1] 1243 	tnz	(0x04, sp)
      00BEBD 27 06            [ 1] 1244 	jreq	00105$
                                   1245 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 643: TIM3->CCER1 |= TIM3_CCER1_CC2E;
      00BEBF AA 10            [ 1] 1246 	or	a, #0x10
      00BEC1 C7 53 27         [ 1] 1247 	ld	0x5327, a
      00BEC4 81               [ 4] 1248 	ret
      00BEC5                       1249 00105$:
                                   1250 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 647: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
      00BEC5 A4 EF            [ 1] 1251 	and	a, #0xef
      00BEC7 C7 53 27         [ 1] 1252 	ld	0x5327, a
                                   1253 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 650: }
      00BECA 81               [ 4] 1254 	ret
                                   1255 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 671: void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
                                   1256 ;	-----------------------------------------
                                   1257 ;	 function TIM3_SelectOCxM
                                   1258 ;	-----------------------------------------
      00BECB                       1259 _TIM3_SelectOCxM:
                                   1260 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 674: assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
      00BECB 0D 03            [ 1] 1261 	tnz	(0x03, sp)
      00BECD 27 14            [ 1] 1262 	jreq	00107$
      00BECF 7B 03            [ 1] 1263 	ld	a, (0x03, sp)
      00BED1 4A               [ 1] 1264 	dec	a
      00BED2 27 0F            [ 1] 1265 	jreq	00107$
      00BED4 4B A2            [ 1] 1266 	push	#0xa2
      00BED6 4B 02            [ 1] 1267 	push	#0x02
      00BED8 5F               [ 1] 1268 	clrw	x
      00BED9 89               [ 2] 1269 	pushw	x
      00BEDA 4B EC            [ 1] 1270 	push	#<(___str_0+0)
      00BEDC 4B 81            [ 1] 1271 	push	#((___str_0+0) >> 8)
      00BEDE CD 83 84         [ 4] 1272 	call	_assert_failed
      00BEE1 5B 06            [ 2] 1273 	addw	sp, #6
      00BEE3                       1274 00107$:
                                   1275 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 675: assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
      00BEE3 0D 04            [ 1] 1276 	tnz	(0x04, sp)
      00BEE5 27 39            [ 1] 1277 	jreq	00112$
      00BEE7 7B 04            [ 1] 1278 	ld	a, (0x04, sp)
      00BEE9 A1 10            [ 1] 1279 	cp	a, #0x10
      00BEEB 27 33            [ 1] 1280 	jreq	00112$
      00BEED 7B 04            [ 1] 1281 	ld	a, (0x04, sp)
      00BEEF A1 20            [ 1] 1282 	cp	a, #0x20
      00BEF1 27 2D            [ 1] 1283 	jreq	00112$
      00BEF3 7B 04            [ 1] 1284 	ld	a, (0x04, sp)
      00BEF5 A1 30            [ 1] 1285 	cp	a, #0x30
      00BEF7 27 27            [ 1] 1286 	jreq	00112$
      00BEF9 7B 04            [ 1] 1287 	ld	a, (0x04, sp)
      00BEFB A1 60            [ 1] 1288 	cp	a, #0x60
      00BEFD 27 21            [ 1] 1289 	jreq	00112$
      00BEFF 7B 04            [ 1] 1290 	ld	a, (0x04, sp)
      00BF01 A1 70            [ 1] 1291 	cp	a, #0x70
      00BF03 27 1B            [ 1] 1292 	jreq	00112$
      00BF05 7B 04            [ 1] 1293 	ld	a, (0x04, sp)
      00BF07 A1 50            [ 1] 1294 	cp	a, #0x50
      00BF09 27 15            [ 1] 1295 	jreq	00112$
      00BF0B 7B 04            [ 1] 1296 	ld	a, (0x04, sp)
      00BF0D A1 40            [ 1] 1297 	cp	a, #0x40
      00BF0F 27 0F            [ 1] 1298 	jreq	00112$
      00BF11 4B A3            [ 1] 1299 	push	#0xa3
      00BF13 4B 02            [ 1] 1300 	push	#0x02
      00BF15 5F               [ 1] 1301 	clrw	x
      00BF16 89               [ 2] 1302 	pushw	x
      00BF17 4B EC            [ 1] 1303 	push	#<(___str_0+0)
      00BF19 4B 81            [ 1] 1304 	push	#((___str_0+0) >> 8)
      00BF1B CD 83 84         [ 4] 1305 	call	_assert_failed
      00BF1E 5B 06            [ 2] 1306 	addw	sp, #6
      00BF20                       1307 00112$:
                                   1308 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00BF20 C6 53 27         [ 1] 1309 	ld	a, 0x5327
                                   1310 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 677: if (TIM3_Channel == TIM3_CHANNEL_1)
      00BF23 0D 03            [ 1] 1311 	tnz	(0x03, sp)
      00BF25 26 10            [ 1] 1312 	jrne	00102$
                                   1313 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00BF27 A4 FE            [ 1] 1314 	and	a, #0xfe
      00BF29 C7 53 27         [ 1] 1315 	ld	0x5327, a
                                   1316 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 683: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      00BF2C C6 53 25         [ 1] 1317 	ld	a, 0x5325
      00BF2F A4 8F            [ 1] 1318 	and	a, #0x8f
      00BF31 1A 04            [ 1] 1319 	or	a, (0x04, sp)
      00BF33 C7 53 25         [ 1] 1320 	ld	0x5325, a
      00BF36 81               [ 4] 1321 	ret
      00BF37                       1322 00102$:
                                   1323 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 688: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
      00BF37 A4 EF            [ 1] 1324 	and	a, #0xef
      00BF39 C7 53 27         [ 1] 1325 	ld	0x5327, a
                                   1326 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 691: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      00BF3C C6 53 26         [ 1] 1327 	ld	a, 0x5326
      00BF3F A4 8F            [ 1] 1328 	and	a, #0x8f
      00BF41 1A 04            [ 1] 1329 	or	a, (0x04, sp)
      00BF43 C7 53 26         [ 1] 1330 	ld	0x5326, a
                                   1331 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 693: }
      00BF46 81               [ 4] 1332 	ret
                                   1333 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 701: void TIM3_SetCounter(uint16_t Counter)
                                   1334 ;	-----------------------------------------
                                   1335 ;	 function TIM3_SetCounter
                                   1336 ;	-----------------------------------------
      00BF47                       1337 _TIM3_SetCounter:
                                   1338 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 704: TIM3->CNTRH = (uint8_t)(Counter >> 8);
      00BF47 7B 03            [ 1] 1339 	ld	a, (0x03, sp)
      00BF49 C7 53 28         [ 1] 1340 	ld	0x5328, a
                                   1341 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 705: TIM3->CNTRL = (uint8_t)(Counter);
      00BF4C 7B 04            [ 1] 1342 	ld	a, (0x04, sp)
      00BF4E C7 53 29         [ 1] 1343 	ld	0x5329, a
                                   1344 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 706: }
      00BF51 81               [ 4] 1345 	ret
                                   1346 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 714: void TIM3_SetAutoreload(uint16_t Autoreload)
                                   1347 ;	-----------------------------------------
                                   1348 ;	 function TIM3_SetAutoreload
                                   1349 ;	-----------------------------------------
      00BF52                       1350 _TIM3_SetAutoreload:
                                   1351 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 717: TIM3->ARRH = (uint8_t)(Autoreload >> 8);
      00BF52 7B 03            [ 1] 1352 	ld	a, (0x03, sp)
      00BF54 C7 53 2B         [ 1] 1353 	ld	0x532b, a
                                   1354 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 718: TIM3->ARRL = (uint8_t)(Autoreload);
      00BF57 7B 04            [ 1] 1355 	ld	a, (0x04, sp)
      00BF59 C7 53 2C         [ 1] 1356 	ld	0x532c, a
                                   1357 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 719: }
      00BF5C 81               [ 4] 1358 	ret
                                   1359 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 727: void TIM3_SetCompare1(uint16_t Compare1)
                                   1360 ;	-----------------------------------------
                                   1361 ;	 function TIM3_SetCompare1
                                   1362 ;	-----------------------------------------
      00BF5D                       1363 _TIM3_SetCompare1:
                                   1364 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 730: TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
      00BF5D 7B 03            [ 1] 1365 	ld	a, (0x03, sp)
      00BF5F C7 53 2D         [ 1] 1366 	ld	0x532d, a
                                   1367 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 731: TIM3->CCR1L = (uint8_t)(Compare1);
      00BF62 7B 04            [ 1] 1368 	ld	a, (0x04, sp)
      00BF64 C7 53 2E         [ 1] 1369 	ld	0x532e, a
                                   1370 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 732: }
      00BF67 81               [ 4] 1371 	ret
                                   1372 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 740: void TIM3_SetCompare2(uint16_t Compare2)
                                   1373 ;	-----------------------------------------
                                   1374 ;	 function TIM3_SetCompare2
                                   1375 ;	-----------------------------------------
      00BF68                       1376 _TIM3_SetCompare2:
                                   1377 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 743: TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
      00BF68 7B 03            [ 1] 1378 	ld	a, (0x03, sp)
      00BF6A C7 53 2F         [ 1] 1379 	ld	0x532f, a
                                   1380 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 744: TIM3->CCR2L = (uint8_t)(Compare2);
      00BF6D 7B 04            [ 1] 1381 	ld	a, (0x04, sp)
      00BF6F C7 53 30         [ 1] 1382 	ld	0x5330, a
                                   1383 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 745: }
      00BF72 81               [ 4] 1384 	ret
                                   1385 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 757: void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
                                   1386 ;	-----------------------------------------
                                   1387 ;	 function TIM3_SetIC1Prescaler
                                   1388 ;	-----------------------------------------
      00BF73                       1389 _TIM3_SetIC1Prescaler:
                                   1390 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 760: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
      00BF73 0D 03            [ 1] 1391 	tnz	(0x03, sp)
      00BF75 27 21            [ 1] 1392 	jreq	00104$
      00BF77 7B 03            [ 1] 1393 	ld	a, (0x03, sp)
      00BF79 A1 04            [ 1] 1394 	cp	a, #0x04
      00BF7B 27 1B            [ 1] 1395 	jreq	00104$
      00BF7D 7B 03            [ 1] 1396 	ld	a, (0x03, sp)
      00BF7F A1 08            [ 1] 1397 	cp	a, #0x08
      00BF81 27 15            [ 1] 1398 	jreq	00104$
      00BF83 7B 03            [ 1] 1399 	ld	a, (0x03, sp)
      00BF85 A1 0C            [ 1] 1400 	cp	a, #0x0c
      00BF87 27 0F            [ 1] 1401 	jreq	00104$
      00BF89 4B F8            [ 1] 1402 	push	#0xf8
      00BF8B 4B 02            [ 1] 1403 	push	#0x02
      00BF8D 5F               [ 1] 1404 	clrw	x
      00BF8E 89               [ 2] 1405 	pushw	x
      00BF8F 4B EC            [ 1] 1406 	push	#<(___str_0+0)
      00BF91 4B 81            [ 1] 1407 	push	#((___str_0+0) >> 8)
      00BF93 CD 83 84         [ 4] 1408 	call	_assert_failed
      00BF96 5B 06            [ 2] 1409 	addw	sp, #6
      00BF98                       1410 00104$:
                                   1411 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 763: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
      00BF98 C6 53 25         [ 1] 1412 	ld	a, 0x5325
      00BF9B A4 F3            [ 1] 1413 	and	a, #0xf3
      00BF9D 1A 03            [ 1] 1414 	or	a, (0x03, sp)
      00BF9F C7 53 25         [ 1] 1415 	ld	0x5325, a
                                   1416 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 764: }
      00BFA2 81               [ 4] 1417 	ret
                                   1418 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 776: void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
                                   1419 ;	-----------------------------------------
                                   1420 ;	 function TIM3_SetIC2Prescaler
                                   1421 ;	-----------------------------------------
      00BFA3                       1422 _TIM3_SetIC2Prescaler:
                                   1423 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 779: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
      00BFA3 0D 03            [ 1] 1424 	tnz	(0x03, sp)
      00BFA5 27 21            [ 1] 1425 	jreq	00104$
      00BFA7 7B 03            [ 1] 1426 	ld	a, (0x03, sp)
      00BFA9 A1 04            [ 1] 1427 	cp	a, #0x04
      00BFAB 27 1B            [ 1] 1428 	jreq	00104$
      00BFAD 7B 03            [ 1] 1429 	ld	a, (0x03, sp)
      00BFAF A1 08            [ 1] 1430 	cp	a, #0x08
      00BFB1 27 15            [ 1] 1431 	jreq	00104$
      00BFB3 7B 03            [ 1] 1432 	ld	a, (0x03, sp)
      00BFB5 A1 0C            [ 1] 1433 	cp	a, #0x0c
      00BFB7 27 0F            [ 1] 1434 	jreq	00104$
      00BFB9 4B 0B            [ 1] 1435 	push	#0x0b
      00BFBB 4B 03            [ 1] 1436 	push	#0x03
      00BFBD 5F               [ 1] 1437 	clrw	x
      00BFBE 89               [ 2] 1438 	pushw	x
      00BFBF 4B EC            [ 1] 1439 	push	#<(___str_0+0)
      00BFC1 4B 81            [ 1] 1440 	push	#((___str_0+0) >> 8)
      00BFC3 CD 83 84         [ 4] 1441 	call	_assert_failed
      00BFC6 5B 06            [ 2] 1442 	addw	sp, #6
      00BFC8                       1443 00104$:
                                   1444 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 782: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
      00BFC8 C6 53 26         [ 1] 1445 	ld	a, 0x5326
      00BFCB A4 F3            [ 1] 1446 	and	a, #0xf3
      00BFCD 1A 03            [ 1] 1447 	or	a, (0x03, sp)
      00BFCF C7 53 26         [ 1] 1448 	ld	0x5326, a
                                   1449 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 783: }
      00BFD2 81               [ 4] 1450 	ret
                                   1451 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 790: uint16_t TIM3_GetCapture1(void)
                                   1452 ;	-----------------------------------------
                                   1453 ;	 function TIM3_GetCapture1
                                   1454 ;	-----------------------------------------
      00BFD3                       1455 _TIM3_GetCapture1:
      00BFD3 89               [ 2] 1456 	pushw	x
                                   1457 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 796: tmpccr1h = TIM3->CCR1H;
      00BFD4 C6 53 2D         [ 1] 1458 	ld	a, 0x532d
      00BFD7 95               [ 1] 1459 	ld	xh, a
                                   1460 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 797: tmpccr1l = TIM3->CCR1L;
      00BFD8 C6 53 2E         [ 1] 1461 	ld	a, 0x532e
                                   1462 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 799: tmpccr1 = (uint16_t)(tmpccr1l);
      00BFDB 97               [ 1] 1463 	ld	xl, a
      00BFDC 4F               [ 1] 1464 	clr	a
                                   1465 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 800: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      00BFDD 0F 02            [ 1] 1466 	clr	(0x02, sp)
      00BFDF 89               [ 2] 1467 	pushw	x
      00BFE0 1A 01            [ 1] 1468 	or	a, (1, sp)
      00BFE2 85               [ 2] 1469 	popw	x
      00BFE3 01               [ 1] 1470 	rrwa	x
      00BFE4 1A 02            [ 1] 1471 	or	a, (0x02, sp)
      00BFE6 97               [ 1] 1472 	ld	xl, a
                                   1473 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 802: return (uint16_t)tmpccr1;
                                   1474 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 803: }
      00BFE7 5B 02            [ 2] 1475 	addw	sp, #2
      00BFE9 81               [ 4] 1476 	ret
                                   1477 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 810: uint16_t TIM3_GetCapture2(void)
                                   1478 ;	-----------------------------------------
                                   1479 ;	 function TIM3_GetCapture2
                                   1480 ;	-----------------------------------------
      00BFEA                       1481 _TIM3_GetCapture2:
      00BFEA 89               [ 2] 1482 	pushw	x
                                   1483 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 816: tmpccr2h = TIM3->CCR2H;
      00BFEB C6 53 2F         [ 1] 1484 	ld	a, 0x532f
      00BFEE 95               [ 1] 1485 	ld	xh, a
                                   1486 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 817: tmpccr2l = TIM3->CCR2L;
      00BFEF C6 53 30         [ 1] 1487 	ld	a, 0x5330
                                   1488 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 819: tmpccr2 = (uint16_t)(tmpccr2l);
      00BFF2 97               [ 1] 1489 	ld	xl, a
      00BFF3 4F               [ 1] 1490 	clr	a
                                   1491 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 820: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      00BFF4 0F 02            [ 1] 1492 	clr	(0x02, sp)
      00BFF6 89               [ 2] 1493 	pushw	x
      00BFF7 1A 01            [ 1] 1494 	or	a, (1, sp)
      00BFF9 85               [ 2] 1495 	popw	x
      00BFFA 01               [ 1] 1496 	rrwa	x
      00BFFB 1A 02            [ 1] 1497 	or	a, (0x02, sp)
      00BFFD 97               [ 1] 1498 	ld	xl, a
                                   1499 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 822: return (uint16_t)tmpccr2;
                                   1500 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 823: }
      00BFFE 5B 02            [ 2] 1501 	addw	sp, #2
      00C000 81               [ 4] 1502 	ret
                                   1503 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 830: uint16_t TIM3_GetCounter(void)
                                   1504 ;	-----------------------------------------
                                   1505 ;	 function TIM3_GetCounter
                                   1506 ;	-----------------------------------------
      00C001                       1507 _TIM3_GetCounter:
      00C001 52 04            [ 2] 1508 	sub	sp, #4
                                   1509 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 834: tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
      00C003 C6 53 28         [ 1] 1510 	ld	a, 0x5328
      00C006 5F               [ 1] 1511 	clrw	x
      00C007 95               [ 1] 1512 	ld	xh, a
      00C008 4F               [ 1] 1513 	clr	a
      00C009 6B 02            [ 1] 1514 	ld	(0x02, sp), a
                                   1515 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 836: return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
      00C00B C6 53 29         [ 1] 1516 	ld	a, 0x5329
      00C00E 0F 03            [ 1] 1517 	clr	(0x03, sp)
      00C010 1A 02            [ 1] 1518 	or	a, (0x02, sp)
      00C012 02               [ 1] 1519 	rlwa	x
      00C013 1A 03            [ 1] 1520 	or	a, (0x03, sp)
      00C015 95               [ 1] 1521 	ld	xh, a
                                   1522 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 837: }
      00C016 5B 04            [ 2] 1523 	addw	sp, #4
      00C018 81               [ 4] 1524 	ret
                                   1525 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 844: TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
                                   1526 ;	-----------------------------------------
                                   1527 ;	 function TIM3_GetPrescaler
                                   1528 ;	-----------------------------------------
      00C019                       1529 _TIM3_GetPrescaler:
                                   1530 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 847: return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
      00C019 C6 53 2A         [ 1] 1531 	ld	a, 0x532a
                                   1532 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 848: }
      00C01C 81               [ 4] 1533 	ret
                                   1534 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 861: FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
                                   1535 ;	-----------------------------------------
                                   1536 ;	 function TIM3_GetFlagStatus
                                   1537 ;	-----------------------------------------
      00C01D                       1538 _TIM3_GetFlagStatus:
      00C01D 88               [ 1] 1539 	push	a
                                   1540 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 867: assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
      00C01E 1E 04            [ 2] 1541 	ldw	x, (0x04, sp)
      00C020 A3 00 01         [ 2] 1542 	cpw	x, #0x0001
      00C023 27 27            [ 1] 1543 	jreq	00107$
      00C025 A3 00 02         [ 2] 1544 	cpw	x, #0x0002
      00C028 27 22            [ 1] 1545 	jreq	00107$
      00C02A A3 00 04         [ 2] 1546 	cpw	x, #0x0004
      00C02D 27 1D            [ 1] 1547 	jreq	00107$
      00C02F A3 02 00         [ 2] 1548 	cpw	x, #0x0200
      00C032 27 18            [ 1] 1549 	jreq	00107$
      00C034 A3 04 00         [ 2] 1550 	cpw	x, #0x0400
      00C037 27 13            [ 1] 1551 	jreq	00107$
      00C039 89               [ 2] 1552 	pushw	x
      00C03A 4B 63            [ 1] 1553 	push	#0x63
      00C03C 4B 03            [ 1] 1554 	push	#0x03
      00C03E 4B 00            [ 1] 1555 	push	#0x00
      00C040 4B 00            [ 1] 1556 	push	#0x00
      00C042 4B EC            [ 1] 1557 	push	#<(___str_0+0)
      00C044 4B 81            [ 1] 1558 	push	#((___str_0+0) >> 8)
      00C046 CD 83 84         [ 4] 1559 	call	_assert_failed
      00C049 5B 06            [ 2] 1560 	addw	sp, #6
      00C04B 85               [ 2] 1561 	popw	x
      00C04C                       1562 00107$:
                                   1563 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 869: tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
      00C04C C6 53 22         [ 1] 1564 	ld	a, 0x5322
      00C04F 6B 01            [ 1] 1565 	ld	(0x01, sp), a
      00C051 7B 05            [ 1] 1566 	ld	a, (0x05, sp)
      00C053 14 01            [ 1] 1567 	and	a, (0x01, sp)
      00C055 6B 01            [ 1] 1568 	ld	(0x01, sp), a
                                   1569 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 870: tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
                                   1570 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 872: if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
      00C057 C6 53 23         [ 1] 1571 	ld	a, 0x5323
      00C05A 89               [ 2] 1572 	pushw	x
      00C05B 14 01            [ 1] 1573 	and	a, (1, sp)
      00C05D 85               [ 2] 1574 	popw	x
      00C05E 1A 01            [ 1] 1575 	or	a, (0x01, sp)
      00C060 27 03            [ 1] 1576 	jreq	00102$
                                   1577 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 874: bitstatus = SET;
      00C062 A6 01            [ 1] 1578 	ld	a, #0x01
                                   1579 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 878: bitstatus = RESET;
      00C064 21                    1580 	.byte 0x21
      00C065                       1581 00102$:
      00C065 4F               [ 1] 1582 	clr	a
      00C066                       1583 00103$:
                                   1584 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 880: return (FlagStatus)bitstatus;
                                   1585 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 881: }
      00C066 5B 01            [ 2] 1586 	addw	sp, #1
      00C068 81               [ 4] 1587 	ret
                                   1588 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 894: void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
                                   1589 ;	-----------------------------------------
                                   1590 ;	 function TIM3_ClearFlag
                                   1591 ;	-----------------------------------------
      00C069                       1592 _TIM3_ClearFlag:
      00C069 52 04            [ 2] 1593 	sub	sp, #4
                                   1594 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 897: assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
      00C06B 1E 07            [ 2] 1595 	ldw	x, (0x07, sp)
      00C06D 1F 01            [ 2] 1596 	ldw	(0x01, sp), x
      00C06F 9F               [ 1] 1597 	ld	a, xl
      00C070 A4 F8            [ 1] 1598 	and	a, #0xf8
      00C072 6B 04            [ 1] 1599 	ld	(0x04, sp), a
      00C074 9E               [ 1] 1600 	ld	a, xh
      00C075 A4 F9            [ 1] 1601 	and	a, #0xf9
      00C077 6B 03            [ 1] 1602 	ld	(0x03, sp), a
      00C079 16 03            [ 2] 1603 	ldw	y, (0x03, sp)
      00C07B 26 04            [ 1] 1604 	jrne	00103$
      00C07D 16 01            [ 2] 1605 	ldw	y, (0x01, sp)
      00C07F 26 13            [ 1] 1606 	jrne	00104$
      00C081                       1607 00103$:
      00C081 89               [ 2] 1608 	pushw	x
      00C082 4B 81            [ 1] 1609 	push	#0x81
      00C084 4B 03            [ 1] 1610 	push	#0x03
      00C086 4B 00            [ 1] 1611 	push	#0x00
      00C088 4B 00            [ 1] 1612 	push	#0x00
      00C08A 4B EC            [ 1] 1613 	push	#<(___str_0+0)
      00C08C 4B 81            [ 1] 1614 	push	#((___str_0+0) >> 8)
      00C08E CD 83 84         [ 4] 1615 	call	_assert_failed
      00C091 5B 06            [ 2] 1616 	addw	sp, #6
      00C093 85               [ 2] 1617 	popw	x
      00C094                       1618 00104$:
                                   1619 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 900: TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
      00C094 9F               [ 1] 1620 	ld	a, xl
      00C095 43               [ 1] 1621 	cpl	a
      00C096 C7 53 22         [ 1] 1622 	ld	0x5322, a
                                   1623 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 901: TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
      00C099 7B 01            [ 1] 1624 	ld	a, (0x01, sp)
      00C09B 43               [ 1] 1625 	cpl	a
      00C09C C7 53 23         [ 1] 1626 	ld	0x5323, a
                                   1627 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 902: }
      00C09F 5B 04            [ 2] 1628 	addw	sp, #4
      00C0A1 81               [ 4] 1629 	ret
                                   1630 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 913: ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
                                   1631 ;	-----------------------------------------
                                   1632 ;	 function TIM3_GetITStatus
                                   1633 ;	-----------------------------------------
      00C0A2                       1634 _TIM3_GetITStatus:
      00C0A2 88               [ 1] 1635 	push	a
                                   1636 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 919: assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
      00C0A3 7B 04            [ 1] 1637 	ld	a, (0x04, sp)
      00C0A5 4A               [ 1] 1638 	dec	a
      00C0A6 27 1B            [ 1] 1639 	jreq	00108$
      00C0A8 7B 04            [ 1] 1640 	ld	a, (0x04, sp)
      00C0AA A1 02            [ 1] 1641 	cp	a, #0x02
      00C0AC 27 15            [ 1] 1642 	jreq	00108$
      00C0AE 7B 04            [ 1] 1643 	ld	a, (0x04, sp)
      00C0B0 A1 04            [ 1] 1644 	cp	a, #0x04
      00C0B2 27 0F            [ 1] 1645 	jreq	00108$
      00C0B4 4B 97            [ 1] 1646 	push	#0x97
      00C0B6 4B 03            [ 1] 1647 	push	#0x03
      00C0B8 5F               [ 1] 1648 	clrw	x
      00C0B9 89               [ 2] 1649 	pushw	x
      00C0BA 4B EC            [ 1] 1650 	push	#<(___str_0+0)
      00C0BC 4B 81            [ 1] 1651 	push	#((___str_0+0) >> 8)
      00C0BE CD 83 84         [ 4] 1652 	call	_assert_failed
      00C0C1 5B 06            [ 2] 1653 	addw	sp, #6
      00C0C3                       1654 00108$:
                                   1655 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 921: TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
      00C0C3 C6 53 22         [ 1] 1656 	ld	a, 0x5322
      00C0C6 14 04            [ 1] 1657 	and	a, (0x04, sp)
      00C0C8 6B 01            [ 1] 1658 	ld	(0x01, sp), a
                                   1659 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 923: TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
      00C0CA C6 53 21         [ 1] 1660 	ld	a, 0x5321
      00C0CD 14 04            [ 1] 1661 	and	a, (0x04, sp)
                                   1662 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 925: if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
      00C0CF 0D 01            [ 1] 1663 	tnz	(0x01, sp)
      00C0D1 27 06            [ 1] 1664 	jreq	00102$
      00C0D3 4D               [ 1] 1665 	tnz	a
      00C0D4 27 03            [ 1] 1666 	jreq	00102$
                                   1667 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 927: bitstatus = SET;
      00C0D6 A6 01            [ 1] 1668 	ld	a, #0x01
                                   1669 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 931: bitstatus = RESET;
      00C0D8 21                    1670 	.byte 0x21
      00C0D9                       1671 00102$:
      00C0D9 4F               [ 1] 1672 	clr	a
      00C0DA                       1673 00103$:
                                   1674 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 933: return (ITStatus)(bitstatus);
                                   1675 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 934: }
      00C0DA 5B 01            [ 2] 1676 	addw	sp, #1
      00C0DC 81               [ 4] 1677 	ret
                                   1678 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 945: void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
                                   1679 ;	-----------------------------------------
                                   1680 ;	 function TIM3_ClearITPendingBit
                                   1681 ;	-----------------------------------------
      00C0DD                       1682 _TIM3_ClearITPendingBit:
                                   1683 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 948: assert_param(IS_TIM3_IT_OK(TIM3_IT));
      00C0DD 0D 03            [ 1] 1684 	tnz	(0x03, sp)
      00C0DF 27 06            [ 1] 1685 	jreq	00103$
      00C0E1 7B 03            [ 1] 1686 	ld	a, (0x03, sp)
      00C0E3 A1 07            [ 1] 1687 	cp	a, #0x07
      00C0E5 23 0F            [ 2] 1688 	jrule	00104$
      00C0E7                       1689 00103$:
      00C0E7 4B B4            [ 1] 1690 	push	#0xb4
      00C0E9 4B 03            [ 1] 1691 	push	#0x03
      00C0EB 5F               [ 1] 1692 	clrw	x
      00C0EC 89               [ 2] 1693 	pushw	x
      00C0ED 4B EC            [ 1] 1694 	push	#<(___str_0+0)
      00C0EF 4B 81            [ 1] 1695 	push	#((___str_0+0) >> 8)
      00C0F1 CD 83 84         [ 4] 1696 	call	_assert_failed
      00C0F4 5B 06            [ 2] 1697 	addw	sp, #6
      00C0F6                       1698 00104$:
                                   1699 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 951: TIM3->SR1 = (uint8_t)(~TIM3_IT);
      00C0F6 7B 03            [ 1] 1700 	ld	a, (0x03, sp)
      00C0F8 43               [ 1] 1701 	cpl	a
      00C0F9 C7 53 22         [ 1] 1702 	ld	0x5322, a
                                   1703 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 952: }
      00C0FC 81               [ 4] 1704 	ret
                                   1705 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 970: static void TI1_Config(uint8_t TIM3_ICPolarity,
                                   1706 ;	-----------------------------------------
                                   1707 ;	 function TI1_Config
                                   1708 ;	-----------------------------------------
      00C0FD                       1709 _TI1_Config:
      00C0FD 88               [ 1] 1710 	push	a
                                   1711 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00C0FE 72 11 53 27      [ 1] 1712 	bres	21287, #0
                                   1713 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 978: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
      00C102 C6 53 25         [ 1] 1714 	ld	a, 0x5325
      00C105 A4 0C            [ 1] 1715 	and	a, #0x0c
      00C107 6B 01            [ 1] 1716 	ld	(0x01, sp), a
      00C109 7B 06            [ 1] 1717 	ld	a, (0x06, sp)
      00C10B 4E               [ 1] 1718 	swap	a
      00C10C A4 F0            [ 1] 1719 	and	a, #0xf0
      00C10E 1A 05            [ 1] 1720 	or	a, (0x05, sp)
      00C110 1A 01            [ 1] 1721 	or	a, (0x01, sp)
      00C112 C7 53 25         [ 1] 1722 	ld	0x5325, a
                                   1723 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00C115 C6 53 27         [ 1] 1724 	ld	a, 0x5327
                                   1725 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 981: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
      00C118 0D 04            [ 1] 1726 	tnz	(0x04, sp)
      00C11A 27 07            [ 1] 1727 	jreq	00102$
                                   1728 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 983: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      00C11C AA 02            [ 1] 1729 	or	a, #0x02
      00C11E C7 53 27         [ 1] 1730 	ld	0x5327, a
      00C121 20 05            [ 2] 1731 	jra	00103$
      00C123                       1732 00102$:
                                   1733 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 987: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
      00C123 A4 FD            [ 1] 1734 	and	a, #0xfd
      00C125 C7 53 27         [ 1] 1735 	ld	0x5327, a
      00C128                       1736 00103$:
                                   1737 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 990: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      00C128 72 10 53 27      [ 1] 1738 	bset	21287, #0
                                   1739 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 991: }
      00C12C 84               [ 1] 1740 	pop	a
      00C12D 81               [ 4] 1741 	ret
                                   1742 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1009: static void TI2_Config(uint8_t TIM3_ICPolarity,
                                   1743 ;	-----------------------------------------
                                   1744 ;	 function TI2_Config
                                   1745 ;	-----------------------------------------
      00C12E                       1746 _TI2_Config:
      00C12E 88               [ 1] 1747 	push	a
                                   1748 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
      00C12F 72 19 53 27      [ 1] 1749 	bres	21287, #4
                                   1750 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1017: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
      00C133 C6 53 26         [ 1] 1751 	ld	a, 0x5326
      00C136 A4 0C            [ 1] 1752 	and	a, #0x0c
      00C138 6B 01            [ 1] 1753 	ld	(0x01, sp), a
                                   1754 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1019: ((uint8_t)( TIM3_ICFilter << 4))));
      00C13A 7B 06            [ 1] 1755 	ld	a, (0x06, sp)
      00C13C 4E               [ 1] 1756 	swap	a
      00C13D A4 F0            [ 1] 1757 	and	a, #0xf0
      00C13F 1A 05            [ 1] 1758 	or	a, (0x05, sp)
      00C141 1A 01            [ 1] 1759 	or	a, (0x01, sp)
      00C143 C7 53 26         [ 1] 1760 	ld	0x5326, a
                                   1761 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
      00C146 C6 53 27         [ 1] 1762 	ld	a, 0x5327
                                   1763 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1022: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
      00C149 0D 04            [ 1] 1764 	tnz	(0x04, sp)
      00C14B 27 07            [ 1] 1765 	jreq	00102$
                                   1766 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1024: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      00C14D AA 20            [ 1] 1767 	or	a, #0x20
      00C14F C7 53 27         [ 1] 1768 	ld	0x5327, a
      00C152 20 05            [ 2] 1769 	jra	00103$
      00C154                       1770 00102$:
                                   1771 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1028: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
      00C154 A4 DF            [ 1] 1772 	and	a, #0xdf
      00C156 C7 53 27         [ 1] 1773 	ld	0x5327, a
      00C159                       1774 00103$:
                                   1775 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1032: TIM3->CCER1 |= TIM3_CCER1_CC2E;
      00C159 72 18 53 27      [ 1] 1776 	bset	21287, #4
                                   1777 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim3.c: 1033: }
      00C15D 84               [ 1] 1778 	pop	a
      00C15E 81               [ 4] 1779 	ret
                                   1780 	.area CODE
                                   1781 	.area CONST
                                   1782 	.area CONST
      0081EC                       1783 ___str_0:
      0081EC 2E 2E 2F 2E 2E 2F 2F  1784 	.ascii "../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_ti"
             53 74 64 50 65 72 69
             70 68 5F 44 72 69 76
             65 72 2F 53 54 4D 38
             53 5F 53 74 64 50 65
             72 69 70 68 5F 44 72
             69 76 65 72 2F 2F 73
             72 63 2F 73 74 6D 38
             73 5F 74 69
      008228 6D 33 2E 63           1785 	.ascii "m3.c"
      00822C 00                    1786 	.db 0x00
                                   1787 	.area CODE
                                   1788 	.area INITIALIZER
                                   1789 	.area CABS (ABS)
