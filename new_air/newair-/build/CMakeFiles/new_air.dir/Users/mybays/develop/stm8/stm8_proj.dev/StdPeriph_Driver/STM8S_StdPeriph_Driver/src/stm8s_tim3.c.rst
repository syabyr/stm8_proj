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
                                     85 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 51: void TIM3_DeInit(void)
                                     86 ;	-----------------------------------------
                                     87 ;	 function TIM3_DeInit
                                     88 ;	-----------------------------------------
      00A852                         89 _TIM3_DeInit:
                                     90 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 53: TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
      00A852 35 00 53 20      [ 1]   91 	mov	0x5320+0, #0x00
                                     92 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 54: TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
      00A856 35 00 53 21      [ 1]   93 	mov	0x5321+0, #0x00
                                     94 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 55: TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
      00A85A 35 00 53 23      [ 1]   95 	mov	0x5323+0, #0x00
                                     96 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 58: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
      00A85E 35 00 53 27      [ 1]   97 	mov	0x5327+0, #0x00
                                     98 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 61: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
      00A862 35 00 53 27      [ 1]   99 	mov	0x5327+0, #0x00
                                    100 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 62: TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
      00A866 35 00 53 25      [ 1]  101 	mov	0x5325+0, #0x00
                                    102 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 63: TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
      00A86A 35 00 53 26      [ 1]  103 	mov	0x5326+0, #0x00
                                    104 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 64: TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
      00A86E 35 00 53 28      [ 1]  105 	mov	0x5328+0, #0x00
                                    106 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 65: TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
      00A872 35 00 53 29      [ 1]  107 	mov	0x5329+0, #0x00
                                    108 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 66: TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
      00A876 35 00 53 2A      [ 1]  109 	mov	0x532a+0, #0x00
                                    110 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 67: TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
      00A87A 35 FF 53 2B      [ 1]  111 	mov	0x532b+0, #0xff
                                    112 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 68: TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
      00A87E 35 FF 53 2C      [ 1]  113 	mov	0x532c+0, #0xff
                                    114 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 69: TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
      00A882 35 00 53 2D      [ 1]  115 	mov	0x532d+0, #0x00
                                    116 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 70: TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
      00A886 35 00 53 2E      [ 1]  117 	mov	0x532e+0, #0x00
                                    118 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 71: TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
      00A88A 35 00 53 2F      [ 1]  119 	mov	0x532f+0, #0x00
                                    120 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 72: TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
      00A88E 35 00 53 30      [ 1]  121 	mov	0x5330+0, #0x00
                                    122 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 73: TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
      00A892 35 00 53 22      [ 1]  123 	mov	0x5322+0, #0x00
                                    124 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 74: }
      00A896 81               [ 4]  125 	ret
                                    126 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 82: void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
                                    127 ;	-----------------------------------------
                                    128 ;	 function TIM3_TimeBaseInit
                                    129 ;	-----------------------------------------
      00A897                        130 _TIM3_TimeBaseInit:
                                    131 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 86: TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
      00A897 AE 53 2A         [ 2]  132 	ldw	x, #0x532a
      00A89A 7B 03            [ 1]  133 	ld	a, (0x03, sp)
      00A89C F7               [ 1]  134 	ld	(x), a
                                    135 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 88: TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
      00A89D 7B 04            [ 1]  136 	ld	a, (0x04, sp)
      00A89F C7 53 2B         [ 1]  137 	ld	0x532b, a
                                    138 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 89: TIM3->ARRL = (uint8_t)(TIM3_Period);
      00A8A2 7B 05            [ 1]  139 	ld	a, (0x05, sp)
      00A8A4 C7 53 2C         [ 1]  140 	ld	0x532c, a
                                    141 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 90: }
      00A8A7 81               [ 4]  142 	ret
                                    143 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 100: void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
                                    144 ;	-----------------------------------------
                                    145 ;	 function TIM3_OC1Init
                                    146 ;	-----------------------------------------
      00A8A8                        147 _TIM3_OC1Init:
      00A8A8 89               [ 2]  148 	pushw	x
                                    149 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 106: assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
      00A8A9 0D 05            [ 1]  150 	tnz	(0x05, sp)
      00A8AB 27 2D            [ 1]  151 	jreq	00104$
      00A8AD 7B 05            [ 1]  152 	ld	a, (0x05, sp)
      00A8AF A1 10            [ 1]  153 	cp	a, #0x10
      00A8B1 27 27            [ 1]  154 	jreq	00104$
      00A8B3 7B 05            [ 1]  155 	ld	a, (0x05, sp)
      00A8B5 A1 20            [ 1]  156 	cp	a, #0x20
      00A8B7 27 21            [ 1]  157 	jreq	00104$
      00A8B9 7B 05            [ 1]  158 	ld	a, (0x05, sp)
      00A8BB A1 30            [ 1]  159 	cp	a, #0x30
      00A8BD 27 1B            [ 1]  160 	jreq	00104$
      00A8BF 7B 05            [ 1]  161 	ld	a, (0x05, sp)
      00A8C1 A1 60            [ 1]  162 	cp	a, #0x60
      00A8C3 27 15            [ 1]  163 	jreq	00104$
      00A8C5 7B 05            [ 1]  164 	ld	a, (0x05, sp)
      00A8C7 A1 70            [ 1]  165 	cp	a, #0x70
      00A8C9 27 0F            [ 1]  166 	jreq	00104$
      00A8CB 4B 6A            [ 1]  167 	push	#0x6a
      00A8CD 5F               [ 1]  168 	clrw	x
      00A8CE 89               [ 2]  169 	pushw	x
      00A8CF 4B 00            [ 1]  170 	push	#0x00
      00A8D1 4B 90            [ 1]  171 	push	#<(___str_0+0)
      00A8D3 4B 81            [ 1]  172 	push	#((___str_0+0) >> 8)
      00A8D5 CD 85 9D         [ 4]  173 	call	_assert_failed
      00A8D8 5B 06            [ 2]  174 	addw	sp, #6
      00A8DA                        175 00104$:
                                    176 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 107: assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
      00A8DA 0D 06            [ 1]  177 	tnz	(0x06, sp)
      00A8DC 27 15            [ 1]  178 	jreq	00121$
      00A8DE 7B 06            [ 1]  179 	ld	a, (0x06, sp)
      00A8E0 A1 11            [ 1]  180 	cp	a, #0x11
      00A8E2 27 0F            [ 1]  181 	jreq	00121$
      00A8E4 4B 6B            [ 1]  182 	push	#0x6b
      00A8E6 5F               [ 1]  183 	clrw	x
      00A8E7 89               [ 2]  184 	pushw	x
      00A8E8 4B 00            [ 1]  185 	push	#0x00
      00A8EA 4B 90            [ 1]  186 	push	#<(___str_0+0)
      00A8EC 4B 81            [ 1]  187 	push	#((___str_0+0) >> 8)
      00A8EE CD 85 9D         [ 4]  188 	call	_assert_failed
      00A8F1 5B 06            [ 2]  189 	addw	sp, #6
      00A8F3                        190 00121$:
                                    191 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 108: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
      00A8F3 0D 09            [ 1]  192 	tnz	(0x09, sp)
      00A8F5 27 15            [ 1]  193 	jreq	00126$
      00A8F7 7B 09            [ 1]  194 	ld	a, (0x09, sp)
      00A8F9 A1 22            [ 1]  195 	cp	a, #0x22
      00A8FB 27 0F            [ 1]  196 	jreq	00126$
      00A8FD 4B 6C            [ 1]  197 	push	#0x6c
      00A8FF 5F               [ 1]  198 	clrw	x
      00A900 89               [ 2]  199 	pushw	x
      00A901 4B 00            [ 1]  200 	push	#0x00
      00A903 4B 90            [ 1]  201 	push	#<(___str_0+0)
      00A905 4B 81            [ 1]  202 	push	#((___str_0+0) >> 8)
      00A907 CD 85 9D         [ 4]  203 	call	_assert_failed
      00A90A 5B 06            [ 2]  204 	addw	sp, #6
      00A90C                        205 00126$:
                                    206 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 111: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
      00A90C C6 53 27         [ 1]  207 	ld	a, 0x5327
      00A90F A4 FC            [ 1]  208 	and	a, #0xfc
      00A911 C7 53 27         [ 1]  209 	ld	0x5327, a
                                    210 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 113: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
      00A914 C6 53 27         [ 1]  211 	ld	a, 0x5327
      00A917 6B 01            [ 1]  212 	ld	(0x01, sp), a
      00A919 7B 06            [ 1]  213 	ld	a, (0x06, sp)
      00A91B A4 01            [ 1]  214 	and	a, #0x01
      00A91D 6B 02            [ 1]  215 	ld	(0x02, sp), a
      00A91F 7B 09            [ 1]  216 	ld	a, (0x09, sp)
      00A921 A4 02            [ 1]  217 	and	a, #0x02
      00A923 1A 02            [ 1]  218 	or	a, (0x02, sp)
      00A925 1A 01            [ 1]  219 	or	a, (0x01, sp)
      00A927 C7 53 27         [ 1]  220 	ld	0x5327, a
                                    221 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 116: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      00A92A C6 53 25         [ 1]  222 	ld	a, 0x5325
      00A92D A4 8F            [ 1]  223 	and	a, #0x8f
      00A92F 1A 05            [ 1]  224 	or	a, (0x05, sp)
      00A931 C7 53 25         [ 1]  225 	ld	0x5325, a
                                    226 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 119: TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
      00A934 7B 07            [ 1]  227 	ld	a, (0x07, sp)
      00A936 C7 53 2D         [ 1]  228 	ld	0x532d, a
                                    229 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 120: TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
      00A939 7B 08            [ 1]  230 	ld	a, (0x08, sp)
      00A93B C7 53 2E         [ 1]  231 	ld	0x532e, a
                                    232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 121: }
      00A93E 85               [ 2]  233 	popw	x
      00A93F 81               [ 4]  234 	ret
                                    235 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 131: void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
                                    236 ;	-----------------------------------------
                                    237 ;	 function TIM3_OC2Init
                                    238 ;	-----------------------------------------
      00A940                        239 _TIM3_OC2Init:
      00A940 89               [ 2]  240 	pushw	x
                                    241 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 137: assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
      00A941 0D 05            [ 1]  242 	tnz	(0x05, sp)
      00A943 27 2D            [ 1]  243 	jreq	00104$
      00A945 7B 05            [ 1]  244 	ld	a, (0x05, sp)
      00A947 A1 10            [ 1]  245 	cp	a, #0x10
      00A949 27 27            [ 1]  246 	jreq	00104$
      00A94B 7B 05            [ 1]  247 	ld	a, (0x05, sp)
      00A94D A1 20            [ 1]  248 	cp	a, #0x20
      00A94F 27 21            [ 1]  249 	jreq	00104$
      00A951 7B 05            [ 1]  250 	ld	a, (0x05, sp)
      00A953 A1 30            [ 1]  251 	cp	a, #0x30
      00A955 27 1B            [ 1]  252 	jreq	00104$
      00A957 7B 05            [ 1]  253 	ld	a, (0x05, sp)
      00A959 A1 60            [ 1]  254 	cp	a, #0x60
      00A95B 27 15            [ 1]  255 	jreq	00104$
      00A95D 7B 05            [ 1]  256 	ld	a, (0x05, sp)
      00A95F A1 70            [ 1]  257 	cp	a, #0x70
      00A961 27 0F            [ 1]  258 	jreq	00104$
      00A963 4B 89            [ 1]  259 	push	#0x89
      00A965 5F               [ 1]  260 	clrw	x
      00A966 89               [ 2]  261 	pushw	x
      00A967 4B 00            [ 1]  262 	push	#0x00
      00A969 4B 90            [ 1]  263 	push	#<(___str_0+0)
      00A96B 4B 81            [ 1]  264 	push	#((___str_0+0) >> 8)
      00A96D CD 85 9D         [ 4]  265 	call	_assert_failed
      00A970 5B 06            [ 2]  266 	addw	sp, #6
      00A972                        267 00104$:
                                    268 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 138: assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
      00A972 0D 06            [ 1]  269 	tnz	(0x06, sp)
      00A974 27 15            [ 1]  270 	jreq	00121$
      00A976 7B 06            [ 1]  271 	ld	a, (0x06, sp)
      00A978 A1 11            [ 1]  272 	cp	a, #0x11
      00A97A 27 0F            [ 1]  273 	jreq	00121$
      00A97C 4B 8A            [ 1]  274 	push	#0x8a
      00A97E 5F               [ 1]  275 	clrw	x
      00A97F 89               [ 2]  276 	pushw	x
      00A980 4B 00            [ 1]  277 	push	#0x00
      00A982 4B 90            [ 1]  278 	push	#<(___str_0+0)
      00A984 4B 81            [ 1]  279 	push	#((___str_0+0) >> 8)
      00A986 CD 85 9D         [ 4]  280 	call	_assert_failed
      00A989 5B 06            [ 2]  281 	addw	sp, #6
      00A98B                        282 00121$:
                                    283 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 139: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
      00A98B 0D 09            [ 1]  284 	tnz	(0x09, sp)
      00A98D 27 15            [ 1]  285 	jreq	00126$
      00A98F 7B 09            [ 1]  286 	ld	a, (0x09, sp)
      00A991 A1 22            [ 1]  287 	cp	a, #0x22
      00A993 27 0F            [ 1]  288 	jreq	00126$
      00A995 4B 8B            [ 1]  289 	push	#0x8b
      00A997 5F               [ 1]  290 	clrw	x
      00A998 89               [ 2]  291 	pushw	x
      00A999 4B 00            [ 1]  292 	push	#0x00
      00A99B 4B 90            [ 1]  293 	push	#<(___str_0+0)
      00A99D 4B 81            [ 1]  294 	push	#((___str_0+0) >> 8)
      00A99F CD 85 9D         [ 4]  295 	call	_assert_failed
      00A9A2 5B 06            [ 2]  296 	addw	sp, #6
      00A9A4                        297 00126$:
                                    298 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 143: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
      00A9A4 C6 53 27         [ 1]  299 	ld	a, 0x5327
      00A9A7 A4 CF            [ 1]  300 	and	a, #0xcf
      00A9A9 C7 53 27         [ 1]  301 	ld	0x5327, a
                                    302 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 145: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
      00A9AC C6 53 27         [ 1]  303 	ld	a, 0x5327
      00A9AF 6B 01            [ 1]  304 	ld	(0x01, sp), a
      00A9B1 7B 06            [ 1]  305 	ld	a, (0x06, sp)
      00A9B3 A4 10            [ 1]  306 	and	a, #0x10
      00A9B5 6B 02            [ 1]  307 	ld	(0x02, sp), a
      00A9B7 7B 09            [ 1]  308 	ld	a, (0x09, sp)
      00A9B9 A4 20            [ 1]  309 	and	a, #0x20
      00A9BB 1A 02            [ 1]  310 	or	a, (0x02, sp)
      00A9BD 1A 01            [ 1]  311 	or	a, (0x01, sp)
      00A9BF C7 53 27         [ 1]  312 	ld	0x5327, a
                                    313 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 149: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      00A9C2 C6 53 26         [ 1]  314 	ld	a, 0x5326
      00A9C5 A4 8F            [ 1]  315 	and	a, #0x8f
      00A9C7 1A 05            [ 1]  316 	or	a, (0x05, sp)
      00A9C9 C7 53 26         [ 1]  317 	ld	0x5326, a
                                    318 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 153: TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
      00A9CC 7B 07            [ 1]  319 	ld	a, (0x07, sp)
      00A9CE C7 53 2F         [ 1]  320 	ld	0x532f, a
                                    321 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 154: TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
      00A9D1 7B 08            [ 1]  322 	ld	a, (0x08, sp)
      00A9D3 C7 53 30         [ 1]  323 	ld	0x5330, a
                                    324 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 155: }
      00A9D6 85               [ 2]  325 	popw	x
      00A9D7 81               [ 4]  326 	ret
                                    327 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 166: void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
                                    328 ;	-----------------------------------------
                                    329 ;	 function TIM3_ICInit
                                    330 ;	-----------------------------------------
      00A9D8                        331 _TIM3_ICInit:
      00A9D8 88               [ 1]  332 	push	a
                                    333 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 173: assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
      00A9D9 7B 04            [ 1]  334 	ld	a, (0x04, sp)
      00A9DB 4A               [ 1]  335 	dec	a
      00A9DC 26 05            [ 1]  336 	jrne	00203$
      00A9DE A6 01            [ 1]  337 	ld	a, #0x01
      00A9E0 6B 01            [ 1]  338 	ld	(0x01, sp), a
      00A9E2 C5                     339 	.byte 0xc5
      00A9E3                        340 00203$:
      00A9E3 0F 01            [ 1]  341 	clr	(0x01, sp)
      00A9E5                        342 00204$:
      00A9E5 0D 04            [ 1]  343 	tnz	(0x04, sp)
      00A9E7 27 13            [ 1]  344 	jreq	00107$
      00A9E9 0D 01            [ 1]  345 	tnz	(0x01, sp)
      00A9EB 26 0F            [ 1]  346 	jrne	00107$
      00A9ED 4B AD            [ 1]  347 	push	#0xad
      00A9EF 5F               [ 1]  348 	clrw	x
      00A9F0 89               [ 2]  349 	pushw	x
      00A9F1 4B 00            [ 1]  350 	push	#0x00
      00A9F3 4B 90            [ 1]  351 	push	#<(___str_0+0)
      00A9F5 4B 81            [ 1]  352 	push	#((___str_0+0) >> 8)
      00A9F7 CD 85 9D         [ 4]  353 	call	_assert_failed
      00A9FA 5B 06            [ 2]  354 	addw	sp, #6
      00A9FC                        355 00107$:
                                    356 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 174: assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
      00A9FC 0D 05            [ 1]  357 	tnz	(0x05, sp)
      00A9FE 27 15            [ 1]  358 	jreq	00112$
      00AA00 7B 05            [ 1]  359 	ld	a, (0x05, sp)
      00AA02 A1 44            [ 1]  360 	cp	a, #0x44
      00AA04 27 0F            [ 1]  361 	jreq	00112$
      00AA06 4B AE            [ 1]  362 	push	#0xae
      00AA08 5F               [ 1]  363 	clrw	x
      00AA09 89               [ 2]  364 	pushw	x
      00AA0A 4B 00            [ 1]  365 	push	#0x00
      00AA0C 4B 90            [ 1]  366 	push	#<(___str_0+0)
      00AA0E 4B 81            [ 1]  367 	push	#((___str_0+0) >> 8)
      00AA10 CD 85 9D         [ 4]  368 	call	_assert_failed
      00AA13 5B 06            [ 2]  369 	addw	sp, #6
      00AA15                        370 00112$:
                                    371 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 175: assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
      00AA15 7B 06            [ 1]  372 	ld	a, (0x06, sp)
      00AA17 4A               [ 1]  373 	dec	a
      00AA18 27 1B            [ 1]  374 	jreq	00117$
      00AA1A 7B 06            [ 1]  375 	ld	a, (0x06, sp)
      00AA1C A1 02            [ 1]  376 	cp	a, #0x02
      00AA1E 27 15            [ 1]  377 	jreq	00117$
      00AA20 7B 06            [ 1]  378 	ld	a, (0x06, sp)
      00AA22 A1 03            [ 1]  379 	cp	a, #0x03
      00AA24 27 0F            [ 1]  380 	jreq	00117$
      00AA26 4B AF            [ 1]  381 	push	#0xaf
      00AA28 5F               [ 1]  382 	clrw	x
      00AA29 89               [ 2]  383 	pushw	x
      00AA2A 4B 00            [ 1]  384 	push	#0x00
      00AA2C 4B 90            [ 1]  385 	push	#<(___str_0+0)
      00AA2E 4B 81            [ 1]  386 	push	#((___str_0+0) >> 8)
      00AA30 CD 85 9D         [ 4]  387 	call	_assert_failed
      00AA33 5B 06            [ 2]  388 	addw	sp, #6
      00AA35                        389 00117$:
                                    390 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 176: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
      00AA35 0D 07            [ 1]  391 	tnz	(0x07, sp)
      00AA37 27 21            [ 1]  392 	jreq	00125$
      00AA39 7B 07            [ 1]  393 	ld	a, (0x07, sp)
      00AA3B A1 04            [ 1]  394 	cp	a, #0x04
      00AA3D 27 1B            [ 1]  395 	jreq	00125$
      00AA3F 7B 07            [ 1]  396 	ld	a, (0x07, sp)
      00AA41 A1 08            [ 1]  397 	cp	a, #0x08
      00AA43 27 15            [ 1]  398 	jreq	00125$
      00AA45 7B 07            [ 1]  399 	ld	a, (0x07, sp)
      00AA47 A1 0C            [ 1]  400 	cp	a, #0x0c
      00AA49 27 0F            [ 1]  401 	jreq	00125$
      00AA4B 4B B0            [ 1]  402 	push	#0xb0
      00AA4D 5F               [ 1]  403 	clrw	x
      00AA4E 89               [ 2]  404 	pushw	x
      00AA4F 4B 00            [ 1]  405 	push	#0x00
      00AA51 4B 90            [ 1]  406 	push	#<(___str_0+0)
      00AA53 4B 81            [ 1]  407 	push	#((___str_0+0) >> 8)
      00AA55 CD 85 9D         [ 4]  408 	call	_assert_failed
      00AA58 5B 06            [ 2]  409 	addw	sp, #6
      00AA5A                        410 00125$:
                                    411 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 177: assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
      00AA5A 7B 08            [ 1]  412 	ld	a, (0x08, sp)
      00AA5C A1 0F            [ 1]  413 	cp	a, #0x0f
      00AA5E 23 0F            [ 2]  414 	jrule	00136$
      00AA60 4B B1            [ 1]  415 	push	#0xb1
      00AA62 5F               [ 1]  416 	clrw	x
      00AA63 89               [ 2]  417 	pushw	x
      00AA64 4B 00            [ 1]  418 	push	#0x00
      00AA66 4B 90            [ 1]  419 	push	#<(___str_0+0)
      00AA68 4B 81            [ 1]  420 	push	#((___str_0+0) >> 8)
      00AA6A CD 85 9D         [ 4]  421 	call	_assert_failed
      00AA6D 5B 06            [ 2]  422 	addw	sp, #6
      00AA6F                        423 00136$:
                                    424 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 179: if (TIM3_Channel != TIM3_CHANNEL_2)
      00AA6F 0D 01            [ 1]  425 	tnz	(0x01, sp)
      00AA71 26 17            [ 1]  426 	jrne	00102$
                                    427 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 182: TI1_Config((uint8_t)TIM3_ICPolarity,
      00AA73 7B 08            [ 1]  428 	ld	a, (0x08, sp)
      00AA75 88               [ 1]  429 	push	a
      00AA76 7B 07            [ 1]  430 	ld	a, (0x07, sp)
      00AA78 88               [ 1]  431 	push	a
      00AA79 7B 07            [ 1]  432 	ld	a, (0x07, sp)
      00AA7B 88               [ 1]  433 	push	a
      00AA7C CD B1 02         [ 4]  434 	call	_TI1_Config
      00AA7F 5B 03            [ 2]  435 	addw	sp, #3
                                    436 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 187: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      00AA81 7B 07            [ 1]  437 	ld	a, (0x07, sp)
      00AA83 88               [ 1]  438 	push	a
      00AA84 CD AF 78         [ 4]  439 	call	_TIM3_SetIC1Prescaler
      00AA87 84               [ 1]  440 	pop	a
      00AA88 20 15            [ 2]  441 	jra	00104$
      00AA8A                        442 00102$:
                                    443 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 192: TI2_Config((uint8_t)TIM3_ICPolarity,
      00AA8A 7B 08            [ 1]  444 	ld	a, (0x08, sp)
      00AA8C 88               [ 1]  445 	push	a
      00AA8D 7B 07            [ 1]  446 	ld	a, (0x07, sp)
      00AA8F 88               [ 1]  447 	push	a
      00AA90 7B 07            [ 1]  448 	ld	a, (0x07, sp)
      00AA92 88               [ 1]  449 	push	a
      00AA93 CD B1 33         [ 4]  450 	call	_TI2_Config
      00AA96 5B 03            [ 2]  451 	addw	sp, #3
                                    452 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 197: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      00AA98 7B 07            [ 1]  453 	ld	a, (0x07, sp)
      00AA9A 88               [ 1]  454 	push	a
      00AA9B CD AF A8         [ 4]  455 	call	_TIM3_SetIC2Prescaler
      00AA9E 84               [ 1]  456 	pop	a
      00AA9F                        457 00104$:
                                    458 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 199: }
      00AA9F 84               [ 1]  459 	pop	a
      00AAA0 81               [ 4]  460 	ret
                                    461 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 210: void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
                                    462 ;	-----------------------------------------
                                    463 ;	 function TIM3_PWMIConfig
                                    464 ;	-----------------------------------------
      00AAA1                        465 _TIM3_PWMIConfig:
      00AAA1 52 03            [ 2]  466 	sub	sp, #3
                                    467 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 220: assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
      00AAA3 7B 06            [ 1]  468 	ld	a, (0x06, sp)
      00AAA5 4A               [ 1]  469 	dec	a
      00AAA6 26 05            [ 1]  470 	jrne	00212$
      00AAA8 A6 01            [ 1]  471 	ld	a, #0x01
      00AAAA 6B 01            [ 1]  472 	ld	(0x01, sp), a
      00AAAC C5                     473 	.byte 0xc5
      00AAAD                        474 00212$:
      00AAAD 0F 01            [ 1]  475 	clr	(0x01, sp)
      00AAAF                        476 00213$:
      00AAAF 0D 06            [ 1]  477 	tnz	(0x06, sp)
      00AAB1 27 13            [ 1]  478 	jreq	00113$
      00AAB3 0D 01            [ 1]  479 	tnz	(0x01, sp)
      00AAB5 26 0F            [ 1]  480 	jrne	00113$
      00AAB7 4B DC            [ 1]  481 	push	#0xdc
      00AAB9 5F               [ 1]  482 	clrw	x
      00AABA 89               [ 2]  483 	pushw	x
      00AABB 4B 00            [ 1]  484 	push	#0x00
      00AABD 4B 90            [ 1]  485 	push	#<(___str_0+0)
      00AABF 4B 81            [ 1]  486 	push	#((___str_0+0) >> 8)
      00AAC1 CD 85 9D         [ 4]  487 	call	_assert_failed
      00AAC4 5B 06            [ 2]  488 	addw	sp, #6
      00AAC6                        489 00113$:
                                    490 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 221: assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
      00AAC6 7B 07            [ 1]  491 	ld	a, (0x07, sp)
      00AAC8 A0 44            [ 1]  492 	sub	a, #0x44
      00AACA 26 04            [ 1]  493 	jrne	00217$
      00AACC 4C               [ 1]  494 	inc	a
      00AACD 6B 02            [ 1]  495 	ld	(0x02, sp), a
      00AACF C5                     496 	.byte 0xc5
      00AAD0                        497 00217$:
      00AAD0 0F 02            [ 1]  498 	clr	(0x02, sp)
      00AAD2                        499 00218$:
      00AAD2 0D 07            [ 1]  500 	tnz	(0x07, sp)
      00AAD4 27 13            [ 1]  501 	jreq	00118$
      00AAD6 0D 02            [ 1]  502 	tnz	(0x02, sp)
      00AAD8 26 0F            [ 1]  503 	jrne	00118$
      00AADA 4B DD            [ 1]  504 	push	#0xdd
      00AADC 5F               [ 1]  505 	clrw	x
      00AADD 89               [ 2]  506 	pushw	x
      00AADE 4B 00            [ 1]  507 	push	#0x00
      00AAE0 4B 90            [ 1]  508 	push	#<(___str_0+0)
      00AAE2 4B 81            [ 1]  509 	push	#((___str_0+0) >> 8)
      00AAE4 CD 85 9D         [ 4]  510 	call	_assert_failed
      00AAE7 5B 06            [ 2]  511 	addw	sp, #6
      00AAE9                        512 00118$:
                                    513 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 222: assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
      00AAE9 7B 08            [ 1]  514 	ld	a, (0x08, sp)
      00AAEB 4A               [ 1]  515 	dec	a
      00AAEC 26 05            [ 1]  516 	jrne	00222$
      00AAEE A6 01            [ 1]  517 	ld	a, #0x01
      00AAF0 6B 03            [ 1]  518 	ld	(0x03, sp), a
      00AAF2 C5                     519 	.byte 0xc5
      00AAF3                        520 00222$:
      00AAF3 0F 03            [ 1]  521 	clr	(0x03, sp)
      00AAF5                        522 00223$:
      00AAF5 0D 03            [ 1]  523 	tnz	(0x03, sp)
      00AAF7 26 1B            [ 1]  524 	jrne	00123$
      00AAF9 7B 08            [ 1]  525 	ld	a, (0x08, sp)
      00AAFB A1 02            [ 1]  526 	cp	a, #0x02
      00AAFD 27 15            [ 1]  527 	jreq	00123$
      00AAFF 7B 08            [ 1]  528 	ld	a, (0x08, sp)
      00AB01 A1 03            [ 1]  529 	cp	a, #0x03
      00AB03 27 0F            [ 1]  530 	jreq	00123$
      00AB05 4B DE            [ 1]  531 	push	#0xde
      00AB07 5F               [ 1]  532 	clrw	x
      00AB08 89               [ 2]  533 	pushw	x
      00AB09 4B 00            [ 1]  534 	push	#0x00
      00AB0B 4B 90            [ 1]  535 	push	#<(___str_0+0)
      00AB0D 4B 81            [ 1]  536 	push	#((___str_0+0) >> 8)
      00AB0F CD 85 9D         [ 4]  537 	call	_assert_failed
      00AB12 5B 06            [ 2]  538 	addw	sp, #6
      00AB14                        539 00123$:
                                    540 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 223: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
      00AB14 0D 09            [ 1]  541 	tnz	(0x09, sp)
      00AB16 27 21            [ 1]  542 	jreq	00131$
      00AB18 7B 09            [ 1]  543 	ld	a, (0x09, sp)
      00AB1A A1 04            [ 1]  544 	cp	a, #0x04
      00AB1C 27 1B            [ 1]  545 	jreq	00131$
      00AB1E 7B 09            [ 1]  546 	ld	a, (0x09, sp)
      00AB20 A1 08            [ 1]  547 	cp	a, #0x08
      00AB22 27 15            [ 1]  548 	jreq	00131$
      00AB24 7B 09            [ 1]  549 	ld	a, (0x09, sp)
      00AB26 A1 0C            [ 1]  550 	cp	a, #0x0c
      00AB28 27 0F            [ 1]  551 	jreq	00131$
      00AB2A 4B DF            [ 1]  552 	push	#0xdf
      00AB2C 5F               [ 1]  553 	clrw	x
      00AB2D 89               [ 2]  554 	pushw	x
      00AB2E 4B 00            [ 1]  555 	push	#0x00
      00AB30 4B 90            [ 1]  556 	push	#<(___str_0+0)
      00AB32 4B 81            [ 1]  557 	push	#((___str_0+0) >> 8)
      00AB34 CD 85 9D         [ 4]  558 	call	_assert_failed
      00AB37 5B 06            [ 2]  559 	addw	sp, #6
      00AB39                        560 00131$:
                                    561 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 226: if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
      00AB39 0D 02            [ 1]  562 	tnz	(0x02, sp)
      00AB3B 26 05            [ 1]  563 	jrne	00102$
                                    564 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 228: icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
      00AB3D A6 44            [ 1]  565 	ld	a, #0x44
      00AB3F 6B 02            [ 1]  566 	ld	(0x02, sp), a
                                    567 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 232: icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
      00AB41 C5                     568 	.byte 0xc5
      00AB42                        569 00102$:
      00AB42 0F 02            [ 1]  570 	clr	(0x02, sp)
      00AB44                        571 00103$:
                                    572 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 236: if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
      00AB44 7B 03            [ 1]  573 	ld	a, (0x03, sp)
      00AB46 27 06            [ 1]  574 	jreq	00105$
                                    575 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 238: icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
      00AB48 A6 02            [ 1]  576 	ld	a, #0x02
      00AB4A 6B 03            [ 1]  577 	ld	(0x03, sp), a
      00AB4C 20 04            [ 2]  578 	jra	00106$
      00AB4E                        579 00105$:
                                    580 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 242: icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
      00AB4E A6 01            [ 1]  581 	ld	a, #0x01
      00AB50 6B 03            [ 1]  582 	ld	(0x03, sp), a
      00AB52                        583 00106$:
                                    584 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 245: if (TIM3_Channel != TIM3_CHANNEL_2)
      00AB52 0D 01            [ 1]  585 	tnz	(0x01, sp)
      00AB54 26 2C            [ 1]  586 	jrne	00108$
                                    587 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 248: TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
      00AB56 7B 0A            [ 1]  588 	ld	a, (0x0a, sp)
      00AB58 88               [ 1]  589 	push	a
      00AB59 7B 09            [ 1]  590 	ld	a, (0x09, sp)
      00AB5B 88               [ 1]  591 	push	a
      00AB5C 7B 09            [ 1]  592 	ld	a, (0x09, sp)
      00AB5E 88               [ 1]  593 	push	a
      00AB5F CD B1 02         [ 4]  594 	call	_TI1_Config
      00AB62 5B 03            [ 2]  595 	addw	sp, #3
                                    596 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 252: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      00AB64 7B 09            [ 1]  597 	ld	a, (0x09, sp)
      00AB66 88               [ 1]  598 	push	a
      00AB67 CD AF 78         [ 4]  599 	call	_TIM3_SetIC1Prescaler
      00AB6A 84               [ 1]  600 	pop	a
                                    601 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 255: TI2_Config(icpolarity, icselection, TIM3_ICFilter);
      00AB6B 7B 0A            [ 1]  602 	ld	a, (0x0a, sp)
      00AB6D 88               [ 1]  603 	push	a
      00AB6E 7B 04            [ 1]  604 	ld	a, (0x04, sp)
      00AB70 88               [ 1]  605 	push	a
      00AB71 7B 04            [ 1]  606 	ld	a, (0x04, sp)
      00AB73 88               [ 1]  607 	push	a
      00AB74 CD B1 33         [ 4]  608 	call	_TI2_Config
      00AB77 5B 03            [ 2]  609 	addw	sp, #3
                                    610 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 258: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      00AB79 7B 09            [ 1]  611 	ld	a, (0x09, sp)
      00AB7B 88               [ 1]  612 	push	a
      00AB7C CD AF A8         [ 4]  613 	call	_TIM3_SetIC2Prescaler
      00AB7F 84               [ 1]  614 	pop	a
      00AB80 20 2A            [ 2]  615 	jra	00110$
      00AB82                        616 00108$:
                                    617 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 263: TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
      00AB82 7B 0A            [ 1]  618 	ld	a, (0x0a, sp)
      00AB84 88               [ 1]  619 	push	a
      00AB85 7B 09            [ 1]  620 	ld	a, (0x09, sp)
      00AB87 88               [ 1]  621 	push	a
      00AB88 7B 09            [ 1]  622 	ld	a, (0x09, sp)
      00AB8A 88               [ 1]  623 	push	a
      00AB8B CD B1 33         [ 4]  624 	call	_TI2_Config
      00AB8E 5B 03            [ 2]  625 	addw	sp, #3
                                    626 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 267: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      00AB90 7B 09            [ 1]  627 	ld	a, (0x09, sp)
      00AB92 88               [ 1]  628 	push	a
      00AB93 CD AF A8         [ 4]  629 	call	_TIM3_SetIC2Prescaler
      00AB96 84               [ 1]  630 	pop	a
                                    631 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 270: TI1_Config(icpolarity, icselection, TIM3_ICFilter);
      00AB97 7B 0A            [ 1]  632 	ld	a, (0x0a, sp)
      00AB99 88               [ 1]  633 	push	a
      00AB9A 7B 04            [ 1]  634 	ld	a, (0x04, sp)
      00AB9C 88               [ 1]  635 	push	a
      00AB9D 7B 04            [ 1]  636 	ld	a, (0x04, sp)
      00AB9F 88               [ 1]  637 	push	a
      00ABA0 CD B1 02         [ 4]  638 	call	_TI1_Config
      00ABA3 5B 03            [ 2]  639 	addw	sp, #3
                                    640 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 273: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      00ABA5 7B 09            [ 1]  641 	ld	a, (0x09, sp)
      00ABA7 88               [ 1]  642 	push	a
      00ABA8 CD AF 78         [ 4]  643 	call	_TIM3_SetIC1Prescaler
      00ABAB 84               [ 1]  644 	pop	a
      00ABAC                        645 00110$:
                                    646 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 275: }
      00ABAC 5B 03            [ 2]  647 	addw	sp, #3
      00ABAE 81               [ 4]  648 	ret
                                    649 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 283: void TIM3_Cmd(FunctionalState NewState)
                                    650 ;	-----------------------------------------
                                    651 ;	 function TIM3_Cmd
                                    652 ;	-----------------------------------------
      00ABAF                        653 _TIM3_Cmd:
                                    654 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 286: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00ABAF 0D 03            [ 1]  655 	tnz	(0x03, sp)
      00ABB1 27 14            [ 1]  656 	jreq	00107$
      00ABB3 7B 03            [ 1]  657 	ld	a, (0x03, sp)
      00ABB5 4A               [ 1]  658 	dec	a
      00ABB6 27 0F            [ 1]  659 	jreq	00107$
      00ABB8 4B 1E            [ 1]  660 	push	#0x1e
      00ABBA 4B 01            [ 1]  661 	push	#0x01
      00ABBC 5F               [ 1]  662 	clrw	x
      00ABBD 89               [ 2]  663 	pushw	x
      00ABBE 4B 90            [ 1]  664 	push	#<(___str_0+0)
      00ABC0 4B 81            [ 1]  665 	push	#((___str_0+0) >> 8)
      00ABC2 CD 85 9D         [ 4]  666 	call	_assert_failed
      00ABC5 5B 06            [ 2]  667 	addw	sp, #6
      00ABC7                        668 00107$:
                                    669 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
      00ABC7 C6 53 20         [ 1]  670 	ld	a, 0x5320
                                    671 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 289: if (NewState != DISABLE)
      00ABCA 0D 03            [ 1]  672 	tnz	(0x03, sp)
      00ABCC 27 06            [ 1]  673 	jreq	00102$
                                    674 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
      00ABCE AA 01            [ 1]  675 	or	a, #0x01
      00ABD0 C7 53 20         [ 1]  676 	ld	0x5320, a
      00ABD3 81               [ 4]  677 	ret
      00ABD4                        678 00102$:
                                    679 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 295: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
      00ABD4 A4 FE            [ 1]  680 	and	a, #0xfe
      00ABD6 C7 53 20         [ 1]  681 	ld	0x5320, a
                                    682 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 297: }
      00ABD9 81               [ 4]  683 	ret
                                    684 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 311: void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
                                    685 ;	-----------------------------------------
                                    686 ;	 function TIM3_ITConfig
                                    687 ;	-----------------------------------------
      00ABDA                        688 _TIM3_ITConfig:
      00ABDA 88               [ 1]  689 	push	a
                                    690 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 314: assert_param(IS_TIM3_IT_OK(TIM3_IT));
      00ABDB 0D 04            [ 1]  691 	tnz	(0x04, sp)
      00ABDD 27 06            [ 1]  692 	jreq	00106$
      00ABDF 7B 04            [ 1]  693 	ld	a, (0x04, sp)
      00ABE1 A1 07            [ 1]  694 	cp	a, #0x07
      00ABE3 23 0F            [ 2]  695 	jrule	00107$
      00ABE5                        696 00106$:
      00ABE5 4B 3A            [ 1]  697 	push	#0x3a
      00ABE7 4B 01            [ 1]  698 	push	#0x01
      00ABE9 5F               [ 1]  699 	clrw	x
      00ABEA 89               [ 2]  700 	pushw	x
      00ABEB 4B 90            [ 1]  701 	push	#<(___str_0+0)
      00ABED 4B 81            [ 1]  702 	push	#((___str_0+0) >> 8)
      00ABEF CD 85 9D         [ 4]  703 	call	_assert_failed
      00ABF2 5B 06            [ 2]  704 	addw	sp, #6
      00ABF4                        705 00107$:
                                    706 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 315: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00ABF4 0D 05            [ 1]  707 	tnz	(0x05, sp)
      00ABF6 27 14            [ 1]  708 	jreq	00112$
      00ABF8 7B 05            [ 1]  709 	ld	a, (0x05, sp)
      00ABFA 4A               [ 1]  710 	dec	a
      00ABFB 27 0F            [ 1]  711 	jreq	00112$
      00ABFD 4B 3B            [ 1]  712 	push	#0x3b
      00ABFF 4B 01            [ 1]  713 	push	#0x01
      00AC01 5F               [ 1]  714 	clrw	x
      00AC02 89               [ 2]  715 	pushw	x
      00AC03 4B 90            [ 1]  716 	push	#<(___str_0+0)
      00AC05 4B 81            [ 1]  717 	push	#((___str_0+0) >> 8)
      00AC07 CD 85 9D         [ 4]  718 	call	_assert_failed
      00AC0A 5B 06            [ 2]  719 	addw	sp, #6
      00AC0C                        720 00112$:
                                    721 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
      00AC0C C6 53 21         [ 1]  722 	ld	a, 0x5321
                                    723 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 317: if (NewState != DISABLE)
      00AC0F 0D 05            [ 1]  724 	tnz	(0x05, sp)
      00AC11 27 07            [ 1]  725 	jreq	00102$
                                    726 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
      00AC13 1A 04            [ 1]  727 	or	a, (0x04, sp)
      00AC15 C7 53 21         [ 1]  728 	ld	0x5321, a
      00AC18 20 0C            [ 2]  729 	jra	00104$
      00AC1A                        730 00102$:
                                    731 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 325: TIM3->IER &= (uint8_t)(~TIM3_IT);
      00AC1A 88               [ 1]  732 	push	a
      00AC1B 7B 05            [ 1]  733 	ld	a, (0x05, sp)
      00AC1D 43               [ 1]  734 	cpl	a
      00AC1E 6B 02            [ 1]  735 	ld	(0x02, sp), a
      00AC20 84               [ 1]  736 	pop	a
      00AC21 14 01            [ 1]  737 	and	a, (0x01, sp)
      00AC23 C7 53 21         [ 1]  738 	ld	0x5321, a
      00AC26                        739 00104$:
                                    740 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 327: }
      00AC26 84               [ 1]  741 	pop	a
      00AC27 81               [ 4]  742 	ret
                                    743 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 335: void TIM3_UpdateDisableConfig(FunctionalState NewState)
                                    744 ;	-----------------------------------------
                                    745 ;	 function TIM3_UpdateDisableConfig
                                    746 ;	-----------------------------------------
      00AC28                        747 _TIM3_UpdateDisableConfig:
                                    748 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 338: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00AC28 0D 03            [ 1]  749 	tnz	(0x03, sp)
      00AC2A 27 14            [ 1]  750 	jreq	00107$
      00AC2C 7B 03            [ 1]  751 	ld	a, (0x03, sp)
      00AC2E 4A               [ 1]  752 	dec	a
      00AC2F 27 0F            [ 1]  753 	jreq	00107$
      00AC31 4B 52            [ 1]  754 	push	#0x52
      00AC33 4B 01            [ 1]  755 	push	#0x01
      00AC35 5F               [ 1]  756 	clrw	x
      00AC36 89               [ 2]  757 	pushw	x
      00AC37 4B 90            [ 1]  758 	push	#<(___str_0+0)
      00AC39 4B 81            [ 1]  759 	push	#((___str_0+0) >> 8)
      00AC3B CD 85 9D         [ 4]  760 	call	_assert_failed
      00AC3E 5B 06            [ 2]  761 	addw	sp, #6
      00AC40                        762 00107$:
                                    763 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
      00AC40 C6 53 20         [ 1]  764 	ld	a, 0x5320
                                    765 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 341: if (NewState != DISABLE)
      00AC43 0D 03            [ 1]  766 	tnz	(0x03, sp)
      00AC45 27 06            [ 1]  767 	jreq	00102$
                                    768 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
      00AC47 AA 02            [ 1]  769 	or	a, #0x02
      00AC49 C7 53 20         [ 1]  770 	ld	0x5320, a
      00AC4C 81               [ 4]  771 	ret
      00AC4D                        772 00102$:
                                    773 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 347: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
      00AC4D A4 FD            [ 1]  774 	and	a, #0xfd
      00AC4F C7 53 20         [ 1]  775 	ld	0x5320, a
                                    776 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 349: }
      00AC52 81               [ 4]  777 	ret
                                    778 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 359: void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
                                    779 ;	-----------------------------------------
                                    780 ;	 function TIM3_UpdateRequestConfig
                                    781 ;	-----------------------------------------
      00AC53                        782 _TIM3_UpdateRequestConfig:
                                    783 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 362: assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
      00AC53 0D 03            [ 1]  784 	tnz	(0x03, sp)
      00AC55 27 14            [ 1]  785 	jreq	00107$
      00AC57 7B 03            [ 1]  786 	ld	a, (0x03, sp)
      00AC59 4A               [ 1]  787 	dec	a
      00AC5A 27 0F            [ 1]  788 	jreq	00107$
      00AC5C 4B 6A            [ 1]  789 	push	#0x6a
      00AC5E 4B 01            [ 1]  790 	push	#0x01
      00AC60 5F               [ 1]  791 	clrw	x
      00AC61 89               [ 2]  792 	pushw	x
      00AC62 4B 90            [ 1]  793 	push	#<(___str_0+0)
      00AC64 4B 81            [ 1]  794 	push	#((___str_0+0) >> 8)
      00AC66 CD 85 9D         [ 4]  795 	call	_assert_failed
      00AC69 5B 06            [ 2]  796 	addw	sp, #6
      00AC6B                        797 00107$:
                                    798 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
      00AC6B C6 53 20         [ 1]  799 	ld	a, 0x5320
                                    800 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 365: if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
      00AC6E 0D 03            [ 1]  801 	tnz	(0x03, sp)
      00AC70 27 06            [ 1]  802 	jreq	00102$
                                    803 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
      00AC72 AA 04            [ 1]  804 	or	a, #0x04
      00AC74 C7 53 20         [ 1]  805 	ld	0x5320, a
      00AC77 81               [ 4]  806 	ret
      00AC78                        807 00102$:
                                    808 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 371: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
      00AC78 A4 FB            [ 1]  809 	and	a, #0xfb
      00AC7A C7 53 20         [ 1]  810 	ld	0x5320, a
                                    811 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 373: }
      00AC7D 81               [ 4]  812 	ret
                                    813 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 383: void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
                                    814 ;	-----------------------------------------
                                    815 ;	 function TIM3_SelectOnePulseMode
                                    816 ;	-----------------------------------------
      00AC7E                        817 _TIM3_SelectOnePulseMode:
                                    818 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 386: assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
      00AC7E 7B 03            [ 1]  819 	ld	a, (0x03, sp)
      00AC80 4A               [ 1]  820 	dec	a
      00AC81 27 13            [ 1]  821 	jreq	00107$
      00AC83 0D 03            [ 1]  822 	tnz	(0x03, sp)
      00AC85 27 0F            [ 1]  823 	jreq	00107$
      00AC87 4B 82            [ 1]  824 	push	#0x82
      00AC89 4B 01            [ 1]  825 	push	#0x01
      00AC8B 5F               [ 1]  826 	clrw	x
      00AC8C 89               [ 2]  827 	pushw	x
      00AC8D 4B 90            [ 1]  828 	push	#<(___str_0+0)
      00AC8F 4B 81            [ 1]  829 	push	#((___str_0+0) >> 8)
      00AC91 CD 85 9D         [ 4]  830 	call	_assert_failed
      00AC94 5B 06            [ 2]  831 	addw	sp, #6
      00AC96                        832 00107$:
                                    833 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
      00AC96 C6 53 20         [ 1]  834 	ld	a, 0x5320
                                    835 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 389: if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
      00AC99 0D 03            [ 1]  836 	tnz	(0x03, sp)
      00AC9B 27 06            [ 1]  837 	jreq	00102$
                                    838 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
      00AC9D AA 08            [ 1]  839 	or	a, #0x08
      00AC9F C7 53 20         [ 1]  840 	ld	0x5320, a
      00ACA2 81               [ 4]  841 	ret
      00ACA3                        842 00102$:
                                    843 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 395: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
      00ACA3 A4 F7            [ 1]  844 	and	a, #0xf7
      00ACA5 C7 53 20         [ 1]  845 	ld	0x5320, a
                                    846 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 397: }
      00ACA8 81               [ 4]  847 	ret
                                    848 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 427: void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
                                    849 ;	-----------------------------------------
                                    850 ;	 function TIM3_PrescalerConfig
                                    851 ;	-----------------------------------------
      00ACA9                        852 _TIM3_PrescalerConfig:
                                    853 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 431: assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
      00ACA9 0D 04            [ 1]  854 	tnz	(0x04, sp)
      00ACAB 27 14            [ 1]  855 	jreq	00104$
      00ACAD 7B 04            [ 1]  856 	ld	a, (0x04, sp)
      00ACAF 4A               [ 1]  857 	dec	a
      00ACB0 27 0F            [ 1]  858 	jreq	00104$
      00ACB2 4B AF            [ 1]  859 	push	#0xaf
      00ACB4 4B 01            [ 1]  860 	push	#0x01
      00ACB6 5F               [ 1]  861 	clrw	x
      00ACB7 89               [ 2]  862 	pushw	x
      00ACB8 4B 90            [ 1]  863 	push	#<(___str_0+0)
      00ACBA 4B 81            [ 1]  864 	push	#((___str_0+0) >> 8)
      00ACBC CD 85 9D         [ 4]  865 	call	_assert_failed
      00ACBF 5B 06            [ 2]  866 	addw	sp, #6
      00ACC1                        867 00104$:
                                    868 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 432: assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
      00ACC1 0D 03            [ 1]  869 	tnz	(0x03, sp)
      00ACC3 27 68            [ 1]  870 	jreq	00109$
      00ACC5 7B 03            [ 1]  871 	ld	a, (0x03, sp)
      00ACC7 4A               [ 1]  872 	dec	a
      00ACC8 27 63            [ 1]  873 	jreq	00109$
      00ACCA 7B 03            [ 1]  874 	ld	a, (0x03, sp)
      00ACCC A1 02            [ 1]  875 	cp	a, #0x02
      00ACCE 27 5D            [ 1]  876 	jreq	00109$
      00ACD0 7B 03            [ 1]  877 	ld	a, (0x03, sp)
      00ACD2 A1 03            [ 1]  878 	cp	a, #0x03
      00ACD4 27 57            [ 1]  879 	jreq	00109$
      00ACD6 7B 03            [ 1]  880 	ld	a, (0x03, sp)
      00ACD8 A1 04            [ 1]  881 	cp	a, #0x04
      00ACDA 27 51            [ 1]  882 	jreq	00109$
      00ACDC 7B 03            [ 1]  883 	ld	a, (0x03, sp)
      00ACDE A1 05            [ 1]  884 	cp	a, #0x05
      00ACE0 27 4B            [ 1]  885 	jreq	00109$
      00ACE2 7B 03            [ 1]  886 	ld	a, (0x03, sp)
      00ACE4 A1 06            [ 1]  887 	cp	a, #0x06
      00ACE6 27 45            [ 1]  888 	jreq	00109$
      00ACE8 7B 03            [ 1]  889 	ld	a, (0x03, sp)
      00ACEA A1 07            [ 1]  890 	cp	a, #0x07
      00ACEC 27 3F            [ 1]  891 	jreq	00109$
      00ACEE 7B 03            [ 1]  892 	ld	a, (0x03, sp)
      00ACF0 A1 08            [ 1]  893 	cp	a, #0x08
      00ACF2 27 39            [ 1]  894 	jreq	00109$
      00ACF4 7B 03            [ 1]  895 	ld	a, (0x03, sp)
      00ACF6 A1 09            [ 1]  896 	cp	a, #0x09
      00ACF8 27 33            [ 1]  897 	jreq	00109$
      00ACFA 7B 03            [ 1]  898 	ld	a, (0x03, sp)
      00ACFC A1 0A            [ 1]  899 	cp	a, #0x0a
      00ACFE 27 2D            [ 1]  900 	jreq	00109$
      00AD00 7B 03            [ 1]  901 	ld	a, (0x03, sp)
      00AD02 A1 0B            [ 1]  902 	cp	a, #0x0b
      00AD04 27 27            [ 1]  903 	jreq	00109$
      00AD06 7B 03            [ 1]  904 	ld	a, (0x03, sp)
      00AD08 A1 0C            [ 1]  905 	cp	a, #0x0c
      00AD0A 27 21            [ 1]  906 	jreq	00109$
      00AD0C 7B 03            [ 1]  907 	ld	a, (0x03, sp)
      00AD0E A1 0D            [ 1]  908 	cp	a, #0x0d
      00AD10 27 1B            [ 1]  909 	jreq	00109$
      00AD12 7B 03            [ 1]  910 	ld	a, (0x03, sp)
      00AD14 A1 0E            [ 1]  911 	cp	a, #0x0e
      00AD16 27 15            [ 1]  912 	jreq	00109$
      00AD18 7B 03            [ 1]  913 	ld	a, (0x03, sp)
      00AD1A A1 0F            [ 1]  914 	cp	a, #0x0f
      00AD1C 27 0F            [ 1]  915 	jreq	00109$
      00AD1E 4B B0            [ 1]  916 	push	#0xb0
      00AD20 4B 01            [ 1]  917 	push	#0x01
      00AD22 5F               [ 1]  918 	clrw	x
      00AD23 89               [ 2]  919 	pushw	x
      00AD24 4B 90            [ 1]  920 	push	#<(___str_0+0)
      00AD26 4B 81            [ 1]  921 	push	#((___str_0+0) >> 8)
      00AD28 CD 85 9D         [ 4]  922 	call	_assert_failed
      00AD2B 5B 06            [ 2]  923 	addw	sp, #6
      00AD2D                        924 00109$:
                                    925 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 435: TIM3->PSCR = (uint8_t)Prescaler;
      00AD2D AE 53 2A         [ 2]  926 	ldw	x, #0x532a
      00AD30 7B 03            [ 1]  927 	ld	a, (0x03, sp)
      00AD32 F7               [ 1]  928 	ld	(x), a
                                    929 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 438: TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
      00AD33 AE 53 24         [ 2]  930 	ldw	x, #0x5324
      00AD36 7B 04            [ 1]  931 	ld	a, (0x04, sp)
      00AD38 F7               [ 1]  932 	ld	(x), a
                                    933 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 439: }
      00AD39 81               [ 4]  934 	ret
                                    935 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 450: void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
                                    936 ;	-----------------------------------------
                                    937 ;	 function TIM3_ForcedOC1Config
                                    938 ;	-----------------------------------------
      00AD3A                        939 _TIM3_ForcedOC1Config:
                                    940 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 453: assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
      00AD3A 7B 03            [ 1]  941 	ld	a, (0x03, sp)
      00AD3C A1 50            [ 1]  942 	cp	a, #0x50
      00AD3E 27 15            [ 1]  943 	jreq	00104$
      00AD40 7B 03            [ 1]  944 	ld	a, (0x03, sp)
      00AD42 A1 40            [ 1]  945 	cp	a, #0x40
      00AD44 27 0F            [ 1]  946 	jreq	00104$
      00AD46 4B C5            [ 1]  947 	push	#0xc5
      00AD48 4B 01            [ 1]  948 	push	#0x01
      00AD4A 5F               [ 1]  949 	clrw	x
      00AD4B 89               [ 2]  950 	pushw	x
      00AD4C 4B 90            [ 1]  951 	push	#<(___str_0+0)
      00AD4E 4B 81            [ 1]  952 	push	#((___str_0+0) >> 8)
      00AD50 CD 85 9D         [ 4]  953 	call	_assert_failed
      00AD53 5B 06            [ 2]  954 	addw	sp, #6
      00AD55                        955 00104$:
                                    956 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 456: TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
      00AD55 C6 53 25         [ 1]  957 	ld	a, 0x5325
      00AD58 A4 8F            [ 1]  958 	and	a, #0x8f
      00AD5A 1A 03            [ 1]  959 	or	a, (0x03, sp)
      00AD5C C7 53 25         [ 1]  960 	ld	0x5325, a
                                    961 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 457: }
      00AD5F 81               [ 4]  962 	ret
                                    963 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 468: void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
                                    964 ;	-----------------------------------------
                                    965 ;	 function TIM3_ForcedOC2Config
                                    966 ;	-----------------------------------------
      00AD60                        967 _TIM3_ForcedOC2Config:
                                    968 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 471: assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
      00AD60 7B 03            [ 1]  969 	ld	a, (0x03, sp)
      00AD62 A1 50            [ 1]  970 	cp	a, #0x50
      00AD64 27 15            [ 1]  971 	jreq	00104$
      00AD66 7B 03            [ 1]  972 	ld	a, (0x03, sp)
      00AD68 A1 40            [ 1]  973 	cp	a, #0x40
      00AD6A 27 0F            [ 1]  974 	jreq	00104$
      00AD6C 4B D7            [ 1]  975 	push	#0xd7
      00AD6E 4B 01            [ 1]  976 	push	#0x01
      00AD70 5F               [ 1]  977 	clrw	x
      00AD71 89               [ 2]  978 	pushw	x
      00AD72 4B 90            [ 1]  979 	push	#<(___str_0+0)
      00AD74 4B 81            [ 1]  980 	push	#((___str_0+0) >> 8)
      00AD76 CD 85 9D         [ 4]  981 	call	_assert_failed
      00AD79 5B 06            [ 2]  982 	addw	sp, #6
      00AD7B                        983 00104$:
                                    984 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 474: TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
      00AD7B C6 53 26         [ 1]  985 	ld	a, 0x5326
      00AD7E A4 8F            [ 1]  986 	and	a, #0x8f
      00AD80 1A 03            [ 1]  987 	or	a, (0x03, sp)
      00AD82 C7 53 26         [ 1]  988 	ld	0x5326, a
                                    989 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 475: }
      00AD85 81               [ 4]  990 	ret
                                    991 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 483: void TIM3_ARRPreloadConfig(FunctionalState NewState)
                                    992 ;	-----------------------------------------
                                    993 ;	 function TIM3_ARRPreloadConfig
                                    994 ;	-----------------------------------------
      00AD86                        995 _TIM3_ARRPreloadConfig:
                                    996 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 486: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00AD86 0D 03            [ 1]  997 	tnz	(0x03, sp)
      00AD88 27 14            [ 1]  998 	jreq	00107$
      00AD8A 7B 03            [ 1]  999 	ld	a, (0x03, sp)
      00AD8C 4A               [ 1] 1000 	dec	a
      00AD8D 27 0F            [ 1] 1001 	jreq	00107$
      00AD8F 4B E6            [ 1] 1002 	push	#0xe6
      00AD91 4B 01            [ 1] 1003 	push	#0x01
      00AD93 5F               [ 1] 1004 	clrw	x
      00AD94 89               [ 2] 1005 	pushw	x
      00AD95 4B 90            [ 1] 1006 	push	#<(___str_0+0)
      00AD97 4B 81            [ 1] 1007 	push	#((___str_0+0) >> 8)
      00AD99 CD 85 9D         [ 4] 1008 	call	_assert_failed
      00AD9C 5B 06            [ 2] 1009 	addw	sp, #6
      00AD9E                       1010 00107$:
                                   1011 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
      00AD9E C6 53 20         [ 1] 1012 	ld	a, 0x5320
                                   1013 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 489: if (NewState != DISABLE)
      00ADA1 0D 03            [ 1] 1014 	tnz	(0x03, sp)
      00ADA3 27 06            [ 1] 1015 	jreq	00102$
                                   1016 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
      00ADA5 AA 80            [ 1] 1017 	or	a, #0x80
      00ADA7 C7 53 20         [ 1] 1018 	ld	0x5320, a
      00ADAA 81               [ 4] 1019 	ret
      00ADAB                       1020 00102$:
                                   1021 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 495: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
      00ADAB A4 7F            [ 1] 1022 	and	a, #0x7f
      00ADAD C7 53 20         [ 1] 1023 	ld	0x5320, a
                                   1024 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 497: }
      00ADB0 81               [ 4] 1025 	ret
                                   1026 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 505: void TIM3_OC1PreloadConfig(FunctionalState NewState)
                                   1027 ;	-----------------------------------------
                                   1028 ;	 function TIM3_OC1PreloadConfig
                                   1029 ;	-----------------------------------------
      00ADB1                       1030 _TIM3_OC1PreloadConfig:
                                   1031 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 508: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00ADB1 0D 03            [ 1] 1032 	tnz	(0x03, sp)
      00ADB3 27 14            [ 1] 1033 	jreq	00107$
      00ADB5 7B 03            [ 1] 1034 	ld	a, (0x03, sp)
      00ADB7 4A               [ 1] 1035 	dec	a
      00ADB8 27 0F            [ 1] 1036 	jreq	00107$
      00ADBA 4B FC            [ 1] 1037 	push	#0xfc
      00ADBC 4B 01            [ 1] 1038 	push	#0x01
      00ADBE 5F               [ 1] 1039 	clrw	x
      00ADBF 89               [ 2] 1040 	pushw	x
      00ADC0 4B 90            [ 1] 1041 	push	#<(___str_0+0)
      00ADC2 4B 81            [ 1] 1042 	push	#((___str_0+0) >> 8)
      00ADC4 CD 85 9D         [ 4] 1043 	call	_assert_failed
      00ADC7 5B 06            [ 2] 1044 	addw	sp, #6
      00ADC9                       1045 00107$:
                                   1046 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
      00ADC9 C6 53 25         [ 1] 1047 	ld	a, 0x5325
                                   1048 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 511: if (NewState != DISABLE)
      00ADCC 0D 03            [ 1] 1049 	tnz	(0x03, sp)
      00ADCE 27 06            [ 1] 1050 	jreq	00102$
                                   1051 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
      00ADD0 AA 08            [ 1] 1052 	or	a, #0x08
      00ADD2 C7 53 25         [ 1] 1053 	ld	0x5325, a
      00ADD5 81               [ 4] 1054 	ret
      00ADD6                       1055 00102$:
                                   1056 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 517: TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
      00ADD6 A4 F7            [ 1] 1057 	and	a, #0xf7
      00ADD8 C7 53 25         [ 1] 1058 	ld	0x5325, a
                                   1059 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 519: }
      00ADDB 81               [ 4] 1060 	ret
                                   1061 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 527: void TIM3_OC2PreloadConfig(FunctionalState NewState)
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function TIM3_OC2PreloadConfig
                                   1064 ;	-----------------------------------------
      00ADDC                       1065 _TIM3_OC2PreloadConfig:
                                   1066 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 530: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00ADDC 0D 03            [ 1] 1067 	tnz	(0x03, sp)
      00ADDE 27 14            [ 1] 1068 	jreq	00107$
      00ADE0 7B 03            [ 1] 1069 	ld	a, (0x03, sp)
      00ADE2 4A               [ 1] 1070 	dec	a
      00ADE3 27 0F            [ 1] 1071 	jreq	00107$
      00ADE5 4B 12            [ 1] 1072 	push	#0x12
      00ADE7 4B 02            [ 1] 1073 	push	#0x02
      00ADE9 5F               [ 1] 1074 	clrw	x
      00ADEA 89               [ 2] 1075 	pushw	x
      00ADEB 4B 90            [ 1] 1076 	push	#<(___str_0+0)
      00ADED 4B 81            [ 1] 1077 	push	#((___str_0+0) >> 8)
      00ADEF CD 85 9D         [ 4] 1078 	call	_assert_failed
      00ADF2 5B 06            [ 2] 1079 	addw	sp, #6
      00ADF4                       1080 00107$:
                                   1081 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
      00ADF4 C6 53 26         [ 1] 1082 	ld	a, 0x5326
                                   1083 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 533: if (NewState != DISABLE)
      00ADF7 0D 03            [ 1] 1084 	tnz	(0x03, sp)
      00ADF9 27 06            [ 1] 1085 	jreq	00102$
                                   1086 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
      00ADFB AA 08            [ 1] 1087 	or	a, #0x08
      00ADFD C7 53 26         [ 1] 1088 	ld	0x5326, a
      00AE00 81               [ 4] 1089 	ret
      00AE01                       1090 00102$:
                                   1091 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 539: TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
      00AE01 A4 F7            [ 1] 1092 	and	a, #0xf7
      00AE03 C7 53 26         [ 1] 1093 	ld	0x5326, a
                                   1094 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 541: }
      00AE06 81               [ 4] 1095 	ret
                                   1096 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 552: void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
                                   1097 ;	-----------------------------------------
                                   1098 ;	 function TIM3_GenerateEvent
                                   1099 ;	-----------------------------------------
      00AE07                       1100 _TIM3_GenerateEvent:
                                   1101 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 555: assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
      00AE07 0D 03            [ 1] 1102 	tnz	(0x03, sp)
      00AE09 26 0F            [ 1] 1103 	jrne	00104$
      00AE0B 4B 2B            [ 1] 1104 	push	#0x2b
      00AE0D 4B 02            [ 1] 1105 	push	#0x02
      00AE0F 5F               [ 1] 1106 	clrw	x
      00AE10 89               [ 2] 1107 	pushw	x
      00AE11 4B 90            [ 1] 1108 	push	#<(___str_0+0)
      00AE13 4B 81            [ 1] 1109 	push	#((___str_0+0) >> 8)
      00AE15 CD 85 9D         [ 4] 1110 	call	_assert_failed
      00AE18 5B 06            [ 2] 1111 	addw	sp, #6
      00AE1A                       1112 00104$:
                                   1113 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 558: TIM3->EGR = (uint8_t)TIM3_EventSource;
      00AE1A AE 53 24         [ 2] 1114 	ldw	x, #0x5324
      00AE1D 7B 03            [ 1] 1115 	ld	a, (0x03, sp)
      00AE1F F7               [ 1] 1116 	ld	(x), a
                                   1117 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 559: }
      00AE20 81               [ 4] 1118 	ret
                                   1119 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 569: void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
                                   1120 ;	-----------------------------------------
                                   1121 ;	 function TIM3_OC1PolarityConfig
                                   1122 ;	-----------------------------------------
      00AE21                       1123 _TIM3_OC1PolarityConfig:
                                   1124 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 572: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
      00AE21 0D 03            [ 1] 1125 	tnz	(0x03, sp)
      00AE23 27 15            [ 1] 1126 	jreq	00107$
      00AE25 7B 03            [ 1] 1127 	ld	a, (0x03, sp)
      00AE27 A1 22            [ 1] 1128 	cp	a, #0x22
      00AE29 27 0F            [ 1] 1129 	jreq	00107$
      00AE2B 4B 3C            [ 1] 1130 	push	#0x3c
      00AE2D 4B 02            [ 1] 1131 	push	#0x02
      00AE2F 5F               [ 1] 1132 	clrw	x
      00AE30 89               [ 2] 1133 	pushw	x
      00AE31 4B 90            [ 1] 1134 	push	#<(___str_0+0)
      00AE33 4B 81            [ 1] 1135 	push	#((___str_0+0) >> 8)
      00AE35 CD 85 9D         [ 4] 1136 	call	_assert_failed
      00AE38 5B 06            [ 2] 1137 	addw	sp, #6
      00AE3A                       1138 00107$:
                                   1139 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      00AE3A C6 53 27         [ 1] 1140 	ld	a, 0x5327
                                   1141 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 575: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
      00AE3D 0D 03            [ 1] 1142 	tnz	(0x03, sp)
      00AE3F 27 06            [ 1] 1143 	jreq	00102$
                                   1144 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      00AE41 AA 02            [ 1] 1145 	or	a, #0x02
      00AE43 C7 53 27         [ 1] 1146 	ld	0x5327, a
      00AE46 81               [ 4] 1147 	ret
      00AE47                       1148 00102$:
                                   1149 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 581: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
      00AE47 A4 FD            [ 1] 1150 	and	a, #0xfd
      00AE49 C7 53 27         [ 1] 1151 	ld	0x5327, a
                                   1152 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 583: }
      00AE4C 81               [ 4] 1153 	ret
                                   1154 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 593: void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
                                   1155 ;	-----------------------------------------
                                   1156 ;	 function TIM3_OC2PolarityConfig
                                   1157 ;	-----------------------------------------
      00AE4D                       1158 _TIM3_OC2PolarityConfig:
                                   1159 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 596: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
      00AE4D 0D 03            [ 1] 1160 	tnz	(0x03, sp)
      00AE4F 27 15            [ 1] 1161 	jreq	00107$
      00AE51 7B 03            [ 1] 1162 	ld	a, (0x03, sp)
      00AE53 A1 22            [ 1] 1163 	cp	a, #0x22
      00AE55 27 0F            [ 1] 1164 	jreq	00107$
      00AE57 4B 54            [ 1] 1165 	push	#0x54
      00AE59 4B 02            [ 1] 1166 	push	#0x02
      00AE5B 5F               [ 1] 1167 	clrw	x
      00AE5C 89               [ 2] 1168 	pushw	x
      00AE5D 4B 90            [ 1] 1169 	push	#<(___str_0+0)
      00AE5F 4B 81            [ 1] 1170 	push	#((___str_0+0) >> 8)
      00AE61 CD 85 9D         [ 4] 1171 	call	_assert_failed
      00AE64 5B 06            [ 2] 1172 	addw	sp, #6
      00AE66                       1173 00107$:
                                   1174 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      00AE66 C6 53 27         [ 1] 1175 	ld	a, 0x5327
                                   1176 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 599: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
      00AE69 0D 03            [ 1] 1177 	tnz	(0x03, sp)
      00AE6B 27 06            [ 1] 1178 	jreq	00102$
                                   1179 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      00AE6D AA 20            [ 1] 1180 	or	a, #0x20
      00AE6F C7 53 27         [ 1] 1181 	ld	0x5327, a
      00AE72 81               [ 4] 1182 	ret
      00AE73                       1183 00102$:
                                   1184 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 605: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
      00AE73 A4 DF            [ 1] 1185 	and	a, #0xdf
      00AE75 C7 53 27         [ 1] 1186 	ld	0x5327, a
                                   1187 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 607: }
      00AE78 81               [ 4] 1188 	ret
                                   1189 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 619: void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
                                   1190 ;	-----------------------------------------
                                   1191 ;	 function TIM3_CCxCmd
                                   1192 ;	-----------------------------------------
      00AE79                       1193 _TIM3_CCxCmd:
                                   1194 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 622: assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
      00AE79 0D 03            [ 1] 1195 	tnz	(0x03, sp)
      00AE7B 27 14            [ 1] 1196 	jreq	00113$
      00AE7D 7B 03            [ 1] 1197 	ld	a, (0x03, sp)
      00AE7F 4A               [ 1] 1198 	dec	a
      00AE80 27 0F            [ 1] 1199 	jreq	00113$
      00AE82 4B 6E            [ 1] 1200 	push	#0x6e
      00AE84 4B 02            [ 1] 1201 	push	#0x02
      00AE86 5F               [ 1] 1202 	clrw	x
      00AE87 89               [ 2] 1203 	pushw	x
      00AE88 4B 90            [ 1] 1204 	push	#<(___str_0+0)
      00AE8A 4B 81            [ 1] 1205 	push	#((___str_0+0) >> 8)
      00AE8C CD 85 9D         [ 4] 1206 	call	_assert_failed
      00AE8F 5B 06            [ 2] 1207 	addw	sp, #6
      00AE91                       1208 00113$:
                                   1209 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 623: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00AE91 0D 04            [ 1] 1210 	tnz	(0x04, sp)
      00AE93 27 14            [ 1] 1211 	jreq	00118$
      00AE95 7B 04            [ 1] 1212 	ld	a, (0x04, sp)
      00AE97 4A               [ 1] 1213 	dec	a
      00AE98 27 0F            [ 1] 1214 	jreq	00118$
      00AE9A 4B 6F            [ 1] 1215 	push	#0x6f
      00AE9C 4B 02            [ 1] 1216 	push	#0x02
      00AE9E 5F               [ 1] 1217 	clrw	x
      00AE9F 89               [ 2] 1218 	pushw	x
      00AEA0 4B 90            [ 1] 1219 	push	#<(___str_0+0)
      00AEA2 4B 81            [ 1] 1220 	push	#((___str_0+0) >> 8)
      00AEA4 CD 85 9D         [ 4] 1221 	call	_assert_failed
      00AEA7 5B 06            [ 2] 1222 	addw	sp, #6
      00AEA9                       1223 00118$:
                                   1224 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      00AEA9 C6 53 27         [ 1] 1225 	ld	a, 0x5327
                                   1226 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 625: if (TIM3_Channel == TIM3_CHANNEL_1)
      00AEAC 0D 03            [ 1] 1227 	tnz	(0x03, sp)
      00AEAE 26 10            [ 1] 1228 	jrne	00108$
                                   1229 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 628: if (NewState != DISABLE)
      00AEB0 0D 04            [ 1] 1230 	tnz	(0x04, sp)
      00AEB2 27 06            [ 1] 1231 	jreq	00102$
                                   1232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      00AEB4 AA 01            [ 1] 1233 	or	a, #0x01
      00AEB6 C7 53 27         [ 1] 1234 	ld	0x5327, a
      00AEB9 81               [ 4] 1235 	ret
      00AEBA                       1236 00102$:
                                   1237 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 634: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00AEBA A4 FE            [ 1] 1238 	and	a, #0xfe
      00AEBC C7 53 27         [ 1] 1239 	ld	0x5327, a
      00AEBF 81               [ 4] 1240 	ret
      00AEC0                       1241 00108$:
                                   1242 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 641: if (NewState != DISABLE)
      00AEC0 0D 04            [ 1] 1243 	tnz	(0x04, sp)
      00AEC2 27 06            [ 1] 1244 	jreq	00105$
                                   1245 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 643: TIM3->CCER1 |= TIM3_CCER1_CC2E;
      00AEC4 AA 10            [ 1] 1246 	or	a, #0x10
      00AEC6 C7 53 27         [ 1] 1247 	ld	0x5327, a
      00AEC9 81               [ 4] 1248 	ret
      00AECA                       1249 00105$:
                                   1250 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 647: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
      00AECA A4 EF            [ 1] 1251 	and	a, #0xef
      00AECC C7 53 27         [ 1] 1252 	ld	0x5327, a
                                   1253 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 650: }
      00AECF 81               [ 4] 1254 	ret
                                   1255 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 671: void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
                                   1256 ;	-----------------------------------------
                                   1257 ;	 function TIM3_SelectOCxM
                                   1258 ;	-----------------------------------------
      00AED0                       1259 _TIM3_SelectOCxM:
                                   1260 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 674: assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
      00AED0 0D 03            [ 1] 1261 	tnz	(0x03, sp)
      00AED2 27 14            [ 1] 1262 	jreq	00107$
      00AED4 7B 03            [ 1] 1263 	ld	a, (0x03, sp)
      00AED6 4A               [ 1] 1264 	dec	a
      00AED7 27 0F            [ 1] 1265 	jreq	00107$
      00AED9 4B A2            [ 1] 1266 	push	#0xa2
      00AEDB 4B 02            [ 1] 1267 	push	#0x02
      00AEDD 5F               [ 1] 1268 	clrw	x
      00AEDE 89               [ 2] 1269 	pushw	x
      00AEDF 4B 90            [ 1] 1270 	push	#<(___str_0+0)
      00AEE1 4B 81            [ 1] 1271 	push	#((___str_0+0) >> 8)
      00AEE3 CD 85 9D         [ 4] 1272 	call	_assert_failed
      00AEE6 5B 06            [ 2] 1273 	addw	sp, #6
      00AEE8                       1274 00107$:
                                   1275 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 675: assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
      00AEE8 0D 04            [ 1] 1276 	tnz	(0x04, sp)
      00AEEA 27 39            [ 1] 1277 	jreq	00112$
      00AEEC 7B 04            [ 1] 1278 	ld	a, (0x04, sp)
      00AEEE A1 10            [ 1] 1279 	cp	a, #0x10
      00AEF0 27 33            [ 1] 1280 	jreq	00112$
      00AEF2 7B 04            [ 1] 1281 	ld	a, (0x04, sp)
      00AEF4 A1 20            [ 1] 1282 	cp	a, #0x20
      00AEF6 27 2D            [ 1] 1283 	jreq	00112$
      00AEF8 7B 04            [ 1] 1284 	ld	a, (0x04, sp)
      00AEFA A1 30            [ 1] 1285 	cp	a, #0x30
      00AEFC 27 27            [ 1] 1286 	jreq	00112$
      00AEFE 7B 04            [ 1] 1287 	ld	a, (0x04, sp)
      00AF00 A1 60            [ 1] 1288 	cp	a, #0x60
      00AF02 27 21            [ 1] 1289 	jreq	00112$
      00AF04 7B 04            [ 1] 1290 	ld	a, (0x04, sp)
      00AF06 A1 70            [ 1] 1291 	cp	a, #0x70
      00AF08 27 1B            [ 1] 1292 	jreq	00112$
      00AF0A 7B 04            [ 1] 1293 	ld	a, (0x04, sp)
      00AF0C A1 50            [ 1] 1294 	cp	a, #0x50
      00AF0E 27 15            [ 1] 1295 	jreq	00112$
      00AF10 7B 04            [ 1] 1296 	ld	a, (0x04, sp)
      00AF12 A1 40            [ 1] 1297 	cp	a, #0x40
      00AF14 27 0F            [ 1] 1298 	jreq	00112$
      00AF16 4B A3            [ 1] 1299 	push	#0xa3
      00AF18 4B 02            [ 1] 1300 	push	#0x02
      00AF1A 5F               [ 1] 1301 	clrw	x
      00AF1B 89               [ 2] 1302 	pushw	x
      00AF1C 4B 90            [ 1] 1303 	push	#<(___str_0+0)
      00AF1E 4B 81            [ 1] 1304 	push	#((___str_0+0) >> 8)
      00AF20 CD 85 9D         [ 4] 1305 	call	_assert_failed
      00AF23 5B 06            [ 2] 1306 	addw	sp, #6
      00AF25                       1307 00112$:
                                   1308 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00AF25 C6 53 27         [ 1] 1309 	ld	a, 0x5327
                                   1310 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 677: if (TIM3_Channel == TIM3_CHANNEL_1)
      00AF28 0D 03            [ 1] 1311 	tnz	(0x03, sp)
      00AF2A 26 10            [ 1] 1312 	jrne	00102$
                                   1313 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00AF2C A4 FE            [ 1] 1314 	and	a, #0xfe
      00AF2E C7 53 27         [ 1] 1315 	ld	0x5327, a
                                   1316 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 683: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      00AF31 C6 53 25         [ 1] 1317 	ld	a, 0x5325
      00AF34 A4 8F            [ 1] 1318 	and	a, #0x8f
      00AF36 1A 04            [ 1] 1319 	or	a, (0x04, sp)
      00AF38 C7 53 25         [ 1] 1320 	ld	0x5325, a
      00AF3B 81               [ 4] 1321 	ret
      00AF3C                       1322 00102$:
                                   1323 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 688: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
      00AF3C A4 EF            [ 1] 1324 	and	a, #0xef
      00AF3E C7 53 27         [ 1] 1325 	ld	0x5327, a
                                   1326 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 691: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      00AF41 C6 53 26         [ 1] 1327 	ld	a, 0x5326
      00AF44 A4 8F            [ 1] 1328 	and	a, #0x8f
      00AF46 1A 04            [ 1] 1329 	or	a, (0x04, sp)
      00AF48 C7 53 26         [ 1] 1330 	ld	0x5326, a
                                   1331 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 693: }
      00AF4B 81               [ 4] 1332 	ret
                                   1333 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 701: void TIM3_SetCounter(uint16_t Counter)
                                   1334 ;	-----------------------------------------
                                   1335 ;	 function TIM3_SetCounter
                                   1336 ;	-----------------------------------------
      00AF4C                       1337 _TIM3_SetCounter:
                                   1338 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 704: TIM3->CNTRH = (uint8_t)(Counter >> 8);
      00AF4C 7B 03            [ 1] 1339 	ld	a, (0x03, sp)
      00AF4E C7 53 28         [ 1] 1340 	ld	0x5328, a
                                   1341 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 705: TIM3->CNTRL = (uint8_t)(Counter);
      00AF51 7B 04            [ 1] 1342 	ld	a, (0x04, sp)
      00AF53 C7 53 29         [ 1] 1343 	ld	0x5329, a
                                   1344 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 706: }
      00AF56 81               [ 4] 1345 	ret
                                   1346 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 714: void TIM3_SetAutoreload(uint16_t Autoreload)
                                   1347 ;	-----------------------------------------
                                   1348 ;	 function TIM3_SetAutoreload
                                   1349 ;	-----------------------------------------
      00AF57                       1350 _TIM3_SetAutoreload:
                                   1351 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 717: TIM3->ARRH = (uint8_t)(Autoreload >> 8);
      00AF57 7B 03            [ 1] 1352 	ld	a, (0x03, sp)
      00AF59 C7 53 2B         [ 1] 1353 	ld	0x532b, a
                                   1354 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 718: TIM3->ARRL = (uint8_t)(Autoreload);
      00AF5C 7B 04            [ 1] 1355 	ld	a, (0x04, sp)
      00AF5E C7 53 2C         [ 1] 1356 	ld	0x532c, a
                                   1357 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 719: }
      00AF61 81               [ 4] 1358 	ret
                                   1359 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 727: void TIM3_SetCompare1(uint16_t Compare1)
                                   1360 ;	-----------------------------------------
                                   1361 ;	 function TIM3_SetCompare1
                                   1362 ;	-----------------------------------------
      00AF62                       1363 _TIM3_SetCompare1:
                                   1364 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 730: TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
      00AF62 7B 03            [ 1] 1365 	ld	a, (0x03, sp)
      00AF64 C7 53 2D         [ 1] 1366 	ld	0x532d, a
                                   1367 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 731: TIM3->CCR1L = (uint8_t)(Compare1);
      00AF67 7B 04            [ 1] 1368 	ld	a, (0x04, sp)
      00AF69 C7 53 2E         [ 1] 1369 	ld	0x532e, a
                                   1370 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 732: }
      00AF6C 81               [ 4] 1371 	ret
                                   1372 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 740: void TIM3_SetCompare2(uint16_t Compare2)
                                   1373 ;	-----------------------------------------
                                   1374 ;	 function TIM3_SetCompare2
                                   1375 ;	-----------------------------------------
      00AF6D                       1376 _TIM3_SetCompare2:
                                   1377 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 743: TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
      00AF6D 7B 03            [ 1] 1378 	ld	a, (0x03, sp)
      00AF6F C7 53 2F         [ 1] 1379 	ld	0x532f, a
                                   1380 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 744: TIM3->CCR2L = (uint8_t)(Compare2);
      00AF72 7B 04            [ 1] 1381 	ld	a, (0x04, sp)
      00AF74 C7 53 30         [ 1] 1382 	ld	0x5330, a
                                   1383 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 745: }
      00AF77 81               [ 4] 1384 	ret
                                   1385 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 757: void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
                                   1386 ;	-----------------------------------------
                                   1387 ;	 function TIM3_SetIC1Prescaler
                                   1388 ;	-----------------------------------------
      00AF78                       1389 _TIM3_SetIC1Prescaler:
                                   1390 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 760: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
      00AF78 0D 03            [ 1] 1391 	tnz	(0x03, sp)
      00AF7A 27 21            [ 1] 1392 	jreq	00104$
      00AF7C 7B 03            [ 1] 1393 	ld	a, (0x03, sp)
      00AF7E A1 04            [ 1] 1394 	cp	a, #0x04
      00AF80 27 1B            [ 1] 1395 	jreq	00104$
      00AF82 7B 03            [ 1] 1396 	ld	a, (0x03, sp)
      00AF84 A1 08            [ 1] 1397 	cp	a, #0x08
      00AF86 27 15            [ 1] 1398 	jreq	00104$
      00AF88 7B 03            [ 1] 1399 	ld	a, (0x03, sp)
      00AF8A A1 0C            [ 1] 1400 	cp	a, #0x0c
      00AF8C 27 0F            [ 1] 1401 	jreq	00104$
      00AF8E 4B F8            [ 1] 1402 	push	#0xf8
      00AF90 4B 02            [ 1] 1403 	push	#0x02
      00AF92 5F               [ 1] 1404 	clrw	x
      00AF93 89               [ 2] 1405 	pushw	x
      00AF94 4B 90            [ 1] 1406 	push	#<(___str_0+0)
      00AF96 4B 81            [ 1] 1407 	push	#((___str_0+0) >> 8)
      00AF98 CD 85 9D         [ 4] 1408 	call	_assert_failed
      00AF9B 5B 06            [ 2] 1409 	addw	sp, #6
      00AF9D                       1410 00104$:
                                   1411 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 763: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
      00AF9D C6 53 25         [ 1] 1412 	ld	a, 0x5325
      00AFA0 A4 F3            [ 1] 1413 	and	a, #0xf3
      00AFA2 1A 03            [ 1] 1414 	or	a, (0x03, sp)
      00AFA4 C7 53 25         [ 1] 1415 	ld	0x5325, a
                                   1416 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 764: }
      00AFA7 81               [ 4] 1417 	ret
                                   1418 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 776: void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
                                   1419 ;	-----------------------------------------
                                   1420 ;	 function TIM3_SetIC2Prescaler
                                   1421 ;	-----------------------------------------
      00AFA8                       1422 _TIM3_SetIC2Prescaler:
                                   1423 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 779: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
      00AFA8 0D 03            [ 1] 1424 	tnz	(0x03, sp)
      00AFAA 27 21            [ 1] 1425 	jreq	00104$
      00AFAC 7B 03            [ 1] 1426 	ld	a, (0x03, sp)
      00AFAE A1 04            [ 1] 1427 	cp	a, #0x04
      00AFB0 27 1B            [ 1] 1428 	jreq	00104$
      00AFB2 7B 03            [ 1] 1429 	ld	a, (0x03, sp)
      00AFB4 A1 08            [ 1] 1430 	cp	a, #0x08
      00AFB6 27 15            [ 1] 1431 	jreq	00104$
      00AFB8 7B 03            [ 1] 1432 	ld	a, (0x03, sp)
      00AFBA A1 0C            [ 1] 1433 	cp	a, #0x0c
      00AFBC 27 0F            [ 1] 1434 	jreq	00104$
      00AFBE 4B 0B            [ 1] 1435 	push	#0x0b
      00AFC0 4B 03            [ 1] 1436 	push	#0x03
      00AFC2 5F               [ 1] 1437 	clrw	x
      00AFC3 89               [ 2] 1438 	pushw	x
      00AFC4 4B 90            [ 1] 1439 	push	#<(___str_0+0)
      00AFC6 4B 81            [ 1] 1440 	push	#((___str_0+0) >> 8)
      00AFC8 CD 85 9D         [ 4] 1441 	call	_assert_failed
      00AFCB 5B 06            [ 2] 1442 	addw	sp, #6
      00AFCD                       1443 00104$:
                                   1444 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 782: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
      00AFCD C6 53 26         [ 1] 1445 	ld	a, 0x5326
      00AFD0 A4 F3            [ 1] 1446 	and	a, #0xf3
      00AFD2 1A 03            [ 1] 1447 	or	a, (0x03, sp)
      00AFD4 C7 53 26         [ 1] 1448 	ld	0x5326, a
                                   1449 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 783: }
      00AFD7 81               [ 4] 1450 	ret
                                   1451 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 790: uint16_t TIM3_GetCapture1(void)
                                   1452 ;	-----------------------------------------
                                   1453 ;	 function TIM3_GetCapture1
                                   1454 ;	-----------------------------------------
      00AFD8                       1455 _TIM3_GetCapture1:
      00AFD8 89               [ 2] 1456 	pushw	x
                                   1457 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 796: tmpccr1h = TIM3->CCR1H;
      00AFD9 C6 53 2D         [ 1] 1458 	ld	a, 0x532d
      00AFDC 95               [ 1] 1459 	ld	xh, a
                                   1460 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 797: tmpccr1l = TIM3->CCR1L;
      00AFDD C6 53 2E         [ 1] 1461 	ld	a, 0x532e
                                   1462 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 799: tmpccr1 = (uint16_t)(tmpccr1l);
      00AFE0 97               [ 1] 1463 	ld	xl, a
      00AFE1 4F               [ 1] 1464 	clr	a
                                   1465 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 800: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      00AFE2 0F 02            [ 1] 1466 	clr	(0x02, sp)
      00AFE4 89               [ 2] 1467 	pushw	x
      00AFE5 1A 01            [ 1] 1468 	or	a, (1, sp)
      00AFE7 85               [ 2] 1469 	popw	x
      00AFE8 01               [ 1] 1470 	rrwa	x
      00AFE9 1A 02            [ 1] 1471 	or	a, (0x02, sp)
      00AFEB 97               [ 1] 1472 	ld	xl, a
                                   1473 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 802: return (uint16_t)tmpccr1;
                                   1474 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 803: }
      00AFEC 5B 02            [ 2] 1475 	addw	sp, #2
      00AFEE 81               [ 4] 1476 	ret
                                   1477 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 810: uint16_t TIM3_GetCapture2(void)
                                   1478 ;	-----------------------------------------
                                   1479 ;	 function TIM3_GetCapture2
                                   1480 ;	-----------------------------------------
      00AFEF                       1481 _TIM3_GetCapture2:
      00AFEF 89               [ 2] 1482 	pushw	x
                                   1483 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 816: tmpccr2h = TIM3->CCR2H;
      00AFF0 C6 53 2F         [ 1] 1484 	ld	a, 0x532f
      00AFF3 95               [ 1] 1485 	ld	xh, a
                                   1486 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 817: tmpccr2l = TIM3->CCR2L;
      00AFF4 C6 53 30         [ 1] 1487 	ld	a, 0x5330
                                   1488 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 819: tmpccr2 = (uint16_t)(tmpccr2l);
      00AFF7 97               [ 1] 1489 	ld	xl, a
      00AFF8 4F               [ 1] 1490 	clr	a
                                   1491 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 820: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      00AFF9 0F 02            [ 1] 1492 	clr	(0x02, sp)
      00AFFB 89               [ 2] 1493 	pushw	x
      00AFFC 1A 01            [ 1] 1494 	or	a, (1, sp)
      00AFFE 85               [ 2] 1495 	popw	x
      00AFFF 01               [ 1] 1496 	rrwa	x
      00B000 1A 02            [ 1] 1497 	or	a, (0x02, sp)
      00B002 97               [ 1] 1498 	ld	xl, a
                                   1499 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 822: return (uint16_t)tmpccr2;
                                   1500 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 823: }
      00B003 5B 02            [ 2] 1501 	addw	sp, #2
      00B005 81               [ 4] 1502 	ret
                                   1503 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 830: uint16_t TIM3_GetCounter(void)
                                   1504 ;	-----------------------------------------
                                   1505 ;	 function TIM3_GetCounter
                                   1506 ;	-----------------------------------------
      00B006                       1507 _TIM3_GetCounter:
      00B006 52 04            [ 2] 1508 	sub	sp, #4
                                   1509 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 834: tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
      00B008 C6 53 28         [ 1] 1510 	ld	a, 0x5328
      00B00B 5F               [ 1] 1511 	clrw	x
      00B00C 95               [ 1] 1512 	ld	xh, a
      00B00D 4F               [ 1] 1513 	clr	a
      00B00E 6B 02            [ 1] 1514 	ld	(0x02, sp), a
                                   1515 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 836: return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
      00B010 C6 53 29         [ 1] 1516 	ld	a, 0x5329
      00B013 0F 03            [ 1] 1517 	clr	(0x03, sp)
      00B015 1A 02            [ 1] 1518 	or	a, (0x02, sp)
      00B017 02               [ 1] 1519 	rlwa	x
      00B018 1A 03            [ 1] 1520 	or	a, (0x03, sp)
      00B01A 95               [ 1] 1521 	ld	xh, a
                                   1522 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 837: }
      00B01B 5B 04            [ 2] 1523 	addw	sp, #4
      00B01D 81               [ 4] 1524 	ret
                                   1525 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 844: TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
                                   1526 ;	-----------------------------------------
                                   1527 ;	 function TIM3_GetPrescaler
                                   1528 ;	-----------------------------------------
      00B01E                       1529 _TIM3_GetPrescaler:
                                   1530 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 847: return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
      00B01E C6 53 2A         [ 1] 1531 	ld	a, 0x532a
                                   1532 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 848: }
      00B021 81               [ 4] 1533 	ret
                                   1534 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 861: FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
                                   1535 ;	-----------------------------------------
                                   1536 ;	 function TIM3_GetFlagStatus
                                   1537 ;	-----------------------------------------
      00B022                       1538 _TIM3_GetFlagStatus:
      00B022 88               [ 1] 1539 	push	a
                                   1540 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 867: assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
      00B023 1E 04            [ 2] 1541 	ldw	x, (0x04, sp)
      00B025 A3 00 01         [ 2] 1542 	cpw	x, #0x0001
      00B028 27 27            [ 1] 1543 	jreq	00107$
      00B02A A3 00 02         [ 2] 1544 	cpw	x, #0x0002
      00B02D 27 22            [ 1] 1545 	jreq	00107$
      00B02F A3 00 04         [ 2] 1546 	cpw	x, #0x0004
      00B032 27 1D            [ 1] 1547 	jreq	00107$
      00B034 A3 02 00         [ 2] 1548 	cpw	x, #0x0200
      00B037 27 18            [ 1] 1549 	jreq	00107$
      00B039 A3 04 00         [ 2] 1550 	cpw	x, #0x0400
      00B03C 27 13            [ 1] 1551 	jreq	00107$
      00B03E 89               [ 2] 1552 	pushw	x
      00B03F 4B 63            [ 1] 1553 	push	#0x63
      00B041 4B 03            [ 1] 1554 	push	#0x03
      00B043 4B 00            [ 1] 1555 	push	#0x00
      00B045 4B 00            [ 1] 1556 	push	#0x00
      00B047 4B 90            [ 1] 1557 	push	#<(___str_0+0)
      00B049 4B 81            [ 1] 1558 	push	#((___str_0+0) >> 8)
      00B04B CD 85 9D         [ 4] 1559 	call	_assert_failed
      00B04E 5B 06            [ 2] 1560 	addw	sp, #6
      00B050 85               [ 2] 1561 	popw	x
      00B051                       1562 00107$:
                                   1563 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 869: tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
      00B051 C6 53 22         [ 1] 1564 	ld	a, 0x5322
      00B054 6B 01            [ 1] 1565 	ld	(0x01, sp), a
      00B056 7B 05            [ 1] 1566 	ld	a, (0x05, sp)
      00B058 14 01            [ 1] 1567 	and	a, (0x01, sp)
      00B05A 6B 01            [ 1] 1568 	ld	(0x01, sp), a
                                   1569 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 870: tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
                                   1570 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 872: if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
      00B05C C6 53 23         [ 1] 1571 	ld	a, 0x5323
      00B05F 89               [ 2] 1572 	pushw	x
      00B060 14 01            [ 1] 1573 	and	a, (1, sp)
      00B062 85               [ 2] 1574 	popw	x
      00B063 1A 01            [ 1] 1575 	or	a, (0x01, sp)
      00B065 27 03            [ 1] 1576 	jreq	00102$
                                   1577 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 874: bitstatus = SET;
      00B067 A6 01            [ 1] 1578 	ld	a, #0x01
                                   1579 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 878: bitstatus = RESET;
      00B069 21                    1580 	.byte 0x21
      00B06A                       1581 00102$:
      00B06A 4F               [ 1] 1582 	clr	a
      00B06B                       1583 00103$:
                                   1584 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 880: return (FlagStatus)bitstatus;
                                   1585 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 881: }
      00B06B 5B 01            [ 2] 1586 	addw	sp, #1
      00B06D 81               [ 4] 1587 	ret
                                   1588 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 894: void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
                                   1589 ;	-----------------------------------------
                                   1590 ;	 function TIM3_ClearFlag
                                   1591 ;	-----------------------------------------
      00B06E                       1592 _TIM3_ClearFlag:
      00B06E 52 04            [ 2] 1593 	sub	sp, #4
                                   1594 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 897: assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
      00B070 1E 07            [ 2] 1595 	ldw	x, (0x07, sp)
      00B072 1F 01            [ 2] 1596 	ldw	(0x01, sp), x
      00B074 9F               [ 1] 1597 	ld	a, xl
      00B075 A4 F8            [ 1] 1598 	and	a, #0xf8
      00B077 6B 04            [ 1] 1599 	ld	(0x04, sp), a
      00B079 9E               [ 1] 1600 	ld	a, xh
      00B07A A4 F9            [ 1] 1601 	and	a, #0xf9
      00B07C 6B 03            [ 1] 1602 	ld	(0x03, sp), a
      00B07E 16 03            [ 2] 1603 	ldw	y, (0x03, sp)
      00B080 26 04            [ 1] 1604 	jrne	00103$
      00B082 16 01            [ 2] 1605 	ldw	y, (0x01, sp)
      00B084 26 13            [ 1] 1606 	jrne	00104$
      00B086                       1607 00103$:
      00B086 89               [ 2] 1608 	pushw	x
      00B087 4B 81            [ 1] 1609 	push	#0x81
      00B089 4B 03            [ 1] 1610 	push	#0x03
      00B08B 4B 00            [ 1] 1611 	push	#0x00
      00B08D 4B 00            [ 1] 1612 	push	#0x00
      00B08F 4B 90            [ 1] 1613 	push	#<(___str_0+0)
      00B091 4B 81            [ 1] 1614 	push	#((___str_0+0) >> 8)
      00B093 CD 85 9D         [ 4] 1615 	call	_assert_failed
      00B096 5B 06            [ 2] 1616 	addw	sp, #6
      00B098 85               [ 2] 1617 	popw	x
      00B099                       1618 00104$:
                                   1619 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 900: TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
      00B099 9F               [ 1] 1620 	ld	a, xl
      00B09A 43               [ 1] 1621 	cpl	a
      00B09B C7 53 22         [ 1] 1622 	ld	0x5322, a
                                   1623 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 901: TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
      00B09E 7B 01            [ 1] 1624 	ld	a, (0x01, sp)
      00B0A0 43               [ 1] 1625 	cpl	a
      00B0A1 C7 53 23         [ 1] 1626 	ld	0x5323, a
                                   1627 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 902: }
      00B0A4 5B 04            [ 2] 1628 	addw	sp, #4
      00B0A6 81               [ 4] 1629 	ret
                                   1630 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 913: ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
                                   1631 ;	-----------------------------------------
                                   1632 ;	 function TIM3_GetITStatus
                                   1633 ;	-----------------------------------------
      00B0A7                       1634 _TIM3_GetITStatus:
      00B0A7 88               [ 1] 1635 	push	a
                                   1636 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 919: assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
      00B0A8 7B 04            [ 1] 1637 	ld	a, (0x04, sp)
      00B0AA 4A               [ 1] 1638 	dec	a
      00B0AB 27 1B            [ 1] 1639 	jreq	00108$
      00B0AD 7B 04            [ 1] 1640 	ld	a, (0x04, sp)
      00B0AF A1 02            [ 1] 1641 	cp	a, #0x02
      00B0B1 27 15            [ 1] 1642 	jreq	00108$
      00B0B3 7B 04            [ 1] 1643 	ld	a, (0x04, sp)
      00B0B5 A1 04            [ 1] 1644 	cp	a, #0x04
      00B0B7 27 0F            [ 1] 1645 	jreq	00108$
      00B0B9 4B 97            [ 1] 1646 	push	#0x97
      00B0BB 4B 03            [ 1] 1647 	push	#0x03
      00B0BD 5F               [ 1] 1648 	clrw	x
      00B0BE 89               [ 2] 1649 	pushw	x
      00B0BF 4B 90            [ 1] 1650 	push	#<(___str_0+0)
      00B0C1 4B 81            [ 1] 1651 	push	#((___str_0+0) >> 8)
      00B0C3 CD 85 9D         [ 4] 1652 	call	_assert_failed
      00B0C6 5B 06            [ 2] 1653 	addw	sp, #6
      00B0C8                       1654 00108$:
                                   1655 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 921: TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
      00B0C8 C6 53 22         [ 1] 1656 	ld	a, 0x5322
      00B0CB 14 04            [ 1] 1657 	and	a, (0x04, sp)
      00B0CD 6B 01            [ 1] 1658 	ld	(0x01, sp), a
                                   1659 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 923: TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
      00B0CF C6 53 21         [ 1] 1660 	ld	a, 0x5321
      00B0D2 14 04            [ 1] 1661 	and	a, (0x04, sp)
                                   1662 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 925: if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
      00B0D4 0D 01            [ 1] 1663 	tnz	(0x01, sp)
      00B0D6 27 06            [ 1] 1664 	jreq	00102$
      00B0D8 4D               [ 1] 1665 	tnz	a
      00B0D9 27 03            [ 1] 1666 	jreq	00102$
                                   1667 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 927: bitstatus = SET;
      00B0DB A6 01            [ 1] 1668 	ld	a, #0x01
                                   1669 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 931: bitstatus = RESET;
      00B0DD 21                    1670 	.byte 0x21
      00B0DE                       1671 00102$:
      00B0DE 4F               [ 1] 1672 	clr	a
      00B0DF                       1673 00103$:
                                   1674 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 933: return (ITStatus)(bitstatus);
                                   1675 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 934: }
      00B0DF 5B 01            [ 2] 1676 	addw	sp, #1
      00B0E1 81               [ 4] 1677 	ret
                                   1678 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 945: void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
                                   1679 ;	-----------------------------------------
                                   1680 ;	 function TIM3_ClearITPendingBit
                                   1681 ;	-----------------------------------------
      00B0E2                       1682 _TIM3_ClearITPendingBit:
                                   1683 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 948: assert_param(IS_TIM3_IT_OK(TIM3_IT));
      00B0E2 0D 03            [ 1] 1684 	tnz	(0x03, sp)
      00B0E4 27 06            [ 1] 1685 	jreq	00103$
      00B0E6 7B 03            [ 1] 1686 	ld	a, (0x03, sp)
      00B0E8 A1 07            [ 1] 1687 	cp	a, #0x07
      00B0EA 23 0F            [ 2] 1688 	jrule	00104$
      00B0EC                       1689 00103$:
      00B0EC 4B B4            [ 1] 1690 	push	#0xb4
      00B0EE 4B 03            [ 1] 1691 	push	#0x03
      00B0F0 5F               [ 1] 1692 	clrw	x
      00B0F1 89               [ 2] 1693 	pushw	x
      00B0F2 4B 90            [ 1] 1694 	push	#<(___str_0+0)
      00B0F4 4B 81            [ 1] 1695 	push	#((___str_0+0) >> 8)
      00B0F6 CD 85 9D         [ 4] 1696 	call	_assert_failed
      00B0F9 5B 06            [ 2] 1697 	addw	sp, #6
      00B0FB                       1698 00104$:
                                   1699 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 951: TIM3->SR1 = (uint8_t)(~TIM3_IT);
      00B0FB 7B 03            [ 1] 1700 	ld	a, (0x03, sp)
      00B0FD 43               [ 1] 1701 	cpl	a
      00B0FE C7 53 22         [ 1] 1702 	ld	0x5322, a
                                   1703 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 952: }
      00B101 81               [ 4] 1704 	ret
                                   1705 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 970: static void TI1_Config(uint8_t TIM3_ICPolarity,
                                   1706 ;	-----------------------------------------
                                   1707 ;	 function TI1_Config
                                   1708 ;	-----------------------------------------
      00B102                       1709 _TI1_Config:
      00B102 88               [ 1] 1710 	push	a
                                   1711 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00B103 72 11 53 27      [ 1] 1712 	bres	21287, #0
                                   1713 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 978: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
      00B107 C6 53 25         [ 1] 1714 	ld	a, 0x5325
      00B10A A4 0C            [ 1] 1715 	and	a, #0x0c
      00B10C 6B 01            [ 1] 1716 	ld	(0x01, sp), a
      00B10E 7B 06            [ 1] 1717 	ld	a, (0x06, sp)
      00B110 4E               [ 1] 1718 	swap	a
      00B111 A4 F0            [ 1] 1719 	and	a, #0xf0
      00B113 1A 05            [ 1] 1720 	or	a, (0x05, sp)
      00B115 1A 01            [ 1] 1721 	or	a, (0x01, sp)
      00B117 C7 53 25         [ 1] 1722 	ld	0x5325, a
                                   1723 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00B11A C6 53 27         [ 1] 1724 	ld	a, 0x5327
                                   1725 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 981: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
      00B11D 0D 04            [ 1] 1726 	tnz	(0x04, sp)
      00B11F 27 07            [ 1] 1727 	jreq	00102$
                                   1728 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 983: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      00B121 AA 02            [ 1] 1729 	or	a, #0x02
      00B123 C7 53 27         [ 1] 1730 	ld	0x5327, a
      00B126 20 05            [ 2] 1731 	jra	00103$
      00B128                       1732 00102$:
                                   1733 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 987: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
      00B128 A4 FD            [ 1] 1734 	and	a, #0xfd
      00B12A C7 53 27         [ 1] 1735 	ld	0x5327, a
      00B12D                       1736 00103$:
                                   1737 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 990: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      00B12D 72 10 53 27      [ 1] 1738 	bset	21287, #0
                                   1739 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 991: }
      00B131 84               [ 1] 1740 	pop	a
      00B132 81               [ 4] 1741 	ret
                                   1742 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1009: static void TI2_Config(uint8_t TIM3_ICPolarity,
                                   1743 ;	-----------------------------------------
                                   1744 ;	 function TI2_Config
                                   1745 ;	-----------------------------------------
      00B133                       1746 _TI2_Config:
      00B133 88               [ 1] 1747 	push	a
                                   1748 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
      00B134 72 19 53 27      [ 1] 1749 	bres	21287, #4
                                   1750 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1017: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
      00B138 C6 53 26         [ 1] 1751 	ld	a, 0x5326
      00B13B A4 0C            [ 1] 1752 	and	a, #0x0c
      00B13D 6B 01            [ 1] 1753 	ld	(0x01, sp), a
                                   1754 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1019: ((uint8_t)( TIM3_ICFilter << 4))));
      00B13F 7B 06            [ 1] 1755 	ld	a, (0x06, sp)
      00B141 4E               [ 1] 1756 	swap	a
      00B142 A4 F0            [ 1] 1757 	and	a, #0xf0
      00B144 1A 05            [ 1] 1758 	or	a, (0x05, sp)
      00B146 1A 01            [ 1] 1759 	or	a, (0x01, sp)
      00B148 C7 53 26         [ 1] 1760 	ld	0x5326, a
                                   1761 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
      00B14B C6 53 27         [ 1] 1762 	ld	a, 0x5327
                                   1763 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1022: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
      00B14E 0D 04            [ 1] 1764 	tnz	(0x04, sp)
      00B150 27 07            [ 1] 1765 	jreq	00102$
                                   1766 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1024: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      00B152 AA 20            [ 1] 1767 	or	a, #0x20
      00B154 C7 53 27         [ 1] 1768 	ld	0x5327, a
      00B157 20 05            [ 2] 1769 	jra	00103$
      00B159                       1770 00102$:
                                   1771 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1028: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
      00B159 A4 DF            [ 1] 1772 	and	a, #0xdf
      00B15B C7 53 27         [ 1] 1773 	ld	0x5327, a
      00B15E                       1774 00103$:
                                   1775 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1032: TIM3->CCER1 |= TIM3_CCER1_CC2E;
      00B15E 72 18 53 27      [ 1] 1776 	bset	21287, #4
                                   1777 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1033: }
      00B162 84               [ 1] 1778 	pop	a
      00B163 81               [ 4] 1779 	ret
                                   1780 	.area CODE
                                   1781 	.area CONST
                                   1782 	.area CONST
      008190                       1783 ___str_0:
      008190 2F 55 73 65 72 73 2F  1784 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      0081CC 4D 38 53 5F 53 74 64  1785 	.ascii "M8S_StdPeriph_Driver/src/stm8s_tim3.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 33
             2E 63
      0081F1 00                    1786 	.db 0x00
                                   1787 	.area CODE
                                   1788 	.area INITIALIZER
                                   1789 	.area CABS (ABS)
