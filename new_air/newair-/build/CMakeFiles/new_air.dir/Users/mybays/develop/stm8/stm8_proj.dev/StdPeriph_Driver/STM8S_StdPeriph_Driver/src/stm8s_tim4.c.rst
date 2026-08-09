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
                                     67 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 49: void TIM4_DeInit(void)
                                     68 ;	-----------------------------------------
                                     69 ;	 function TIM4_DeInit
                                     70 ;	-----------------------------------------
      00B164                         71 _TIM4_DeInit:
                                     72 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 51: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
      00B164 35 00 53 40      [ 1]   73 	mov	0x5340+0, #0x00
                                     74 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 52: TIM4->IER = TIM4_IER_RESET_VALUE;
      00B168 35 00 53 41      [ 1]   75 	mov	0x5341+0, #0x00
                                     76 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 53: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
      00B16C 35 00 53 44      [ 1]   77 	mov	0x5344+0, #0x00
                                     78 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 54: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
      00B170 35 00 53 45      [ 1]   79 	mov	0x5345+0, #0x00
                                     80 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 55: TIM4->ARR = TIM4_ARR_RESET_VALUE;
      00B174 35 FF 53 46      [ 1]   81 	mov	0x5346+0, #0xff
                                     82 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 56: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
      00B178 35 00 53 42      [ 1]   83 	mov	0x5342+0, #0x00
                                     84 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 57: }
      00B17C 81               [ 4]   85 	ret
                                     86 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 65: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
                                     87 ;	-----------------------------------------
                                     88 ;	 function TIM4_TimeBaseInit
                                     89 ;	-----------------------------------------
      00B17D                         90 _TIM4_TimeBaseInit:
                                     91 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 68: assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
      00B17D 0D 03            [ 1]   92 	tnz	(0x03, sp)
      00B17F 27 38            [ 1]   93 	jreq	00104$
      00B181 7B 03            [ 1]   94 	ld	a, (0x03, sp)
      00B183 4A               [ 1]   95 	dec	a
      00B184 27 33            [ 1]   96 	jreq	00104$
      00B186 7B 03            [ 1]   97 	ld	a, (0x03, sp)
      00B188 A1 02            [ 1]   98 	cp	a, #0x02
      00B18A 27 2D            [ 1]   99 	jreq	00104$
      00B18C 7B 03            [ 1]  100 	ld	a, (0x03, sp)
      00B18E A1 03            [ 1]  101 	cp	a, #0x03
      00B190 27 27            [ 1]  102 	jreq	00104$
      00B192 7B 03            [ 1]  103 	ld	a, (0x03, sp)
      00B194 A1 04            [ 1]  104 	cp	a, #0x04
      00B196 27 21            [ 1]  105 	jreq	00104$
      00B198 7B 03            [ 1]  106 	ld	a, (0x03, sp)
      00B19A A1 05            [ 1]  107 	cp	a, #0x05
      00B19C 27 1B            [ 1]  108 	jreq	00104$
      00B19E 7B 03            [ 1]  109 	ld	a, (0x03, sp)
      00B1A0 A1 06            [ 1]  110 	cp	a, #0x06
      00B1A2 27 15            [ 1]  111 	jreq	00104$
      00B1A4 7B 03            [ 1]  112 	ld	a, (0x03, sp)
      00B1A6 A1 07            [ 1]  113 	cp	a, #0x07
      00B1A8 27 0F            [ 1]  114 	jreq	00104$
      00B1AA 4B 44            [ 1]  115 	push	#0x44
      00B1AC 5F               [ 1]  116 	clrw	x
      00B1AD 89               [ 2]  117 	pushw	x
      00B1AE 4B 00            [ 1]  118 	push	#0x00
      00B1B0 4B F2            [ 1]  119 	push	#<(___str_0+0)
      00B1B2 4B 81            [ 1]  120 	push	#((___str_0+0) >> 8)
      00B1B4 CD 85 9D         [ 4]  121 	call	_assert_failed
      00B1B7 5B 06            [ 2]  122 	addw	sp, #6
      00B1B9                        123 00104$:
                                    124 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 70: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
      00B1B9 AE 53 45         [ 2]  125 	ldw	x, #0x5345
      00B1BC 7B 03            [ 1]  126 	ld	a, (0x03, sp)
      00B1BE F7               [ 1]  127 	ld	(x), a
                                    128 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 72: TIM4->ARR = (uint8_t)(TIM4_Period);
      00B1BF AE 53 46         [ 2]  129 	ldw	x, #0x5346
      00B1C2 7B 04            [ 1]  130 	ld	a, (0x04, sp)
      00B1C4 F7               [ 1]  131 	ld	(x), a
                                    132 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 73: }
      00B1C5 81               [ 4]  133 	ret
                                    134 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 81: void TIM4_Cmd(FunctionalState NewState)
                                    135 ;	-----------------------------------------
                                    136 ;	 function TIM4_Cmd
                                    137 ;	-----------------------------------------
      00B1C6                        138 _TIM4_Cmd:
                                    139 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 84: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B1C6 0D 03            [ 1]  140 	tnz	(0x03, sp)
      00B1C8 27 14            [ 1]  141 	jreq	00107$
      00B1CA 7B 03            [ 1]  142 	ld	a, (0x03, sp)
      00B1CC 4A               [ 1]  143 	dec	a
      00B1CD 27 0F            [ 1]  144 	jreq	00107$
      00B1CF 4B 54            [ 1]  145 	push	#0x54
      00B1D1 5F               [ 1]  146 	clrw	x
      00B1D2 89               [ 2]  147 	pushw	x
      00B1D3 4B 00            [ 1]  148 	push	#0x00
      00B1D5 4B F2            [ 1]  149 	push	#<(___str_0+0)
      00B1D7 4B 81            [ 1]  150 	push	#((___str_0+0) >> 8)
      00B1D9 CD 85 9D         [ 4]  151 	call	_assert_failed
      00B1DC 5B 06            [ 2]  152 	addw	sp, #6
      00B1DE                        153 00107$:
                                    154 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
      00B1DE C6 53 40         [ 1]  155 	ld	a, 0x5340
                                    156 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 87: if (NewState != DISABLE)
      00B1E1 0D 03            [ 1]  157 	tnz	(0x03, sp)
      00B1E3 27 06            [ 1]  158 	jreq	00102$
                                    159 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
      00B1E5 AA 01            [ 1]  160 	or	a, #0x01
      00B1E7 C7 53 40         [ 1]  161 	ld	0x5340, a
      00B1EA 81               [ 4]  162 	ret
      00B1EB                        163 00102$:
                                    164 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 93: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
      00B1EB A4 FE            [ 1]  165 	and	a, #0xfe
      00B1ED C7 53 40         [ 1]  166 	ld	0x5340, a
                                    167 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 95: }
      00B1F0 81               [ 4]  168 	ret
                                    169 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 107: void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
                                    170 ;	-----------------------------------------
                                    171 ;	 function TIM4_ITConfig
                                    172 ;	-----------------------------------------
      00B1F1                        173 _TIM4_ITConfig:
      00B1F1 88               [ 1]  174 	push	a
                                    175 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 110: assert_param(IS_TIM4_IT_OK(TIM4_IT));
      00B1F2 7B 04            [ 1]  176 	ld	a, (0x04, sp)
      00B1F4 4A               [ 1]  177 	dec	a
      00B1F5 27 0F            [ 1]  178 	jreq	00107$
      00B1F7 4B 6E            [ 1]  179 	push	#0x6e
      00B1F9 5F               [ 1]  180 	clrw	x
      00B1FA 89               [ 2]  181 	pushw	x
      00B1FB 4B 00            [ 1]  182 	push	#0x00
      00B1FD 4B F2            [ 1]  183 	push	#<(___str_0+0)
      00B1FF 4B 81            [ 1]  184 	push	#((___str_0+0) >> 8)
      00B201 CD 85 9D         [ 4]  185 	call	_assert_failed
      00B204 5B 06            [ 2]  186 	addw	sp, #6
      00B206                        187 00107$:
                                    188 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 111: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B206 0D 05            [ 1]  189 	tnz	(0x05, sp)
      00B208 27 14            [ 1]  190 	jreq	00109$
      00B20A 7B 05            [ 1]  191 	ld	a, (0x05, sp)
      00B20C 4A               [ 1]  192 	dec	a
      00B20D 27 0F            [ 1]  193 	jreq	00109$
      00B20F 4B 6F            [ 1]  194 	push	#0x6f
      00B211 5F               [ 1]  195 	clrw	x
      00B212 89               [ 2]  196 	pushw	x
      00B213 4B 00            [ 1]  197 	push	#0x00
      00B215 4B F2            [ 1]  198 	push	#<(___str_0+0)
      00B217 4B 81            [ 1]  199 	push	#((___str_0+0) >> 8)
      00B219 CD 85 9D         [ 4]  200 	call	_assert_failed
      00B21C 5B 06            [ 2]  201 	addw	sp, #6
      00B21E                        202 00109$:
                                    203 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
      00B21E C6 53 41         [ 1]  204 	ld	a, 0x5341
                                    205 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 113: if (NewState != DISABLE)
      00B221 0D 05            [ 1]  206 	tnz	(0x05, sp)
      00B223 27 07            [ 1]  207 	jreq	00102$
                                    208 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
      00B225 1A 04            [ 1]  209 	or	a, (0x04, sp)
      00B227 C7 53 41         [ 1]  210 	ld	0x5341, a
      00B22A 20 0C            [ 2]  211 	jra	00104$
      00B22C                        212 00102$:
                                    213 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 121: TIM4->IER &= (uint8_t)(~TIM4_IT);
      00B22C 88               [ 1]  214 	push	a
      00B22D 7B 05            [ 1]  215 	ld	a, (0x05, sp)
      00B22F 43               [ 1]  216 	cpl	a
      00B230 6B 02            [ 1]  217 	ld	(0x02, sp), a
      00B232 84               [ 1]  218 	pop	a
      00B233 14 01            [ 1]  219 	and	a, (0x01, sp)
      00B235 C7 53 41         [ 1]  220 	ld	0x5341, a
      00B238                        221 00104$:
                                    222 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 123: }
      00B238 84               [ 1]  223 	pop	a
      00B239 81               [ 4]  224 	ret
                                    225 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 131: void TIM4_UpdateDisableConfig(FunctionalState NewState)
                                    226 ;	-----------------------------------------
                                    227 ;	 function TIM4_UpdateDisableConfig
                                    228 ;	-----------------------------------------
      00B23A                        229 _TIM4_UpdateDisableConfig:
                                    230 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 134: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B23A 0D 03            [ 1]  231 	tnz	(0x03, sp)
      00B23C 27 14            [ 1]  232 	jreq	00107$
      00B23E 7B 03            [ 1]  233 	ld	a, (0x03, sp)
      00B240 4A               [ 1]  234 	dec	a
      00B241 27 0F            [ 1]  235 	jreq	00107$
      00B243 4B 86            [ 1]  236 	push	#0x86
      00B245 5F               [ 1]  237 	clrw	x
      00B246 89               [ 2]  238 	pushw	x
      00B247 4B 00            [ 1]  239 	push	#0x00
      00B249 4B F2            [ 1]  240 	push	#<(___str_0+0)
      00B24B 4B 81            [ 1]  241 	push	#((___str_0+0) >> 8)
      00B24D CD 85 9D         [ 4]  242 	call	_assert_failed
      00B250 5B 06            [ 2]  243 	addw	sp, #6
      00B252                        244 00107$:
                                    245 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
      00B252 C6 53 40         [ 1]  246 	ld	a, 0x5340
                                    247 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 137: if (NewState != DISABLE)
      00B255 0D 03            [ 1]  248 	tnz	(0x03, sp)
      00B257 27 06            [ 1]  249 	jreq	00102$
                                    250 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
      00B259 AA 02            [ 1]  251 	or	a, #0x02
      00B25B C7 53 40         [ 1]  252 	ld	0x5340, a
      00B25E 81               [ 4]  253 	ret
      00B25F                        254 00102$:
                                    255 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 143: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
      00B25F A4 FD            [ 1]  256 	and	a, #0xfd
      00B261 C7 53 40         [ 1]  257 	ld	0x5340, a
                                    258 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 145: }
      00B264 81               [ 4]  259 	ret
                                    260 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 155: void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
                                    261 ;	-----------------------------------------
                                    262 ;	 function TIM4_UpdateRequestConfig
                                    263 ;	-----------------------------------------
      00B265                        264 _TIM4_UpdateRequestConfig:
                                    265 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 158: assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
      00B265 0D 03            [ 1]  266 	tnz	(0x03, sp)
      00B267 27 14            [ 1]  267 	jreq	00107$
      00B269 7B 03            [ 1]  268 	ld	a, (0x03, sp)
      00B26B 4A               [ 1]  269 	dec	a
      00B26C 27 0F            [ 1]  270 	jreq	00107$
      00B26E 4B 9E            [ 1]  271 	push	#0x9e
      00B270 5F               [ 1]  272 	clrw	x
      00B271 89               [ 2]  273 	pushw	x
      00B272 4B 00            [ 1]  274 	push	#0x00
      00B274 4B F2            [ 1]  275 	push	#<(___str_0+0)
      00B276 4B 81            [ 1]  276 	push	#((___str_0+0) >> 8)
      00B278 CD 85 9D         [ 4]  277 	call	_assert_failed
      00B27B 5B 06            [ 2]  278 	addw	sp, #6
      00B27D                        279 00107$:
                                    280 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
      00B27D C6 53 40         [ 1]  281 	ld	a, 0x5340
                                    282 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 161: if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
      00B280 0D 03            [ 1]  283 	tnz	(0x03, sp)
      00B282 27 06            [ 1]  284 	jreq	00102$
                                    285 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
      00B284 AA 04            [ 1]  286 	or	a, #0x04
      00B286 C7 53 40         [ 1]  287 	ld	0x5340, a
      00B289 81               [ 4]  288 	ret
      00B28A                        289 00102$:
                                    290 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 167: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
      00B28A A4 FB            [ 1]  291 	and	a, #0xfb
      00B28C C7 53 40         [ 1]  292 	ld	0x5340, a
                                    293 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 169: }
      00B28F 81               [ 4]  294 	ret
                                    295 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 179: void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
                                    296 ;	-----------------------------------------
                                    297 ;	 function TIM4_SelectOnePulseMode
                                    298 ;	-----------------------------------------
      00B290                        299 _TIM4_SelectOnePulseMode:
                                    300 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 182: assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
      00B290 7B 03            [ 1]  301 	ld	a, (0x03, sp)
      00B292 4A               [ 1]  302 	dec	a
      00B293 27 13            [ 1]  303 	jreq	00107$
      00B295 0D 03            [ 1]  304 	tnz	(0x03, sp)
      00B297 27 0F            [ 1]  305 	jreq	00107$
      00B299 4B B6            [ 1]  306 	push	#0xb6
      00B29B 5F               [ 1]  307 	clrw	x
      00B29C 89               [ 2]  308 	pushw	x
      00B29D 4B 00            [ 1]  309 	push	#0x00
      00B29F 4B F2            [ 1]  310 	push	#<(___str_0+0)
      00B2A1 4B 81            [ 1]  311 	push	#((___str_0+0) >> 8)
      00B2A3 CD 85 9D         [ 4]  312 	call	_assert_failed
      00B2A6 5B 06            [ 2]  313 	addw	sp, #6
      00B2A8                        314 00107$:
                                    315 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
      00B2A8 C6 53 40         [ 1]  316 	ld	a, 0x5340
                                    317 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 185: if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
      00B2AB 0D 03            [ 1]  318 	tnz	(0x03, sp)
      00B2AD 27 06            [ 1]  319 	jreq	00102$
                                    320 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
      00B2AF AA 08            [ 1]  321 	or	a, #0x08
      00B2B1 C7 53 40         [ 1]  322 	ld	0x5340, a
      00B2B4 81               [ 4]  323 	ret
      00B2B5                        324 00102$:
                                    325 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 191: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
      00B2B5 A4 F7            [ 1]  326 	and	a, #0xf7
      00B2B7 C7 53 40         [ 1]  327 	ld	0x5340, a
                                    328 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 193: }
      00B2BA 81               [ 4]  329 	ret
                                    330 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 215: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
                                    331 ;	-----------------------------------------
                                    332 ;	 function TIM4_PrescalerConfig
                                    333 ;	-----------------------------------------
      00B2BB                        334 _TIM4_PrescalerConfig:
                                    335 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 218: assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
      00B2BB 0D 04            [ 1]  336 	tnz	(0x04, sp)
      00B2BD 27 14            [ 1]  337 	jreq	00104$
      00B2BF 7B 04            [ 1]  338 	ld	a, (0x04, sp)
      00B2C1 4A               [ 1]  339 	dec	a
      00B2C2 27 0F            [ 1]  340 	jreq	00104$
      00B2C4 4B DA            [ 1]  341 	push	#0xda
      00B2C6 5F               [ 1]  342 	clrw	x
      00B2C7 89               [ 2]  343 	pushw	x
      00B2C8 4B 00            [ 1]  344 	push	#0x00
      00B2CA 4B F2            [ 1]  345 	push	#<(___str_0+0)
      00B2CC 4B 81            [ 1]  346 	push	#((___str_0+0) >> 8)
      00B2CE CD 85 9D         [ 4]  347 	call	_assert_failed
      00B2D1 5B 06            [ 2]  348 	addw	sp, #6
      00B2D3                        349 00104$:
                                    350 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 219: assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
      00B2D3 0D 03            [ 1]  351 	tnz	(0x03, sp)
      00B2D5 27 38            [ 1]  352 	jreq	00109$
      00B2D7 7B 03            [ 1]  353 	ld	a, (0x03, sp)
      00B2D9 4A               [ 1]  354 	dec	a
      00B2DA 27 33            [ 1]  355 	jreq	00109$
      00B2DC 7B 03            [ 1]  356 	ld	a, (0x03, sp)
      00B2DE A1 02            [ 1]  357 	cp	a, #0x02
      00B2E0 27 2D            [ 1]  358 	jreq	00109$
      00B2E2 7B 03            [ 1]  359 	ld	a, (0x03, sp)
      00B2E4 A1 03            [ 1]  360 	cp	a, #0x03
      00B2E6 27 27            [ 1]  361 	jreq	00109$
      00B2E8 7B 03            [ 1]  362 	ld	a, (0x03, sp)
      00B2EA A1 04            [ 1]  363 	cp	a, #0x04
      00B2EC 27 21            [ 1]  364 	jreq	00109$
      00B2EE 7B 03            [ 1]  365 	ld	a, (0x03, sp)
      00B2F0 A1 05            [ 1]  366 	cp	a, #0x05
      00B2F2 27 1B            [ 1]  367 	jreq	00109$
      00B2F4 7B 03            [ 1]  368 	ld	a, (0x03, sp)
      00B2F6 A1 06            [ 1]  369 	cp	a, #0x06
      00B2F8 27 15            [ 1]  370 	jreq	00109$
      00B2FA 7B 03            [ 1]  371 	ld	a, (0x03, sp)
      00B2FC A1 07            [ 1]  372 	cp	a, #0x07
      00B2FE 27 0F            [ 1]  373 	jreq	00109$
      00B300 4B DB            [ 1]  374 	push	#0xdb
      00B302 5F               [ 1]  375 	clrw	x
      00B303 89               [ 2]  376 	pushw	x
      00B304 4B 00            [ 1]  377 	push	#0x00
      00B306 4B F2            [ 1]  378 	push	#<(___str_0+0)
      00B308 4B 81            [ 1]  379 	push	#((___str_0+0) >> 8)
      00B30A CD 85 9D         [ 4]  380 	call	_assert_failed
      00B30D 5B 06            [ 2]  381 	addw	sp, #6
      00B30F                        382 00109$:
                                    383 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 222: TIM4->PSCR = (uint8_t)Prescaler;
      00B30F AE 53 45         [ 2]  384 	ldw	x, #0x5345
      00B312 7B 03            [ 1]  385 	ld	a, (0x03, sp)
      00B314 F7               [ 1]  386 	ld	(x), a
                                    387 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 225: TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
      00B315 AE 53 43         [ 2]  388 	ldw	x, #0x5343
      00B318 7B 04            [ 1]  389 	ld	a, (0x04, sp)
      00B31A F7               [ 1]  390 	ld	(x), a
                                    391 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 226: }
      00B31B 81               [ 4]  392 	ret
                                    393 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 234: void TIM4_ARRPreloadConfig(FunctionalState NewState)
                                    394 ;	-----------------------------------------
                                    395 ;	 function TIM4_ARRPreloadConfig
                                    396 ;	-----------------------------------------
      00B31C                        397 _TIM4_ARRPreloadConfig:
                                    398 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 237: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B31C 0D 03            [ 1]  399 	tnz	(0x03, sp)
      00B31E 27 14            [ 1]  400 	jreq	00107$
      00B320 7B 03            [ 1]  401 	ld	a, (0x03, sp)
      00B322 4A               [ 1]  402 	dec	a
      00B323 27 0F            [ 1]  403 	jreq	00107$
      00B325 4B ED            [ 1]  404 	push	#0xed
      00B327 5F               [ 1]  405 	clrw	x
      00B328 89               [ 2]  406 	pushw	x
      00B329 4B 00            [ 1]  407 	push	#0x00
      00B32B 4B F2            [ 1]  408 	push	#<(___str_0+0)
      00B32D 4B 81            [ 1]  409 	push	#((___str_0+0) >> 8)
      00B32F CD 85 9D         [ 4]  410 	call	_assert_failed
      00B332 5B 06            [ 2]  411 	addw	sp, #6
      00B334                        412 00107$:
                                    413 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
      00B334 C6 53 40         [ 1]  414 	ld	a, 0x5340
                                    415 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 240: if (NewState != DISABLE)
      00B337 0D 03            [ 1]  416 	tnz	(0x03, sp)
      00B339 27 06            [ 1]  417 	jreq	00102$
                                    418 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
      00B33B AA 80            [ 1]  419 	or	a, #0x80
      00B33D C7 53 40         [ 1]  420 	ld	0x5340, a
      00B340 81               [ 4]  421 	ret
      00B341                        422 00102$:
                                    423 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 246: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
      00B341 A4 7F            [ 1]  424 	and	a, #0x7f
      00B343 C7 53 40         [ 1]  425 	ld	0x5340, a
                                    426 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 248: }
      00B346 81               [ 4]  427 	ret
                                    428 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 257: void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
                                    429 ;	-----------------------------------------
                                    430 ;	 function TIM4_GenerateEvent
                                    431 ;	-----------------------------------------
      00B347                        432 _TIM4_GenerateEvent:
                                    433 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 260: assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
      00B347 7B 03            [ 1]  434 	ld	a, (0x03, sp)
      00B349 4A               [ 1]  435 	dec	a
      00B34A 27 0F            [ 1]  436 	jreq	00104$
      00B34C 4B 04            [ 1]  437 	push	#0x04
      00B34E 4B 01            [ 1]  438 	push	#0x01
      00B350 5F               [ 1]  439 	clrw	x
      00B351 89               [ 2]  440 	pushw	x
      00B352 4B F2            [ 1]  441 	push	#<(___str_0+0)
      00B354 4B 81            [ 1]  442 	push	#((___str_0+0) >> 8)
      00B356 CD 85 9D         [ 4]  443 	call	_assert_failed
      00B359 5B 06            [ 2]  444 	addw	sp, #6
      00B35B                        445 00104$:
                                    446 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 263: TIM4->EGR = (uint8_t)(TIM4_EventSource);
      00B35B AE 53 43         [ 2]  447 	ldw	x, #0x5343
      00B35E 7B 03            [ 1]  448 	ld	a, (0x03, sp)
      00B360 F7               [ 1]  449 	ld	(x), a
                                    450 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 264: }
      00B361 81               [ 4]  451 	ret
                                    452 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 272: void TIM4_SetCounter(uint8_t Counter)
                                    453 ;	-----------------------------------------
                                    454 ;	 function TIM4_SetCounter
                                    455 ;	-----------------------------------------
      00B362                        456 _TIM4_SetCounter:
                                    457 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 275: TIM4->CNTR = (uint8_t)(Counter);
      00B362 AE 53 44         [ 2]  458 	ldw	x, #0x5344
      00B365 7B 03            [ 1]  459 	ld	a, (0x03, sp)
      00B367 F7               [ 1]  460 	ld	(x), a
                                    461 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 276: }
      00B368 81               [ 4]  462 	ret
                                    463 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 284: void TIM4_SetAutoreload(uint8_t Autoreload)
                                    464 ;	-----------------------------------------
                                    465 ;	 function TIM4_SetAutoreload
                                    466 ;	-----------------------------------------
      00B369                        467 _TIM4_SetAutoreload:
                                    468 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 287: TIM4->ARR = (uint8_t)(Autoreload);
      00B369 AE 53 46         [ 2]  469 	ldw	x, #0x5346
      00B36C 7B 03            [ 1]  470 	ld	a, (0x03, sp)
      00B36E F7               [ 1]  471 	ld	(x), a
                                    472 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 288: }
      00B36F 81               [ 4]  473 	ret
                                    474 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 295: uint8_t TIM4_GetCounter(void)
                                    475 ;	-----------------------------------------
                                    476 ;	 function TIM4_GetCounter
                                    477 ;	-----------------------------------------
      00B370                        478 _TIM4_GetCounter:
                                    479 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 298: return (uint8_t)(TIM4->CNTR);
      00B370 C6 53 44         [ 1]  480 	ld	a, 0x5344
                                    481 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 299: }
      00B373 81               [ 4]  482 	ret
                                    483 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 306: TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
                                    484 ;	-----------------------------------------
                                    485 ;	 function TIM4_GetPrescaler
                                    486 ;	-----------------------------------------
      00B374                        487 _TIM4_GetPrescaler:
                                    488 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 309: return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
      00B374 C6 53 45         [ 1]  489 	ld	a, 0x5345
                                    490 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 310: }
      00B377 81               [ 4]  491 	ret
                                    492 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 319: FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
                                    493 ;	-----------------------------------------
                                    494 ;	 function TIM4_GetFlagStatus
                                    495 ;	-----------------------------------------
      00B378                        496 _TIM4_GetFlagStatus:
                                    497 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 324: assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
      00B378 7B 03            [ 1]  498 	ld	a, (0x03, sp)
      00B37A 4A               [ 1]  499 	dec	a
      00B37B 27 0F            [ 1]  500 	jreq	00107$
      00B37D 4B 44            [ 1]  501 	push	#0x44
      00B37F 4B 01            [ 1]  502 	push	#0x01
      00B381 5F               [ 1]  503 	clrw	x
      00B382 89               [ 2]  504 	pushw	x
      00B383 4B F2            [ 1]  505 	push	#<(___str_0+0)
      00B385 4B 81            [ 1]  506 	push	#((___str_0+0) >> 8)
      00B387 CD 85 9D         [ 4]  507 	call	_assert_failed
      00B38A 5B 06            [ 2]  508 	addw	sp, #6
      00B38C                        509 00107$:
                                    510 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 326: if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
      00B38C C6 53 42         [ 1]  511 	ld	a, 0x5342
      00B38F 14 03            [ 1]  512 	and	a, (0x03, sp)
      00B391 27 03            [ 1]  513 	jreq	00102$
                                    514 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 328: bitstatus = SET;
      00B393 A6 01            [ 1]  515 	ld	a, #0x01
      00B395 81               [ 4]  516 	ret
      00B396                        517 00102$:
                                    518 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 332: bitstatus = RESET;
      00B396 4F               [ 1]  519 	clr	a
                                    520 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 334: return ((FlagStatus)bitstatus);
                                    521 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 335: }
      00B397 81               [ 4]  522 	ret
                                    523 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 344: void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
                                    524 ;	-----------------------------------------
                                    525 ;	 function TIM4_ClearFlag
                                    526 ;	-----------------------------------------
      00B398                        527 _TIM4_ClearFlag:
                                    528 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 347: assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
      00B398 7B 03            [ 1]  529 	ld	a, (0x03, sp)
      00B39A 4A               [ 1]  530 	dec	a
      00B39B 27 0F            [ 1]  531 	jreq	00104$
      00B39D 4B 5B            [ 1]  532 	push	#0x5b
      00B39F 4B 01            [ 1]  533 	push	#0x01
      00B3A1 5F               [ 1]  534 	clrw	x
      00B3A2 89               [ 2]  535 	pushw	x
      00B3A3 4B F2            [ 1]  536 	push	#<(___str_0+0)
      00B3A5 4B 81            [ 1]  537 	push	#((___str_0+0) >> 8)
      00B3A7 CD 85 9D         [ 4]  538 	call	_assert_failed
      00B3AA 5B 06            [ 2]  539 	addw	sp, #6
      00B3AC                        540 00104$:
                                    541 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 350: TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
      00B3AC 7B 03            [ 1]  542 	ld	a, (0x03, sp)
      00B3AE 43               [ 1]  543 	cpl	a
      00B3AF C7 53 42         [ 1]  544 	ld	0x5342, a
                                    545 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 351: }
      00B3B2 81               [ 4]  546 	ret
                                    547 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 360: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
                                    548 ;	-----------------------------------------
                                    549 ;	 function TIM4_GetITStatus
                                    550 ;	-----------------------------------------
      00B3B3                        551 _TIM4_GetITStatus:
      00B3B3 88               [ 1]  552 	push	a
                                    553 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 367: assert_param(IS_TIM4_IT_OK(TIM4_IT));
      00B3B4 7B 04            [ 1]  554 	ld	a, (0x04, sp)
      00B3B6 4A               [ 1]  555 	dec	a
      00B3B7 27 0F            [ 1]  556 	jreq	00108$
      00B3B9 4B 6F            [ 1]  557 	push	#0x6f
      00B3BB 4B 01            [ 1]  558 	push	#0x01
      00B3BD 5F               [ 1]  559 	clrw	x
      00B3BE 89               [ 2]  560 	pushw	x
      00B3BF 4B F2            [ 1]  561 	push	#<(___str_0+0)
      00B3C1 4B 81            [ 1]  562 	push	#((___str_0+0) >> 8)
      00B3C3 CD 85 9D         [ 4]  563 	call	_assert_failed
      00B3C6 5B 06            [ 2]  564 	addw	sp, #6
      00B3C8                        565 00108$:
                                    566 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 369: itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
      00B3C8 C6 53 42         [ 1]  567 	ld	a, 0x5342
      00B3CB 14 04            [ 1]  568 	and	a, (0x04, sp)
      00B3CD 6B 01            [ 1]  569 	ld	(0x01, sp), a
                                    570 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 371: itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
      00B3CF C6 53 41         [ 1]  571 	ld	a, 0x5341
      00B3D2 14 04            [ 1]  572 	and	a, (0x04, sp)
                                    573 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 373: if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
      00B3D4 0D 01            [ 1]  574 	tnz	(0x01, sp)
      00B3D6 27 06            [ 1]  575 	jreq	00102$
      00B3D8 4D               [ 1]  576 	tnz	a
      00B3D9 27 03            [ 1]  577 	jreq	00102$
                                    578 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 375: bitstatus = (ITStatus)SET;
      00B3DB A6 01            [ 1]  579 	ld	a, #0x01
                                    580 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 379: bitstatus = (ITStatus)RESET;
      00B3DD 21                     581 	.byte 0x21
      00B3DE                        582 00102$:
      00B3DE 4F               [ 1]  583 	clr	a
      00B3DF                        584 00103$:
                                    585 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 381: return ((ITStatus)bitstatus);
                                    586 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 382: }
      00B3DF 5B 01            [ 2]  587 	addw	sp, #1
      00B3E1 81               [ 4]  588 	ret
                                    589 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 391: void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
                                    590 ;	-----------------------------------------
                                    591 ;	 function TIM4_ClearITPendingBit
                                    592 ;	-----------------------------------------
      00B3E2                        593 _TIM4_ClearITPendingBit:
                                    594 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 394: assert_param(IS_TIM4_IT_OK(TIM4_IT));
      00B3E2 7B 03            [ 1]  595 	ld	a, (0x03, sp)
      00B3E4 4A               [ 1]  596 	dec	a
      00B3E5 27 0F            [ 1]  597 	jreq	00104$
      00B3E7 4B 8A            [ 1]  598 	push	#0x8a
      00B3E9 4B 01            [ 1]  599 	push	#0x01
      00B3EB 5F               [ 1]  600 	clrw	x
      00B3EC 89               [ 2]  601 	pushw	x
      00B3ED 4B F2            [ 1]  602 	push	#<(___str_0+0)
      00B3EF 4B 81            [ 1]  603 	push	#((___str_0+0) >> 8)
      00B3F1 CD 85 9D         [ 4]  604 	call	_assert_failed
      00B3F4 5B 06            [ 2]  605 	addw	sp, #6
      00B3F6                        606 00104$:
                                    607 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 397: TIM4->SR1 = (uint8_t)(~TIM4_IT);
      00B3F6 7B 03            [ 1]  608 	ld	a, (0x03, sp)
      00B3F8 43               [ 1]  609 	cpl	a
      00B3F9 C7 53 42         [ 1]  610 	ld	0x5342, a
                                    611 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 398: }
      00B3FC 81               [ 4]  612 	ret
                                    613 	.area CODE
                                    614 	.area CONST
                                    615 	.area CONST
      0081F2                        616 ___str_0:
      0081F2 2F 55 73 65 72 73 2F   617 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      00822E 4D 38 53 5F 53 74 64   618 	.ascii "M8S_StdPeriph_Driver/src/stm8s_tim4.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 34
             2E 63
      008253 00                     619 	.db 0x00
                                    620 	.area CODE
                                    621 	.area INITIALIZER
                                    622 	.area CABS (ABS)
