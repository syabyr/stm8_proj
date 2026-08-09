                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_it
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _cap_handler
                                     12 	.globl _ov_handler
                                     13 	.globl _TIM3_Config
                                     14 	.globl _TIM3_ClearITPendingBit
                                     15 	.globl _TIM3_ClearFlag
                                     16 	.globl _TIM3_SetCounter
                                     17 	.globl _TIM3_ICInit
                                     18 	.globl _GPIO_ReadInputData
                                     19 	.globl _GPIO_WriteReverse
                                     20 	.globl _TRAP_IRQHandler
                                     21 	.globl _TLI_IRQHandler
                                     22 	.globl _AWU_IRQHandler
                                     23 	.globl _CLK_IRQHandler
                                     24 	.globl _EXTI_PORTA_IRQHandler
                                     25 	.globl _EXTI_PORTB_IRQHandler
                                     26 	.globl _EXTI_PORTC_IRQHandler
                                     27 	.globl _EXTI_PORTD_IRQHandler
                                     28 	.globl _EXTI_PORTE_IRQHandler
                                     29 	.globl _SPI_IRQHandler
                                     30 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     31 	.globl _TIM1_CAP_COM_IRQHandler
                                     32 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     33 	.globl _TIM2_CAP_COM_IRQHandler
                                     34 	.globl _TIM3_UPD_OVF_BRK_IRQHandler
                                     35 	.globl _TIM3_CAP_COM_IRQHandler
                                     36 	.globl _I2C_IRQHandler
                                     37 	.globl _UART2_TX_IRQHandler
                                     38 	.globl _UART2_RX_IRQHandler
                                     39 	.globl _ADC1_IRQHandler
                                     40 	.globl _TIM4_UPD_OVF_IRQHandler
                                     41 	.globl _EEPROM_EEC_IRQHandler
                                     42 ;--------------------------------------------------------
                                     43 ; ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area DATA
                                     46 ;--------------------------------------------------------
                                     47 ; ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area INITIALIZED
                                     50 ;--------------------------------------------------------
                                     51 ; absolute external ram data
                                     52 ;--------------------------------------------------------
                                     53 	.area DABS (ABS)
                                     54 
                                     55 ; default segment ordering for linker
                                     56 	.area HOME
                                     57 	.area GSINIT
                                     58 	.area GSFINAL
                                     59 	.area CONST
                                     60 	.area INITIALIZER
                                     61 	.area CODE
                                     62 
                                     63 ;--------------------------------------------------------
                                     64 ; global & static initialisations
                                     65 ;--------------------------------------------------------
                                     66 	.area HOME
                                     67 	.area GSINIT
                                     68 	.area GSFINAL
                                     69 	.area GSINIT
                                     70 ;--------------------------------------------------------
                                     71 ; Home
                                     72 ;--------------------------------------------------------
                                     73 	.area HOME
                                     74 	.area HOME
                                     75 ;--------------------------------------------------------
                                     76 ; code
                                     77 ;--------------------------------------------------------
                                     78 	.area CODE
                                     79 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 65: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     80 ;	-----------------------------------------
                                     81 ;	 function TRAP_IRQHandler
                                     82 ;	-----------------------------------------
      008678                         83 _TRAP_IRQHandler:
                                     84 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 70: }
      008678 80               [11]   85 	iret
                                     86 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 76: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     87 ;	-----------------------------------------
                                     88 ;	 function TLI_IRQHandler
                                     89 ;	-----------------------------------------
      008679                         90 _TLI_IRQHandler:
                                     91 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 80: }
      008679 80               [11]   92 	iret
                                     93 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 87: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
                                     94 ;	-----------------------------------------
                                     95 ;	 function AWU_IRQHandler
                                     96 ;	-----------------------------------------
      00867A                         97 _AWU_IRQHandler:
                                     98 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 92: }
      00867A 80               [11]   99 	iret
                                    100 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 99: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                    101 ;	-----------------------------------------
                                    102 ;	 function CLK_IRQHandler
                                    103 ;	-----------------------------------------
      00867B                        104 _CLK_IRQHandler:
                                    105 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 104: }
      00867B 80               [11]  106 	iret
                                    107 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 111: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                    108 ;	-----------------------------------------
                                    109 ;	 function EXTI_PORTA_IRQHandler
                                    110 ;	-----------------------------------------
      00867C                        111 _EXTI_PORTA_IRQHandler:
                                    112 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 116: }
      00867C 80               [11]  113 	iret
                                    114 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 123: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    115 ;	-----------------------------------------
                                    116 ;	 function EXTI_PORTB_IRQHandler
                                    117 ;	-----------------------------------------
      00867D                        118 _EXTI_PORTB_IRQHandler:
                                    119 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 126: }
      00867D 80               [11]  120 	iret
                                    121 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 133: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    122 ;	-----------------------------------------
                                    123 ;	 function EXTI_PORTC_IRQHandler
                                    124 ;	-----------------------------------------
      00867E                        125 _EXTI_PORTC_IRQHandler:
      00867E 62               [ 2]  126 	div	x, a
                                    127 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 140: GPIO_WriteReverse(LED_PORT, LED_PIN);
      00867F 4B 10            [ 1]  128 	push	#0x10
      008681 4B 19            [ 1]  129 	push	#0x19
      008683 4B 50            [ 1]  130 	push	#0x50
      008685 CD A6 91         [ 4]  131 	call	_GPIO_WriteReverse
      008688 5B 03            [ 2]  132 	addw	sp, #3
                                    133 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 142: }
      00868A 80               [11]  134 	iret
                                    135 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 149: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    136 ;	-----------------------------------------
                                    137 ;	 function EXTI_PORTD_IRQHandler
                                    138 ;	-----------------------------------------
      00868B                        139 _EXTI_PORTD_IRQHandler:
      00868B 62               [ 2]  140 	div	x, a
                                    141 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 154: if ((GPIO_ReadInputData(IR_PORT) & IR_PIN) == 0x00)
      00868C 4B 0F            [ 1]  142 	push	#0x0f
      00868E 4B 50            [ 1]  143 	push	#0x50
      008690 CD A6 9C         [ 4]  144 	call	_GPIO_ReadInputData
      008693 85               [ 2]  145 	popw	x
      008694 A5 04            [ 1]  146 	bcp	a, #0x04
      008696 26 0B            [ 1]  147 	jrne	00102$
                                    148 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 156: GPIO_WriteReverse(LED_PORT, LED_PIN);
      008698 4B 10            [ 1]  149 	push	#0x10
      00869A 4B 19            [ 1]  150 	push	#0x19
      00869C 4B 50            [ 1]  151 	push	#0x50
      00869E CD A6 91         [ 4]  152 	call	_GPIO_WriteReverse
      0086A1 5B 03            [ 2]  153 	addw	sp, #3
      0086A3                        154 00102$:
                                    155 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 158: TIM3_Config();
      0086A3 CD 84 FF         [ 4]  156 	call	_TIM3_Config
                                    157 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 159: }
      0086A6 80               [11]  158 	iret
                                    159 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 166: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    160 ;	-----------------------------------------
                                    161 ;	 function EXTI_PORTE_IRQHandler
                                    162 ;	-----------------------------------------
      0086A7                        163 _EXTI_PORTE_IRQHandler:
                                    164 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 171: }
      0086A7 80               [11]  165 	iret
                                    166 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 217: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    167 ;	-----------------------------------------
                                    168 ;	 function SPI_IRQHandler
                                    169 ;	-----------------------------------------
      0086A8                        170 _SPI_IRQHandler:
                                    171 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 222: }
      0086A8 80               [11]  172 	iret
                                    173 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 229: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    174 ;	-----------------------------------------
                                    175 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    176 ;	-----------------------------------------
      0086A9                        177 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                                    178 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 234: }
      0086A9 80               [11]  179 	iret
                                    180 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 241: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    181 ;	-----------------------------------------
                                    182 ;	 function TIM1_CAP_COM_IRQHandler
                                    183 ;	-----------------------------------------
      0086AA                        184 _TIM1_CAP_COM_IRQHandler:
                                    185 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 246: }
      0086AA 80               [11]  186 	iret
                                    187 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 278: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    188 ;	-----------------------------------------
                                    189 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    190 ;	-----------------------------------------
      0086AB                        191 _TIM2_UPD_OVF_BRK_IRQHandler:
                                    192 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 283: }
      0086AB 80               [11]  193 	iret
                                    194 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 290: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
                                    195 ;	-----------------------------------------
                                    196 ;	 function TIM2_CAP_COM_IRQHandler
                                    197 ;	-----------------------------------------
      0086AC                        198 _TIM2_CAP_COM_IRQHandler:
                                    199 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 295: }
      0086AC 80               [11]  200 	iret
                                    201 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 305: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
                                    202 ;	-----------------------------------------
                                    203 ;	 function TIM3_UPD_OVF_BRK_IRQHandler
                                    204 ;	-----------------------------------------
      0086AD                        205 _TIM3_UPD_OVF_BRK_IRQHandler:
      0086AD 62               [ 2]  206 	div	x, a
                                    207 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 311: ov_handler();
      0086AE CD 85 5F         [ 4]  208 	call	_ov_handler
                                    209 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 312: TIM3_ClearITPendingBit(TIM3_IT_UPDATE);
      0086B1 4B 01            [ 1]  210 	push	#0x01
      0086B3 CD A5 08         [ 4]  211 	call	_TIM3_ClearITPendingBit
      0086B6 84               [ 1]  212 	pop	a
                                    213 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 313: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_FALLING, TIM3_ICSELECTION_DIRECTTI,
      0086B7 4B 00            [ 1]  214 	push	#0x00
      0086B9 4B 00            [ 1]  215 	push	#0x00
      0086BB 4B 01            [ 1]  216 	push	#0x01
      0086BD 4B 44            [ 1]  217 	push	#0x44
      0086BF 4B 00            [ 1]  218 	push	#0x00
      0086C1 CD 9D FE         [ 4]  219 	call	_TIM3_ICInit
      0086C4 5B 05            [ 2]  220 	addw	sp, #5
                                    221 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 315: }
      0086C6 80               [11]  222 	iret
                                    223 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 322: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
                                    224 ;	-----------------------------------------
                                    225 ;	 function TIM3_CAP_COM_IRQHandler
                                    226 ;	-----------------------------------------
      0086C7                        227 _TIM3_CAP_COM_IRQHandler:
      0086C7 62               [ 2]  228 	div	x, a
                                    229 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 327: cap_handler();
      0086C8 CD 85 8E         [ 4]  230 	call	_cap_handler
                                    231 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 330: TIM3_ClearFlag(TIM3_FLAG_CC1);
      0086CB 4B 02            [ 1]  232 	push	#0x02
      0086CD 4B 00            [ 1]  233 	push	#0x00
      0086CF CD A4 94         [ 4]  234 	call	_TIM3_ClearFlag
      0086D2 85               [ 2]  235 	popw	x
                                    236 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 331: TIM3_SetCounter(0);
      0086D3 5F               [ 1]  237 	clrw	x
      0086D4 89               [ 2]  238 	pushw	x
      0086D5 CD A3 72         [ 4]  239 	call	_TIM3_SetCounter
      0086D8 85               [ 2]  240 	popw	x
                                    241 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 332: TIM3_ClearITPendingBit(TIM3_IT_CC1);
      0086D9 4B 02            [ 1]  242 	push	#0x02
      0086DB CD A5 08         [ 4]  243 	call	_TIM3_ClearITPendingBit
      0086DE 84               [ 1]  244 	pop	a
                                    245 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 333: }
      0086DF 80               [11]  246 	iret
                                    247 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 368: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    248 ;	-----------------------------------------
                                    249 ;	 function I2C_IRQHandler
                                    250 ;	-----------------------------------------
      0086E0                        251 _I2C_IRQHandler:
                                    252 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 373: }
      0086E0 80               [11]  253 	iret
                                    254 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 381: INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
                                    255 ;	-----------------------------------------
                                    256 ;	 function UART2_TX_IRQHandler
                                    257 ;	-----------------------------------------
      0086E1                        258 _UART2_TX_IRQHandler:
                                    259 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 386: }
      0086E1 80               [11]  260 	iret
                                    261 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 393: INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
                                    262 ;	-----------------------------------------
                                    263 ;	 function UART2_RX_IRQHandler
                                    264 ;	-----------------------------------------
      0086E2                        265 _UART2_RX_IRQHandler:
                                    266 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 398: }
      0086E2 80               [11]  267 	iret
                                    268 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 448: INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
                                    269 ;	-----------------------------------------
                                    270 ;	 function ADC1_IRQHandler
                                    271 ;	-----------------------------------------
      0086E3                        272 _ADC1_IRQHandler:
                                    273 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 454: return;
                                    274 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 456: }
      0086E3 80               [11]  275 	iret
                                    276 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 477: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    277 ;	-----------------------------------------
                                    278 ;	 function TIM4_UPD_OVF_IRQHandler
                                    279 ;	-----------------------------------------
      0086E4                        280 _TIM4_UPD_OVF_IRQHandler:
                                    281 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 482: }
      0086E4 80               [11]  282 	iret
                                    283 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 490: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    284 ;	-----------------------------------------
                                    285 ;	 function EEPROM_EEC_IRQHandler
                                    286 ;	-----------------------------------------
      0086E5                        287 _EEPROM_EEC_IRQHandler:
                                    288 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 495: }
      0086E5 80               [11]  289 	iret
                                    290 	.area CODE
                                    291 	.area CONST
                                    292 	.area INITIALIZER
                                    293 	.area CABS (ABS)
