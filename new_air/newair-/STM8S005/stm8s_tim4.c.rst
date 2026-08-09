                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim4
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _TIM4_DeInit
                                     13 	.globl _TIM4_TimeBaseInit
                                     14 	.globl _TIM4_Cmd
                                     15 	.globl _TIM4_ITConfig
                                     16 	.globl _TIM4_UpdateDisableConfig
                                     17 	.globl _TIM4_UpdateRequestConfig
                                     18 	.globl _TIM4_SelectOnePulseMode
                                     19 	.globl _TIM4_PrescalerConfig
                                     20 	.globl _TIM4_ARRPreloadConfig
                                     21 	.globl _TIM4_GenerateEvent
                                     22 	.globl _TIM4_SetCounter
                                     23 	.globl _TIM4_SetAutoreload
                                     24 	.globl _TIM4_GetCounter
                                     25 	.globl _TIM4_GetPrescaler
                                     26 	.globl _TIM4_GetFlagStatus
                                     27 	.globl _TIM4_ClearFlag
                                     28 	.globl _TIM4_GetITStatus
                                     29 	.globl _TIM4_ClearITPendingBit
                                     30 ;--------------------------------------------------------
                                     31 ; ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DATA
                                     34 ;--------------------------------------------------------
                                     35 ; ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area INITIALIZED
                                     38 ;--------------------------------------------------------
                                     39 ; absolute external ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DABS (ABS)
                                     42 
                                     43 ; default segment ordering for linker
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area CONST
                                     48 	.area INITIALIZER
                                     49 	.area CODE
                                     50 
                                     51 ;--------------------------------------------------------
                                     52 ; global & static initialisations
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area GSINIT
                                     56 	.area GSFINAL
                                     57 	.area GSINIT
                                     58 ;--------------------------------------------------------
                                     59 ; Home
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area HOME
                                     63 ;--------------------------------------------------------
                                     64 ; code
                                     65 ;--------------------------------------------------------
                                     66 	.area CODE
                                     67 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 49: void TIM4_DeInit(void)
                                     68 ;	-----------------------------------------
                                     69 ;	 function TIM4_DeInit
                                     70 ;	-----------------------------------------
      00C15F                         71 _TIM4_DeInit:
                                     72 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 51: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
      00C15F 35 00 53 40      [ 1]   73 	mov	0x5340+0, #0x00
                                     74 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 52: TIM4->IER = TIM4_IER_RESET_VALUE;
      00C163 35 00 53 41      [ 1]   75 	mov	0x5341+0, #0x00
                                     76 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 53: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
      00C167 35 00 53 44      [ 1]   77 	mov	0x5344+0, #0x00
                                     78 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 54: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
      00C16B 35 00 53 45      [ 1]   79 	mov	0x5345+0, #0x00
                                     80 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 55: TIM4->ARR = TIM4_ARR_RESET_VALUE;
      00C16F 35 FF 53 46      [ 1]   81 	mov	0x5346+0, #0xff
                                     82 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 56: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
      00C173 35 00 53 42      [ 1]   83 	mov	0x5342+0, #0x00
                                     84 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 57: }
      00C177 81               [ 4]   85 	ret
                                     86 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 65: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
                                     87 ;	-----------------------------------------
                                     88 ;	 function TIM4_TimeBaseInit
                                     89 ;	-----------------------------------------
      00C178                         90 _TIM4_TimeBaseInit:
                                     91 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 68: assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
      00C178 0D 03            [ 1]   92 	tnz	(0x03, sp)
      00C17A 27 38            [ 1]   93 	jreq	00104$
      00C17C 7B 03            [ 1]   94 	ld	a, (0x03, sp)
      00C17E 4A               [ 1]   95 	dec	a
      00C17F 27 33            [ 1]   96 	jreq	00104$
      00C181 7B 03            [ 1]   97 	ld	a, (0x03, sp)
      00C183 A1 02            [ 1]   98 	cp	a, #0x02
      00C185 27 2D            [ 1]   99 	jreq	00104$
      00C187 7B 03            [ 1]  100 	ld	a, (0x03, sp)
      00C189 A1 03            [ 1]  101 	cp	a, #0x03
      00C18B 27 27            [ 1]  102 	jreq	00104$
      00C18D 7B 03            [ 1]  103 	ld	a, (0x03, sp)
      00C18F A1 04            [ 1]  104 	cp	a, #0x04
      00C191 27 21            [ 1]  105 	jreq	00104$
      00C193 7B 03            [ 1]  106 	ld	a, (0x03, sp)
      00C195 A1 05            [ 1]  107 	cp	a, #0x05
      00C197 27 1B            [ 1]  108 	jreq	00104$
      00C199 7B 03            [ 1]  109 	ld	a, (0x03, sp)
      00C19B A1 06            [ 1]  110 	cp	a, #0x06
      00C19D 27 15            [ 1]  111 	jreq	00104$
      00C19F 7B 03            [ 1]  112 	ld	a, (0x03, sp)
      00C1A1 A1 07            [ 1]  113 	cp	a, #0x07
      00C1A3 27 0F            [ 1]  114 	jreq	00104$
      00C1A5 4B 44            [ 1]  115 	push	#0x44
      00C1A7 5F               [ 1]  116 	clrw	x
      00C1A8 89               [ 2]  117 	pushw	x
      00C1A9 4B 00            [ 1]  118 	push	#0x00
      00C1AB 4B 2D            [ 1]  119 	push	#<(___str_0+0)
      00C1AD 4B 82            [ 1]  120 	push	#((___str_0+0) >> 8)
      00C1AF CD 83 84         [ 4]  121 	call	_assert_failed
      00C1B2 5B 06            [ 2]  122 	addw	sp, #6
      00C1B4                        123 00104$:
                                    124 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 70: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
      00C1B4 AE 53 45         [ 2]  125 	ldw	x, #0x5345
      00C1B7 7B 03            [ 1]  126 	ld	a, (0x03, sp)
      00C1B9 F7               [ 1]  127 	ld	(x), a
                                    128 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 72: TIM4->ARR = (uint8_t)(TIM4_Period);
      00C1BA AE 53 46         [ 2]  129 	ldw	x, #0x5346
      00C1BD 7B 04            [ 1]  130 	ld	a, (0x04, sp)
      00C1BF F7               [ 1]  131 	ld	(x), a
                                    132 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 73: }
      00C1C0 81               [ 4]  133 	ret
                                    134 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 81: void TIM4_Cmd(FunctionalState NewState)
                                    135 ;	-----------------------------------------
                                    136 ;	 function TIM4_Cmd
                                    137 ;	-----------------------------------------
      00C1C1                        138 _TIM4_Cmd:
                                    139 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 84: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C1C1 0D 03            [ 1]  140 	tnz	(0x03, sp)
      00C1C3 27 14            [ 1]  141 	jreq	00107$
      00C1C5 7B 03            [ 1]  142 	ld	a, (0x03, sp)
      00C1C7 4A               [ 1]  143 	dec	a
      00C1C8 27 0F            [ 1]  144 	jreq	00107$
      00C1CA 4B 54            [ 1]  145 	push	#0x54
      00C1CC 5F               [ 1]  146 	clrw	x
      00C1CD 89               [ 2]  147 	pushw	x
      00C1CE 4B 00            [ 1]  148 	push	#0x00
      00C1D0 4B 2D            [ 1]  149 	push	#<(___str_0+0)
      00C1D2 4B 82            [ 1]  150 	push	#((___str_0+0) >> 8)
      00C1D4 CD 83 84         [ 4]  151 	call	_assert_failed
      00C1D7 5B 06            [ 2]  152 	addw	sp, #6
      00C1D9                        153 00107$:
                                    154 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
      00C1D9 C6 53 40         [ 1]  155 	ld	a, 0x5340
                                    156 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 87: if (NewState != DISABLE)
      00C1DC 0D 03            [ 1]  157 	tnz	(0x03, sp)
      00C1DE 27 06            [ 1]  158 	jreq	00102$
                                    159 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
      00C1E0 AA 01            [ 1]  160 	or	a, #0x01
      00C1E2 C7 53 40         [ 1]  161 	ld	0x5340, a
      00C1E5 81               [ 4]  162 	ret
      00C1E6                        163 00102$:
                                    164 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 93: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
      00C1E6 A4 FE            [ 1]  165 	and	a, #0xfe
      00C1E8 C7 53 40         [ 1]  166 	ld	0x5340, a
                                    167 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 95: }
      00C1EB 81               [ 4]  168 	ret
                                    169 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 107: void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
                                    170 ;	-----------------------------------------
                                    171 ;	 function TIM4_ITConfig
                                    172 ;	-----------------------------------------
      00C1EC                        173 _TIM4_ITConfig:
      00C1EC 88               [ 1]  174 	push	a
                                    175 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 110: assert_param(IS_TIM4_IT_OK(TIM4_IT));
      00C1ED 7B 04            [ 1]  176 	ld	a, (0x04, sp)
      00C1EF 4A               [ 1]  177 	dec	a
      00C1F0 27 0F            [ 1]  178 	jreq	00107$
      00C1F2 4B 6E            [ 1]  179 	push	#0x6e
      00C1F4 5F               [ 1]  180 	clrw	x
      00C1F5 89               [ 2]  181 	pushw	x
      00C1F6 4B 00            [ 1]  182 	push	#0x00
      00C1F8 4B 2D            [ 1]  183 	push	#<(___str_0+0)
      00C1FA 4B 82            [ 1]  184 	push	#((___str_0+0) >> 8)
      00C1FC CD 83 84         [ 4]  185 	call	_assert_failed
      00C1FF 5B 06            [ 2]  186 	addw	sp, #6
      00C201                        187 00107$:
                                    188 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 111: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C201 0D 05            [ 1]  189 	tnz	(0x05, sp)
      00C203 27 14            [ 1]  190 	jreq	00109$
      00C205 7B 05            [ 1]  191 	ld	a, (0x05, sp)
      00C207 4A               [ 1]  192 	dec	a
      00C208 27 0F            [ 1]  193 	jreq	00109$
      00C20A 4B 6F            [ 1]  194 	push	#0x6f
      00C20C 5F               [ 1]  195 	clrw	x
      00C20D 89               [ 2]  196 	pushw	x
      00C20E 4B 00            [ 1]  197 	push	#0x00
      00C210 4B 2D            [ 1]  198 	push	#<(___str_0+0)
      00C212 4B 82            [ 1]  199 	push	#((___str_0+0) >> 8)
      00C214 CD 83 84         [ 4]  200 	call	_assert_failed
      00C217 5B 06            [ 2]  201 	addw	sp, #6
      00C219                        202 00109$:
                                    203 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
      00C219 C6 53 41         [ 1]  204 	ld	a, 0x5341
                                    205 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 113: if (NewState != DISABLE)
      00C21C 0D 05            [ 1]  206 	tnz	(0x05, sp)
      00C21E 27 07            [ 1]  207 	jreq	00102$
                                    208 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
      00C220 1A 04            [ 1]  209 	or	a, (0x04, sp)
      00C222 C7 53 41         [ 1]  210 	ld	0x5341, a
      00C225 20 0C            [ 2]  211 	jra	00104$
      00C227                        212 00102$:
                                    213 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 121: TIM4->IER &= (uint8_t)(~TIM4_IT);
      00C227 88               [ 1]  214 	push	a
      00C228 7B 05            [ 1]  215 	ld	a, (0x05, sp)
      00C22A 43               [ 1]  216 	cpl	a
      00C22B 6B 02            [ 1]  217 	ld	(0x02, sp), a
      00C22D 84               [ 1]  218 	pop	a
      00C22E 14 01            [ 1]  219 	and	a, (0x01, sp)
      00C230 C7 53 41         [ 1]  220 	ld	0x5341, a
      00C233                        221 00104$:
                                    222 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 123: }
      00C233 84               [ 1]  223 	pop	a
      00C234 81               [ 4]  224 	ret
                                    225 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 131: void TIM4_UpdateDisableConfig(FunctionalState NewState)
                                    226 ;	-----------------------------------------
                                    227 ;	 function TIM4_UpdateDisableConfig
                                    228 ;	-----------------------------------------
      00C235                        229 _TIM4_UpdateDisableConfig:
                                    230 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 134: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C235 0D 03            [ 1]  231 	tnz	(0x03, sp)
      00C237 27 14            [ 1]  232 	jreq	00107$
      00C239 7B 03            [ 1]  233 	ld	a, (0x03, sp)
      00C23B 4A               [ 1]  234 	dec	a
      00C23C 27 0F            [ 1]  235 	jreq	00107$
      00C23E 4B 86            [ 1]  236 	push	#0x86
      00C240 5F               [ 1]  237 	clrw	x
      00C241 89               [ 2]  238 	pushw	x
      00C242 4B 00            [ 1]  239 	push	#0x00
      00C244 4B 2D            [ 1]  240 	push	#<(___str_0+0)
      00C246 4B 82            [ 1]  241 	push	#((___str_0+0) >> 8)
      00C248 CD 83 84         [ 4]  242 	call	_assert_failed
      00C24B 5B 06            [ 2]  243 	addw	sp, #6
      00C24D                        244 00107$:
                                    245 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
      00C24D C6 53 40         [ 1]  246 	ld	a, 0x5340
                                    247 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 137: if (NewState != DISABLE)
      00C250 0D 03            [ 1]  248 	tnz	(0x03, sp)
      00C252 27 06            [ 1]  249 	jreq	00102$
                                    250 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
      00C254 AA 02            [ 1]  251 	or	a, #0x02
      00C256 C7 53 40         [ 1]  252 	ld	0x5340, a
      00C259 81               [ 4]  253 	ret
      00C25A                        254 00102$:
                                    255 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 143: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
      00C25A A4 FD            [ 1]  256 	and	a, #0xfd
      00C25C C7 53 40         [ 1]  257 	ld	0x5340, a
                                    258 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 145: }
      00C25F 81               [ 4]  259 	ret
                                    260 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 155: void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
                                    261 ;	-----------------------------------------
                                    262 ;	 function TIM4_UpdateRequestConfig
                                    263 ;	-----------------------------------------
      00C260                        264 _TIM4_UpdateRequestConfig:
                                    265 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 158: assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
      00C260 0D 03            [ 1]  266 	tnz	(0x03, sp)
      00C262 27 14            [ 1]  267 	jreq	00107$
      00C264 7B 03            [ 1]  268 	ld	a, (0x03, sp)
      00C266 4A               [ 1]  269 	dec	a
      00C267 27 0F            [ 1]  270 	jreq	00107$
      00C269 4B 9E            [ 1]  271 	push	#0x9e
      00C26B 5F               [ 1]  272 	clrw	x
      00C26C 89               [ 2]  273 	pushw	x
      00C26D 4B 00            [ 1]  274 	push	#0x00
      00C26F 4B 2D            [ 1]  275 	push	#<(___str_0+0)
      00C271 4B 82            [ 1]  276 	push	#((___str_0+0) >> 8)
      00C273 CD 83 84         [ 4]  277 	call	_assert_failed
      00C276 5B 06            [ 2]  278 	addw	sp, #6
      00C278                        279 00107$:
                                    280 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
      00C278 C6 53 40         [ 1]  281 	ld	a, 0x5340
                                    282 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 161: if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
      00C27B 0D 03            [ 1]  283 	tnz	(0x03, sp)
      00C27D 27 06            [ 1]  284 	jreq	00102$
                                    285 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
      00C27F AA 04            [ 1]  286 	or	a, #0x04
      00C281 C7 53 40         [ 1]  287 	ld	0x5340, a
      00C284 81               [ 4]  288 	ret
      00C285                        289 00102$:
                                    290 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 167: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
      00C285 A4 FB            [ 1]  291 	and	a, #0xfb
      00C287 C7 53 40         [ 1]  292 	ld	0x5340, a
                                    293 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 169: }
      00C28A 81               [ 4]  294 	ret
                                    295 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 179: void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
                                    296 ;	-----------------------------------------
                                    297 ;	 function TIM4_SelectOnePulseMode
                                    298 ;	-----------------------------------------
      00C28B                        299 _TIM4_SelectOnePulseMode:
                                    300 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 182: assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
      00C28B 7B 03            [ 1]  301 	ld	a, (0x03, sp)
      00C28D 4A               [ 1]  302 	dec	a
      00C28E 27 13            [ 1]  303 	jreq	00107$
      00C290 0D 03            [ 1]  304 	tnz	(0x03, sp)
      00C292 27 0F            [ 1]  305 	jreq	00107$
      00C294 4B B6            [ 1]  306 	push	#0xb6
      00C296 5F               [ 1]  307 	clrw	x
      00C297 89               [ 2]  308 	pushw	x
      00C298 4B 00            [ 1]  309 	push	#0x00
      00C29A 4B 2D            [ 1]  310 	push	#<(___str_0+0)
      00C29C 4B 82            [ 1]  311 	push	#((___str_0+0) >> 8)
      00C29E CD 83 84         [ 4]  312 	call	_assert_failed
      00C2A1 5B 06            [ 2]  313 	addw	sp, #6
      00C2A3                        314 00107$:
                                    315 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
      00C2A3 C6 53 40         [ 1]  316 	ld	a, 0x5340
                                    317 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 185: if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
      00C2A6 0D 03            [ 1]  318 	tnz	(0x03, sp)
      00C2A8 27 06            [ 1]  319 	jreq	00102$
                                    320 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
      00C2AA AA 08            [ 1]  321 	or	a, #0x08
      00C2AC C7 53 40         [ 1]  322 	ld	0x5340, a
      00C2AF 81               [ 4]  323 	ret
      00C2B0                        324 00102$:
                                    325 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 191: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
      00C2B0 A4 F7            [ 1]  326 	and	a, #0xf7
      00C2B2 C7 53 40         [ 1]  327 	ld	0x5340, a
                                    328 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 193: }
      00C2B5 81               [ 4]  329 	ret
                                    330 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 215: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
                                    331 ;	-----------------------------------------
                                    332 ;	 function TIM4_PrescalerConfig
                                    333 ;	-----------------------------------------
      00C2B6                        334 _TIM4_PrescalerConfig:
                                    335 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 218: assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
      00C2B6 0D 04            [ 1]  336 	tnz	(0x04, sp)
      00C2B8 27 14            [ 1]  337 	jreq	00104$
      00C2BA 7B 04            [ 1]  338 	ld	a, (0x04, sp)
      00C2BC 4A               [ 1]  339 	dec	a
      00C2BD 27 0F            [ 1]  340 	jreq	00104$
      00C2BF 4B DA            [ 1]  341 	push	#0xda
      00C2C1 5F               [ 1]  342 	clrw	x
      00C2C2 89               [ 2]  343 	pushw	x
      00C2C3 4B 00            [ 1]  344 	push	#0x00
      00C2C5 4B 2D            [ 1]  345 	push	#<(___str_0+0)
      00C2C7 4B 82            [ 1]  346 	push	#((___str_0+0) >> 8)
      00C2C9 CD 83 84         [ 4]  347 	call	_assert_failed
      00C2CC 5B 06            [ 2]  348 	addw	sp, #6
      00C2CE                        349 00104$:
                                    350 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 219: assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
      00C2CE 0D 03            [ 1]  351 	tnz	(0x03, sp)
      00C2D0 27 38            [ 1]  352 	jreq	00109$
      00C2D2 7B 03            [ 1]  353 	ld	a, (0x03, sp)
      00C2D4 4A               [ 1]  354 	dec	a
      00C2D5 27 33            [ 1]  355 	jreq	00109$
      00C2D7 7B 03            [ 1]  356 	ld	a, (0x03, sp)
      00C2D9 A1 02            [ 1]  357 	cp	a, #0x02
      00C2DB 27 2D            [ 1]  358 	jreq	00109$
      00C2DD 7B 03            [ 1]  359 	ld	a, (0x03, sp)
      00C2DF A1 03            [ 1]  360 	cp	a, #0x03
      00C2E1 27 27            [ 1]  361 	jreq	00109$
      00C2E3 7B 03            [ 1]  362 	ld	a, (0x03, sp)
      00C2E5 A1 04            [ 1]  363 	cp	a, #0x04
      00C2E7 27 21            [ 1]  364 	jreq	00109$
      00C2E9 7B 03            [ 1]  365 	ld	a, (0x03, sp)
      00C2EB A1 05            [ 1]  366 	cp	a, #0x05
      00C2ED 27 1B            [ 1]  367 	jreq	00109$
      00C2EF 7B 03            [ 1]  368 	ld	a, (0x03, sp)
      00C2F1 A1 06            [ 1]  369 	cp	a, #0x06
      00C2F3 27 15            [ 1]  370 	jreq	00109$
      00C2F5 7B 03            [ 1]  371 	ld	a, (0x03, sp)
      00C2F7 A1 07            [ 1]  372 	cp	a, #0x07
      00C2F9 27 0F            [ 1]  373 	jreq	00109$
      00C2FB 4B DB            [ 1]  374 	push	#0xdb
      00C2FD 5F               [ 1]  375 	clrw	x
      00C2FE 89               [ 2]  376 	pushw	x
      00C2FF 4B 00            [ 1]  377 	push	#0x00
      00C301 4B 2D            [ 1]  378 	push	#<(___str_0+0)
      00C303 4B 82            [ 1]  379 	push	#((___str_0+0) >> 8)
      00C305 CD 83 84         [ 4]  380 	call	_assert_failed
      00C308 5B 06            [ 2]  381 	addw	sp, #6
      00C30A                        382 00109$:
                                    383 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 222: TIM4->PSCR = (uint8_t)Prescaler;
      00C30A AE 53 45         [ 2]  384 	ldw	x, #0x5345
      00C30D 7B 03            [ 1]  385 	ld	a, (0x03, sp)
      00C30F F7               [ 1]  386 	ld	(x), a
                                    387 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 225: TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
      00C310 AE 53 43         [ 2]  388 	ldw	x, #0x5343
      00C313 7B 04            [ 1]  389 	ld	a, (0x04, sp)
      00C315 F7               [ 1]  390 	ld	(x), a
                                    391 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 226: }
      00C316 81               [ 4]  392 	ret
                                    393 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 234: void TIM4_ARRPreloadConfig(FunctionalState NewState)
                                    394 ;	-----------------------------------------
                                    395 ;	 function TIM4_ARRPreloadConfig
                                    396 ;	-----------------------------------------
      00C317                        397 _TIM4_ARRPreloadConfig:
                                    398 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 237: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C317 0D 03            [ 1]  399 	tnz	(0x03, sp)
      00C319 27 14            [ 1]  400 	jreq	00107$
      00C31B 7B 03            [ 1]  401 	ld	a, (0x03, sp)
      00C31D 4A               [ 1]  402 	dec	a
      00C31E 27 0F            [ 1]  403 	jreq	00107$
      00C320 4B ED            [ 1]  404 	push	#0xed
      00C322 5F               [ 1]  405 	clrw	x
      00C323 89               [ 2]  406 	pushw	x
      00C324 4B 00            [ 1]  407 	push	#0x00
      00C326 4B 2D            [ 1]  408 	push	#<(___str_0+0)
      00C328 4B 82            [ 1]  409 	push	#((___str_0+0) >> 8)
      00C32A CD 83 84         [ 4]  410 	call	_assert_failed
      00C32D 5B 06            [ 2]  411 	addw	sp, #6
      00C32F                        412 00107$:
                                    413 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
      00C32F C6 53 40         [ 1]  414 	ld	a, 0x5340
                                    415 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 240: if (NewState != DISABLE)
      00C332 0D 03            [ 1]  416 	tnz	(0x03, sp)
      00C334 27 06            [ 1]  417 	jreq	00102$
                                    418 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
      00C336 AA 80            [ 1]  419 	or	a, #0x80
      00C338 C7 53 40         [ 1]  420 	ld	0x5340, a
      00C33B 81               [ 4]  421 	ret
      00C33C                        422 00102$:
                                    423 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 246: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
      00C33C A4 7F            [ 1]  424 	and	a, #0x7f
      00C33E C7 53 40         [ 1]  425 	ld	0x5340, a
                                    426 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 248: }
      00C341 81               [ 4]  427 	ret
                                    428 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 257: void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
                                    429 ;	-----------------------------------------
                                    430 ;	 function TIM4_GenerateEvent
                                    431 ;	-----------------------------------------
      00C342                        432 _TIM4_GenerateEvent:
                                    433 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 260: assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
      00C342 7B 03            [ 1]  434 	ld	a, (0x03, sp)
      00C344 4A               [ 1]  435 	dec	a
      00C345 27 0F            [ 1]  436 	jreq	00104$
      00C347 4B 04            [ 1]  437 	push	#0x04
      00C349 4B 01            [ 1]  438 	push	#0x01
      00C34B 5F               [ 1]  439 	clrw	x
      00C34C 89               [ 2]  440 	pushw	x
      00C34D 4B 2D            [ 1]  441 	push	#<(___str_0+0)
      00C34F 4B 82            [ 1]  442 	push	#((___str_0+0) >> 8)
      00C351 CD 83 84         [ 4]  443 	call	_assert_failed
      00C354 5B 06            [ 2]  444 	addw	sp, #6
      00C356                        445 00104$:
                                    446 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 263: TIM4->EGR = (uint8_t)(TIM4_EventSource);
      00C356 AE 53 43         [ 2]  447 	ldw	x, #0x5343
      00C359 7B 03            [ 1]  448 	ld	a, (0x03, sp)
      00C35B F7               [ 1]  449 	ld	(x), a
                                    450 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 264: }
      00C35C 81               [ 4]  451 	ret
                                    452 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 272: void TIM4_SetCounter(uint8_t Counter)
                                    453 ;	-----------------------------------------
                                    454 ;	 function TIM4_SetCounter
                                    455 ;	-----------------------------------------
      00C35D                        456 _TIM4_SetCounter:
                                    457 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 275: TIM4->CNTR = (uint8_t)(Counter);
      00C35D AE 53 44         [ 2]  458 	ldw	x, #0x5344
      00C360 7B 03            [ 1]  459 	ld	a, (0x03, sp)
      00C362 F7               [ 1]  460 	ld	(x), a
                                    461 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 276: }
      00C363 81               [ 4]  462 	ret
                                    463 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 284: void TIM4_SetAutoreload(uint8_t Autoreload)
                                    464 ;	-----------------------------------------
                                    465 ;	 function TIM4_SetAutoreload
                                    466 ;	-----------------------------------------
      00C364                        467 _TIM4_SetAutoreload:
                                    468 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 287: TIM4->ARR = (uint8_t)(Autoreload);
      00C364 AE 53 46         [ 2]  469 	ldw	x, #0x5346
      00C367 7B 03            [ 1]  470 	ld	a, (0x03, sp)
      00C369 F7               [ 1]  471 	ld	(x), a
                                    472 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 288: }
      00C36A 81               [ 4]  473 	ret
                                    474 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 295: uint8_t TIM4_GetCounter(void)
                                    475 ;	-----------------------------------------
                                    476 ;	 function TIM4_GetCounter
                                    477 ;	-----------------------------------------
      00C36B                        478 _TIM4_GetCounter:
                                    479 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 298: return (uint8_t)(TIM4->CNTR);
      00C36B C6 53 44         [ 1]  480 	ld	a, 0x5344
                                    481 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 299: }
      00C36E 81               [ 4]  482 	ret
                                    483 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 306: TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
                                    484 ;	-----------------------------------------
                                    485 ;	 function TIM4_GetPrescaler
                                    486 ;	-----------------------------------------
      00C36F                        487 _TIM4_GetPrescaler:
                                    488 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 309: return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
      00C36F C6 53 45         [ 1]  489 	ld	a, 0x5345
                                    490 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 310: }
      00C372 81               [ 4]  491 	ret
                                    492 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 319: FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
                                    493 ;	-----------------------------------------
                                    494 ;	 function TIM4_GetFlagStatus
                                    495 ;	-----------------------------------------
      00C373                        496 _TIM4_GetFlagStatus:
                                    497 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 324: assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
      00C373 7B 03            [ 1]  498 	ld	a, (0x03, sp)
      00C375 4A               [ 1]  499 	dec	a
      00C376 27 0F            [ 1]  500 	jreq	00107$
      00C378 4B 44            [ 1]  501 	push	#0x44
      00C37A 4B 01            [ 1]  502 	push	#0x01
      00C37C 5F               [ 1]  503 	clrw	x
      00C37D 89               [ 2]  504 	pushw	x
      00C37E 4B 2D            [ 1]  505 	push	#<(___str_0+0)
      00C380 4B 82            [ 1]  506 	push	#((___str_0+0) >> 8)
      00C382 CD 83 84         [ 4]  507 	call	_assert_failed
      00C385 5B 06            [ 2]  508 	addw	sp, #6
      00C387                        509 00107$:
                                    510 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 326: if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
      00C387 C6 53 42         [ 1]  511 	ld	a, 0x5342
      00C38A 14 03            [ 1]  512 	and	a, (0x03, sp)
      00C38C 27 03            [ 1]  513 	jreq	00102$
                                    514 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 328: bitstatus = SET;
      00C38E A6 01            [ 1]  515 	ld	a, #0x01
      00C390 81               [ 4]  516 	ret
      00C391                        517 00102$:
                                    518 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 332: bitstatus = RESET;
      00C391 4F               [ 1]  519 	clr	a
                                    520 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 334: return ((FlagStatus)bitstatus);
                                    521 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 335: }
      00C392 81               [ 4]  522 	ret
                                    523 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 344: void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
                                    524 ;	-----------------------------------------
                                    525 ;	 function TIM4_ClearFlag
                                    526 ;	-----------------------------------------
      00C393                        527 _TIM4_ClearFlag:
                                    528 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 347: assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
      00C393 7B 03            [ 1]  529 	ld	a, (0x03, sp)
      00C395 4A               [ 1]  530 	dec	a
      00C396 27 0F            [ 1]  531 	jreq	00104$
      00C398 4B 5B            [ 1]  532 	push	#0x5b
      00C39A 4B 01            [ 1]  533 	push	#0x01
      00C39C 5F               [ 1]  534 	clrw	x
      00C39D 89               [ 2]  535 	pushw	x
      00C39E 4B 2D            [ 1]  536 	push	#<(___str_0+0)
      00C3A0 4B 82            [ 1]  537 	push	#((___str_0+0) >> 8)
      00C3A2 CD 83 84         [ 4]  538 	call	_assert_failed
      00C3A5 5B 06            [ 2]  539 	addw	sp, #6
      00C3A7                        540 00104$:
                                    541 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 350: TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
      00C3A7 7B 03            [ 1]  542 	ld	a, (0x03, sp)
      00C3A9 43               [ 1]  543 	cpl	a
      00C3AA C7 53 42         [ 1]  544 	ld	0x5342, a
                                    545 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 351: }
      00C3AD 81               [ 4]  546 	ret
                                    547 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 360: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
                                    548 ;	-----------------------------------------
                                    549 ;	 function TIM4_GetITStatus
                                    550 ;	-----------------------------------------
      00C3AE                        551 _TIM4_GetITStatus:
      00C3AE 88               [ 1]  552 	push	a
                                    553 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 367: assert_param(IS_TIM4_IT_OK(TIM4_IT));
      00C3AF 7B 04            [ 1]  554 	ld	a, (0x04, sp)
      00C3B1 4A               [ 1]  555 	dec	a
      00C3B2 27 0F            [ 1]  556 	jreq	00108$
      00C3B4 4B 6F            [ 1]  557 	push	#0x6f
      00C3B6 4B 01            [ 1]  558 	push	#0x01
      00C3B8 5F               [ 1]  559 	clrw	x
      00C3B9 89               [ 2]  560 	pushw	x
      00C3BA 4B 2D            [ 1]  561 	push	#<(___str_0+0)
      00C3BC 4B 82            [ 1]  562 	push	#((___str_0+0) >> 8)
      00C3BE CD 83 84         [ 4]  563 	call	_assert_failed
      00C3C1 5B 06            [ 2]  564 	addw	sp, #6
      00C3C3                        565 00108$:
                                    566 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 369: itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
      00C3C3 C6 53 42         [ 1]  567 	ld	a, 0x5342
      00C3C6 14 04            [ 1]  568 	and	a, (0x04, sp)
      00C3C8 6B 01            [ 1]  569 	ld	(0x01, sp), a
                                    570 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 371: itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
      00C3CA C6 53 41         [ 1]  571 	ld	a, 0x5341
      00C3CD 14 04            [ 1]  572 	and	a, (0x04, sp)
                                    573 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 373: if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
      00C3CF 0D 01            [ 1]  574 	tnz	(0x01, sp)
      00C3D1 27 06            [ 1]  575 	jreq	00102$
      00C3D3 4D               [ 1]  576 	tnz	a
      00C3D4 27 03            [ 1]  577 	jreq	00102$
                                    578 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 375: bitstatus = (ITStatus)SET;
      00C3D6 A6 01            [ 1]  579 	ld	a, #0x01
                                    580 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 379: bitstatus = (ITStatus)RESET;
      00C3D8 21                     581 	.byte 0x21
      00C3D9                        582 00102$:
      00C3D9 4F               [ 1]  583 	clr	a
      00C3DA                        584 00103$:
                                    585 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 381: return ((ITStatus)bitstatus);
                                    586 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 382: }
      00C3DA 5B 01            [ 2]  587 	addw	sp, #1
      00C3DC 81               [ 4]  588 	ret
                                    589 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 391: void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
                                    590 ;	-----------------------------------------
                                    591 ;	 function TIM4_ClearITPendingBit
                                    592 ;	-----------------------------------------
      00C3DD                        593 _TIM4_ClearITPendingBit:
                                    594 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 394: assert_param(IS_TIM4_IT_OK(TIM4_IT));
      00C3DD 7B 03            [ 1]  595 	ld	a, (0x03, sp)
      00C3DF 4A               [ 1]  596 	dec	a
      00C3E0 27 0F            [ 1]  597 	jreq	00104$
      00C3E2 4B 8A            [ 1]  598 	push	#0x8a
      00C3E4 4B 01            [ 1]  599 	push	#0x01
      00C3E6 5F               [ 1]  600 	clrw	x
      00C3E7 89               [ 2]  601 	pushw	x
      00C3E8 4B 2D            [ 1]  602 	push	#<(___str_0+0)
      00C3EA 4B 82            [ 1]  603 	push	#((___str_0+0) >> 8)
      00C3EC CD 83 84         [ 4]  604 	call	_assert_failed
      00C3EF 5B 06            [ 2]  605 	addw	sp, #6
      00C3F1                        606 00104$:
                                    607 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 397: TIM4->SR1 = (uint8_t)(~TIM4_IT);
      00C3F1 7B 03            [ 1]  608 	ld	a, (0x03, sp)
      00C3F3 43               [ 1]  609 	cpl	a
      00C3F4 C7 53 42         [ 1]  610 	ld	0x5342, a
                                    611 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim4.c: 398: }
      00C3F7 81               [ 4]  612 	ret
                                    613 	.area CODE
                                    614 	.area CONST
                                    615 	.area CONST
      00822D                        616 ___str_0:
      00822D 2E 2E 2F 2E 2E 2F 2F   617 	.ascii "../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_ti"
             53 74 64 50 65 72 69
             70 68 5F 44 72 69 76
             65 72 2F 53 54 4D 38
             53 5F 53 74 64 50 65
             72 69 70 68 5F 44 72
             69 76 65 72 2F 2F 73
             72 63 2F 73 74 6D 38
             73 5F 74 69
      008269 6D 34 2E 63            618 	.ascii "m4.c"
      00826D 00                     619 	.db 0x00
                                    620 	.area CODE
                                    621 	.area INITIALIZER
                                    622 	.area CABS (ABS)
