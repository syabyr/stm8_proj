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
                                     11 	.globl _TIM4_Config
                                     12 	.globl _main
                                     13 	.globl _printf
                                     14 	.globl _UART2_GetFlagStatus
                                     15 	.globl _UART2_SendData8
                                     16 	.globl _UART2_ReceiveData8
                                     17 	.globl _UART2_Init
                                     18 	.globl _UART2_DeInit
                                     19 	.globl _TIM4_TimeBaseInit
                                     20 	.globl _TIM3_ClearFlag
                                     21 	.globl _TIM3_ITConfig
                                     22 	.globl _TIM3_Cmd
                                     23 	.globl _TIM3_ICInit
                                     24 	.globl _TIM3_TimeBaseInit
                                     25 	.globl _TIM1_CtrlPWMOutputs
                                     26 	.globl _TIM1_Cmd
                                     27 	.globl _TIM1_OC1Init
                                     28 	.globl _TIM1_TimeBaseInit
                                     29 	.globl _TIM1_DeInit
                                     30 	.globl _IWDG_Enable
                                     31 	.globl _IWDG_ReloadCounter
                                     32 	.globl _IWDG_SetReload
                                     33 	.globl _IWDG_SetPrescaler
                                     34 	.globl _IWDG_WriteAccessCmd
                                     35 	.globl _GPIO_WriteReverse
                                     36 	.globl _GPIO_Init
                                     37 	.globl _EXTI_SetTLISensitivity
                                     38 	.globl _EXTI_SetExtIntSensitivity
                                     39 	.globl _CLK_HSIPrescalerConfig
                                     40 	.globl _UART2_Config
                                     41 	.globl _TIM1_Config
                                     42 	.globl _TIM2_Config
                                     43 	.globl _TIM3_Config
                                     44 	.globl _IWDG_Config
                                     45 	.globl _putchar
                                     46 	.globl _getchar
                                     47 ;--------------------------------------------------------
                                     48 ; ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area DATA
                                     51 ;--------------------------------------------------------
                                     52 ; ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area INITIALIZED
                                     55 ;--------------------------------------------------------
                                     56 ; Stack segment in internal ram 
                                     57 ;--------------------------------------------------------
                                     58 	.area	SSEG
      00000A                         59 __start__stack:
      00000A                         60 	.ds	1
                                     61 
                                     62 ;--------------------------------------------------------
                                     63 ; absolute external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area DABS (ABS)
                                     66 
                                     67 ; default segment ordering for linker
                                     68 	.area HOME
                                     69 	.area GSINIT
                                     70 	.area GSFINAL
                                     71 	.area CONST
                                     72 	.area INITIALIZER
                                     73 	.area CODE
                                     74 
                                     75 ;--------------------------------------------------------
                                     76 ; interrupt vector 
                                     77 ;--------------------------------------------------------
                                     78 	.area HOME
      008000                         79 __interrupt_vect:
      008000 82 00 80 6F             80 	int s_GSINIT ; reset
      008004 82 00 87 14             81 	int _TRAP_IRQHandler ; trap
      008008 82 00 87 15             82 	int _TLI_IRQHandler ; int0
      00800C 82 00 87 16             83 	int _AWU_IRQHandler ; int1
      008010 82 00 87 17             84 	int _CLK_IRQHandler ; int2
      008014 82 00 87 18             85 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 87 19             86 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 87 1A             87 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 87 36             88 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 87 52             89 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 00 00             90 	int 0x000000 ; int8
      00802C 82 00 00 00             91 	int 0x000000 ; int9
      008030 82 00 87 53             92 	int _SPI_IRQHandler ; int10
      008034 82 00 87 54             93 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 87 55             94 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 87 56             95 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 87 57             96 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 87 58             97 	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
      008048 82 00 87 72             98 	int _TIM3_CAP_COM_IRQHandler ; int16
      00804C 82 00 00 00             99 	int 0x000000 ; int17
      008050 82 00 00 00            100 	int 0x000000 ; int18
      008054 82 00 87 8B            101 	int _I2C_IRQHandler ; int19
      008058 82 00 87 8C            102 	int _UART2_TX_IRQHandler ; int20
      00805C 82 00 87 8D            103 	int _UART2_RX_IRQHandler ; int21
      008060 82 00 87 8E            104 	int _ADC1_IRQHandler ; int22
      008064 82 00 87 8F            105 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 87 90            106 	int _EEPROM_EEC_IRQHandler ; int24
                                    107 ;--------------------------------------------------------
                                    108 ; global & static initialisations
                                    109 ;--------------------------------------------------------
                                    110 	.area HOME
                                    111 	.area GSINIT
                                    112 	.area GSFINAL
                                    113 	.area GSINIT
      00806F                        114 __sdcc_init_data:
                                    115 ; stm8_genXINIT() start
      00806F AE 00 07         [ 2]  116 	ldw x, #l_DATA
      008072 27 07            [ 1]  117 	jreq	00002$
      008074                        118 00001$:
      008074 72 4F 00 00      [ 1]  119 	clr (s_DATA - 1, x)
      008078 5A               [ 2]  120 	decw x
      008079 26 F9            [ 1]  121 	jrne	00001$
      00807B                        122 00002$:
      00807B AE 00 02         [ 2]  123 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  124 	jreq	00004$
      008080                        125 00003$:
      008080 D6 84 54         [ 1]  126 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 00 07         [ 1]  127 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  128 	decw	x
      008087 26 F7            [ 1]  129 	jrne	00003$
      008089                        130 00004$:
                                    131 ; stm8_genXINIT() end
                                    132 	.area GSFINAL
      008089 CC 80 6C         [ 2]  133 	jp	__sdcc_program_startup
                                    134 ;--------------------------------------------------------
                                    135 ; Home
                                    136 ;--------------------------------------------------------
                                    137 	.area HOME
                                    138 	.area HOME
      00806C                        139 __sdcc_program_startup:
      00806C CC 84 57         [ 2]  140 	jp	_main
                                    141 ;	return from main will return to caller
                                    142 ;--------------------------------------------------------
                                    143 ; code
                                    144 ;--------------------------------------------------------
                                    145 	.area CODE
                                    146 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 69: void main(void)
                                    147 ;	-----------------------------------------
                                    148 ;	 function main
                                    149 ;	-----------------------------------------
      008457                        150 _main:
                                    151 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 73: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
      008457 4B 00            [ 1]  152 	push	#0x00
      008459 CD C2 80         [ 4]  153 	call	_CLK_HSIPrescalerConfig
      00845C 84               [ 1]  154 	pop	a
                                    155 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 75: GPIO_Config();  
      00845D CD 84 8E         [ 4]  156 	call	_GPIO_Config
                                    157 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 79: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC, EXTI_SENSITIVITY_RISE_FALL);
      008460 4B 03            [ 1]  158 	push	#0x03
      008462 4B 02            [ 1]  159 	push	#0x02
      008464 CD B5 6B         [ 4]  160 	call	_EXTI_SetExtIntSensitivity
      008467 85               [ 2]  161 	popw	x
                                    162 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 81: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD, EXTI_SENSITIVITY_FALL_ONLY);
      008468 4B 02            [ 1]  163 	push	#0x02
      00846A 4B 03            [ 1]  164 	push	#0x03
      00846C CD B5 6B         [ 4]  165 	call	_EXTI_SetExtIntSensitivity
      00846F 85               [ 2]  166 	popw	x
                                    167 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 82: EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);
      008470 4B 00            [ 1]  168 	push	#0x00
      008472 CD B6 49         [ 4]  169 	call	_EXTI_SetTLISensitivity
      008475 84               [ 1]  170 	pop	a
                                    171 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 86: GPIO_WriteReverse(LED_PORT, LED_PIN);
      008476 4B 10            [ 1]  172 	push	#0x10
      008478 4B 19            [ 1]  173 	push	#0x19
      00847A 4B 50            [ 1]  174 	push	#0x50
      00847C CD B5 04         [ 4]  175 	call	_GPIO_WriteReverse
      00847F 5B 03            [ 2]  176 	addw	sp, #3
                                    177 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 88: UART2_Config();
      008481 CD 84 C3         [ 4]  178 	call	_UART2_Config
                                    179 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 89: TIM1_Config();
      008484 CD 84 E6         [ 4]  180 	call	_TIM1_Config
                                    181 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 90: TIM3_Config();
      008487 CD 85 1D         [ 4]  182 	call	_TIM3_Config
                                    183 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 92: enableInterrupts();
      00848A 9A               [ 1]  184 	rim
                                    185 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 96: while (1)
      00848B                        186 00102$:
      00848B 20 FE            [ 2]  187 	jra	00102$
                                    188 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 102: }
      00848D 81               [ 4]  189 	ret
                                    190 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 105: static void GPIO_Config(void)
                                    191 ;	-----------------------------------------
                                    192 ;	 function GPIO_Config
                                    193 ;	-----------------------------------------
      00848E                        194 _GPIO_Config:
                                    195 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 108: GPIO_Init(LED_PORT, (GPIO_Pin_TypeDef)(LED_PIN),GPIO_MODE_OUT_PP_HIGH_FAST);
      00848E 4B F0            [ 1]  196 	push	#0xf0
      008490 4B 10            [ 1]  197 	push	#0x10
      008492 4B 19            [ 1]  198 	push	#0x19
      008494 4B 50            [ 1]  199 	push	#0x50
      008496 CD B4 0C         [ 4]  200 	call	_GPIO_Init
      008499 5B 04            [ 2]  201 	addw	sp, #4
                                    202 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 111: GPIO_Init(KEY_PORT, (GPIO_Pin_TypeDef)(KEY_PIN),GPIO_MODE_IN_FL_IT);
      00849B 4B 20            [ 1]  203 	push	#0x20
      00849D 4B 08            [ 1]  204 	push	#0x08
      00849F 4B 0A            [ 1]  205 	push	#0x0a
      0084A1 4B 50            [ 1]  206 	push	#0x50
      0084A3 CD B4 0C         [ 4]  207 	call	_GPIO_Init
      0084A6 5B 04            [ 2]  208 	addw	sp, #4
                                    209 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 114: GPIO_Init(IR_PORT, (GPIO_Pin_TypeDef)(IR_PIN),GPIO_MODE_IN_FL_NO_IT);
      0084A8 4B 00            [ 1]  210 	push	#0x00
      0084AA 4B 04            [ 1]  211 	push	#0x04
      0084AC 4B 0F            [ 1]  212 	push	#0x0f
      0084AE 4B 50            [ 1]  213 	push	#0x50
      0084B0 CD B4 0C         [ 4]  214 	call	_GPIO_Init
      0084B3 5B 04            [ 2]  215 	addw	sp, #4
                                    216 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 117: GPIO_Init(FAN_PORT, (GPIO_Pin_TypeDef)(FAN_SW_PIN),GPIO_MODE_OUT_PP_HIGH_FAST);
      0084B5 4B F0            [ 1]  217 	push	#0xf0
      0084B7 4B 04            [ 1]  218 	push	#0x04
      0084B9 4B 0A            [ 1]  219 	push	#0x0a
      0084BB 4B 50            [ 1]  220 	push	#0x50
      0084BD CD B4 0C         [ 4]  221 	call	_GPIO_Init
      0084C0 5B 04            [ 2]  222 	addw	sp, #4
                                    223 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 119: }
      0084C2 81               [ 4]  224 	ret
                                    225 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 122: void UART2_Config(void)
                                    226 ;	-----------------------------------------
                                    227 ;	 function UART2_Config
                                    228 ;	-----------------------------------------
      0084C3                        229 _UART2_Config:
                                    230 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 124: UART2_DeInit();
      0084C3 CD B6 F2         [ 4]  231 	call	_UART2_DeInit
                                    232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 134: UART2_Init((uint32_t)115200, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO,
      0084C6 4B 0C            [ 1]  233 	push	#0x0c
      0084C8 4B 80            [ 1]  234 	push	#0x80
      0084CA 4B 00            [ 1]  235 	push	#0x00
      0084CC 4B 00            [ 1]  236 	push	#0x00
      0084CE 4B 00            [ 1]  237 	push	#0x00
      0084D0 4B 00            [ 1]  238 	push	#0x00
      0084D2 4B C2            [ 1]  239 	push	#0xc2
      0084D4 4B 01            [ 1]  240 	push	#0x01
      0084D6 4B 00            [ 1]  241 	push	#0x00
      0084D8 CD B7 19         [ 4]  242 	call	_UART2_Init
      0084DB 5B 09            [ 2]  243 	addw	sp, #9
                                    244 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 138: printf("\n\rfan start\n\r");
      0084DD 4B 8C            [ 1]  245 	push	#<(___str_0+0)
      0084DF 4B 80            [ 1]  246 	push	#((___str_0+0) >> 8)
      0084E1 CD C6 EE         [ 4]  247 	call	_printf
      0084E4 85               [ 2]  248 	popw	x
                                    249 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 139: }
      0084E5 81               [ 4]  250 	ret
                                    251 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 143: void TIM1_Config(void)
                                    252 ;	-----------------------------------------
                                    253 ;	 function TIM1_Config
                                    254 ;	-----------------------------------------
      0084E6                        255 _TIM1_Config:
                                    256 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 145: TIM1_DeInit();
      0084E6 CD 87 91         [ 4]  257 	call	_TIM1_DeInit
                                    258 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 147: TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 3200, 0);
      0084E9 4B 00            [ 1]  259 	push	#0x00
      0084EB 4B 80            [ 1]  260 	push	#0x80
      0084ED 4B 0C            [ 1]  261 	push	#0x0c
      0084EF 4B 00            [ 1]  262 	push	#0x00
      0084F1 5F               [ 1]  263 	clrw	x
      0084F2 89               [ 2]  264 	pushw	x
      0084F3 CD 88 2A         [ 4]  265 	call	_TIM1_TimeBaseInit
      0084F6 5B 06            [ 2]  266 	addw	sp, #6
                                    267 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 149: TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_ENABLE,
      0084F8 4B 00            [ 1]  268 	push	#0x00
      0084FA 4B 55            [ 1]  269 	push	#0x55
      0084FC 4B 00            [ 1]  270 	push	#0x00
      0084FE 4B 22            [ 1]  271 	push	#0x22
      008500 4B 1C            [ 1]  272 	push	#0x1c
      008502 4B 0C            [ 1]  273 	push	#0x0c
      008504 4B 44            [ 1]  274 	push	#0x44
      008506 4B 11            [ 1]  275 	push	#0x11
      008508 4B 70            [ 1]  276 	push	#0x70
      00850A CD 88 7B         [ 4]  277 	call	_TIM1_OC1Init
      00850D 5B 09            [ 2]  278 	addw	sp, #9
                                    279 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 152: TIM1_Cmd(ENABLE);
      00850F 4B 01            [ 1]  280 	push	#0x01
      008511 CD 8F 7A         [ 4]  281 	call	_TIM1_Cmd
      008514 84               [ 1]  282 	pop	a
                                    283 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 153: TIM1_CtrlPWMOutputs(ENABLE);
      008515 4B 01            [ 1]  284 	push	#0x01
      008517 CD 8F A5         [ 4]  285 	call	_TIM1_CtrlPWMOutputs
      00851A 84               [ 1]  286 	pop	a
                                    287 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 154: }
      00851B 81               [ 4]  288 	ret
                                    289 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 157: void TIM2_Config(void)
                                    290 ;	-----------------------------------------
                                    291 ;	 function TIM2_Config
                                    292 ;	-----------------------------------------
      00851C                        293 _TIM2_Config:
                                    294 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 160: }
      00851C 81               [ 4]  295 	ret
                                    296 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 163: void TIM3_Config(void)
                                    297 ;	-----------------------------------------
                                    298 ;	 function TIM3_Config
                                    299 ;	-----------------------------------------
      00851D                        300 _TIM3_Config:
                                    301 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 165: TIM3_TimeBaseInit(TIM3_PRESCALER_16,60000-1);
      00851D 4B 5F            [ 1]  302 	push	#0x5f
      00851F 4B EA            [ 1]  303 	push	#0xea
      008521 4B 04            [ 1]  304 	push	#0x04
      008523 CD A8 97         [ 4]  305 	call	_TIM3_TimeBaseInit
      008526 5B 03            [ 2]  306 	addw	sp, #3
                                    307 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 167: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_FALLING, TIM3_ICSELECTION_DIRECTTI,
      008528 4B 00            [ 1]  308 	push	#0x00
      00852A 4B 00            [ 1]  309 	push	#0x00
      00852C 4B 01            [ 1]  310 	push	#0x01
      00852E 4B 44            [ 1]  311 	push	#0x44
      008530 4B 00            [ 1]  312 	push	#0x00
      008532 CD A9 D8         [ 4]  313 	call	_TIM3_ICInit
      008535 5B 05            [ 2]  314 	addw	sp, #5
                                    315 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 170: TIM3_ClearFlag(TIM3_FLAG_CC1);
      008537 4B 02            [ 1]  316 	push	#0x02
      008539 4B 00            [ 1]  317 	push	#0x00
      00853B CD B0 6E         [ 4]  318 	call	_TIM3_ClearFlag
      00853E 85               [ 2]  319 	popw	x
                                    320 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 171: TIM3_ITConfig(TIM3_IT_UPDATE,ENABLE);
      00853F 4B 01            [ 1]  321 	push	#0x01
      008541 4B 01            [ 1]  322 	push	#0x01
      008543 CD AB DA         [ 4]  323 	call	_TIM3_ITConfig
      008546 85               [ 2]  324 	popw	x
                                    325 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 172: TIM3_ITConfig(TIM3_IT_CC1,ENABLE);
      008547 4B 01            [ 1]  326 	push	#0x01
      008549 4B 02            [ 1]  327 	push	#0x02
      00854B CD AB DA         [ 4]  328 	call	_TIM3_ITConfig
      00854E 85               [ 2]  329 	popw	x
                                    330 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 173: TIM3_Cmd(ENABLE);
      00854F 4B 01            [ 1]  331 	push	#0x01
      008551 CD AB AF         [ 4]  332 	call	_TIM3_Cmd
      008554 84               [ 1]  333 	pop	a
                                    334 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 175: return;
                                    335 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 176: }
      008555 81               [ 4]  336 	ret
                                    337 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 179: void TIM4_Config(void)
                                    338 ;	-----------------------------------------
                                    339 ;	 function TIM4_Config
                                    340 ;	-----------------------------------------
      008556                        341 _TIM4_Config:
                                    342 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 181: TIM4_TimeBaseInit(TIM4_PRESCALER_128,12);
      008556 4B 0C            [ 1]  343 	push	#0x0c
      008558 4B 07            [ 1]  344 	push	#0x07
      00855A CD B1 7D         [ 4]  345 	call	_TIM4_TimeBaseInit
      00855D 85               [ 2]  346 	popw	x
                                    347 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 183: }
      00855E 81               [ 4]  348 	ret
                                    349 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 185: void IWDG_Config(void)
                                    350 ;	-----------------------------------------
                                    351 ;	 function IWDG_Config
                                    352 ;	-----------------------------------------
      00855F                        353 _IWDG_Config:
                                    354 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 187: IWDG_Enable();
      00855F CD C6 4E         [ 4]  355 	call	_IWDG_Enable
                                    356 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 188: IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);
      008562 4B 55            [ 1]  357 	push	#0x55
      008564 CD C5 E5         [ 4]  358 	call	_IWDG_WriteAccessCmd
      008567 84               [ 1]  359 	pop	a
                                    360 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 189: IWDG_SetPrescaler(IWDG_Prescaler_128);
      008568 4B 05            [ 1]  361 	push	#0x05
      00856A CD C6 05         [ 4]  362 	call	_IWDG_SetPrescaler
      00856D 84               [ 1]  363 	pop	a
                                    364 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 192: IWDG_SetReload(255);
      00856E 4B FF            [ 1]  365 	push	#0xff
      008570 CD C6 42         [ 4]  366 	call	_IWDG_SetReload
      008573 84               [ 1]  367 	pop	a
                                    368 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 193: IWDG_ReloadCounter();
                                    369 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 194: }
      008574 CC C6 49         [ 2]  370 	jp	_IWDG_ReloadCounter
                                    371 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 201: PUTCHAR_PROTOTYPE
                                    372 ;	-----------------------------------------
                                    373 ;	 function putchar
                                    374 ;	-----------------------------------------
      008577                        375 _putchar:
                                    376 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 204: UART2_SendData8(c);
      008577 7B 04            [ 1]  377 	ld	a, (0x04, sp)
      008579 88               [ 1]  378 	push	a
      00857A CD BC 5B         [ 4]  379 	call	_UART2_SendData8
      00857D 84               [ 1]  380 	pop	a
                                    381 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 206: while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
      00857E                        382 00101$:
      00857E 4B 80            [ 1]  383 	push	#0x80
      008580 4B 00            [ 1]  384 	push	#0x00
      008582 CD BC B8         [ 4]  385 	call	_UART2_GetFlagStatus
      008585 85               [ 2]  386 	popw	x
      008586 4D               [ 1]  387 	tnz	a
      008587 27 F5            [ 1]  388 	jreq	00101$
                                    389 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 208: return (c);
      008589 1E 03            [ 2]  390 	ldw	x, (0x03, sp)
                                    391 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 210: }
      00858B 81               [ 4]  392 	ret
                                    393 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 217: GETCHAR_PROTOTYPE
                                    394 ;	-----------------------------------------
                                    395 ;	 function getchar
                                    396 ;	-----------------------------------------
      00858C                        397 _getchar:
                                    398 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 225: while (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET);
      00858C                        399 00101$:
      00858C 4B 20            [ 1]  400 	push	#0x20
      00858E 4B 00            [ 1]  401 	push	#0x00
      008590 CD BC B8         [ 4]  402 	call	_UART2_GetFlagStatus
      008593 85               [ 2]  403 	popw	x
      008594 4D               [ 1]  404 	tnz	a
      008595 27 F5            [ 1]  405 	jreq	00101$
                                    406 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 226: c = UART2_ReceiveData8();
      008597 CD BC 3C         [ 4]  407 	call	_UART2_ReceiveData8
      00859A 5F               [ 1]  408 	clrw	x
      00859B 97               [ 1]  409 	ld	xl, a
                                    410 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 227: return (c);
                                    411 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/main.c: 228: }
      00859C 81               [ 4]  412 	ret
                                    413 	.area CODE
                                    414 	.area CONST
                                    415 	.area CONST
      00808C                        416 ___str_0:
      00808C 0A                     417 	.db 0x0a
      00808D 0D                     418 	.db 0x0d
      00808E 66 61 6E 20 73 74 61   419 	.ascii "fan start"
             72 74
      008097 0A                     420 	.db 0x0a
      008098 0D                     421 	.db 0x0d
      008099 00                     422 	.db 0x00
                                    423 	.area CODE
                                    424 	.area INITIALIZER
                                    425 	.area CABS (ABS)
