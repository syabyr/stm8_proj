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
      009C78                         89 _TIM3_DeInit:
                                     90 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 53: TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
      009C78 35 00 53 20      [ 1]   91 	mov	0x5320+0, #0x00
                                     92 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 54: TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
      009C7C 35 00 53 21      [ 1]   93 	mov	0x5321+0, #0x00
                                     94 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 55: TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
      009C80 35 00 53 23      [ 1]   95 	mov	0x5323+0, #0x00
                                     96 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 58: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
      009C84 35 00 53 27      [ 1]   97 	mov	0x5327+0, #0x00
                                     98 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 61: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
      009C88 35 00 53 27      [ 1]   99 	mov	0x5327+0, #0x00
                                    100 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 62: TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
      009C8C 35 00 53 25      [ 1]  101 	mov	0x5325+0, #0x00
                                    102 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 63: TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
      009C90 35 00 53 26      [ 1]  103 	mov	0x5326+0, #0x00
                                    104 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 64: TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
      009C94 35 00 53 28      [ 1]  105 	mov	0x5328+0, #0x00
                                    106 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 65: TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
      009C98 35 00 53 29      [ 1]  107 	mov	0x5329+0, #0x00
                                    108 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 66: TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
      009C9C 35 00 53 2A      [ 1]  109 	mov	0x532a+0, #0x00
                                    110 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 67: TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
      009CA0 35 FF 53 2B      [ 1]  111 	mov	0x532b+0, #0xff
                                    112 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 68: TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
      009CA4 35 FF 53 2C      [ 1]  113 	mov	0x532c+0, #0xff
                                    114 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 69: TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
      009CA8 35 00 53 2D      [ 1]  115 	mov	0x532d+0, #0x00
                                    116 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 70: TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
      009CAC 35 00 53 2E      [ 1]  117 	mov	0x532e+0, #0x00
                                    118 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 71: TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
      009CB0 35 00 53 2F      [ 1]  119 	mov	0x532f+0, #0x00
                                    120 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 72: TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
      009CB4 35 00 53 30      [ 1]  121 	mov	0x5330+0, #0x00
                                    122 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 73: TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
      009CB8 35 00 53 22      [ 1]  123 	mov	0x5322+0, #0x00
                                    124 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 74: }
      009CBC 81               [ 4]  125 	ret
                                    126 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 82: void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
                                    127 ;	-----------------------------------------
                                    128 ;	 function TIM3_TimeBaseInit
                                    129 ;	-----------------------------------------
      009CBD                        130 _TIM3_TimeBaseInit:
                                    131 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 86: TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
      009CBD AE 53 2A         [ 2]  132 	ldw	x, #0x532a
      009CC0 7B 03            [ 1]  133 	ld	a, (0x03, sp)
      009CC2 F7               [ 1]  134 	ld	(x), a
                                    135 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 88: TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
      009CC3 7B 04            [ 1]  136 	ld	a, (0x04, sp)
      009CC5 C7 53 2B         [ 1]  137 	ld	0x532b, a
                                    138 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 89: TIM3->ARRL = (uint8_t)(TIM3_Period);
      009CC8 7B 05            [ 1]  139 	ld	a, (0x05, sp)
      009CCA C7 53 2C         [ 1]  140 	ld	0x532c, a
                                    141 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 90: }
      009CCD 81               [ 4]  142 	ret
                                    143 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 100: void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
                                    144 ;	-----------------------------------------
                                    145 ;	 function TIM3_OC1Init
                                    146 ;	-----------------------------------------
      009CCE                        147 _TIM3_OC1Init:
      009CCE 89               [ 2]  148 	pushw	x
                                    149 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 106: assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
      009CCF 0D 05            [ 1]  150 	tnz	(0x05, sp)
      009CD1 27 2D            [ 1]  151 	jreq	00104$
      009CD3 7B 05            [ 1]  152 	ld	a, (0x05, sp)
      009CD5 A1 10            [ 1]  153 	cp	a, #0x10
      009CD7 27 27            [ 1]  154 	jreq	00104$
      009CD9 7B 05            [ 1]  155 	ld	a, (0x05, sp)
      009CDB A1 20            [ 1]  156 	cp	a, #0x20
      009CDD 27 21            [ 1]  157 	jreq	00104$
      009CDF 7B 05            [ 1]  158 	ld	a, (0x05, sp)
      009CE1 A1 30            [ 1]  159 	cp	a, #0x30
      009CE3 27 1B            [ 1]  160 	jreq	00104$
      009CE5 7B 05            [ 1]  161 	ld	a, (0x05, sp)
      009CE7 A1 60            [ 1]  162 	cp	a, #0x60
      009CE9 27 15            [ 1]  163 	jreq	00104$
      009CEB 7B 05            [ 1]  164 	ld	a, (0x05, sp)
      009CED A1 70            [ 1]  165 	cp	a, #0x70
      009CEF 27 0F            [ 1]  166 	jreq	00104$
      009CF1 4B 6A            [ 1]  167 	push	#0x6a
      009CF3 5F               [ 1]  168 	clrw	x
      009CF4 89               [ 2]  169 	pushw	x
      009CF5 4B 00            [ 1]  170 	push	#0x00
      009CF7 4B C8            [ 1]  171 	push	#<(___str_0+0)
      009CF9 4B 81            [ 1]  172 	push	#((___str_0+0) >> 8)
      009CFB CD 85 5C         [ 4]  173 	call	_assert_failed
      009CFE 5B 06            [ 2]  174 	addw	sp, #6
      009D00                        175 00104$:
                                    176 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 107: assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
      009D00 0D 06            [ 1]  177 	tnz	(0x06, sp)
      009D02 27 15            [ 1]  178 	jreq	00121$
      009D04 7B 06            [ 1]  179 	ld	a, (0x06, sp)
      009D06 A1 11            [ 1]  180 	cp	a, #0x11
      009D08 27 0F            [ 1]  181 	jreq	00121$
      009D0A 4B 6B            [ 1]  182 	push	#0x6b
      009D0C 5F               [ 1]  183 	clrw	x
      009D0D 89               [ 2]  184 	pushw	x
      009D0E 4B 00            [ 1]  185 	push	#0x00
      009D10 4B C8            [ 1]  186 	push	#<(___str_0+0)
      009D12 4B 81            [ 1]  187 	push	#((___str_0+0) >> 8)
      009D14 CD 85 5C         [ 4]  188 	call	_assert_failed
      009D17 5B 06            [ 2]  189 	addw	sp, #6
      009D19                        190 00121$:
                                    191 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 108: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
      009D19 0D 09            [ 1]  192 	tnz	(0x09, sp)
      009D1B 27 15            [ 1]  193 	jreq	00126$
      009D1D 7B 09            [ 1]  194 	ld	a, (0x09, sp)
      009D1F A1 22            [ 1]  195 	cp	a, #0x22
      009D21 27 0F            [ 1]  196 	jreq	00126$
      009D23 4B 6C            [ 1]  197 	push	#0x6c
      009D25 5F               [ 1]  198 	clrw	x
      009D26 89               [ 2]  199 	pushw	x
      009D27 4B 00            [ 1]  200 	push	#0x00
      009D29 4B C8            [ 1]  201 	push	#<(___str_0+0)
      009D2B 4B 81            [ 1]  202 	push	#((___str_0+0) >> 8)
      009D2D CD 85 5C         [ 4]  203 	call	_assert_failed
      009D30 5B 06            [ 2]  204 	addw	sp, #6
      009D32                        205 00126$:
                                    206 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 111: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
      009D32 C6 53 27         [ 1]  207 	ld	a, 0x5327
      009D35 A4 FC            [ 1]  208 	and	a, #0xfc
      009D37 C7 53 27         [ 1]  209 	ld	0x5327, a
                                    210 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 113: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
      009D3A C6 53 27         [ 1]  211 	ld	a, 0x5327
      009D3D 6B 01            [ 1]  212 	ld	(0x01, sp), a
      009D3F 7B 06            [ 1]  213 	ld	a, (0x06, sp)
      009D41 A4 01            [ 1]  214 	and	a, #0x01
      009D43 6B 02            [ 1]  215 	ld	(0x02, sp), a
      009D45 7B 09            [ 1]  216 	ld	a, (0x09, sp)
      009D47 A4 02            [ 1]  217 	and	a, #0x02
      009D49 1A 02            [ 1]  218 	or	a, (0x02, sp)
      009D4B 1A 01            [ 1]  219 	or	a, (0x01, sp)
      009D4D C7 53 27         [ 1]  220 	ld	0x5327, a
                                    221 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 116: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      009D50 C6 53 25         [ 1]  222 	ld	a, 0x5325
      009D53 A4 8F            [ 1]  223 	and	a, #0x8f
      009D55 1A 05            [ 1]  224 	or	a, (0x05, sp)
      009D57 C7 53 25         [ 1]  225 	ld	0x5325, a
                                    226 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 119: TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
      009D5A 7B 07            [ 1]  227 	ld	a, (0x07, sp)
      009D5C C7 53 2D         [ 1]  228 	ld	0x532d, a
                                    229 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 120: TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
      009D5F 7B 08            [ 1]  230 	ld	a, (0x08, sp)
      009D61 C7 53 2E         [ 1]  231 	ld	0x532e, a
                                    232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 121: }
      009D64 85               [ 2]  233 	popw	x
      009D65 81               [ 4]  234 	ret
                                    235 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 131: void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
                                    236 ;	-----------------------------------------
                                    237 ;	 function TIM3_OC2Init
                                    238 ;	-----------------------------------------
      009D66                        239 _TIM3_OC2Init:
      009D66 89               [ 2]  240 	pushw	x
                                    241 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 137: assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
      009D67 0D 05            [ 1]  242 	tnz	(0x05, sp)
      009D69 27 2D            [ 1]  243 	jreq	00104$
      009D6B 7B 05            [ 1]  244 	ld	a, (0x05, sp)
      009D6D A1 10            [ 1]  245 	cp	a, #0x10
      009D6F 27 27            [ 1]  246 	jreq	00104$
      009D71 7B 05            [ 1]  247 	ld	a, (0x05, sp)
      009D73 A1 20            [ 1]  248 	cp	a, #0x20
      009D75 27 21            [ 1]  249 	jreq	00104$
      009D77 7B 05            [ 1]  250 	ld	a, (0x05, sp)
      009D79 A1 30            [ 1]  251 	cp	a, #0x30
      009D7B 27 1B            [ 1]  252 	jreq	00104$
      009D7D 7B 05            [ 1]  253 	ld	a, (0x05, sp)
      009D7F A1 60            [ 1]  254 	cp	a, #0x60
      009D81 27 15            [ 1]  255 	jreq	00104$
      009D83 7B 05            [ 1]  256 	ld	a, (0x05, sp)
      009D85 A1 70            [ 1]  257 	cp	a, #0x70
      009D87 27 0F            [ 1]  258 	jreq	00104$
      009D89 4B 89            [ 1]  259 	push	#0x89
      009D8B 5F               [ 1]  260 	clrw	x
      009D8C 89               [ 2]  261 	pushw	x
      009D8D 4B 00            [ 1]  262 	push	#0x00
      009D8F 4B C8            [ 1]  263 	push	#<(___str_0+0)
      009D91 4B 81            [ 1]  264 	push	#((___str_0+0) >> 8)
      009D93 CD 85 5C         [ 4]  265 	call	_assert_failed
      009D96 5B 06            [ 2]  266 	addw	sp, #6
      009D98                        267 00104$:
                                    268 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 138: assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
      009D98 0D 06            [ 1]  269 	tnz	(0x06, sp)
      009D9A 27 15            [ 1]  270 	jreq	00121$
      009D9C 7B 06            [ 1]  271 	ld	a, (0x06, sp)
      009D9E A1 11            [ 1]  272 	cp	a, #0x11
      009DA0 27 0F            [ 1]  273 	jreq	00121$
      009DA2 4B 8A            [ 1]  274 	push	#0x8a
      009DA4 5F               [ 1]  275 	clrw	x
      009DA5 89               [ 2]  276 	pushw	x
      009DA6 4B 00            [ 1]  277 	push	#0x00
      009DA8 4B C8            [ 1]  278 	push	#<(___str_0+0)
      009DAA 4B 81            [ 1]  279 	push	#((___str_0+0) >> 8)
      009DAC CD 85 5C         [ 4]  280 	call	_assert_failed
      009DAF 5B 06            [ 2]  281 	addw	sp, #6
      009DB1                        282 00121$:
                                    283 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 139: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
      009DB1 0D 09            [ 1]  284 	tnz	(0x09, sp)
      009DB3 27 15            [ 1]  285 	jreq	00126$
      009DB5 7B 09            [ 1]  286 	ld	a, (0x09, sp)
      009DB7 A1 22            [ 1]  287 	cp	a, #0x22
      009DB9 27 0F            [ 1]  288 	jreq	00126$
      009DBB 4B 8B            [ 1]  289 	push	#0x8b
      009DBD 5F               [ 1]  290 	clrw	x
      009DBE 89               [ 2]  291 	pushw	x
      009DBF 4B 00            [ 1]  292 	push	#0x00
      009DC1 4B C8            [ 1]  293 	push	#<(___str_0+0)
      009DC3 4B 81            [ 1]  294 	push	#((___str_0+0) >> 8)
      009DC5 CD 85 5C         [ 4]  295 	call	_assert_failed
      009DC8 5B 06            [ 2]  296 	addw	sp, #6
      009DCA                        297 00126$:
                                    298 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 143: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
      009DCA C6 53 27         [ 1]  299 	ld	a, 0x5327
      009DCD A4 CF            [ 1]  300 	and	a, #0xcf
      009DCF C7 53 27         [ 1]  301 	ld	0x5327, a
                                    302 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 145: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
      009DD2 C6 53 27         [ 1]  303 	ld	a, 0x5327
      009DD5 6B 01            [ 1]  304 	ld	(0x01, sp), a
      009DD7 7B 06            [ 1]  305 	ld	a, (0x06, sp)
      009DD9 A4 10            [ 1]  306 	and	a, #0x10
      009DDB 6B 02            [ 1]  307 	ld	(0x02, sp), a
      009DDD 7B 09            [ 1]  308 	ld	a, (0x09, sp)
      009DDF A4 20            [ 1]  309 	and	a, #0x20
      009DE1 1A 02            [ 1]  310 	or	a, (0x02, sp)
      009DE3 1A 01            [ 1]  311 	or	a, (0x01, sp)
      009DE5 C7 53 27         [ 1]  312 	ld	0x5327, a
                                    313 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 149: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      009DE8 C6 53 26         [ 1]  314 	ld	a, 0x5326
      009DEB A4 8F            [ 1]  315 	and	a, #0x8f
      009DED 1A 05            [ 1]  316 	or	a, (0x05, sp)
      009DEF C7 53 26         [ 1]  317 	ld	0x5326, a
                                    318 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 153: TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
      009DF2 7B 07            [ 1]  319 	ld	a, (0x07, sp)
      009DF4 C7 53 2F         [ 1]  320 	ld	0x532f, a
                                    321 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 154: TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
      009DF7 7B 08            [ 1]  322 	ld	a, (0x08, sp)
      009DF9 C7 53 30         [ 1]  323 	ld	0x5330, a
                                    324 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 155: }
      009DFC 85               [ 2]  325 	popw	x
      009DFD 81               [ 4]  326 	ret
                                    327 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 166: void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
                                    328 ;	-----------------------------------------
                                    329 ;	 function TIM3_ICInit
                                    330 ;	-----------------------------------------
      009DFE                        331 _TIM3_ICInit:
      009DFE 88               [ 1]  332 	push	a
                                    333 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 173: assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
      009DFF 7B 04            [ 1]  334 	ld	a, (0x04, sp)
      009E01 4A               [ 1]  335 	dec	a
      009E02 26 05            [ 1]  336 	jrne	00203$
      009E04 A6 01            [ 1]  337 	ld	a, #0x01
      009E06 6B 01            [ 1]  338 	ld	(0x01, sp), a
      009E08 C5                     339 	.byte 0xc5
      009E09                        340 00203$:
      009E09 0F 01            [ 1]  341 	clr	(0x01, sp)
      009E0B                        342 00204$:
      009E0B 0D 04            [ 1]  343 	tnz	(0x04, sp)
      009E0D 27 13            [ 1]  344 	jreq	00107$
      009E0F 0D 01            [ 1]  345 	tnz	(0x01, sp)
      009E11 26 0F            [ 1]  346 	jrne	00107$
      009E13 4B AD            [ 1]  347 	push	#0xad
      009E15 5F               [ 1]  348 	clrw	x
      009E16 89               [ 2]  349 	pushw	x
      009E17 4B 00            [ 1]  350 	push	#0x00
      009E19 4B C8            [ 1]  351 	push	#<(___str_0+0)
      009E1B 4B 81            [ 1]  352 	push	#((___str_0+0) >> 8)
      009E1D CD 85 5C         [ 4]  353 	call	_assert_failed
      009E20 5B 06            [ 2]  354 	addw	sp, #6
      009E22                        355 00107$:
                                    356 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 174: assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
      009E22 0D 05            [ 1]  357 	tnz	(0x05, sp)
      009E24 27 15            [ 1]  358 	jreq	00112$
      009E26 7B 05            [ 1]  359 	ld	a, (0x05, sp)
      009E28 A1 44            [ 1]  360 	cp	a, #0x44
      009E2A 27 0F            [ 1]  361 	jreq	00112$
      009E2C 4B AE            [ 1]  362 	push	#0xae
      009E2E 5F               [ 1]  363 	clrw	x
      009E2F 89               [ 2]  364 	pushw	x
      009E30 4B 00            [ 1]  365 	push	#0x00
      009E32 4B C8            [ 1]  366 	push	#<(___str_0+0)
      009E34 4B 81            [ 1]  367 	push	#((___str_0+0) >> 8)
      009E36 CD 85 5C         [ 4]  368 	call	_assert_failed
      009E39 5B 06            [ 2]  369 	addw	sp, #6
      009E3B                        370 00112$:
                                    371 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 175: assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
      009E3B 7B 06            [ 1]  372 	ld	a, (0x06, sp)
      009E3D 4A               [ 1]  373 	dec	a
      009E3E 27 1B            [ 1]  374 	jreq	00117$
      009E40 7B 06            [ 1]  375 	ld	a, (0x06, sp)
      009E42 A1 02            [ 1]  376 	cp	a, #0x02
      009E44 27 15            [ 1]  377 	jreq	00117$
      009E46 7B 06            [ 1]  378 	ld	a, (0x06, sp)
      009E48 A1 03            [ 1]  379 	cp	a, #0x03
      009E4A 27 0F            [ 1]  380 	jreq	00117$
      009E4C 4B AF            [ 1]  381 	push	#0xaf
      009E4E 5F               [ 1]  382 	clrw	x
      009E4F 89               [ 2]  383 	pushw	x
      009E50 4B 00            [ 1]  384 	push	#0x00
      009E52 4B C8            [ 1]  385 	push	#<(___str_0+0)
      009E54 4B 81            [ 1]  386 	push	#((___str_0+0) >> 8)
      009E56 CD 85 5C         [ 4]  387 	call	_assert_failed
      009E59 5B 06            [ 2]  388 	addw	sp, #6
      009E5B                        389 00117$:
                                    390 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 176: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
      009E5B 0D 07            [ 1]  391 	tnz	(0x07, sp)
      009E5D 27 21            [ 1]  392 	jreq	00125$
      009E5F 7B 07            [ 1]  393 	ld	a, (0x07, sp)
      009E61 A1 04            [ 1]  394 	cp	a, #0x04
      009E63 27 1B            [ 1]  395 	jreq	00125$
      009E65 7B 07            [ 1]  396 	ld	a, (0x07, sp)
      009E67 A1 08            [ 1]  397 	cp	a, #0x08
      009E69 27 15            [ 1]  398 	jreq	00125$
      009E6B 7B 07            [ 1]  399 	ld	a, (0x07, sp)
      009E6D A1 0C            [ 1]  400 	cp	a, #0x0c
      009E6F 27 0F            [ 1]  401 	jreq	00125$
      009E71 4B B0            [ 1]  402 	push	#0xb0
      009E73 5F               [ 1]  403 	clrw	x
      009E74 89               [ 2]  404 	pushw	x
      009E75 4B 00            [ 1]  405 	push	#0x00
      009E77 4B C8            [ 1]  406 	push	#<(___str_0+0)
      009E79 4B 81            [ 1]  407 	push	#((___str_0+0) >> 8)
      009E7B CD 85 5C         [ 4]  408 	call	_assert_failed
      009E7E 5B 06            [ 2]  409 	addw	sp, #6
      009E80                        410 00125$:
                                    411 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 177: assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
      009E80 7B 08            [ 1]  412 	ld	a, (0x08, sp)
      009E82 A1 0F            [ 1]  413 	cp	a, #0x0f
      009E84 23 0F            [ 2]  414 	jrule	00136$
      009E86 4B B1            [ 1]  415 	push	#0xb1
      009E88 5F               [ 1]  416 	clrw	x
      009E89 89               [ 2]  417 	pushw	x
      009E8A 4B 00            [ 1]  418 	push	#0x00
      009E8C 4B C8            [ 1]  419 	push	#<(___str_0+0)
      009E8E 4B 81            [ 1]  420 	push	#((___str_0+0) >> 8)
      009E90 CD 85 5C         [ 4]  421 	call	_assert_failed
      009E93 5B 06            [ 2]  422 	addw	sp, #6
      009E95                        423 00136$:
                                    424 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 179: if (TIM3_Channel != TIM3_CHANNEL_2)
      009E95 0D 01            [ 1]  425 	tnz	(0x01, sp)
      009E97 26 17            [ 1]  426 	jrne	00102$
                                    427 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 182: TI1_Config((uint8_t)TIM3_ICPolarity,
      009E99 7B 08            [ 1]  428 	ld	a, (0x08, sp)
      009E9B 88               [ 1]  429 	push	a
      009E9C 7B 07            [ 1]  430 	ld	a, (0x07, sp)
      009E9E 88               [ 1]  431 	push	a
      009E9F 7B 07            [ 1]  432 	ld	a, (0x07, sp)
      009EA1 88               [ 1]  433 	push	a
      009EA2 CD A5 28         [ 4]  434 	call	_TI1_Config
      009EA5 5B 03            [ 2]  435 	addw	sp, #3
                                    436 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 187: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      009EA7 7B 07            [ 1]  437 	ld	a, (0x07, sp)
      009EA9 88               [ 1]  438 	push	a
      009EAA CD A3 9E         [ 4]  439 	call	_TIM3_SetIC1Prescaler
      009EAD 84               [ 1]  440 	pop	a
      009EAE 20 15            [ 2]  441 	jra	00104$
      009EB0                        442 00102$:
                                    443 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 192: TI2_Config((uint8_t)TIM3_ICPolarity,
      009EB0 7B 08            [ 1]  444 	ld	a, (0x08, sp)
      009EB2 88               [ 1]  445 	push	a
      009EB3 7B 07            [ 1]  446 	ld	a, (0x07, sp)
      009EB5 88               [ 1]  447 	push	a
      009EB6 7B 07            [ 1]  448 	ld	a, (0x07, sp)
      009EB8 88               [ 1]  449 	push	a
      009EB9 CD A5 59         [ 4]  450 	call	_TI2_Config
      009EBC 5B 03            [ 2]  451 	addw	sp, #3
                                    452 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 197: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      009EBE 7B 07            [ 1]  453 	ld	a, (0x07, sp)
      009EC0 88               [ 1]  454 	push	a
      009EC1 CD A3 CE         [ 4]  455 	call	_TIM3_SetIC2Prescaler
      009EC4 84               [ 1]  456 	pop	a
      009EC5                        457 00104$:
                                    458 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 199: }
      009EC5 84               [ 1]  459 	pop	a
      009EC6 81               [ 4]  460 	ret
                                    461 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 210: void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
                                    462 ;	-----------------------------------------
                                    463 ;	 function TIM3_PWMIConfig
                                    464 ;	-----------------------------------------
      009EC7                        465 _TIM3_PWMIConfig:
      009EC7 52 03            [ 2]  466 	sub	sp, #3
                                    467 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 220: assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
      009EC9 7B 06            [ 1]  468 	ld	a, (0x06, sp)
      009ECB 4A               [ 1]  469 	dec	a
      009ECC 26 05            [ 1]  470 	jrne	00212$
      009ECE A6 01            [ 1]  471 	ld	a, #0x01
      009ED0 6B 01            [ 1]  472 	ld	(0x01, sp), a
      009ED2 C5                     473 	.byte 0xc5
      009ED3                        474 00212$:
      009ED3 0F 01            [ 1]  475 	clr	(0x01, sp)
      009ED5                        476 00213$:
      009ED5 0D 06            [ 1]  477 	tnz	(0x06, sp)
      009ED7 27 13            [ 1]  478 	jreq	00113$
      009ED9 0D 01            [ 1]  479 	tnz	(0x01, sp)
      009EDB 26 0F            [ 1]  480 	jrne	00113$
      009EDD 4B DC            [ 1]  481 	push	#0xdc
      009EDF 5F               [ 1]  482 	clrw	x
      009EE0 89               [ 2]  483 	pushw	x
      009EE1 4B 00            [ 1]  484 	push	#0x00
      009EE3 4B C8            [ 1]  485 	push	#<(___str_0+0)
      009EE5 4B 81            [ 1]  486 	push	#((___str_0+0) >> 8)
      009EE7 CD 85 5C         [ 4]  487 	call	_assert_failed
      009EEA 5B 06            [ 2]  488 	addw	sp, #6
      009EEC                        489 00113$:
                                    490 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 221: assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
      009EEC 7B 07            [ 1]  491 	ld	a, (0x07, sp)
      009EEE A0 44            [ 1]  492 	sub	a, #0x44
      009EF0 26 04            [ 1]  493 	jrne	00217$
      009EF2 4C               [ 1]  494 	inc	a
      009EF3 6B 02            [ 1]  495 	ld	(0x02, sp), a
      009EF5 C5                     496 	.byte 0xc5
      009EF6                        497 00217$:
      009EF6 0F 02            [ 1]  498 	clr	(0x02, sp)
      009EF8                        499 00218$:
      009EF8 0D 07            [ 1]  500 	tnz	(0x07, sp)
      009EFA 27 13            [ 1]  501 	jreq	00118$
      009EFC 0D 02            [ 1]  502 	tnz	(0x02, sp)
      009EFE 26 0F            [ 1]  503 	jrne	00118$
      009F00 4B DD            [ 1]  504 	push	#0xdd
      009F02 5F               [ 1]  505 	clrw	x
      009F03 89               [ 2]  506 	pushw	x
      009F04 4B 00            [ 1]  507 	push	#0x00
      009F06 4B C8            [ 1]  508 	push	#<(___str_0+0)
      009F08 4B 81            [ 1]  509 	push	#((___str_0+0) >> 8)
      009F0A CD 85 5C         [ 4]  510 	call	_assert_failed
      009F0D 5B 06            [ 2]  511 	addw	sp, #6
      009F0F                        512 00118$:
                                    513 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 222: assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
      009F0F 7B 08            [ 1]  514 	ld	a, (0x08, sp)
      009F11 4A               [ 1]  515 	dec	a
      009F12 26 05            [ 1]  516 	jrne	00222$
      009F14 A6 01            [ 1]  517 	ld	a, #0x01
      009F16 6B 03            [ 1]  518 	ld	(0x03, sp), a
      009F18 C5                     519 	.byte 0xc5
      009F19                        520 00222$:
      009F19 0F 03            [ 1]  521 	clr	(0x03, sp)
      009F1B                        522 00223$:
      009F1B 0D 03            [ 1]  523 	tnz	(0x03, sp)
      009F1D 26 1B            [ 1]  524 	jrne	00123$
      009F1F 7B 08            [ 1]  525 	ld	a, (0x08, sp)
      009F21 A1 02            [ 1]  526 	cp	a, #0x02
      009F23 27 15            [ 1]  527 	jreq	00123$
      009F25 7B 08            [ 1]  528 	ld	a, (0x08, sp)
      009F27 A1 03            [ 1]  529 	cp	a, #0x03
      009F29 27 0F            [ 1]  530 	jreq	00123$
      009F2B 4B DE            [ 1]  531 	push	#0xde
      009F2D 5F               [ 1]  532 	clrw	x
      009F2E 89               [ 2]  533 	pushw	x
      009F2F 4B 00            [ 1]  534 	push	#0x00
      009F31 4B C8            [ 1]  535 	push	#<(___str_0+0)
      009F33 4B 81            [ 1]  536 	push	#((___str_0+0) >> 8)
      009F35 CD 85 5C         [ 4]  537 	call	_assert_failed
      009F38 5B 06            [ 2]  538 	addw	sp, #6
      009F3A                        539 00123$:
                                    540 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 223: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
      009F3A 0D 09            [ 1]  541 	tnz	(0x09, sp)
      009F3C 27 21            [ 1]  542 	jreq	00131$
      009F3E 7B 09            [ 1]  543 	ld	a, (0x09, sp)
      009F40 A1 04            [ 1]  544 	cp	a, #0x04
      009F42 27 1B            [ 1]  545 	jreq	00131$
      009F44 7B 09            [ 1]  546 	ld	a, (0x09, sp)
      009F46 A1 08            [ 1]  547 	cp	a, #0x08
      009F48 27 15            [ 1]  548 	jreq	00131$
      009F4A 7B 09            [ 1]  549 	ld	a, (0x09, sp)
      009F4C A1 0C            [ 1]  550 	cp	a, #0x0c
      009F4E 27 0F            [ 1]  551 	jreq	00131$
      009F50 4B DF            [ 1]  552 	push	#0xdf
      009F52 5F               [ 1]  553 	clrw	x
      009F53 89               [ 2]  554 	pushw	x
      009F54 4B 00            [ 1]  555 	push	#0x00
      009F56 4B C8            [ 1]  556 	push	#<(___str_0+0)
      009F58 4B 81            [ 1]  557 	push	#((___str_0+0) >> 8)
      009F5A CD 85 5C         [ 4]  558 	call	_assert_failed
      009F5D 5B 06            [ 2]  559 	addw	sp, #6
      009F5F                        560 00131$:
                                    561 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 226: if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
      009F5F 0D 02            [ 1]  562 	tnz	(0x02, sp)
      009F61 26 05            [ 1]  563 	jrne	00102$
                                    564 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 228: icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
      009F63 A6 44            [ 1]  565 	ld	a, #0x44
      009F65 6B 02            [ 1]  566 	ld	(0x02, sp), a
                                    567 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 232: icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
      009F67 C5                     568 	.byte 0xc5
      009F68                        569 00102$:
      009F68 0F 02            [ 1]  570 	clr	(0x02, sp)
      009F6A                        571 00103$:
                                    572 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 236: if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
      009F6A 7B 03            [ 1]  573 	ld	a, (0x03, sp)
      009F6C 27 06            [ 1]  574 	jreq	00105$
                                    575 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 238: icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
      009F6E A6 02            [ 1]  576 	ld	a, #0x02
      009F70 6B 03            [ 1]  577 	ld	(0x03, sp), a
      009F72 20 04            [ 2]  578 	jra	00106$
      009F74                        579 00105$:
                                    580 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 242: icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
      009F74 A6 01            [ 1]  581 	ld	a, #0x01
      009F76 6B 03            [ 1]  582 	ld	(0x03, sp), a
      009F78                        583 00106$:
                                    584 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 245: if (TIM3_Channel != TIM3_CHANNEL_2)
      009F78 0D 01            [ 1]  585 	tnz	(0x01, sp)
      009F7A 26 2C            [ 1]  586 	jrne	00108$
                                    587 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 248: TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
      009F7C 7B 0A            [ 1]  588 	ld	a, (0x0a, sp)
      009F7E 88               [ 1]  589 	push	a
      009F7F 7B 09            [ 1]  590 	ld	a, (0x09, sp)
      009F81 88               [ 1]  591 	push	a
      009F82 7B 09            [ 1]  592 	ld	a, (0x09, sp)
      009F84 88               [ 1]  593 	push	a
      009F85 CD A5 28         [ 4]  594 	call	_TI1_Config
      009F88 5B 03            [ 2]  595 	addw	sp, #3
                                    596 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 252: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      009F8A 7B 09            [ 1]  597 	ld	a, (0x09, sp)
      009F8C 88               [ 1]  598 	push	a
      009F8D CD A3 9E         [ 4]  599 	call	_TIM3_SetIC1Prescaler
      009F90 84               [ 1]  600 	pop	a
                                    601 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 255: TI2_Config(icpolarity, icselection, TIM3_ICFilter);
      009F91 7B 0A            [ 1]  602 	ld	a, (0x0a, sp)
      009F93 88               [ 1]  603 	push	a
      009F94 7B 04            [ 1]  604 	ld	a, (0x04, sp)
      009F96 88               [ 1]  605 	push	a
      009F97 7B 04            [ 1]  606 	ld	a, (0x04, sp)
      009F99 88               [ 1]  607 	push	a
      009F9A CD A5 59         [ 4]  608 	call	_TI2_Config
      009F9D 5B 03            [ 2]  609 	addw	sp, #3
                                    610 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 258: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      009F9F 7B 09            [ 1]  611 	ld	a, (0x09, sp)
      009FA1 88               [ 1]  612 	push	a
      009FA2 CD A3 CE         [ 4]  613 	call	_TIM3_SetIC2Prescaler
      009FA5 84               [ 1]  614 	pop	a
      009FA6 20 2A            [ 2]  615 	jra	00110$
      009FA8                        616 00108$:
                                    617 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 263: TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
      009FA8 7B 0A            [ 1]  618 	ld	a, (0x0a, sp)
      009FAA 88               [ 1]  619 	push	a
      009FAB 7B 09            [ 1]  620 	ld	a, (0x09, sp)
      009FAD 88               [ 1]  621 	push	a
      009FAE 7B 09            [ 1]  622 	ld	a, (0x09, sp)
      009FB0 88               [ 1]  623 	push	a
      009FB1 CD A5 59         [ 4]  624 	call	_TI2_Config
      009FB4 5B 03            [ 2]  625 	addw	sp, #3
                                    626 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 267: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      009FB6 7B 09            [ 1]  627 	ld	a, (0x09, sp)
      009FB8 88               [ 1]  628 	push	a
      009FB9 CD A3 CE         [ 4]  629 	call	_TIM3_SetIC2Prescaler
      009FBC 84               [ 1]  630 	pop	a
                                    631 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 270: TI1_Config(icpolarity, icselection, TIM3_ICFilter);
      009FBD 7B 0A            [ 1]  632 	ld	a, (0x0a, sp)
      009FBF 88               [ 1]  633 	push	a
      009FC0 7B 04            [ 1]  634 	ld	a, (0x04, sp)
      009FC2 88               [ 1]  635 	push	a
      009FC3 7B 04            [ 1]  636 	ld	a, (0x04, sp)
      009FC5 88               [ 1]  637 	push	a
      009FC6 CD A5 28         [ 4]  638 	call	_TI1_Config
      009FC9 5B 03            [ 2]  639 	addw	sp, #3
                                    640 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 273: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      009FCB 7B 09            [ 1]  641 	ld	a, (0x09, sp)
      009FCD 88               [ 1]  642 	push	a
      009FCE CD A3 9E         [ 4]  643 	call	_TIM3_SetIC1Prescaler
      009FD1 84               [ 1]  644 	pop	a
      009FD2                        645 00110$:
                                    646 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 275: }
      009FD2 5B 03            [ 2]  647 	addw	sp, #3
      009FD4 81               [ 4]  648 	ret
                                    649 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 283: void TIM3_Cmd(FunctionalState NewState)
                                    650 ;	-----------------------------------------
                                    651 ;	 function TIM3_Cmd
                                    652 ;	-----------------------------------------
      009FD5                        653 _TIM3_Cmd:
                                    654 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 286: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009FD5 0D 03            [ 1]  655 	tnz	(0x03, sp)
      009FD7 27 14            [ 1]  656 	jreq	00107$
      009FD9 7B 03            [ 1]  657 	ld	a, (0x03, sp)
      009FDB 4A               [ 1]  658 	dec	a
      009FDC 27 0F            [ 1]  659 	jreq	00107$
      009FDE 4B 1E            [ 1]  660 	push	#0x1e
      009FE0 4B 01            [ 1]  661 	push	#0x01
      009FE2 5F               [ 1]  662 	clrw	x
      009FE3 89               [ 2]  663 	pushw	x
      009FE4 4B C8            [ 1]  664 	push	#<(___str_0+0)
      009FE6 4B 81            [ 1]  665 	push	#((___str_0+0) >> 8)
      009FE8 CD 85 5C         [ 4]  666 	call	_assert_failed
      009FEB 5B 06            [ 2]  667 	addw	sp, #6
      009FED                        668 00107$:
                                    669 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
      009FED C6 53 20         [ 1]  670 	ld	a, 0x5320
                                    671 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 289: if (NewState != DISABLE)
      009FF0 0D 03            [ 1]  672 	tnz	(0x03, sp)
      009FF2 27 06            [ 1]  673 	jreq	00102$
                                    674 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
      009FF4 AA 01            [ 1]  675 	or	a, #0x01
      009FF6 C7 53 20         [ 1]  676 	ld	0x5320, a
      009FF9 81               [ 4]  677 	ret
      009FFA                        678 00102$:
                                    679 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 295: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
      009FFA A4 FE            [ 1]  680 	and	a, #0xfe
      009FFC C7 53 20         [ 1]  681 	ld	0x5320, a
                                    682 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 297: }
      009FFF 81               [ 4]  683 	ret
                                    684 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 311: void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
                                    685 ;	-----------------------------------------
                                    686 ;	 function TIM3_ITConfig
                                    687 ;	-----------------------------------------
      00A000                        688 _TIM3_ITConfig:
      00A000 88               [ 1]  689 	push	a
                                    690 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 314: assert_param(IS_TIM3_IT_OK(TIM3_IT));
      00A001 0D 04            [ 1]  691 	tnz	(0x04, sp)
      00A003 27 06            [ 1]  692 	jreq	00106$
      00A005 7B 04            [ 1]  693 	ld	a, (0x04, sp)
      00A007 A1 07            [ 1]  694 	cp	a, #0x07
      00A009 23 0F            [ 2]  695 	jrule	00107$
      00A00B                        696 00106$:
      00A00B 4B 3A            [ 1]  697 	push	#0x3a
      00A00D 4B 01            [ 1]  698 	push	#0x01
      00A00F 5F               [ 1]  699 	clrw	x
      00A010 89               [ 2]  700 	pushw	x
      00A011 4B C8            [ 1]  701 	push	#<(___str_0+0)
      00A013 4B 81            [ 1]  702 	push	#((___str_0+0) >> 8)
      00A015 CD 85 5C         [ 4]  703 	call	_assert_failed
      00A018 5B 06            [ 2]  704 	addw	sp, #6
      00A01A                        705 00107$:
                                    706 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 315: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A01A 0D 05            [ 1]  707 	tnz	(0x05, sp)
      00A01C 27 14            [ 1]  708 	jreq	00112$
      00A01E 7B 05            [ 1]  709 	ld	a, (0x05, sp)
      00A020 4A               [ 1]  710 	dec	a
      00A021 27 0F            [ 1]  711 	jreq	00112$
      00A023 4B 3B            [ 1]  712 	push	#0x3b
      00A025 4B 01            [ 1]  713 	push	#0x01
      00A027 5F               [ 1]  714 	clrw	x
      00A028 89               [ 2]  715 	pushw	x
      00A029 4B C8            [ 1]  716 	push	#<(___str_0+0)
      00A02B 4B 81            [ 1]  717 	push	#((___str_0+0) >> 8)
      00A02D CD 85 5C         [ 4]  718 	call	_assert_failed
      00A030 5B 06            [ 2]  719 	addw	sp, #6
      00A032                        720 00112$:
                                    721 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
      00A032 C6 53 21         [ 1]  722 	ld	a, 0x5321
                                    723 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 317: if (NewState != DISABLE)
      00A035 0D 05            [ 1]  724 	tnz	(0x05, sp)
      00A037 27 07            [ 1]  725 	jreq	00102$
                                    726 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
      00A039 1A 04            [ 1]  727 	or	a, (0x04, sp)
      00A03B C7 53 21         [ 1]  728 	ld	0x5321, a
      00A03E 20 0C            [ 2]  729 	jra	00104$
      00A040                        730 00102$:
                                    731 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 325: TIM3->IER &= (uint8_t)(~TIM3_IT);
      00A040 88               [ 1]  732 	push	a
      00A041 7B 05            [ 1]  733 	ld	a, (0x05, sp)
      00A043 43               [ 1]  734 	cpl	a
      00A044 6B 02            [ 1]  735 	ld	(0x02, sp), a
      00A046 84               [ 1]  736 	pop	a
      00A047 14 01            [ 1]  737 	and	a, (0x01, sp)
      00A049 C7 53 21         [ 1]  738 	ld	0x5321, a
      00A04C                        739 00104$:
                                    740 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 327: }
      00A04C 84               [ 1]  741 	pop	a
      00A04D 81               [ 4]  742 	ret
                                    743 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 335: void TIM3_UpdateDisableConfig(FunctionalState NewState)
                                    744 ;	-----------------------------------------
                                    745 ;	 function TIM3_UpdateDisableConfig
                                    746 ;	-----------------------------------------
      00A04E                        747 _TIM3_UpdateDisableConfig:
                                    748 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 338: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A04E 0D 03            [ 1]  749 	tnz	(0x03, sp)
      00A050 27 14            [ 1]  750 	jreq	00107$
      00A052 7B 03            [ 1]  751 	ld	a, (0x03, sp)
      00A054 4A               [ 1]  752 	dec	a
      00A055 27 0F            [ 1]  753 	jreq	00107$
      00A057 4B 52            [ 1]  754 	push	#0x52
      00A059 4B 01            [ 1]  755 	push	#0x01
      00A05B 5F               [ 1]  756 	clrw	x
      00A05C 89               [ 2]  757 	pushw	x
      00A05D 4B C8            [ 1]  758 	push	#<(___str_0+0)
      00A05F 4B 81            [ 1]  759 	push	#((___str_0+0) >> 8)
      00A061 CD 85 5C         [ 4]  760 	call	_assert_failed
      00A064 5B 06            [ 2]  761 	addw	sp, #6
      00A066                        762 00107$:
                                    763 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
      00A066 C6 53 20         [ 1]  764 	ld	a, 0x5320
                                    765 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 341: if (NewState != DISABLE)
      00A069 0D 03            [ 1]  766 	tnz	(0x03, sp)
      00A06B 27 06            [ 1]  767 	jreq	00102$
                                    768 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
      00A06D AA 02            [ 1]  769 	or	a, #0x02
      00A06F C7 53 20         [ 1]  770 	ld	0x5320, a
      00A072 81               [ 4]  771 	ret
      00A073                        772 00102$:
                                    773 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 347: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
      00A073 A4 FD            [ 1]  774 	and	a, #0xfd
      00A075 C7 53 20         [ 1]  775 	ld	0x5320, a
                                    776 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 349: }
      00A078 81               [ 4]  777 	ret
                                    778 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 359: void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
                                    779 ;	-----------------------------------------
                                    780 ;	 function TIM3_UpdateRequestConfig
                                    781 ;	-----------------------------------------
      00A079                        782 _TIM3_UpdateRequestConfig:
                                    783 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 362: assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
      00A079 0D 03            [ 1]  784 	tnz	(0x03, sp)
      00A07B 27 14            [ 1]  785 	jreq	00107$
      00A07D 7B 03            [ 1]  786 	ld	a, (0x03, sp)
      00A07F 4A               [ 1]  787 	dec	a
      00A080 27 0F            [ 1]  788 	jreq	00107$
      00A082 4B 6A            [ 1]  789 	push	#0x6a
      00A084 4B 01            [ 1]  790 	push	#0x01
      00A086 5F               [ 1]  791 	clrw	x
      00A087 89               [ 2]  792 	pushw	x
      00A088 4B C8            [ 1]  793 	push	#<(___str_0+0)
      00A08A 4B 81            [ 1]  794 	push	#((___str_0+0) >> 8)
      00A08C CD 85 5C         [ 4]  795 	call	_assert_failed
      00A08F 5B 06            [ 2]  796 	addw	sp, #6
      00A091                        797 00107$:
                                    798 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
      00A091 C6 53 20         [ 1]  799 	ld	a, 0x5320
                                    800 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 365: if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
      00A094 0D 03            [ 1]  801 	tnz	(0x03, sp)
      00A096 27 06            [ 1]  802 	jreq	00102$
                                    803 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
      00A098 AA 04            [ 1]  804 	or	a, #0x04
      00A09A C7 53 20         [ 1]  805 	ld	0x5320, a
      00A09D 81               [ 4]  806 	ret
      00A09E                        807 00102$:
                                    808 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 371: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
      00A09E A4 FB            [ 1]  809 	and	a, #0xfb
      00A0A0 C7 53 20         [ 1]  810 	ld	0x5320, a
                                    811 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 373: }
      00A0A3 81               [ 4]  812 	ret
                                    813 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 383: void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
                                    814 ;	-----------------------------------------
                                    815 ;	 function TIM3_SelectOnePulseMode
                                    816 ;	-----------------------------------------
      00A0A4                        817 _TIM3_SelectOnePulseMode:
                                    818 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 386: assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
      00A0A4 7B 03            [ 1]  819 	ld	a, (0x03, sp)
      00A0A6 4A               [ 1]  820 	dec	a
      00A0A7 27 13            [ 1]  821 	jreq	00107$
      00A0A9 0D 03            [ 1]  822 	tnz	(0x03, sp)
      00A0AB 27 0F            [ 1]  823 	jreq	00107$
      00A0AD 4B 82            [ 1]  824 	push	#0x82
      00A0AF 4B 01            [ 1]  825 	push	#0x01
      00A0B1 5F               [ 1]  826 	clrw	x
      00A0B2 89               [ 2]  827 	pushw	x
      00A0B3 4B C8            [ 1]  828 	push	#<(___str_0+0)
      00A0B5 4B 81            [ 1]  829 	push	#((___str_0+0) >> 8)
      00A0B7 CD 85 5C         [ 4]  830 	call	_assert_failed
      00A0BA 5B 06            [ 2]  831 	addw	sp, #6
      00A0BC                        832 00107$:
                                    833 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
      00A0BC C6 53 20         [ 1]  834 	ld	a, 0x5320
                                    835 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 389: if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
      00A0BF 0D 03            [ 1]  836 	tnz	(0x03, sp)
      00A0C1 27 06            [ 1]  837 	jreq	00102$
                                    838 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
      00A0C3 AA 08            [ 1]  839 	or	a, #0x08
      00A0C5 C7 53 20         [ 1]  840 	ld	0x5320, a
      00A0C8 81               [ 4]  841 	ret
      00A0C9                        842 00102$:
                                    843 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 395: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
      00A0C9 A4 F7            [ 1]  844 	and	a, #0xf7
      00A0CB C7 53 20         [ 1]  845 	ld	0x5320, a
                                    846 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 397: }
      00A0CE 81               [ 4]  847 	ret
                                    848 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 427: void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
                                    849 ;	-----------------------------------------
                                    850 ;	 function TIM3_PrescalerConfig
                                    851 ;	-----------------------------------------
      00A0CF                        852 _TIM3_PrescalerConfig:
                                    853 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 431: assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
      00A0CF 0D 04            [ 1]  854 	tnz	(0x04, sp)
      00A0D1 27 14            [ 1]  855 	jreq	00104$
      00A0D3 7B 04            [ 1]  856 	ld	a, (0x04, sp)
      00A0D5 4A               [ 1]  857 	dec	a
      00A0D6 27 0F            [ 1]  858 	jreq	00104$
      00A0D8 4B AF            [ 1]  859 	push	#0xaf
      00A0DA 4B 01            [ 1]  860 	push	#0x01
      00A0DC 5F               [ 1]  861 	clrw	x
      00A0DD 89               [ 2]  862 	pushw	x
      00A0DE 4B C8            [ 1]  863 	push	#<(___str_0+0)
      00A0E0 4B 81            [ 1]  864 	push	#((___str_0+0) >> 8)
      00A0E2 CD 85 5C         [ 4]  865 	call	_assert_failed
      00A0E5 5B 06            [ 2]  866 	addw	sp, #6
      00A0E7                        867 00104$:
                                    868 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 432: assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
      00A0E7 0D 03            [ 1]  869 	tnz	(0x03, sp)
      00A0E9 27 68            [ 1]  870 	jreq	00109$
      00A0EB 7B 03            [ 1]  871 	ld	a, (0x03, sp)
      00A0ED 4A               [ 1]  872 	dec	a
      00A0EE 27 63            [ 1]  873 	jreq	00109$
      00A0F0 7B 03            [ 1]  874 	ld	a, (0x03, sp)
      00A0F2 A1 02            [ 1]  875 	cp	a, #0x02
      00A0F4 27 5D            [ 1]  876 	jreq	00109$
      00A0F6 7B 03            [ 1]  877 	ld	a, (0x03, sp)
      00A0F8 A1 03            [ 1]  878 	cp	a, #0x03
      00A0FA 27 57            [ 1]  879 	jreq	00109$
      00A0FC 7B 03            [ 1]  880 	ld	a, (0x03, sp)
      00A0FE A1 04            [ 1]  881 	cp	a, #0x04
      00A100 27 51            [ 1]  882 	jreq	00109$
      00A102 7B 03            [ 1]  883 	ld	a, (0x03, sp)
      00A104 A1 05            [ 1]  884 	cp	a, #0x05
      00A106 27 4B            [ 1]  885 	jreq	00109$
      00A108 7B 03            [ 1]  886 	ld	a, (0x03, sp)
      00A10A A1 06            [ 1]  887 	cp	a, #0x06
      00A10C 27 45            [ 1]  888 	jreq	00109$
      00A10E 7B 03            [ 1]  889 	ld	a, (0x03, sp)
      00A110 A1 07            [ 1]  890 	cp	a, #0x07
      00A112 27 3F            [ 1]  891 	jreq	00109$
      00A114 7B 03            [ 1]  892 	ld	a, (0x03, sp)
      00A116 A1 08            [ 1]  893 	cp	a, #0x08
      00A118 27 39            [ 1]  894 	jreq	00109$
      00A11A 7B 03            [ 1]  895 	ld	a, (0x03, sp)
      00A11C A1 09            [ 1]  896 	cp	a, #0x09
      00A11E 27 33            [ 1]  897 	jreq	00109$
      00A120 7B 03            [ 1]  898 	ld	a, (0x03, sp)
      00A122 A1 0A            [ 1]  899 	cp	a, #0x0a
      00A124 27 2D            [ 1]  900 	jreq	00109$
      00A126 7B 03            [ 1]  901 	ld	a, (0x03, sp)
      00A128 A1 0B            [ 1]  902 	cp	a, #0x0b
      00A12A 27 27            [ 1]  903 	jreq	00109$
      00A12C 7B 03            [ 1]  904 	ld	a, (0x03, sp)
      00A12E A1 0C            [ 1]  905 	cp	a, #0x0c
      00A130 27 21            [ 1]  906 	jreq	00109$
      00A132 7B 03            [ 1]  907 	ld	a, (0x03, sp)
      00A134 A1 0D            [ 1]  908 	cp	a, #0x0d
      00A136 27 1B            [ 1]  909 	jreq	00109$
      00A138 7B 03            [ 1]  910 	ld	a, (0x03, sp)
      00A13A A1 0E            [ 1]  911 	cp	a, #0x0e
      00A13C 27 15            [ 1]  912 	jreq	00109$
      00A13E 7B 03            [ 1]  913 	ld	a, (0x03, sp)
      00A140 A1 0F            [ 1]  914 	cp	a, #0x0f
      00A142 27 0F            [ 1]  915 	jreq	00109$
      00A144 4B B0            [ 1]  916 	push	#0xb0
      00A146 4B 01            [ 1]  917 	push	#0x01
      00A148 5F               [ 1]  918 	clrw	x
      00A149 89               [ 2]  919 	pushw	x
      00A14A 4B C8            [ 1]  920 	push	#<(___str_0+0)
      00A14C 4B 81            [ 1]  921 	push	#((___str_0+0) >> 8)
      00A14E CD 85 5C         [ 4]  922 	call	_assert_failed
      00A151 5B 06            [ 2]  923 	addw	sp, #6
      00A153                        924 00109$:
                                    925 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 435: TIM3->PSCR = (uint8_t)Prescaler;
      00A153 AE 53 2A         [ 2]  926 	ldw	x, #0x532a
      00A156 7B 03            [ 1]  927 	ld	a, (0x03, sp)
      00A158 F7               [ 1]  928 	ld	(x), a
                                    929 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 438: TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
      00A159 AE 53 24         [ 2]  930 	ldw	x, #0x5324
      00A15C 7B 04            [ 1]  931 	ld	a, (0x04, sp)
      00A15E F7               [ 1]  932 	ld	(x), a
                                    933 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 439: }
      00A15F 81               [ 4]  934 	ret
                                    935 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 450: void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
                                    936 ;	-----------------------------------------
                                    937 ;	 function TIM3_ForcedOC1Config
                                    938 ;	-----------------------------------------
      00A160                        939 _TIM3_ForcedOC1Config:
                                    940 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 453: assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
      00A160 7B 03            [ 1]  941 	ld	a, (0x03, sp)
      00A162 A1 50            [ 1]  942 	cp	a, #0x50
      00A164 27 15            [ 1]  943 	jreq	00104$
      00A166 7B 03            [ 1]  944 	ld	a, (0x03, sp)
      00A168 A1 40            [ 1]  945 	cp	a, #0x40
      00A16A 27 0F            [ 1]  946 	jreq	00104$
      00A16C 4B C5            [ 1]  947 	push	#0xc5
      00A16E 4B 01            [ 1]  948 	push	#0x01
      00A170 5F               [ 1]  949 	clrw	x
      00A171 89               [ 2]  950 	pushw	x
      00A172 4B C8            [ 1]  951 	push	#<(___str_0+0)
      00A174 4B 81            [ 1]  952 	push	#((___str_0+0) >> 8)
      00A176 CD 85 5C         [ 4]  953 	call	_assert_failed
      00A179 5B 06            [ 2]  954 	addw	sp, #6
      00A17B                        955 00104$:
                                    956 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 456: TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
      00A17B C6 53 25         [ 1]  957 	ld	a, 0x5325
      00A17E A4 8F            [ 1]  958 	and	a, #0x8f
      00A180 1A 03            [ 1]  959 	or	a, (0x03, sp)
      00A182 C7 53 25         [ 1]  960 	ld	0x5325, a
                                    961 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 457: }
      00A185 81               [ 4]  962 	ret
                                    963 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 468: void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
                                    964 ;	-----------------------------------------
                                    965 ;	 function TIM3_ForcedOC2Config
                                    966 ;	-----------------------------------------
      00A186                        967 _TIM3_ForcedOC2Config:
                                    968 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 471: assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
      00A186 7B 03            [ 1]  969 	ld	a, (0x03, sp)
      00A188 A1 50            [ 1]  970 	cp	a, #0x50
      00A18A 27 15            [ 1]  971 	jreq	00104$
      00A18C 7B 03            [ 1]  972 	ld	a, (0x03, sp)
      00A18E A1 40            [ 1]  973 	cp	a, #0x40
      00A190 27 0F            [ 1]  974 	jreq	00104$
      00A192 4B D7            [ 1]  975 	push	#0xd7
      00A194 4B 01            [ 1]  976 	push	#0x01
      00A196 5F               [ 1]  977 	clrw	x
      00A197 89               [ 2]  978 	pushw	x
      00A198 4B C8            [ 1]  979 	push	#<(___str_0+0)
      00A19A 4B 81            [ 1]  980 	push	#((___str_0+0) >> 8)
      00A19C CD 85 5C         [ 4]  981 	call	_assert_failed
      00A19F 5B 06            [ 2]  982 	addw	sp, #6
      00A1A1                        983 00104$:
                                    984 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 474: TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
      00A1A1 C6 53 26         [ 1]  985 	ld	a, 0x5326
      00A1A4 A4 8F            [ 1]  986 	and	a, #0x8f
      00A1A6 1A 03            [ 1]  987 	or	a, (0x03, sp)
      00A1A8 C7 53 26         [ 1]  988 	ld	0x5326, a
                                    989 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 475: }
      00A1AB 81               [ 4]  990 	ret
                                    991 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 483: void TIM3_ARRPreloadConfig(FunctionalState NewState)
                                    992 ;	-----------------------------------------
                                    993 ;	 function TIM3_ARRPreloadConfig
                                    994 ;	-----------------------------------------
      00A1AC                        995 _TIM3_ARRPreloadConfig:
                                    996 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 486: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A1AC 0D 03            [ 1]  997 	tnz	(0x03, sp)
      00A1AE 27 14            [ 1]  998 	jreq	00107$
      00A1B0 7B 03            [ 1]  999 	ld	a, (0x03, sp)
      00A1B2 4A               [ 1] 1000 	dec	a
      00A1B3 27 0F            [ 1] 1001 	jreq	00107$
      00A1B5 4B E6            [ 1] 1002 	push	#0xe6
      00A1B7 4B 01            [ 1] 1003 	push	#0x01
      00A1B9 5F               [ 1] 1004 	clrw	x
      00A1BA 89               [ 2] 1005 	pushw	x
      00A1BB 4B C8            [ 1] 1006 	push	#<(___str_0+0)
      00A1BD 4B 81            [ 1] 1007 	push	#((___str_0+0) >> 8)
      00A1BF CD 85 5C         [ 4] 1008 	call	_assert_failed
      00A1C2 5B 06            [ 2] 1009 	addw	sp, #6
      00A1C4                       1010 00107$:
                                   1011 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
      00A1C4 C6 53 20         [ 1] 1012 	ld	a, 0x5320
                                   1013 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 489: if (NewState != DISABLE)
      00A1C7 0D 03            [ 1] 1014 	tnz	(0x03, sp)
      00A1C9 27 06            [ 1] 1015 	jreq	00102$
                                   1016 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
      00A1CB AA 80            [ 1] 1017 	or	a, #0x80
      00A1CD C7 53 20         [ 1] 1018 	ld	0x5320, a
      00A1D0 81               [ 4] 1019 	ret
      00A1D1                       1020 00102$:
                                   1021 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 495: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
      00A1D1 A4 7F            [ 1] 1022 	and	a, #0x7f
      00A1D3 C7 53 20         [ 1] 1023 	ld	0x5320, a
                                   1024 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 497: }
      00A1D6 81               [ 4] 1025 	ret
                                   1026 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 505: void TIM3_OC1PreloadConfig(FunctionalState NewState)
                                   1027 ;	-----------------------------------------
                                   1028 ;	 function TIM3_OC1PreloadConfig
                                   1029 ;	-----------------------------------------
      00A1D7                       1030 _TIM3_OC1PreloadConfig:
                                   1031 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 508: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A1D7 0D 03            [ 1] 1032 	tnz	(0x03, sp)
      00A1D9 27 14            [ 1] 1033 	jreq	00107$
      00A1DB 7B 03            [ 1] 1034 	ld	a, (0x03, sp)
      00A1DD 4A               [ 1] 1035 	dec	a
      00A1DE 27 0F            [ 1] 1036 	jreq	00107$
      00A1E0 4B FC            [ 1] 1037 	push	#0xfc
      00A1E2 4B 01            [ 1] 1038 	push	#0x01
      00A1E4 5F               [ 1] 1039 	clrw	x
      00A1E5 89               [ 2] 1040 	pushw	x
      00A1E6 4B C8            [ 1] 1041 	push	#<(___str_0+0)
      00A1E8 4B 81            [ 1] 1042 	push	#((___str_0+0) >> 8)
      00A1EA CD 85 5C         [ 4] 1043 	call	_assert_failed
      00A1ED 5B 06            [ 2] 1044 	addw	sp, #6
      00A1EF                       1045 00107$:
                                   1046 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
      00A1EF C6 53 25         [ 1] 1047 	ld	a, 0x5325
                                   1048 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 511: if (NewState != DISABLE)
      00A1F2 0D 03            [ 1] 1049 	tnz	(0x03, sp)
      00A1F4 27 06            [ 1] 1050 	jreq	00102$
                                   1051 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
      00A1F6 AA 08            [ 1] 1052 	or	a, #0x08
      00A1F8 C7 53 25         [ 1] 1053 	ld	0x5325, a
      00A1FB 81               [ 4] 1054 	ret
      00A1FC                       1055 00102$:
                                   1056 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 517: TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
      00A1FC A4 F7            [ 1] 1057 	and	a, #0xf7
      00A1FE C7 53 25         [ 1] 1058 	ld	0x5325, a
                                   1059 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 519: }
      00A201 81               [ 4] 1060 	ret
                                   1061 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 527: void TIM3_OC2PreloadConfig(FunctionalState NewState)
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function TIM3_OC2PreloadConfig
                                   1064 ;	-----------------------------------------
      00A202                       1065 _TIM3_OC2PreloadConfig:
                                   1066 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 530: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A202 0D 03            [ 1] 1067 	tnz	(0x03, sp)
      00A204 27 14            [ 1] 1068 	jreq	00107$
      00A206 7B 03            [ 1] 1069 	ld	a, (0x03, sp)
      00A208 4A               [ 1] 1070 	dec	a
      00A209 27 0F            [ 1] 1071 	jreq	00107$
      00A20B 4B 12            [ 1] 1072 	push	#0x12
      00A20D 4B 02            [ 1] 1073 	push	#0x02
      00A20F 5F               [ 1] 1074 	clrw	x
      00A210 89               [ 2] 1075 	pushw	x
      00A211 4B C8            [ 1] 1076 	push	#<(___str_0+0)
      00A213 4B 81            [ 1] 1077 	push	#((___str_0+0) >> 8)
      00A215 CD 85 5C         [ 4] 1078 	call	_assert_failed
      00A218 5B 06            [ 2] 1079 	addw	sp, #6
      00A21A                       1080 00107$:
                                   1081 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
      00A21A C6 53 26         [ 1] 1082 	ld	a, 0x5326
                                   1083 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 533: if (NewState != DISABLE)
      00A21D 0D 03            [ 1] 1084 	tnz	(0x03, sp)
      00A21F 27 06            [ 1] 1085 	jreq	00102$
                                   1086 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
      00A221 AA 08            [ 1] 1087 	or	a, #0x08
      00A223 C7 53 26         [ 1] 1088 	ld	0x5326, a
      00A226 81               [ 4] 1089 	ret
      00A227                       1090 00102$:
                                   1091 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 539: TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
      00A227 A4 F7            [ 1] 1092 	and	a, #0xf7
      00A229 C7 53 26         [ 1] 1093 	ld	0x5326, a
                                   1094 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 541: }
      00A22C 81               [ 4] 1095 	ret
                                   1096 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 552: void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
                                   1097 ;	-----------------------------------------
                                   1098 ;	 function TIM3_GenerateEvent
                                   1099 ;	-----------------------------------------
      00A22D                       1100 _TIM3_GenerateEvent:
                                   1101 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 555: assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
      00A22D 0D 03            [ 1] 1102 	tnz	(0x03, sp)
      00A22F 26 0F            [ 1] 1103 	jrne	00104$
      00A231 4B 2B            [ 1] 1104 	push	#0x2b
      00A233 4B 02            [ 1] 1105 	push	#0x02
      00A235 5F               [ 1] 1106 	clrw	x
      00A236 89               [ 2] 1107 	pushw	x
      00A237 4B C8            [ 1] 1108 	push	#<(___str_0+0)
      00A239 4B 81            [ 1] 1109 	push	#((___str_0+0) >> 8)
      00A23B CD 85 5C         [ 4] 1110 	call	_assert_failed
      00A23E 5B 06            [ 2] 1111 	addw	sp, #6
      00A240                       1112 00104$:
                                   1113 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 558: TIM3->EGR = (uint8_t)TIM3_EventSource;
      00A240 AE 53 24         [ 2] 1114 	ldw	x, #0x5324
      00A243 7B 03            [ 1] 1115 	ld	a, (0x03, sp)
      00A245 F7               [ 1] 1116 	ld	(x), a
                                   1117 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 559: }
      00A246 81               [ 4] 1118 	ret
                                   1119 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 569: void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
                                   1120 ;	-----------------------------------------
                                   1121 ;	 function TIM3_OC1PolarityConfig
                                   1122 ;	-----------------------------------------
      00A247                       1123 _TIM3_OC1PolarityConfig:
                                   1124 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 572: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
      00A247 0D 03            [ 1] 1125 	tnz	(0x03, sp)
      00A249 27 15            [ 1] 1126 	jreq	00107$
      00A24B 7B 03            [ 1] 1127 	ld	a, (0x03, sp)
      00A24D A1 22            [ 1] 1128 	cp	a, #0x22
      00A24F 27 0F            [ 1] 1129 	jreq	00107$
      00A251 4B 3C            [ 1] 1130 	push	#0x3c
      00A253 4B 02            [ 1] 1131 	push	#0x02
      00A255 5F               [ 1] 1132 	clrw	x
      00A256 89               [ 2] 1133 	pushw	x
      00A257 4B C8            [ 1] 1134 	push	#<(___str_0+0)
      00A259 4B 81            [ 1] 1135 	push	#((___str_0+0) >> 8)
      00A25B CD 85 5C         [ 4] 1136 	call	_assert_failed
      00A25E 5B 06            [ 2] 1137 	addw	sp, #6
      00A260                       1138 00107$:
                                   1139 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      00A260 C6 53 27         [ 1] 1140 	ld	a, 0x5327
                                   1141 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 575: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
      00A263 0D 03            [ 1] 1142 	tnz	(0x03, sp)
      00A265 27 06            [ 1] 1143 	jreq	00102$
                                   1144 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      00A267 AA 02            [ 1] 1145 	or	a, #0x02
      00A269 C7 53 27         [ 1] 1146 	ld	0x5327, a
      00A26C 81               [ 4] 1147 	ret
      00A26D                       1148 00102$:
                                   1149 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 581: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
      00A26D A4 FD            [ 1] 1150 	and	a, #0xfd
      00A26F C7 53 27         [ 1] 1151 	ld	0x5327, a
                                   1152 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 583: }
      00A272 81               [ 4] 1153 	ret
                                   1154 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 593: void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
                                   1155 ;	-----------------------------------------
                                   1156 ;	 function TIM3_OC2PolarityConfig
                                   1157 ;	-----------------------------------------
      00A273                       1158 _TIM3_OC2PolarityConfig:
                                   1159 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 596: assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
      00A273 0D 03            [ 1] 1160 	tnz	(0x03, sp)
      00A275 27 15            [ 1] 1161 	jreq	00107$
      00A277 7B 03            [ 1] 1162 	ld	a, (0x03, sp)
      00A279 A1 22            [ 1] 1163 	cp	a, #0x22
      00A27B 27 0F            [ 1] 1164 	jreq	00107$
      00A27D 4B 54            [ 1] 1165 	push	#0x54
      00A27F 4B 02            [ 1] 1166 	push	#0x02
      00A281 5F               [ 1] 1167 	clrw	x
      00A282 89               [ 2] 1168 	pushw	x
      00A283 4B C8            [ 1] 1169 	push	#<(___str_0+0)
      00A285 4B 81            [ 1] 1170 	push	#((___str_0+0) >> 8)
      00A287 CD 85 5C         [ 4] 1171 	call	_assert_failed
      00A28A 5B 06            [ 2] 1172 	addw	sp, #6
      00A28C                       1173 00107$:
                                   1174 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      00A28C C6 53 27         [ 1] 1175 	ld	a, 0x5327
                                   1176 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 599: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
      00A28F 0D 03            [ 1] 1177 	tnz	(0x03, sp)
      00A291 27 06            [ 1] 1178 	jreq	00102$
                                   1179 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      00A293 AA 20            [ 1] 1180 	or	a, #0x20
      00A295 C7 53 27         [ 1] 1181 	ld	0x5327, a
      00A298 81               [ 4] 1182 	ret
      00A299                       1183 00102$:
                                   1184 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 605: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
      00A299 A4 DF            [ 1] 1185 	and	a, #0xdf
      00A29B C7 53 27         [ 1] 1186 	ld	0x5327, a
                                   1187 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 607: }
      00A29E 81               [ 4] 1188 	ret
                                   1189 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 619: void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
                                   1190 ;	-----------------------------------------
                                   1191 ;	 function TIM3_CCxCmd
                                   1192 ;	-----------------------------------------
      00A29F                       1193 _TIM3_CCxCmd:
                                   1194 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 622: assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
      00A29F 0D 03            [ 1] 1195 	tnz	(0x03, sp)
      00A2A1 27 14            [ 1] 1196 	jreq	00113$
      00A2A3 7B 03            [ 1] 1197 	ld	a, (0x03, sp)
      00A2A5 4A               [ 1] 1198 	dec	a
      00A2A6 27 0F            [ 1] 1199 	jreq	00113$
      00A2A8 4B 6E            [ 1] 1200 	push	#0x6e
      00A2AA 4B 02            [ 1] 1201 	push	#0x02
      00A2AC 5F               [ 1] 1202 	clrw	x
      00A2AD 89               [ 2] 1203 	pushw	x
      00A2AE 4B C8            [ 1] 1204 	push	#<(___str_0+0)
      00A2B0 4B 81            [ 1] 1205 	push	#((___str_0+0) >> 8)
      00A2B2 CD 85 5C         [ 4] 1206 	call	_assert_failed
      00A2B5 5B 06            [ 2] 1207 	addw	sp, #6
      00A2B7                       1208 00113$:
                                   1209 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 623: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A2B7 0D 04            [ 1] 1210 	tnz	(0x04, sp)
      00A2B9 27 14            [ 1] 1211 	jreq	00118$
      00A2BB 7B 04            [ 1] 1212 	ld	a, (0x04, sp)
      00A2BD 4A               [ 1] 1213 	dec	a
      00A2BE 27 0F            [ 1] 1214 	jreq	00118$
      00A2C0 4B 6F            [ 1] 1215 	push	#0x6f
      00A2C2 4B 02            [ 1] 1216 	push	#0x02
      00A2C4 5F               [ 1] 1217 	clrw	x
      00A2C5 89               [ 2] 1218 	pushw	x
      00A2C6 4B C8            [ 1] 1219 	push	#<(___str_0+0)
      00A2C8 4B 81            [ 1] 1220 	push	#((___str_0+0) >> 8)
      00A2CA CD 85 5C         [ 4] 1221 	call	_assert_failed
      00A2CD 5B 06            [ 2] 1222 	addw	sp, #6
      00A2CF                       1223 00118$:
                                   1224 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      00A2CF C6 53 27         [ 1] 1225 	ld	a, 0x5327
                                   1226 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 625: if (TIM3_Channel == TIM3_CHANNEL_1)
      00A2D2 0D 03            [ 1] 1227 	tnz	(0x03, sp)
      00A2D4 26 10            [ 1] 1228 	jrne	00108$
                                   1229 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 628: if (NewState != DISABLE)
      00A2D6 0D 04            [ 1] 1230 	tnz	(0x04, sp)
      00A2D8 27 06            [ 1] 1231 	jreq	00102$
                                   1232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      00A2DA AA 01            [ 1] 1233 	or	a, #0x01
      00A2DC C7 53 27         [ 1] 1234 	ld	0x5327, a
      00A2DF 81               [ 4] 1235 	ret
      00A2E0                       1236 00102$:
                                   1237 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 634: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00A2E0 A4 FE            [ 1] 1238 	and	a, #0xfe
      00A2E2 C7 53 27         [ 1] 1239 	ld	0x5327, a
      00A2E5 81               [ 4] 1240 	ret
      00A2E6                       1241 00108$:
                                   1242 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 641: if (NewState != DISABLE)
      00A2E6 0D 04            [ 1] 1243 	tnz	(0x04, sp)
      00A2E8 27 06            [ 1] 1244 	jreq	00105$
                                   1245 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 643: TIM3->CCER1 |= TIM3_CCER1_CC2E;
      00A2EA AA 10            [ 1] 1246 	or	a, #0x10
      00A2EC C7 53 27         [ 1] 1247 	ld	0x5327, a
      00A2EF 81               [ 4] 1248 	ret
      00A2F0                       1249 00105$:
                                   1250 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 647: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
      00A2F0 A4 EF            [ 1] 1251 	and	a, #0xef
      00A2F2 C7 53 27         [ 1] 1252 	ld	0x5327, a
                                   1253 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 650: }
      00A2F5 81               [ 4] 1254 	ret
                                   1255 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 671: void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
                                   1256 ;	-----------------------------------------
                                   1257 ;	 function TIM3_SelectOCxM
                                   1258 ;	-----------------------------------------
      00A2F6                       1259 _TIM3_SelectOCxM:
                                   1260 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 674: assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
      00A2F6 0D 03            [ 1] 1261 	tnz	(0x03, sp)
      00A2F8 27 14            [ 1] 1262 	jreq	00107$
      00A2FA 7B 03            [ 1] 1263 	ld	a, (0x03, sp)
      00A2FC 4A               [ 1] 1264 	dec	a
      00A2FD 27 0F            [ 1] 1265 	jreq	00107$
      00A2FF 4B A2            [ 1] 1266 	push	#0xa2
      00A301 4B 02            [ 1] 1267 	push	#0x02
      00A303 5F               [ 1] 1268 	clrw	x
      00A304 89               [ 2] 1269 	pushw	x
      00A305 4B C8            [ 1] 1270 	push	#<(___str_0+0)
      00A307 4B 81            [ 1] 1271 	push	#((___str_0+0) >> 8)
      00A309 CD 85 5C         [ 4] 1272 	call	_assert_failed
      00A30C 5B 06            [ 2] 1273 	addw	sp, #6
      00A30E                       1274 00107$:
                                   1275 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 675: assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
      00A30E 0D 04            [ 1] 1276 	tnz	(0x04, sp)
      00A310 27 39            [ 1] 1277 	jreq	00112$
      00A312 7B 04            [ 1] 1278 	ld	a, (0x04, sp)
      00A314 A1 10            [ 1] 1279 	cp	a, #0x10
      00A316 27 33            [ 1] 1280 	jreq	00112$
      00A318 7B 04            [ 1] 1281 	ld	a, (0x04, sp)
      00A31A A1 20            [ 1] 1282 	cp	a, #0x20
      00A31C 27 2D            [ 1] 1283 	jreq	00112$
      00A31E 7B 04            [ 1] 1284 	ld	a, (0x04, sp)
      00A320 A1 30            [ 1] 1285 	cp	a, #0x30
      00A322 27 27            [ 1] 1286 	jreq	00112$
      00A324 7B 04            [ 1] 1287 	ld	a, (0x04, sp)
      00A326 A1 60            [ 1] 1288 	cp	a, #0x60
      00A328 27 21            [ 1] 1289 	jreq	00112$
      00A32A 7B 04            [ 1] 1290 	ld	a, (0x04, sp)
      00A32C A1 70            [ 1] 1291 	cp	a, #0x70
      00A32E 27 1B            [ 1] 1292 	jreq	00112$
      00A330 7B 04            [ 1] 1293 	ld	a, (0x04, sp)
      00A332 A1 50            [ 1] 1294 	cp	a, #0x50
      00A334 27 15            [ 1] 1295 	jreq	00112$
      00A336 7B 04            [ 1] 1296 	ld	a, (0x04, sp)
      00A338 A1 40            [ 1] 1297 	cp	a, #0x40
      00A33A 27 0F            [ 1] 1298 	jreq	00112$
      00A33C 4B A3            [ 1] 1299 	push	#0xa3
      00A33E 4B 02            [ 1] 1300 	push	#0x02
      00A340 5F               [ 1] 1301 	clrw	x
      00A341 89               [ 2] 1302 	pushw	x
      00A342 4B C8            [ 1] 1303 	push	#<(___str_0+0)
      00A344 4B 81            [ 1] 1304 	push	#((___str_0+0) >> 8)
      00A346 CD 85 5C         [ 4] 1305 	call	_assert_failed
      00A349 5B 06            [ 2] 1306 	addw	sp, #6
      00A34B                       1307 00112$:
                                   1308 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00A34B C6 53 27         [ 1] 1309 	ld	a, 0x5327
                                   1310 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 677: if (TIM3_Channel == TIM3_CHANNEL_1)
      00A34E 0D 03            [ 1] 1311 	tnz	(0x03, sp)
      00A350 26 10            [ 1] 1312 	jrne	00102$
                                   1313 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00A352 A4 FE            [ 1] 1314 	and	a, #0xfe
      00A354 C7 53 27         [ 1] 1315 	ld	0x5327, a
                                   1316 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 683: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      00A357 C6 53 25         [ 1] 1317 	ld	a, 0x5325
      00A35A A4 8F            [ 1] 1318 	and	a, #0x8f
      00A35C 1A 04            [ 1] 1319 	or	a, (0x04, sp)
      00A35E C7 53 25         [ 1] 1320 	ld	0x5325, a
      00A361 81               [ 4] 1321 	ret
      00A362                       1322 00102$:
                                   1323 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 688: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
      00A362 A4 EF            [ 1] 1324 	and	a, #0xef
      00A364 C7 53 27         [ 1] 1325 	ld	0x5327, a
                                   1326 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 691: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      00A367 C6 53 26         [ 1] 1327 	ld	a, 0x5326
      00A36A A4 8F            [ 1] 1328 	and	a, #0x8f
      00A36C 1A 04            [ 1] 1329 	or	a, (0x04, sp)
      00A36E C7 53 26         [ 1] 1330 	ld	0x5326, a
                                   1331 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 693: }
      00A371 81               [ 4] 1332 	ret
                                   1333 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 701: void TIM3_SetCounter(uint16_t Counter)
                                   1334 ;	-----------------------------------------
                                   1335 ;	 function TIM3_SetCounter
                                   1336 ;	-----------------------------------------
      00A372                       1337 _TIM3_SetCounter:
                                   1338 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 704: TIM3->CNTRH = (uint8_t)(Counter >> 8);
      00A372 7B 03            [ 1] 1339 	ld	a, (0x03, sp)
      00A374 C7 53 28         [ 1] 1340 	ld	0x5328, a
                                   1341 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 705: TIM3->CNTRL = (uint8_t)(Counter);
      00A377 7B 04            [ 1] 1342 	ld	a, (0x04, sp)
      00A379 C7 53 29         [ 1] 1343 	ld	0x5329, a
                                   1344 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 706: }
      00A37C 81               [ 4] 1345 	ret
                                   1346 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 714: void TIM3_SetAutoreload(uint16_t Autoreload)
                                   1347 ;	-----------------------------------------
                                   1348 ;	 function TIM3_SetAutoreload
                                   1349 ;	-----------------------------------------
      00A37D                       1350 _TIM3_SetAutoreload:
                                   1351 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 717: TIM3->ARRH = (uint8_t)(Autoreload >> 8);
      00A37D 7B 03            [ 1] 1352 	ld	a, (0x03, sp)
      00A37F C7 53 2B         [ 1] 1353 	ld	0x532b, a
                                   1354 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 718: TIM3->ARRL = (uint8_t)(Autoreload);
      00A382 7B 04            [ 1] 1355 	ld	a, (0x04, sp)
      00A384 C7 53 2C         [ 1] 1356 	ld	0x532c, a
                                   1357 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 719: }
      00A387 81               [ 4] 1358 	ret
                                   1359 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 727: void TIM3_SetCompare1(uint16_t Compare1)
                                   1360 ;	-----------------------------------------
                                   1361 ;	 function TIM3_SetCompare1
                                   1362 ;	-----------------------------------------
      00A388                       1363 _TIM3_SetCompare1:
                                   1364 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 730: TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
      00A388 7B 03            [ 1] 1365 	ld	a, (0x03, sp)
      00A38A C7 53 2D         [ 1] 1366 	ld	0x532d, a
                                   1367 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 731: TIM3->CCR1L = (uint8_t)(Compare1);
      00A38D 7B 04            [ 1] 1368 	ld	a, (0x04, sp)
      00A38F C7 53 2E         [ 1] 1369 	ld	0x532e, a
                                   1370 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 732: }
      00A392 81               [ 4] 1371 	ret
                                   1372 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 740: void TIM3_SetCompare2(uint16_t Compare2)
                                   1373 ;	-----------------------------------------
                                   1374 ;	 function TIM3_SetCompare2
                                   1375 ;	-----------------------------------------
      00A393                       1376 _TIM3_SetCompare2:
                                   1377 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 743: TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
      00A393 7B 03            [ 1] 1378 	ld	a, (0x03, sp)
      00A395 C7 53 2F         [ 1] 1379 	ld	0x532f, a
                                   1380 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 744: TIM3->CCR2L = (uint8_t)(Compare2);
      00A398 7B 04            [ 1] 1381 	ld	a, (0x04, sp)
      00A39A C7 53 30         [ 1] 1382 	ld	0x5330, a
                                   1383 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 745: }
      00A39D 81               [ 4] 1384 	ret
                                   1385 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 757: void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
                                   1386 ;	-----------------------------------------
                                   1387 ;	 function TIM3_SetIC1Prescaler
                                   1388 ;	-----------------------------------------
      00A39E                       1389 _TIM3_SetIC1Prescaler:
                                   1390 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 760: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
      00A39E 0D 03            [ 1] 1391 	tnz	(0x03, sp)
      00A3A0 27 21            [ 1] 1392 	jreq	00104$
      00A3A2 7B 03            [ 1] 1393 	ld	a, (0x03, sp)
      00A3A4 A1 04            [ 1] 1394 	cp	a, #0x04
      00A3A6 27 1B            [ 1] 1395 	jreq	00104$
      00A3A8 7B 03            [ 1] 1396 	ld	a, (0x03, sp)
      00A3AA A1 08            [ 1] 1397 	cp	a, #0x08
      00A3AC 27 15            [ 1] 1398 	jreq	00104$
      00A3AE 7B 03            [ 1] 1399 	ld	a, (0x03, sp)
      00A3B0 A1 0C            [ 1] 1400 	cp	a, #0x0c
      00A3B2 27 0F            [ 1] 1401 	jreq	00104$
      00A3B4 4B F8            [ 1] 1402 	push	#0xf8
      00A3B6 4B 02            [ 1] 1403 	push	#0x02
      00A3B8 5F               [ 1] 1404 	clrw	x
      00A3B9 89               [ 2] 1405 	pushw	x
      00A3BA 4B C8            [ 1] 1406 	push	#<(___str_0+0)
      00A3BC 4B 81            [ 1] 1407 	push	#((___str_0+0) >> 8)
      00A3BE CD 85 5C         [ 4] 1408 	call	_assert_failed
      00A3C1 5B 06            [ 2] 1409 	addw	sp, #6
      00A3C3                       1410 00104$:
                                   1411 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 763: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
      00A3C3 C6 53 25         [ 1] 1412 	ld	a, 0x5325
      00A3C6 A4 F3            [ 1] 1413 	and	a, #0xf3
      00A3C8 1A 03            [ 1] 1414 	or	a, (0x03, sp)
      00A3CA C7 53 25         [ 1] 1415 	ld	0x5325, a
                                   1416 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 764: }
      00A3CD 81               [ 4] 1417 	ret
                                   1418 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 776: void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
                                   1419 ;	-----------------------------------------
                                   1420 ;	 function TIM3_SetIC2Prescaler
                                   1421 ;	-----------------------------------------
      00A3CE                       1422 _TIM3_SetIC2Prescaler:
                                   1423 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 779: assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
      00A3CE 0D 03            [ 1] 1424 	tnz	(0x03, sp)
      00A3D0 27 21            [ 1] 1425 	jreq	00104$
      00A3D2 7B 03            [ 1] 1426 	ld	a, (0x03, sp)
      00A3D4 A1 04            [ 1] 1427 	cp	a, #0x04
      00A3D6 27 1B            [ 1] 1428 	jreq	00104$
      00A3D8 7B 03            [ 1] 1429 	ld	a, (0x03, sp)
      00A3DA A1 08            [ 1] 1430 	cp	a, #0x08
      00A3DC 27 15            [ 1] 1431 	jreq	00104$
      00A3DE 7B 03            [ 1] 1432 	ld	a, (0x03, sp)
      00A3E0 A1 0C            [ 1] 1433 	cp	a, #0x0c
      00A3E2 27 0F            [ 1] 1434 	jreq	00104$
      00A3E4 4B 0B            [ 1] 1435 	push	#0x0b
      00A3E6 4B 03            [ 1] 1436 	push	#0x03
      00A3E8 5F               [ 1] 1437 	clrw	x
      00A3E9 89               [ 2] 1438 	pushw	x
      00A3EA 4B C8            [ 1] 1439 	push	#<(___str_0+0)
      00A3EC 4B 81            [ 1] 1440 	push	#((___str_0+0) >> 8)
      00A3EE CD 85 5C         [ 4] 1441 	call	_assert_failed
      00A3F1 5B 06            [ 2] 1442 	addw	sp, #6
      00A3F3                       1443 00104$:
                                   1444 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 782: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
      00A3F3 C6 53 26         [ 1] 1445 	ld	a, 0x5326
      00A3F6 A4 F3            [ 1] 1446 	and	a, #0xf3
      00A3F8 1A 03            [ 1] 1447 	or	a, (0x03, sp)
      00A3FA C7 53 26         [ 1] 1448 	ld	0x5326, a
                                   1449 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 783: }
      00A3FD 81               [ 4] 1450 	ret
                                   1451 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 790: uint16_t TIM3_GetCapture1(void)
                                   1452 ;	-----------------------------------------
                                   1453 ;	 function TIM3_GetCapture1
                                   1454 ;	-----------------------------------------
      00A3FE                       1455 _TIM3_GetCapture1:
      00A3FE 89               [ 2] 1456 	pushw	x
                                   1457 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 796: tmpccr1h = TIM3->CCR1H;
      00A3FF C6 53 2D         [ 1] 1458 	ld	a, 0x532d
      00A402 95               [ 1] 1459 	ld	xh, a
                                   1460 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 797: tmpccr1l = TIM3->CCR1L;
      00A403 C6 53 2E         [ 1] 1461 	ld	a, 0x532e
                                   1462 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 799: tmpccr1 = (uint16_t)(tmpccr1l);
      00A406 97               [ 1] 1463 	ld	xl, a
      00A407 4F               [ 1] 1464 	clr	a
                                   1465 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 800: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      00A408 0F 02            [ 1] 1466 	clr	(0x02, sp)
      00A40A 89               [ 2] 1467 	pushw	x
      00A40B 1A 01            [ 1] 1468 	or	a, (1, sp)
      00A40D 85               [ 2] 1469 	popw	x
      00A40E 01               [ 1] 1470 	rrwa	x
      00A40F 1A 02            [ 1] 1471 	or	a, (0x02, sp)
      00A411 97               [ 1] 1472 	ld	xl, a
                                   1473 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 802: return (uint16_t)tmpccr1;
                                   1474 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 803: }
      00A412 5B 02            [ 2] 1475 	addw	sp, #2
      00A414 81               [ 4] 1476 	ret
                                   1477 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 810: uint16_t TIM3_GetCapture2(void)
                                   1478 ;	-----------------------------------------
                                   1479 ;	 function TIM3_GetCapture2
                                   1480 ;	-----------------------------------------
      00A415                       1481 _TIM3_GetCapture2:
      00A415 89               [ 2] 1482 	pushw	x
                                   1483 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 816: tmpccr2h = TIM3->CCR2H;
      00A416 C6 53 2F         [ 1] 1484 	ld	a, 0x532f
      00A419 95               [ 1] 1485 	ld	xh, a
                                   1486 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 817: tmpccr2l = TIM3->CCR2L;
      00A41A C6 53 30         [ 1] 1487 	ld	a, 0x5330
                                   1488 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 819: tmpccr2 = (uint16_t)(tmpccr2l);
      00A41D 97               [ 1] 1489 	ld	xl, a
      00A41E 4F               [ 1] 1490 	clr	a
                                   1491 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 820: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      00A41F 0F 02            [ 1] 1492 	clr	(0x02, sp)
      00A421 89               [ 2] 1493 	pushw	x
      00A422 1A 01            [ 1] 1494 	or	a, (1, sp)
      00A424 85               [ 2] 1495 	popw	x
      00A425 01               [ 1] 1496 	rrwa	x
      00A426 1A 02            [ 1] 1497 	or	a, (0x02, sp)
      00A428 97               [ 1] 1498 	ld	xl, a
                                   1499 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 822: return (uint16_t)tmpccr2;
                                   1500 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 823: }
      00A429 5B 02            [ 2] 1501 	addw	sp, #2
      00A42B 81               [ 4] 1502 	ret
                                   1503 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 830: uint16_t TIM3_GetCounter(void)
                                   1504 ;	-----------------------------------------
                                   1505 ;	 function TIM3_GetCounter
                                   1506 ;	-----------------------------------------
      00A42C                       1507 _TIM3_GetCounter:
      00A42C 52 04            [ 2] 1508 	sub	sp, #4
                                   1509 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 834: tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
      00A42E C6 53 28         [ 1] 1510 	ld	a, 0x5328
      00A431 5F               [ 1] 1511 	clrw	x
      00A432 95               [ 1] 1512 	ld	xh, a
      00A433 4F               [ 1] 1513 	clr	a
      00A434 6B 02            [ 1] 1514 	ld	(0x02, sp), a
                                   1515 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 836: return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
      00A436 C6 53 29         [ 1] 1516 	ld	a, 0x5329
      00A439 0F 03            [ 1] 1517 	clr	(0x03, sp)
      00A43B 1A 02            [ 1] 1518 	or	a, (0x02, sp)
      00A43D 02               [ 1] 1519 	rlwa	x
      00A43E 1A 03            [ 1] 1520 	or	a, (0x03, sp)
      00A440 95               [ 1] 1521 	ld	xh, a
                                   1522 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 837: }
      00A441 5B 04            [ 2] 1523 	addw	sp, #4
      00A443 81               [ 4] 1524 	ret
                                   1525 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 844: TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
                                   1526 ;	-----------------------------------------
                                   1527 ;	 function TIM3_GetPrescaler
                                   1528 ;	-----------------------------------------
      00A444                       1529 _TIM3_GetPrescaler:
                                   1530 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 847: return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
      00A444 C6 53 2A         [ 1] 1531 	ld	a, 0x532a
                                   1532 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 848: }
      00A447 81               [ 4] 1533 	ret
                                   1534 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 861: FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
                                   1535 ;	-----------------------------------------
                                   1536 ;	 function TIM3_GetFlagStatus
                                   1537 ;	-----------------------------------------
      00A448                       1538 _TIM3_GetFlagStatus:
      00A448 88               [ 1] 1539 	push	a
                                   1540 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 867: assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
      00A449 1E 04            [ 2] 1541 	ldw	x, (0x04, sp)
      00A44B A3 00 01         [ 2] 1542 	cpw	x, #0x0001
      00A44E 27 27            [ 1] 1543 	jreq	00107$
      00A450 A3 00 02         [ 2] 1544 	cpw	x, #0x0002
      00A453 27 22            [ 1] 1545 	jreq	00107$
      00A455 A3 00 04         [ 2] 1546 	cpw	x, #0x0004
      00A458 27 1D            [ 1] 1547 	jreq	00107$
      00A45A A3 02 00         [ 2] 1548 	cpw	x, #0x0200
      00A45D 27 18            [ 1] 1549 	jreq	00107$
      00A45F A3 04 00         [ 2] 1550 	cpw	x, #0x0400
      00A462 27 13            [ 1] 1551 	jreq	00107$
      00A464 89               [ 2] 1552 	pushw	x
      00A465 4B 63            [ 1] 1553 	push	#0x63
      00A467 4B 03            [ 1] 1554 	push	#0x03
      00A469 4B 00            [ 1] 1555 	push	#0x00
      00A46B 4B 00            [ 1] 1556 	push	#0x00
      00A46D 4B C8            [ 1] 1557 	push	#<(___str_0+0)
      00A46F 4B 81            [ 1] 1558 	push	#((___str_0+0) >> 8)
      00A471 CD 85 5C         [ 4] 1559 	call	_assert_failed
      00A474 5B 06            [ 2] 1560 	addw	sp, #6
      00A476 85               [ 2] 1561 	popw	x
      00A477                       1562 00107$:
                                   1563 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 869: tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
      00A477 C6 53 22         [ 1] 1564 	ld	a, 0x5322
      00A47A 6B 01            [ 1] 1565 	ld	(0x01, sp), a
      00A47C 7B 05            [ 1] 1566 	ld	a, (0x05, sp)
      00A47E 14 01            [ 1] 1567 	and	a, (0x01, sp)
      00A480 6B 01            [ 1] 1568 	ld	(0x01, sp), a
                                   1569 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 870: tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
                                   1570 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 872: if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
      00A482 C6 53 23         [ 1] 1571 	ld	a, 0x5323
      00A485 89               [ 2] 1572 	pushw	x
      00A486 14 01            [ 1] 1573 	and	a, (1, sp)
      00A488 85               [ 2] 1574 	popw	x
      00A489 1A 01            [ 1] 1575 	or	a, (0x01, sp)
      00A48B 27 03            [ 1] 1576 	jreq	00102$
                                   1577 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 874: bitstatus = SET;
      00A48D A6 01            [ 1] 1578 	ld	a, #0x01
                                   1579 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 878: bitstatus = RESET;
      00A48F 21                    1580 	.byte 0x21
      00A490                       1581 00102$:
      00A490 4F               [ 1] 1582 	clr	a
      00A491                       1583 00103$:
                                   1584 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 880: return (FlagStatus)bitstatus;
                                   1585 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 881: }
      00A491 5B 01            [ 2] 1586 	addw	sp, #1
      00A493 81               [ 4] 1587 	ret
                                   1588 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 894: void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
                                   1589 ;	-----------------------------------------
                                   1590 ;	 function TIM3_ClearFlag
                                   1591 ;	-----------------------------------------
      00A494                       1592 _TIM3_ClearFlag:
      00A494 52 04            [ 2] 1593 	sub	sp, #4
                                   1594 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 897: assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
      00A496 1E 07            [ 2] 1595 	ldw	x, (0x07, sp)
      00A498 1F 01            [ 2] 1596 	ldw	(0x01, sp), x
      00A49A 9F               [ 1] 1597 	ld	a, xl
      00A49B A4 F8            [ 1] 1598 	and	a, #0xf8
      00A49D 6B 04            [ 1] 1599 	ld	(0x04, sp), a
      00A49F 9E               [ 1] 1600 	ld	a, xh
      00A4A0 A4 F9            [ 1] 1601 	and	a, #0xf9
      00A4A2 6B 03            [ 1] 1602 	ld	(0x03, sp), a
      00A4A4 16 03            [ 2] 1603 	ldw	y, (0x03, sp)
      00A4A6 26 04            [ 1] 1604 	jrne	00103$
      00A4A8 16 01            [ 2] 1605 	ldw	y, (0x01, sp)
      00A4AA 26 13            [ 1] 1606 	jrne	00104$
      00A4AC                       1607 00103$:
      00A4AC 89               [ 2] 1608 	pushw	x
      00A4AD 4B 81            [ 1] 1609 	push	#0x81
      00A4AF 4B 03            [ 1] 1610 	push	#0x03
      00A4B1 4B 00            [ 1] 1611 	push	#0x00
      00A4B3 4B 00            [ 1] 1612 	push	#0x00
      00A4B5 4B C8            [ 1] 1613 	push	#<(___str_0+0)
      00A4B7 4B 81            [ 1] 1614 	push	#((___str_0+0) >> 8)
      00A4B9 CD 85 5C         [ 4] 1615 	call	_assert_failed
      00A4BC 5B 06            [ 2] 1616 	addw	sp, #6
      00A4BE 85               [ 2] 1617 	popw	x
      00A4BF                       1618 00104$:
                                   1619 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 900: TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
      00A4BF 9F               [ 1] 1620 	ld	a, xl
      00A4C0 43               [ 1] 1621 	cpl	a
      00A4C1 C7 53 22         [ 1] 1622 	ld	0x5322, a
                                   1623 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 901: TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
      00A4C4 7B 01            [ 1] 1624 	ld	a, (0x01, sp)
      00A4C6 43               [ 1] 1625 	cpl	a
      00A4C7 C7 53 23         [ 1] 1626 	ld	0x5323, a
                                   1627 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 902: }
      00A4CA 5B 04            [ 2] 1628 	addw	sp, #4
      00A4CC 81               [ 4] 1629 	ret
                                   1630 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 913: ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
                                   1631 ;	-----------------------------------------
                                   1632 ;	 function TIM3_GetITStatus
                                   1633 ;	-----------------------------------------
      00A4CD                       1634 _TIM3_GetITStatus:
      00A4CD 88               [ 1] 1635 	push	a
                                   1636 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 919: assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
      00A4CE 7B 04            [ 1] 1637 	ld	a, (0x04, sp)
      00A4D0 4A               [ 1] 1638 	dec	a
      00A4D1 27 1B            [ 1] 1639 	jreq	00108$
      00A4D3 7B 04            [ 1] 1640 	ld	a, (0x04, sp)
      00A4D5 A1 02            [ 1] 1641 	cp	a, #0x02
      00A4D7 27 15            [ 1] 1642 	jreq	00108$
      00A4D9 7B 04            [ 1] 1643 	ld	a, (0x04, sp)
      00A4DB A1 04            [ 1] 1644 	cp	a, #0x04
      00A4DD 27 0F            [ 1] 1645 	jreq	00108$
      00A4DF 4B 97            [ 1] 1646 	push	#0x97
      00A4E1 4B 03            [ 1] 1647 	push	#0x03
      00A4E3 5F               [ 1] 1648 	clrw	x
      00A4E4 89               [ 2] 1649 	pushw	x
      00A4E5 4B C8            [ 1] 1650 	push	#<(___str_0+0)
      00A4E7 4B 81            [ 1] 1651 	push	#((___str_0+0) >> 8)
      00A4E9 CD 85 5C         [ 4] 1652 	call	_assert_failed
      00A4EC 5B 06            [ 2] 1653 	addw	sp, #6
      00A4EE                       1654 00108$:
                                   1655 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 921: TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
      00A4EE C6 53 22         [ 1] 1656 	ld	a, 0x5322
      00A4F1 14 04            [ 1] 1657 	and	a, (0x04, sp)
      00A4F3 6B 01            [ 1] 1658 	ld	(0x01, sp), a
                                   1659 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 923: TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
      00A4F5 C6 53 21         [ 1] 1660 	ld	a, 0x5321
      00A4F8 14 04            [ 1] 1661 	and	a, (0x04, sp)
                                   1662 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 925: if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
      00A4FA 0D 01            [ 1] 1663 	tnz	(0x01, sp)
      00A4FC 27 06            [ 1] 1664 	jreq	00102$
      00A4FE 4D               [ 1] 1665 	tnz	a
      00A4FF 27 03            [ 1] 1666 	jreq	00102$
                                   1667 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 927: bitstatus = SET;
      00A501 A6 01            [ 1] 1668 	ld	a, #0x01
                                   1669 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 931: bitstatus = RESET;
      00A503 21                    1670 	.byte 0x21
      00A504                       1671 00102$:
      00A504 4F               [ 1] 1672 	clr	a
      00A505                       1673 00103$:
                                   1674 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 933: return (ITStatus)(bitstatus);
                                   1675 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 934: }
      00A505 5B 01            [ 2] 1676 	addw	sp, #1
      00A507 81               [ 4] 1677 	ret
                                   1678 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 945: void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
                                   1679 ;	-----------------------------------------
                                   1680 ;	 function TIM3_ClearITPendingBit
                                   1681 ;	-----------------------------------------
      00A508                       1682 _TIM3_ClearITPendingBit:
                                   1683 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 948: assert_param(IS_TIM3_IT_OK(TIM3_IT));
      00A508 0D 03            [ 1] 1684 	tnz	(0x03, sp)
      00A50A 27 06            [ 1] 1685 	jreq	00103$
      00A50C 7B 03            [ 1] 1686 	ld	a, (0x03, sp)
      00A50E A1 07            [ 1] 1687 	cp	a, #0x07
      00A510 23 0F            [ 2] 1688 	jrule	00104$
      00A512                       1689 00103$:
      00A512 4B B4            [ 1] 1690 	push	#0xb4
      00A514 4B 03            [ 1] 1691 	push	#0x03
      00A516 5F               [ 1] 1692 	clrw	x
      00A517 89               [ 2] 1693 	pushw	x
      00A518 4B C8            [ 1] 1694 	push	#<(___str_0+0)
      00A51A 4B 81            [ 1] 1695 	push	#((___str_0+0) >> 8)
      00A51C CD 85 5C         [ 4] 1696 	call	_assert_failed
      00A51F 5B 06            [ 2] 1697 	addw	sp, #6
      00A521                       1698 00104$:
                                   1699 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 951: TIM3->SR1 = (uint8_t)(~TIM3_IT);
      00A521 7B 03            [ 1] 1700 	ld	a, (0x03, sp)
      00A523 43               [ 1] 1701 	cpl	a
      00A524 C7 53 22         [ 1] 1702 	ld	0x5322, a
                                   1703 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 952: }
      00A527 81               [ 4] 1704 	ret
                                   1705 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 970: static void TI1_Config(uint8_t TIM3_ICPolarity,
                                   1706 ;	-----------------------------------------
                                   1707 ;	 function TI1_Config
                                   1708 ;	-----------------------------------------
      00A528                       1709 _TI1_Config:
      00A528 88               [ 1] 1710 	push	a
                                   1711 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00A529 72 11 53 27      [ 1] 1712 	bres	21287, #0
                                   1713 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 978: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
      00A52D C6 53 25         [ 1] 1714 	ld	a, 0x5325
      00A530 A4 0C            [ 1] 1715 	and	a, #0x0c
      00A532 6B 01            [ 1] 1716 	ld	(0x01, sp), a
      00A534 7B 06            [ 1] 1717 	ld	a, (0x06, sp)
      00A536 4E               [ 1] 1718 	swap	a
      00A537 A4 F0            [ 1] 1719 	and	a, #0xf0
      00A539 1A 05            [ 1] 1720 	or	a, (0x05, sp)
      00A53B 1A 01            [ 1] 1721 	or	a, (0x01, sp)
      00A53D C7 53 25         [ 1] 1722 	ld	0x5325, a
                                   1723 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      00A540 C6 53 27         [ 1] 1724 	ld	a, 0x5327
                                   1725 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 981: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
      00A543 0D 04            [ 1] 1726 	tnz	(0x04, sp)
      00A545 27 07            [ 1] 1727 	jreq	00102$
                                   1728 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 983: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      00A547 AA 02            [ 1] 1729 	or	a, #0x02
      00A549 C7 53 27         [ 1] 1730 	ld	0x5327, a
      00A54C 20 05            [ 2] 1731 	jra	00103$
      00A54E                       1732 00102$:
                                   1733 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 987: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
      00A54E A4 FD            [ 1] 1734 	and	a, #0xfd
      00A550 C7 53 27         [ 1] 1735 	ld	0x5327, a
      00A553                       1736 00103$:
                                   1737 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 990: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      00A553 72 10 53 27      [ 1] 1738 	bset	21287, #0
                                   1739 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 991: }
      00A557 84               [ 1] 1740 	pop	a
      00A558 81               [ 4] 1741 	ret
                                   1742 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1009: static void TI2_Config(uint8_t TIM3_ICPolarity,
                                   1743 ;	-----------------------------------------
                                   1744 ;	 function TI2_Config
                                   1745 ;	-----------------------------------------
      00A559                       1746 _TI2_Config:
      00A559 88               [ 1] 1747 	push	a
                                   1748 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
      00A55A 72 19 53 27      [ 1] 1749 	bres	21287, #4
                                   1750 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1017: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
      00A55E C6 53 26         [ 1] 1751 	ld	a, 0x5326
      00A561 A4 0C            [ 1] 1752 	and	a, #0x0c
      00A563 6B 01            [ 1] 1753 	ld	(0x01, sp), a
                                   1754 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1019: ((uint8_t)( TIM3_ICFilter << 4))));
      00A565 7B 06            [ 1] 1755 	ld	a, (0x06, sp)
      00A567 4E               [ 1] 1756 	swap	a
      00A568 A4 F0            [ 1] 1757 	and	a, #0xf0
      00A56A 1A 05            [ 1] 1758 	or	a, (0x05, sp)
      00A56C 1A 01            [ 1] 1759 	or	a, (0x01, sp)
      00A56E C7 53 26         [ 1] 1760 	ld	0x5326, a
                                   1761 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
      00A571 C6 53 27         [ 1] 1762 	ld	a, 0x5327
                                   1763 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1022: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
      00A574 0D 04            [ 1] 1764 	tnz	(0x04, sp)
      00A576 27 07            [ 1] 1765 	jreq	00102$
                                   1766 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1024: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      00A578 AA 20            [ 1] 1767 	or	a, #0x20
      00A57A C7 53 27         [ 1] 1768 	ld	0x5327, a
      00A57D 20 05            [ 2] 1769 	jra	00103$
      00A57F                       1770 00102$:
                                   1771 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1028: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
      00A57F A4 DF            [ 1] 1772 	and	a, #0xdf
      00A581 C7 53 27         [ 1] 1773 	ld	0x5327, a
      00A584                       1774 00103$:
                                   1775 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1032: TIM3->CCER1 |= TIM3_CCER1_CC2E;
      00A584 72 18 53 27      [ 1] 1776 	bset	21287, #4
                                   1777 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim3.c: 1033: }
      00A588 84               [ 1] 1778 	pop	a
      00A589 81               [ 4] 1779 	ret
                                   1780 	.area CODE
                                   1781 	.area CONST
                                   1782 	.area CONST
      0081C8                       1783 ___str_0:
      0081C8 2F 55 73 65 72 73 2F  1784 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      008204 4D 38 53 5F 53 74 64  1785 	.ascii "M8S_StdPeriph_Driver/src/stm8s_tim3.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 33
             2E 63
      008229 00                    1786 	.db 0x00
                                   1787 	.area CODE
                                   1788 	.area INITIALIZER
                                   1789 	.area CABS (ABS)
