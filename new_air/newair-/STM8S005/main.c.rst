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
                                     18 	.globl _TIM4_ClearFlag
                                     19 	.globl _TIM4_ITConfig
                                     20 	.globl _TIM4_Cmd
                                     21 	.globl _TIM4_TimeBaseInit
                                     22 	.globl _TIM3_ClearFlag
                                     23 	.globl _TIM3_ITConfig
                                     24 	.globl _TIM3_Cmd
                                     25 	.globl _TIM3_ICInit
                                     26 	.globl _TIM3_TimeBaseInit
                                     27 	.globl _TIM2_ClearFlag
                                     28 	.globl _TIM2_ITConfig
                                     29 	.globl _TIM2_Cmd
                                     30 	.globl _TIM2_ICInit
                                     31 	.globl _TIM2_TimeBaseInit
                                     32 	.globl _TIM1_CtrlPWMOutputs
                                     33 	.globl _TIM1_Cmd
                                     34 	.globl _TIM1_OC1Init
                                     35 	.globl _TIM1_TimeBaseInit
                                     36 	.globl _TIM1_DeInit
                                     37 	.globl _IWDG_Enable
                                     38 	.globl _IWDG_ReloadCounter
                                     39 	.globl _IWDG_SetReload
                                     40 	.globl _IWDG_SetPrescaler
                                     41 	.globl _IWDG_WriteAccessCmd
                                     42 	.globl _GPIO_ReadInputData
                                     43 	.globl _GPIO_WriteReverse
                                     44 	.globl _GPIO_WriteLow
                                     45 	.globl _GPIO_WriteHigh
                                     46 	.globl _GPIO_Init
                                     47 	.globl _EXTI_SetTLISensitivity
                                     48 	.globl _EXTI_SetExtIntSensitivity
                                     49 	.globl _CLK_HSIPrescalerConfig
                                     50 	.globl _UART2_Config
                                     51 	.globl _TIM1_Config
                                     52 	.globl _TIM2_Config
                                     53 	.globl _TIM3_Config
                                     54 	.globl _TIM4_Config
                                     55 	.globl _IWDG_Config
                                     56 	.globl _putchar
                                     57 	.globl _getchar
                                     58 ;--------------------------------------------------------
                                     59 ; ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area DATA
                                     62 ;--------------------------------------------------------
                                     63 ; ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area INITIALIZED
                                     66 ;--------------------------------------------------------
                                     67 ; Stack segment in internal ram 
                                     68 ;--------------------------------------------------------
                                     69 	.area	SSEG
      00D434                         70 __start__stack:
      00D434                         71 	.ds	1
                                     72 
                                     73 ;--------------------------------------------------------
                                     74 ; absolute external ram data
                                     75 ;--------------------------------------------------------
                                     76 	.area DABS (ABS)
                                     77 
                                     78 ; default segment ordering for linker
                                     79 	.area HOME
                                     80 	.area GSINIT
                                     81 	.area GSFINAL
                                     82 	.area CONST
                                     83 	.area INITIALIZER
                                     84 	.area CODE
                                     85 
                                     86 ;--------------------------------------------------------
                                     87 ; interrupt vector 
                                     88 ;--------------------------------------------------------
                                     89 	.area HOME
      008000                         90 __interrupt_vect:
      008000 82 00 80 6F             91 	int s_GSINIT ; reset
      008004 82 00 87 FB             92 	int _TRAP_IRQHandler ; trap
      008008 82 00 87 FC             93 	int _TLI_IRQHandler ; int0
      00800C 82 00 87 FD             94 	int _AWU_IRQHandler ; int1
      008010 82 00 87 FE             95 	int _CLK_IRQHandler ; int2
      008014 82 00 87 FF             96 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 88 00             97 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 88 01             98 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 88 12             99 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 88 2E            100 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 00 00            101 	int 0x000000 ; int8
      00802C 82 00 00 00            102 	int 0x000000 ; int9
      008030 82 00 88 2F            103 	int _SPI_IRQHandler ; int10
      008034 82 00 88 30            104 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 88 31            105 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 88 32            106 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 88 3D            107 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 88 56            108 	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
      008048 82 00 88 70            109 	int _TIM3_CAP_COM_IRQHandler ; int16
      00804C 82 00 00 00            110 	int 0x000000 ; int17
      008050 82 00 00 00            111 	int 0x000000 ; int18
      008054 82 00 88 89            112 	int _I2C_IRQHandler ; int19
      008058 82 00 88 8A            113 	int _UART2_TX_IRQHandler ; int20
      00805C 82 00 88 8B            114 	int _UART2_RX_IRQHandler ; int21
      008060 82 00 88 8C            115 	int _ADC1_IRQHandler ; int22
      008064 82 00 88 8D            116 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 88 98            117 	int _EEPROM_EEC_IRQHandler ; int24
                                    118 ;--------------------------------------------------------
                                    119 ; global & static initialisations
                                    120 ;--------------------------------------------------------
                                    121 	.area HOME
                                    122 	.area GSINIT
                                    123 	.area GSFINAL
                                    124 	.area GSINIT
      00806F                        125 __sdcc_init_data:
                                    126 ; stm8_genXINIT() start
      00806F AE 00 07         [ 2]  127 	ldw x, #l_DATA
      008072 27 07            [ 1]  128 	jreq	00002$
      008074                        129 00001$:
      008074 72 4F 00 00      [ 1]  130 	clr (s_DATA - 1, x)
      008078 5A               [ 2]  131 	decw x
      008079 26 F9            [ 1]  132 	jrne	00001$
      00807B                        133 00002$:
      00807B AE 00 06         [ 2]  134 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  135 	jreq	00004$
      008080                        136 00003$:
      008080 D6 83 7D         [ 1]  137 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 00 07         [ 1]  138 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  139 	decw	x
      008087 26 F7            [ 1]  140 	jrne	00003$
      008089                        141 00004$:
                                    142 ; stm8_genXINIT() end
                                    143 	.area GSFINAL
      008089 CC 80 6C         [ 2]  144 	jp	__sdcc_program_startup
                                    145 ;--------------------------------------------------------
                                    146 ; Home
                                    147 ;--------------------------------------------------------
                                    148 	.area HOME
                                    149 	.area HOME
      00806C                        150 __sdcc_program_startup:
      00806C CC 86 2F         [ 2]  151 	jp	_main
                                    152 ;	return from main will return to caller
                                    153 ;--------------------------------------------------------
                                    154 ; code
                                    155 ;--------------------------------------------------------
                                    156 	.area CODE
                                    157 ;	./src/main.c: 69: void main(void)
                                    158 ;	-----------------------------------------
                                    159 ;	 function main
                                    160 ;	-----------------------------------------
      00862F                        161 _main:
                                    162 ;	./src/main.c: 73: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
      00862F 4B 00            [ 1]  163 	push	#0x00
      008631 CD 94 27         [ 4]  164 	call	_CLK_HSIPrescalerConfig
      008634 84               [ 1]  165 	pop	a
                                    166 ;	./src/main.c: 75: GPIO_Config();  
      008635 CD 86 93         [ 4]  167 	call	_GPIO_Config
                                    168 ;	./src/main.c: 79: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC, EXTI_SENSITIVITY_RISE_FALL);
      008638 4B 03            [ 1]  169 	push	#0x03
      00863A 4B 02            [ 1]  170 	push	#0x02
      00863C CD C5 66         [ 4]  171 	call	_EXTI_SetExtIntSensitivity
      00863F 85               [ 2]  172 	popw	x
                                    173 ;	./src/main.c: 81: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD, EXTI_SENSITIVITY_FALL_ONLY);
      008640 4B 02            [ 1]  174 	push	#0x02
      008642 4B 03            [ 1]  175 	push	#0x03
      008644 CD C5 66         [ 4]  176 	call	_EXTI_SetExtIntSensitivity
      008647 85               [ 2]  177 	popw	x
                                    178 ;	./src/main.c: 82: EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);
      008648 4B 00            [ 1]  179 	push	#0x00
      00864A CD C6 44         [ 4]  180 	call	_EXTI_SetTLISensitivity
      00864D 84               [ 1]  181 	pop	a
                                    182 ;	./src/main.c: 86: GPIO_WriteReverse(LED_PORT, LED_PIN);
      00864E 4B 10            [ 1]  183 	push	#0x10
      008650 4B 19            [ 1]  184 	push	#0x19
      008652 4B 50            [ 1]  185 	push	#0x50
      008654 CD C4 FF         [ 4]  186 	call	_GPIO_WriteReverse
      008657 5B 03            [ 2]  187 	addw	sp, #3
                                    188 ;	./src/main.c: 88: UART2_Config();
      008659 CD 86 D5         [ 4]  189 	call	_UART2_Config
                                    190 ;	./src/main.c: 89: TIM1_Config();
      00865C CD 86 F8         [ 4]  191 	call	_TIM1_Config
                                    192 ;	./src/main.c: 90: TIM2_Config();
      00865F CD 87 2E         [ 4]  193 	call	_TIM2_Config
                                    194 ;	./src/main.c: 91: TIM3_Config();
      008662 CD 87 67         [ 4]  195 	call	_TIM3_Config
                                    196 ;	./src/main.c: 92: TIM4_Config();
      008665 CD 87 A0         [ 4]  197 	call	_TIM4_Config
                                    198 ;	./src/main.c: 94: fan_init();
      008668 CD 83 AC         [ 4]  199 	call	_fan_init
                                    200 ;	./src/main.c: 96: enableInterrupts();
      00866B 9A               [ 1]  201 	rim
                                    202 ;	./src/main.c: 100: while (1)
      00866C                        203 00105$:
                                    204 ;	./src/main.c: 102: if ((GPIO_ReadInputData(FAN_SENSE_PORT) & FAN_SENSE_PIN) == 0x00)
      00866C 4B 0F            [ 1]  205 	push	#0x0f
      00866E 4B 50            [ 1]  206 	push	#0x50
      008670 CD C5 0A         [ 4]  207 	call	_GPIO_ReadInputData
      008673 85               [ 2]  208 	popw	x
      008674 A5 10            [ 1]  209 	bcp	a, #0x10
      008676 26 0D            [ 1]  210 	jrne	00102$
                                    211 ;	./src/main.c: 104: GPIO_WriteLow(LED_PORT,LED_PIN);
      008678 4B 10            [ 1]  212 	push	#0x10
      00867A 4B 19            [ 1]  213 	push	#0x19
      00867C 4B 50            [ 1]  214 	push	#0x50
      00867E CD C4 F1         [ 4]  215 	call	_GPIO_WriteLow
      008681 5B 03            [ 2]  216 	addw	sp, #3
      008683 20 E7            [ 2]  217 	jra	00105$
      008685                        218 00102$:
                                    219 ;	./src/main.c: 108: GPIO_WriteHigh(LED_PORT,LED_PIN);
      008685 4B 10            [ 1]  220 	push	#0x10
      008687 4B 19            [ 1]  221 	push	#0x19
      008689 4B 50            [ 1]  222 	push	#0x50
      00868B CD C4 EA         [ 4]  223 	call	_GPIO_WriteHigh
      00868E 5B 03            [ 2]  224 	addw	sp, #3
      008690 20 DA            [ 2]  225 	jra	00105$
                                    226 ;	./src/main.c: 119: }
      008692 81               [ 4]  227 	ret
                                    228 ;	./src/main.c: 122: static void GPIO_Config(void)
                                    229 ;	-----------------------------------------
                                    230 ;	 function GPIO_Config
                                    231 ;	-----------------------------------------
      008693                        232 _GPIO_Config:
                                    233 ;	./src/main.c: 125: GPIO_Init(LED_PORT, (GPIO_Pin_TypeDef)(LED_PIN),GPIO_MODE_OUT_PP_HIGH_FAST);
      008693 4B F0            [ 1]  234 	push	#0xf0
      008695 4B 10            [ 1]  235 	push	#0x10
      008697 4B 19            [ 1]  236 	push	#0x19
      008699 4B 50            [ 1]  237 	push	#0x50
      00869B CD C4 07         [ 4]  238 	call	_GPIO_Init
      00869E 5B 04            [ 2]  239 	addw	sp, #4
                                    240 ;	./src/main.c: 128: GPIO_Init(KEY_PORT, (GPIO_Pin_TypeDef)(KEY_PIN),GPIO_MODE_IN_FL_IT);
      0086A0 4B 20            [ 1]  241 	push	#0x20
      0086A2 4B 08            [ 1]  242 	push	#0x08
      0086A4 4B 0A            [ 1]  243 	push	#0x0a
      0086A6 4B 50            [ 1]  244 	push	#0x50
      0086A8 CD C4 07         [ 4]  245 	call	_GPIO_Init
      0086AB 5B 04            [ 2]  246 	addw	sp, #4
                                    247 ;	./src/main.c: 131: GPIO_Init(IR_PORT, (GPIO_Pin_TypeDef)(IR_PIN),GPIO_MODE_IN_FL_NO_IT);
      0086AD 4B 00            [ 1]  248 	push	#0x00
      0086AF 4B 04            [ 1]  249 	push	#0x04
      0086B1 4B 0F            [ 1]  250 	push	#0x0f
      0086B3 4B 50            [ 1]  251 	push	#0x50
      0086B5 CD C4 07         [ 4]  252 	call	_GPIO_Init
      0086B8 5B 04            [ 2]  253 	addw	sp, #4
                                    254 ;	./src/main.c: 134: GPIO_Init(FAN_SENSE_PORT,(GPIO_Pin_TypeDef)(FAN_SENSE_PIN),GPIO_MODE_IN_FL_NO_IT);
      0086BA 4B 00            [ 1]  255 	push	#0x00
      0086BC 4B 10            [ 1]  256 	push	#0x10
      0086BE 4B 0F            [ 1]  257 	push	#0x0f
      0086C0 4B 50            [ 1]  258 	push	#0x50
      0086C2 CD C4 07         [ 4]  259 	call	_GPIO_Init
      0086C5 5B 04            [ 2]  260 	addw	sp, #4
                                    261 ;	./src/main.c: 137: GPIO_Init(FAN_PORT, (GPIO_Pin_TypeDef)(FAN_SW_PIN),GPIO_MODE_OUT_PP_HIGH_FAST);
      0086C7 4B F0            [ 1]  262 	push	#0xf0
      0086C9 4B 04            [ 1]  263 	push	#0x04
      0086CB 4B 0A            [ 1]  264 	push	#0x0a
      0086CD 4B 50            [ 1]  265 	push	#0x50
      0086CF CD C4 07         [ 4]  266 	call	_GPIO_Init
      0086D2 5B 04            [ 2]  267 	addw	sp, #4
                                    268 ;	./src/main.c: 139: }
      0086D4 81               [ 4]  269 	ret
                                    270 ;	./src/main.c: 142: void UART2_Config(void)
                                    271 ;	-----------------------------------------
                                    272 ;	 function UART2_Config
                                    273 ;	-----------------------------------------
      0086D5                        274 _UART2_Config:
                                    275 ;	./src/main.c: 144: UART2_DeInit();
      0086D5 CD 88 99         [ 4]  276 	call	_UART2_DeInit
                                    277 ;	./src/main.c: 154: UART2_Init((uint32_t)115200, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO,
      0086D8 4B 0C            [ 1]  278 	push	#0x0c
      0086DA 4B 80            [ 1]  279 	push	#0x80
      0086DC 4B 00            [ 1]  280 	push	#0x00
      0086DE 4B 00            [ 1]  281 	push	#0x00
      0086E0 4B 00            [ 1]  282 	push	#0x00
      0086E2 4B 00            [ 1]  283 	push	#0x00
      0086E4 4B C2            [ 1]  284 	push	#0xc2
      0086E6 4B 01            [ 1]  285 	push	#0x01
      0086E8 4B 00            [ 1]  286 	push	#0x00
      0086EA CD 88 C0         [ 4]  287 	call	_UART2_Init
      0086ED 5B 09            [ 2]  288 	addw	sp, #9
                                    289 ;	./src/main.c: 158: printf("\n\rfan start\n\r");
      0086EF 4B CE            [ 1]  290 	push	#<(___str_0+0)
      0086F1 4B 80            [ 1]  291 	push	#((___str_0+0) >> 8)
      0086F3 CD CD 39         [ 4]  292 	call	_printf
      0086F6 85               [ 2]  293 	popw	x
                                    294 ;	./src/main.c: 159: }
      0086F7 81               [ 4]  295 	ret
                                    296 ;	./src/main.c: 163: void TIM1_Config(void)
                                    297 ;	-----------------------------------------
                                    298 ;	 function TIM1_Config
                                    299 ;	-----------------------------------------
      0086F8                        300 _TIM1_Config:
                                    301 ;	./src/main.c: 165: TIM1_DeInit();
      0086F8 CD 97 8C         [ 4]  302 	call	_TIM1_DeInit
                                    303 ;	./src/main.c: 167: TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 3200, 0);
      0086FB 4B 00            [ 1]  304 	push	#0x00
      0086FD 4B 80            [ 1]  305 	push	#0x80
      0086FF 4B 0C            [ 1]  306 	push	#0x0c
      008701 4B 00            [ 1]  307 	push	#0x00
      008703 5F               [ 1]  308 	clrw	x
      008704 89               [ 2]  309 	pushw	x
      008705 CD 98 25         [ 4]  310 	call	_TIM1_TimeBaseInit
      008708 5B 06            [ 2]  311 	addw	sp, #6
                                    312 ;	./src/main.c: 169: TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_ENABLE,
      00870A 4B 00            [ 1]  313 	push	#0x00
      00870C 4B 55            [ 1]  314 	push	#0x55
      00870E 4B 00            [ 1]  315 	push	#0x00
      008710 4B 22            [ 1]  316 	push	#0x22
      008712 4B 1C            [ 1]  317 	push	#0x1c
      008714 4B 0C            [ 1]  318 	push	#0x0c
      008716 4B 44            [ 1]  319 	push	#0x44
      008718 4B 11            [ 1]  320 	push	#0x11
      00871A 4B 70            [ 1]  321 	push	#0x70
      00871C CD 98 76         [ 4]  322 	call	_TIM1_OC1Init
      00871F 5B 09            [ 2]  323 	addw	sp, #9
                                    324 ;	./src/main.c: 172: TIM1_Cmd(ENABLE);
      008721 4B 01            [ 1]  325 	push	#0x01
      008723 CD 9F 75         [ 4]  326 	call	_TIM1_Cmd
      008726 84               [ 1]  327 	pop	a
                                    328 ;	./src/main.c: 173: TIM1_CtrlPWMOutputs(ENABLE);
      008727 4B 01            [ 1]  329 	push	#0x01
      008729 CD 9F A0         [ 4]  330 	call	_TIM1_CtrlPWMOutputs
      00872C 84               [ 1]  331 	pop	a
                                    332 ;	./src/main.c: 174: }
      00872D 81               [ 4]  333 	ret
                                    334 ;	./src/main.c: 177: void TIM2_Config(void)
                                    335 ;	-----------------------------------------
                                    336 ;	 function TIM2_Config
                                    337 ;	-----------------------------------------
      00872E                        338 _TIM2_Config:
                                    339 ;	./src/main.c: 180: TIM2_TimeBaseInit(TIM2_PRESCALER_16,60000-1);
      00872E 4B 5F            [ 1]  340 	push	#0x5f
      008730 4B EA            [ 1]  341 	push	#0xea
      008732 4B 04            [ 1]  342 	push	#0x04
      008734 CD AD 77         [ 4]  343 	call	_TIM2_TimeBaseInit
      008737 5B 03            [ 2]  344 	addw	sp, #3
                                    345 ;	./src/main.c: 181: TIM2_ICInit( TIM2_CHANNEL_1, TIM2_ICPOLARITY_FALLING, TIM2_ICSELECTION_DIRECTTI,
      008739 4B 00            [ 1]  346 	push	#0x00
      00873B 4B 00            [ 1]  347 	push	#0x00
      00873D 4B 01            [ 1]  348 	push	#0x01
      00873F 4B 44            [ 1]  349 	push	#0x44
      008741 4B 00            [ 1]  350 	push	#0x00
      008743 CD AF 50         [ 4]  351 	call	_TIM2_ICInit
      008746 5B 05            [ 2]  352 	addw	sp, #5
                                    353 ;	./src/main.c: 183: TIM2_ClearFlag(TIM2_FLAG_CC1);
      008748 4B 02            [ 1]  354 	push	#0x02
      00874A 4B 00            [ 1]  355 	push	#0x00
      00874C CD B7 28         [ 4]  356 	call	_TIM2_ClearFlag
      00874F 85               [ 2]  357 	popw	x
                                    358 ;	./src/main.c: 184: TIM2_ITConfig(TIM2_IT_UPDATE,ENABLE);
      008750 4B 01            [ 1]  359 	push	#0x01
      008752 4B 01            [ 1]  360 	push	#0x01
      008754 CD B1 66         [ 4]  361 	call	_TIM2_ITConfig
      008757 85               [ 2]  362 	popw	x
                                    363 ;	./src/main.c: 185: TIM2_ITConfig(TIM2_IT_CC1,ENABLE);
      008758 4B 01            [ 1]  364 	push	#0x01
      00875A 4B 02            [ 1]  365 	push	#0x02
      00875C CD B1 66         [ 4]  366 	call	_TIM2_ITConfig
      00875F 85               [ 2]  367 	popw	x
                                    368 ;	./src/main.c: 186: TIM2_Cmd(ENABLE);
      008760 4B 01            [ 1]  369 	push	#0x01
      008762 CD B1 3B         [ 4]  370 	call	_TIM2_Cmd
      008765 84               [ 1]  371 	pop	a
                                    372 ;	./src/main.c: 188: }
      008766 81               [ 4]  373 	ret
                                    374 ;	./src/main.c: 191: void TIM3_Config(void)
                                    375 ;	-----------------------------------------
                                    376 ;	 function TIM3_Config
                                    377 ;	-----------------------------------------
      008767                        378 _TIM3_Config:
                                    379 ;	./src/main.c: 193: TIM3_TimeBaseInit(TIM3_PRESCALER_16,60000-1);
      008767 4B 5F            [ 1]  380 	push	#0x5f
      008769 4B EA            [ 1]  381 	push	#0xea
      00876B 4B 04            [ 1]  382 	push	#0x04
      00876D CD B8 92         [ 4]  383 	call	_TIM3_TimeBaseInit
      008770 5B 03            [ 2]  384 	addw	sp, #3
                                    385 ;	./src/main.c: 195: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_FALLING, TIM3_ICSELECTION_DIRECTTI,
      008772 4B 00            [ 1]  386 	push	#0x00
      008774 4B 00            [ 1]  387 	push	#0x00
      008776 4B 01            [ 1]  388 	push	#0x01
      008778 4B 44            [ 1]  389 	push	#0x44
      00877A 4B 00            [ 1]  390 	push	#0x00
      00877C CD B9 D3         [ 4]  391 	call	_TIM3_ICInit
      00877F 5B 05            [ 2]  392 	addw	sp, #5
                                    393 ;	./src/main.c: 198: TIM3_ClearFlag(TIM3_FLAG_CC1);
      008781 4B 02            [ 1]  394 	push	#0x02
      008783 4B 00            [ 1]  395 	push	#0x00
      008785 CD C0 69         [ 4]  396 	call	_TIM3_ClearFlag
      008788 85               [ 2]  397 	popw	x
                                    398 ;	./src/main.c: 199: TIM3_ITConfig(TIM3_IT_UPDATE,ENABLE);
      008789 4B 01            [ 1]  399 	push	#0x01
      00878B 4B 01            [ 1]  400 	push	#0x01
      00878D CD BB D5         [ 4]  401 	call	_TIM3_ITConfig
      008790 85               [ 2]  402 	popw	x
                                    403 ;	./src/main.c: 200: TIM3_ITConfig(TIM3_IT_CC1,ENABLE);
      008791 4B 01            [ 1]  404 	push	#0x01
      008793 4B 02            [ 1]  405 	push	#0x02
      008795 CD BB D5         [ 4]  406 	call	_TIM3_ITConfig
      008798 85               [ 2]  407 	popw	x
                                    408 ;	./src/main.c: 201: TIM3_Cmd(ENABLE);
      008799 4B 01            [ 1]  409 	push	#0x01
      00879B CD BB AA         [ 4]  410 	call	_TIM3_Cmd
      00879E 84               [ 1]  411 	pop	a
                                    412 ;	./src/main.c: 202: }
      00879F 81               [ 4]  413 	ret
                                    414 ;	./src/main.c: 205: void TIM4_Config(void)
                                    415 ;	-----------------------------------------
                                    416 ;	 function TIM4_Config
                                    417 ;	-----------------------------------------
      0087A0                        418 _TIM4_Config:
                                    419 ;	./src/main.c: 207: TIM4_TimeBaseInit(TIM4_PRESCALER_128,250-1);  //2ms中断一次
      0087A0 4B F9            [ 1]  420 	push	#0xf9
      0087A2 4B 07            [ 1]  421 	push	#0x07
      0087A4 CD C1 78         [ 4]  422 	call	_TIM4_TimeBaseInit
      0087A7 85               [ 2]  423 	popw	x
                                    424 ;	./src/main.c: 208: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
      0087A8 4B 01            [ 1]  425 	push	#0x01
      0087AA CD C3 93         [ 4]  426 	call	_TIM4_ClearFlag
      0087AD 84               [ 1]  427 	pop	a
                                    428 ;	./src/main.c: 209: TIM4_ITConfig(TIM4_IT_UPDATE,ENABLE);
      0087AE 4B 01            [ 1]  429 	push	#0x01
      0087B0 4B 01            [ 1]  430 	push	#0x01
      0087B2 CD C1 EC         [ 4]  431 	call	_TIM4_ITConfig
      0087B5 85               [ 2]  432 	popw	x
                                    433 ;	./src/main.c: 210: TIM4_Cmd(ENABLE);
      0087B6 4B 01            [ 1]  434 	push	#0x01
      0087B8 CD C1 C1         [ 4]  435 	call	_TIM4_Cmd
      0087BB 84               [ 1]  436 	pop	a
                                    437 ;	./src/main.c: 211: }
      0087BC 81               [ 4]  438 	ret
                                    439 ;	./src/main.c: 213: void IWDG_Config(void)
                                    440 ;	-----------------------------------------
                                    441 ;	 function IWDG_Config
                                    442 ;	-----------------------------------------
      0087BD                        443 _IWDG_Config:
                                    444 ;	./src/main.c: 215: IWDG_Enable();
      0087BD CD C7 56         [ 4]  445 	call	_IWDG_Enable
                                    446 ;	./src/main.c: 216: IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);
      0087C0 4B 55            [ 1]  447 	push	#0x55
      0087C2 CD C6 ED         [ 4]  448 	call	_IWDG_WriteAccessCmd
      0087C5 84               [ 1]  449 	pop	a
                                    450 ;	./src/main.c: 217: IWDG_SetPrescaler(IWDG_Prescaler_128);
      0087C6 4B 05            [ 1]  451 	push	#0x05
      0087C8 CD C7 0D         [ 4]  452 	call	_IWDG_SetPrescaler
      0087CB 84               [ 1]  453 	pop	a
                                    454 ;	./src/main.c: 220: IWDG_SetReload(255);
      0087CC 4B FF            [ 1]  455 	push	#0xff
      0087CE CD C7 4A         [ 4]  456 	call	_IWDG_SetReload
      0087D1 84               [ 1]  457 	pop	a
                                    458 ;	./src/main.c: 221: IWDG_ReloadCounter();
                                    459 ;	./src/main.c: 222: }
      0087D2 CC C7 51         [ 2]  460 	jp	_IWDG_ReloadCounter
                                    461 ;	./src/main.c: 229: PUTCHAR_PROTOTYPE
                                    462 ;	-----------------------------------------
                                    463 ;	 function putchar
                                    464 ;	-----------------------------------------
      0087D5                        465 _putchar:
                                    466 ;	./src/main.c: 232: UART2_SendData8(c);
      0087D5 7B 04            [ 1]  467 	ld	a, (0x04, sp)
      0087D7 88               [ 1]  468 	push	a
      0087D8 CD 8E 02         [ 4]  469 	call	_UART2_SendData8
      0087DB 84               [ 1]  470 	pop	a
                                    471 ;	./src/main.c: 234: while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
      0087DC                        472 00101$:
      0087DC 4B 80            [ 1]  473 	push	#0x80
      0087DE 4B 00            [ 1]  474 	push	#0x00
      0087E0 CD 8E 5F         [ 4]  475 	call	_UART2_GetFlagStatus
      0087E3 85               [ 2]  476 	popw	x
      0087E4 4D               [ 1]  477 	tnz	a
      0087E5 27 F5            [ 1]  478 	jreq	00101$
                                    479 ;	./src/main.c: 236: return (c);
      0087E7 1E 03            [ 2]  480 	ldw	x, (0x03, sp)
                                    481 ;	./src/main.c: 238: }
      0087E9 81               [ 4]  482 	ret
                                    483 ;	./src/main.c: 245: GETCHAR_PROTOTYPE
                                    484 ;	-----------------------------------------
                                    485 ;	 function getchar
                                    486 ;	-----------------------------------------
      0087EA                        487 _getchar:
                                    488 ;	./src/main.c: 253: while (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET);
      0087EA                        489 00101$:
      0087EA 4B 20            [ 1]  490 	push	#0x20
      0087EC 4B 00            [ 1]  491 	push	#0x00
      0087EE CD 8E 5F         [ 4]  492 	call	_UART2_GetFlagStatus
      0087F1 85               [ 2]  493 	popw	x
      0087F2 4D               [ 1]  494 	tnz	a
      0087F3 27 F5            [ 1]  495 	jreq	00101$
                                    496 ;	./src/main.c: 254: c = UART2_ReceiveData8();
      0087F5 CD 8D E3         [ 4]  497 	call	_UART2_ReceiveData8
      0087F8 5F               [ 1]  498 	clrw	x
      0087F9 97               [ 1]  499 	ld	xl, a
                                    500 ;	./src/main.c: 255: return (c);
                                    501 ;	./src/main.c: 256: }
      0087FA 81               [ 4]  502 	ret
                                    503 	.area CODE
                                    504 	.area CONST
                                    505 	.area CONST
      0080CE                        506 ___str_0:
      0080CE 0A                     507 	.db 0x0a
      0080CF 0D                     508 	.db 0x0d
      0080D0 66 61 6E 20 73 74 61   509 	.ascii "fan start"
             72 74
      0080D9 0A                     510 	.db 0x0a
      0080DA 0D                     511 	.db 0x0d
      0080DB 00                     512 	.db 0x00
                                    513 	.area CODE
                                    514 	.area INITIALIZER
                                    515 	.area CABS (ABS)
