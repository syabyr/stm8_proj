                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _printf
                                     13 	.globl _UART2_GetFlagStatus
                                     14 	.globl _UART2_SendData8
                                     15 	.globl _UART2_ReceiveData8
                                     16 	.globl _UART2_Init
                                     17 	.globl _UART2_DeInit
                                     18 	.globl _TIM3_ClearFlag
                                     19 	.globl _TIM3_ITConfig
                                     20 	.globl _TIM3_Cmd
                                     21 	.globl _TIM3_ICInit
                                     22 	.globl _TIM3_TimeBaseInit
                                     23 	.globl _TIM1_Cmd
                                     24 	.globl _TIM1_ICInit
                                     25 	.globl _GPIO_WriteReverse
                                     26 	.globl _GPIO_Init
                                     27 	.globl _EXTI_SetTLISensitivity
                                     28 	.globl _EXTI_SetExtIntSensitivity
                                     29 	.globl _CLK_HSIPrescalerConfig
                                     30 	.globl _ICValue2
                                     31 	.globl _ICValue1
                                     32 	.globl _TIM3_Config
                                     33 	.globl _putchar
                                     34 	.globl _getchar
                                     35 ;--------------------------------------------------------
                                     36 ; ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area DATA
                                     39 ;--------------------------------------------------------
                                     40 ; ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area INITIALIZED
      000008                         43 _ICValue1::
      000008                         44 	.ds 2
      00000A                         45 _ICValue2::
      00000A                         46 	.ds 2
                                     47 ;--------------------------------------------------------
                                     48 ; Stack segment in internal ram 
                                     49 ;--------------------------------------------------------
                                     50 	.area	SSEG
      00000C                         51 __start__stack:
      00000C                         52 	.ds	1
                                     53 
                                     54 ;--------------------------------------------------------
                                     55 ; absolute external ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area DABS (ABS)
                                     58 
                                     59 ; default segment ordering for linker
                                     60 	.area HOME
                                     61 	.area GSINIT
                                     62 	.area GSFINAL
                                     63 	.area CONST
                                     64 	.area INITIALIZER
                                     65 	.area CODE
                                     66 
                                     67 ;--------------------------------------------------------
                                     68 ; interrupt vector 
                                     69 ;--------------------------------------------------------
                                     70 	.area HOME
      008000                         71 __interrupt_vect:
      008000 82 00 80 6F             72 	int s_GSINIT ; reset
      008004 82 00 86 78             73 	int _TRAP_IRQHandler ; trap
      008008 82 00 86 79             74 	int _TLI_IRQHandler ; int0
      00800C 82 00 86 7A             75 	int _AWU_IRQHandler ; int1
      008010 82 00 86 7B             76 	int _CLK_IRQHandler ; int2
      008014 82 00 86 7C             77 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 86 7D             78 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 86 7E             79 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 86 8B             80 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 86 A7             81 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 00 00             82 	int 0x000000 ; int8
      00802C 82 00 00 00             83 	int 0x000000 ; int9
      008030 82 00 86 A8             84 	int _SPI_IRQHandler ; int10
      008034 82 00 86 A9             85 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 86 AA             86 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 86 AB             87 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 86 AC             88 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 86 AD             89 	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
      008048 82 00 86 C7             90 	int _TIM3_CAP_COM_IRQHandler ; int16
      00804C 82 00 00 00             91 	int 0x000000 ; int17
      008050 82 00 00 00             92 	int 0x000000 ; int18
      008054 82 00 86 E0             93 	int _I2C_IRQHandler ; int19
      008058 82 00 86 E1             94 	int _UART2_TX_IRQHandler ; int20
      00805C 82 00 86 E2             95 	int _UART2_RX_IRQHandler ; int21
      008060 82 00 86 E3             96 	int _ADC1_IRQHandler ; int22
      008064 82 00 86 E4             97 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 86 E5             98 	int _EEPROM_EEC_IRQHandler ; int24
                                     99 ;--------------------------------------------------------
                                    100 ; global & static initialisations
                                    101 ;--------------------------------------------------------
                                    102 	.area HOME
                                    103 	.area GSINIT
                                    104 	.area GSFINAL
                                    105 	.area GSINIT
      00806F                        106 __sdcc_init_data:
                                    107 ; stm8_genXINIT() start
      00806F AE 00 07         [ 2]  108 	ldw x, #l_DATA
      008072 27 07            [ 1]  109 	jreq	00002$
      008074                        110 00001$:
      008074 72 4F 00 00      [ 1]  111 	clr (s_DATA - 1, x)
      008078 5A               [ 2]  112 	decw x
      008079 26 F9            [ 1]  113 	jrne	00001$
      00807B                        114 00002$:
      00807B AE 00 04         [ 2]  115 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  116 	jreq	00004$
      008080                        117 00003$:
      008080 D6 83 C8         [ 1]  118 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 00 07         [ 1]  119 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  120 	decw	x
      008087 26 F7            [ 1]  121 	jrne	00003$
      008089                        122 00004$:
                                    123 ; stm8_genXINIT() end
                                    124 	.area GSFINAL
      008089 CC 80 6C         [ 2]  125 	jp	__sdcc_program_startup
                                    126 ;--------------------------------------------------------
                                    127 ; Home
                                    128 ;--------------------------------------------------------
                                    129 	.area HOME
                                    130 	.area HOME
      00806C                        131 __sdcc_program_startup:
      00806C CC 83 CD         [ 2]  132 	jp	_main
                                    133 ;	return from main will return to caller
                                    134 ;--------------------------------------------------------
                                    135 ; code
                                    136 ;--------------------------------------------------------
                                    137 	.area CODE
                                    138 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 86: void main(void)
                                    139 ;	-----------------------------------------
                                    140 ;	 function main
                                    141 ;	-----------------------------------------
      0083CD                        142 _main:
      0083CD 52 12            [ 2]  143 	sub	sp, #18
                                    144 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 90: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
      0083CF 4B 00            [ 1]  145 	push	#0x00
      0083D1 CD B4 0D         [ 4]  146 	call	_CLK_HSIPrescalerConfig
      0083D4 84               [ 1]  147 	pop	a
                                    148 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 92: GPIO_Config();  
      0083D5 CD 84 D7         [ 4]  149 	call	_GPIO_Config
                                    150 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 96: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC, EXTI_SENSITIVITY_RISE_FALL);
      0083D8 4B 03            [ 1]  151 	push	#0x03
      0083DA 4B 02            [ 1]  152 	push	#0x02
      0083DC CD A6 F8         [ 4]  153 	call	_EXTI_SetExtIntSensitivity
      0083DF 85               [ 2]  154 	popw	x
                                    155 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 98: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD, EXTI_SENSITIVITY_FALL_ONLY);
      0083E0 4B 02            [ 1]  156 	push	#0x02
      0083E2 4B 03            [ 1]  157 	push	#0x03
      0083E4 CD A6 F8         [ 4]  158 	call	_EXTI_SetExtIntSensitivity
      0083E7 85               [ 2]  159 	popw	x
                                    160 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 99: EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);
      0083E8 4B 00            [ 1]  161 	push	#0x00
      0083EA CD A7 D6         [ 4]  162 	call	_EXTI_SetTLISensitivity
      0083ED 84               [ 1]  163 	pop	a
                                    164 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 103: GPIO_WriteReverse(LED_PORT, LED_PIN);
      0083EE 4B 10            [ 1]  165 	push	#0x10
      0083F0 4B 19            [ 1]  166 	push	#0x19
      0083F2 4B 50            [ 1]  167 	push	#0x50
      0083F4 CD A6 91         [ 4]  168 	call	_GPIO_WriteReverse
      0083F7 5B 03            [ 2]  169 	addw	sp, #3
                                    170 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 106: UART2_DeInit();
      0083F9 CD A8 7F         [ 4]  171 	call	_UART2_DeInit
                                    172 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 116: UART2_Init((uint32_t)115200, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO,
      0083FC 4B 0C            [ 1]  173 	push	#0x0c
      0083FE 4B 80            [ 1]  174 	push	#0x80
      008400 4B 00            [ 1]  175 	push	#0x00
      008402 4B 00            [ 1]  176 	push	#0x00
      008404 4B 00            [ 1]  177 	push	#0x00
      008406 4B 00            [ 1]  178 	push	#0x00
      008408 4B C2            [ 1]  179 	push	#0xc2
      00840A 4B 01            [ 1]  180 	push	#0x01
      00840C 4B 00            [ 1]  181 	push	#0x00
      00840E CD A8 A6         [ 4]  182 	call	_UART2_Init
      008411 5B 09            [ 2]  183 	addw	sp, #9
                                    184 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 120: printf("\n\rUART1 Example :retarget the C library printf()/getchar() functions to the UART\n\r");
      008413 4B 8C            [ 1]  185 	push	#<(___str_0+0)
      008415 4B 80            [ 1]  186 	push	#((___str_0+0) >> 8)
      008417 CD B8 0D         [ 4]  187 	call	_printf
      00841A 85               [ 2]  188 	popw	x
                                    189 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 121: printf("\n\rEnter Text\n\r");
      00841B 4B DF            [ 1]  190 	push	#<(___str_1+0)
      00841D 4B 80            [ 1]  191 	push	#((___str_1+0) >> 8)
      00841F CD B8 0D         [ 4]  192 	call	_printf
      008422 85               [ 2]  193 	popw	x
                                    194 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 123: TIM3_Config();
      008423 CD 84 FF         [ 4]  195 	call	_TIM3_Config
                                    196 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 125: enableInterrupts();
      008426 9A               [ 1]  197 	rim
                                    198 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 127: printf("unique:x:0x%x y:0x%x wafer number:%d lot:%d%d%d%d%d%d%d\r\n",UX,UY,WN,LN1,LN2,LN3,LN4,LN5,LN6,LN7);
      008427 C6 48 70         [ 1]  199 	ld	a, 0x4870
      00842A 97               [ 1]  200 	ld	xl, a
      00842B 49               [ 1]  201 	rlc	a
      00842C 4F               [ 1]  202 	clr	a
      00842D A2 00            [ 1]  203 	sbc	a, #0x00
      00842F 6B 01            [ 1]  204 	ld	(0x01, sp), a
      008431 C6 48 6F         [ 1]  205 	ld	a, 0x486f
      008434 90 97            [ 1]  206 	ld	yl, a
      008436 49               [ 1]  207 	rlc	a
      008437 4F               [ 1]  208 	clr	a
      008438 A2 00            [ 1]  209 	sbc	a, #0x00
      00843A 90 95            [ 1]  210 	ld	yh, a
      00843C C6 48 6E         [ 1]  211 	ld	a, 0x486e
      00843F 95               [ 1]  212 	ld	xh, a
      008440 49               [ 1]  213 	rlc	a
      008441 4F               [ 1]  214 	clr	a
      008442 A2 00            [ 1]  215 	sbc	a, #0x00
      008444 6B 03            [ 1]  216 	ld	(0x03, sp), a
      008446 C6 48 6D         [ 1]  217 	ld	a, 0x486d
      008449 6B 06            [ 1]  218 	ld	(0x06, sp), a
      00844B 49               [ 1]  219 	rlc	a
      00844C 4F               [ 1]  220 	clr	a
      00844D A2 00            [ 1]  221 	sbc	a, #0x00
      00844F 6B 05            [ 1]  222 	ld	(0x05, sp), a
      008451 C6 48 6C         [ 1]  223 	ld	a, 0x486c
      008454 6B 08            [ 1]  224 	ld	(0x08, sp), a
      008456 49               [ 1]  225 	rlc	a
      008457 4F               [ 1]  226 	clr	a
      008458 A2 00            [ 1]  227 	sbc	a, #0x00
      00845A 6B 07            [ 1]  228 	ld	(0x07, sp), a
      00845C C6 48 6B         [ 1]  229 	ld	a, 0x486b
      00845F 6B 0A            [ 1]  230 	ld	(0x0a, sp), a
      008461 49               [ 1]  231 	rlc	a
      008462 4F               [ 1]  232 	clr	a
      008463 A2 00            [ 1]  233 	sbc	a, #0x00
      008465 6B 09            [ 1]  234 	ld	(0x09, sp), a
      008467 C6 48 6A         [ 1]  235 	ld	a, 0x486a
      00846A 6B 0C            [ 1]  236 	ld	(0x0c, sp), a
      00846C 49               [ 1]  237 	rlc	a
      00846D 4F               [ 1]  238 	clr	a
      00846E A2 00            [ 1]  239 	sbc	a, #0x00
      008470 6B 0B            [ 1]  240 	ld	(0x0b, sp), a
      008472 C6 48 69         [ 1]  241 	ld	a, 0x4869
      008475 6B 0E            [ 1]  242 	ld	(0x0e, sp), a
      008477 49               [ 1]  243 	rlc	a
      008478 4F               [ 1]  244 	clr	a
      008479 A2 00            [ 1]  245 	sbc	a, #0x00
      00847B 6B 0D            [ 1]  246 	ld	(0x0d, sp), a
      00847D 89               [ 2]  247 	pushw	x
      00847E AE 48 67         [ 2]  248 	ldw	x, #0x4867
      008481 E6 01            [ 1]  249 	ld	a, (0x1, x)
      008483 6B 12            [ 1]  250 	ld	(0x12, sp), a
      008485 F6               [ 1]  251 	ld	a, (x)
      008486 6B 11            [ 1]  252 	ld	(0x11, sp), a
      008488 AE 48 65         [ 2]  253 	ldw	x, #0x4865
      00848B E6 01            [ 1]  254 	ld	a, (0x1, x)
      00848D 6B 14            [ 1]  255 	ld	(0x14, sp), a
      00848F F6               [ 1]  256 	ld	a, (x)
      008490 6B 13            [ 1]  257 	ld	(0x13, sp), a
      008492 85               [ 2]  258 	popw	x
      008493 9F               [ 1]  259 	ld	a, xl
      008494 88               [ 1]  260 	push	a
      008495 7B 02            [ 1]  261 	ld	a, (0x02, sp)
      008497 88               [ 1]  262 	push	a
      008498 90 89            [ 2]  263 	pushw	y
      00849A 9E               [ 1]  264 	ld	a, xh
      00849B 88               [ 1]  265 	push	a
      00849C 7B 08            [ 1]  266 	ld	a, (0x08, sp)
      00849E 88               [ 1]  267 	push	a
      00849F 1E 0B            [ 2]  268 	ldw	x, (0x0b, sp)
      0084A1 89               [ 2]  269 	pushw	x
      0084A2 1E 0F            [ 2]  270 	ldw	x, (0x0f, sp)
      0084A4 89               [ 2]  271 	pushw	x
      0084A5 1E 13            [ 2]  272 	ldw	x, (0x13, sp)
      0084A7 89               [ 2]  273 	pushw	x
      0084A8 1E 17            [ 2]  274 	ldw	x, (0x17, sp)
      0084AA 89               [ 2]  275 	pushw	x
      0084AB 1E 1B            [ 2]  276 	ldw	x, (0x1b, sp)
      0084AD 89               [ 2]  277 	pushw	x
      0084AE 1E 1F            [ 2]  278 	ldw	x, (0x1f, sp)
      0084B0 89               [ 2]  279 	pushw	x
      0084B1 1E 23            [ 2]  280 	ldw	x, (0x23, sp)
      0084B3 89               [ 2]  281 	pushw	x
      0084B4 4B EE            [ 1]  282 	push	#<(___str_2+0)
      0084B6 4B 80            [ 1]  283 	push	#((___str_2+0) >> 8)
      0084B8 CD B8 0D         [ 4]  284 	call	_printf
      0084BB 5B 16            [ 2]  285 	addw	sp, #22
                                    286 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 130: TIM1_ICInit( TIM1_CHANNEL_1, TIM1_ICPOLARITY_FALLING, TIM1_ICSELECTION_DIRECTTI,
      0084BD 4B 00            [ 1]  287 	push	#0x00
      0084BF 4B 0C            [ 1]  288 	push	#0x0c
      0084C1 4B 01            [ 1]  289 	push	#0x01
      0084C3 4B 01            [ 1]  290 	push	#0x01
      0084C5 4B 00            [ 1]  291 	push	#0x00
      0084C7 CD 8C BA         [ 4]  292 	call	_TIM1_ICInit
      0084CA 5B 05            [ 2]  293 	addw	sp, #5
                                    294 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 132: TIM1_Cmd(ENABLE);
      0084CC 4B 01            [ 1]  295 	push	#0x01
      0084CE CD 8E CF         [ 4]  296 	call	_TIM1_Cmd
      0084D1 84               [ 1]  297 	pop	a
                                    298 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 136: while (1)
      0084D2                        299 00102$:
      0084D2 20 FE            [ 2]  300 	jra	00102$
                                    301 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 142: }
      0084D4 5B 12            [ 2]  302 	addw	sp, #18
      0084D6 81               [ 4]  303 	ret
                                    304 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 145: static void GPIO_Config(void)
                                    305 ;	-----------------------------------------
                                    306 ;	 function GPIO_Config
                                    307 ;	-----------------------------------------
      0084D7                        308 _GPIO_Config:
                                    309 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 148: GPIO_Init(LED_PORT, (GPIO_Pin_TypeDef)(LED_PIN),GPIO_MODE_OUT_PP_HIGH_FAST);
      0084D7 4B F0            [ 1]  310 	push	#0xf0
      0084D9 4B 10            [ 1]  311 	push	#0x10
      0084DB 4B 19            [ 1]  312 	push	#0x19
      0084DD 4B 50            [ 1]  313 	push	#0x50
      0084DF CD A5 99         [ 4]  314 	call	_GPIO_Init
      0084E2 5B 04            [ 2]  315 	addw	sp, #4
                                    316 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 151: GPIO_Init(KEY_PORT, (GPIO_Pin_TypeDef)(KEY_PIN),GPIO_MODE_IN_FL_IT);
      0084E4 4B 20            [ 1]  317 	push	#0x20
      0084E6 4B 08            [ 1]  318 	push	#0x08
      0084E8 4B 0A            [ 1]  319 	push	#0x0a
      0084EA 4B 50            [ 1]  320 	push	#0x50
      0084EC CD A5 99         [ 4]  321 	call	_GPIO_Init
      0084EF 5B 04            [ 2]  322 	addw	sp, #4
                                    323 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 155: GPIO_Init(IR_PORT, (GPIO_Pin_TypeDef)(IR_PIN),GPIO_MODE_IN_FL_NO_IT);
      0084F1 4B 00            [ 1]  324 	push	#0x00
      0084F3 4B 04            [ 1]  325 	push	#0x04
      0084F5 4B 0F            [ 1]  326 	push	#0x0f
      0084F7 4B 50            [ 1]  327 	push	#0x50
      0084F9 CD A5 99         [ 4]  328 	call	_GPIO_Init
      0084FC 5B 04            [ 2]  329 	addw	sp, #4
                                    330 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 157: }
      0084FE 81               [ 4]  331 	ret
                                    332 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 161: void TIM3_Config(void)
                                    333 ;	-----------------------------------------
                                    334 ;	 function TIM3_Config
                                    335 ;	-----------------------------------------
      0084FF                        336 _TIM3_Config:
                                    337 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 163: TIM3_TimeBaseInit(TIM3_PRESCALER_16,60000-1);
      0084FF 4B 5F            [ 1]  338 	push	#0x5f
      008501 4B EA            [ 1]  339 	push	#0xea
      008503 4B 04            [ 1]  340 	push	#0x04
      008505 CD 9C BD         [ 4]  341 	call	_TIM3_TimeBaseInit
      008508 5B 03            [ 2]  342 	addw	sp, #3
                                    343 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 165: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_FALLING, TIM3_ICSELECTION_DIRECTTI,
      00850A 4B 00            [ 1]  344 	push	#0x00
      00850C 4B 00            [ 1]  345 	push	#0x00
      00850E 4B 01            [ 1]  346 	push	#0x01
      008510 4B 44            [ 1]  347 	push	#0x44
      008512 4B 00            [ 1]  348 	push	#0x00
      008514 CD 9D FE         [ 4]  349 	call	_TIM3_ICInit
      008517 5B 05            [ 2]  350 	addw	sp, #5
                                    351 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 168: TIM3_ClearFlag(TIM3_FLAG_CC1);
      008519 4B 02            [ 1]  352 	push	#0x02
      00851B 4B 00            [ 1]  353 	push	#0x00
      00851D CD A4 94         [ 4]  354 	call	_TIM3_ClearFlag
      008520 85               [ 2]  355 	popw	x
                                    356 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 169: TIM3_ITConfig(TIM3_IT_UPDATE,ENABLE);
      008521 4B 01            [ 1]  357 	push	#0x01
      008523 4B 01            [ 1]  358 	push	#0x01
      008525 CD A0 00         [ 4]  359 	call	_TIM3_ITConfig
      008528 85               [ 2]  360 	popw	x
                                    361 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 170: TIM3_ITConfig(TIM3_IT_CC1,ENABLE);
      008529 4B 01            [ 1]  362 	push	#0x01
      00852B 4B 02            [ 1]  363 	push	#0x02
      00852D CD A0 00         [ 4]  364 	call	_TIM3_ITConfig
      008530 85               [ 2]  365 	popw	x
                                    366 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 171: TIM3_Cmd(ENABLE);
      008531 4B 01            [ 1]  367 	push	#0x01
      008533 CD 9F D5         [ 4]  368 	call	_TIM3_Cmd
      008536 84               [ 1]  369 	pop	a
                                    370 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 173: return;
                                    371 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 189: ICValue2 = 0;
                                    372 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 190: }
      008537 81               [ 4]  373 	ret
                                    374 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 197: PUTCHAR_PROTOTYPE
                                    375 ;	-----------------------------------------
                                    376 ;	 function putchar
                                    377 ;	-----------------------------------------
      008538                        378 _putchar:
                                    379 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 200: UART2_SendData8(c);
      008538 7B 04            [ 1]  380 	ld	a, (0x04, sp)
      00853A 88               [ 1]  381 	push	a
      00853B CD AD E8         [ 4]  382 	call	_UART2_SendData8
      00853E 84               [ 1]  383 	pop	a
                                    384 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 202: while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
      00853F                        385 00101$:
      00853F 4B 80            [ 1]  386 	push	#0x80
      008541 4B 00            [ 1]  387 	push	#0x00
      008543 CD AE 45         [ 4]  388 	call	_UART2_GetFlagStatus
      008546 85               [ 2]  389 	popw	x
      008547 4D               [ 1]  390 	tnz	a
      008548 27 F5            [ 1]  391 	jreq	00101$
                                    392 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 207: }
      00854A 81               [ 4]  393 	ret
                                    394 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 214: GETCHAR_PROTOTYPE
                                    395 ;	-----------------------------------------
                                    396 ;	 function getchar
                                    397 ;	-----------------------------------------
      00854B                        398 _getchar:
                                    399 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 222: while (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET);
      00854B                        400 00101$:
      00854B 4B 20            [ 1]  401 	push	#0x20
      00854D 4B 00            [ 1]  402 	push	#0x00
      00854F CD AE 45         [ 4]  403 	call	_UART2_GetFlagStatus
      008552 85               [ 2]  404 	popw	x
      008553 4D               [ 1]  405 	tnz	a
      008554 27 F5            [ 1]  406 	jreq	00101$
                                    407 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 223: c = UART2_ReceiveData8();
      008556 CD AD C9         [ 4]  408 	call	_UART2_ReceiveData8
      008559 5F               [ 1]  409 	clrw	x
      00855A 97               [ 1]  410 	ld	xl, a
                                    411 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 224: return (c);
                                    412 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 225: }
      00855B 81               [ 4]  413 	ret
                                    414 	.area CODE
                                    415 	.area CONST
                                    416 	.area CONST
      00808C                        417 ___str_0:
      00808C 0A                     418 	.db 0x0a
      00808D 0D                     419 	.db 0x0d
      00808E 55 41 52 54 31 20 45   420 	.ascii "UART1 Example :retarget the C library printf()/getchar() fun"
             78 61 6D 70 6C 65 20
             3A 72 65 74 61 72 67
             65 74 20 74 68 65 20
             43 20 6C 69 62 72 61
             72 79 20 70 72 69 6E
             74 66 28 29 2F 67 65
             74 63 68 61 72 28 29
             20 66 75 6E
      0080CA 63 74 69 6F 6E 73 20   421 	.ascii "ctions to the UART"
             74 6F 20 74 68 65 20
             55 41 52 54
      0080DC 0A                     422 	.db 0x0a
      0080DD 0D                     423 	.db 0x0d
      0080DE 00                     424 	.db 0x00
                                    425 	.area CODE
                                    426 	.area CONST
      0080DF                        427 ___str_1:
      0080DF 0A                     428 	.db 0x0a
      0080E0 0D                     429 	.db 0x0d
      0080E1 45 6E 74 65 72 20 54   430 	.ascii "Enter Text"
             65 78 74
      0080EB 0A                     431 	.db 0x0a
      0080EC 0D                     432 	.db 0x0d
      0080ED 00                     433 	.db 0x00
                                    434 	.area CODE
                                    435 	.area CONST
      0080EE                        436 ___str_2:
      0080EE 75 6E 69 71 75 65 3A   437 	.ascii "unique:x:0x%x y:0x%x wafer number:%d lot:%d%d%d%d%d%d%d"
             78 3A 30 78 25 78 20
             79 3A 30 78 25 78 20
             77 61 66 65 72 20 6E
             75 6D 62 65 72 3A 25
             64 20 6C 6F 74 3A 25
             64 25 64 25 64 25 64
             25 64 25 64 25 64
      008125 0D                     438 	.db 0x0d
      008126 0A                     439 	.db 0x0a
      008127 00                     440 	.db 0x00
                                    441 	.area CODE
                                    442 	.area CONST
      008128                        443 ___str_3:
      008128 31 3A 25 64 2C 32 3A   444 	.ascii "1:%d,2:%d"
             25 64
      008131 0D                     445 	.db 0x0d
      008132 0A                     446 	.db 0x0a
      008133 00                     447 	.db 0x00
                                    448 	.area CODE
                                    449 	.area INITIALIZER
      0083C9                        450 __xinit__ICValue1:
      0083C9 00 00                  451 	.dw #0x0000
      0083CB                        452 __xinit__ICValue2:
      0083CB 00 00                  453 	.dw #0x0000
                                    454 	.area CABS (ABS)
