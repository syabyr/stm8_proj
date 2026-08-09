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
                                     11 	.globl _fan_sw
                                     12 	.globl _cap_handler
                                     13 	.globl _ov_handler
                                     14 	.globl _TIM3_Config
                                     15 	.globl _TIM3_ClearITPendingBit
                                     16 	.globl _TIM3_ClearFlag
                                     17 	.globl _TIM3_SetCounter
                                     18 	.globl _TIM3_ICInit
                                     19 	.globl _GPIO_ReadInputData
                                     20 	.globl _GPIO_WriteReverse
                                     21 	.globl _TRAP_IRQHandler
                                     22 	.globl _TLI_IRQHandler
                                     23 	.globl _AWU_IRQHandler
                                     24 	.globl _CLK_IRQHandler
                                     25 	.globl _EXTI_PORTA_IRQHandler
                                     26 	.globl _EXTI_PORTB_IRQHandler
                                     27 	.globl _EXTI_PORTC_IRQHandler
                                     28 	.globl _EXTI_PORTD_IRQHandler
                                     29 	.globl _EXTI_PORTE_IRQHandler
                                     30 	.globl _SPI_IRQHandler
                                     31 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     32 	.globl _TIM1_CAP_COM_IRQHandler
                                     33 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     34 	.globl _TIM2_CAP_COM_IRQHandler
                                     35 	.globl _TIM3_UPD_OVF_BRK_IRQHandler
                                     36 	.globl _TIM3_CAP_COM_IRQHandler
                                     37 	.globl _I2C_IRQHandler
                                     38 	.globl _UART2_TX_IRQHandler
                                     39 	.globl _UART2_RX_IRQHandler
                                     40 	.globl _ADC1_IRQHandler
                                     41 	.globl _TIM4_UPD_OVF_IRQHandler
                                     42 	.globl _EEPROM_EEC_IRQHandler
                                     43 ;--------------------------------------------------------
                                     44 ; ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area DATA
                                     47 ;--------------------------------------------------------
                                     48 ; ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area INITIALIZED
                                     51 ;--------------------------------------------------------
                                     52 ; absolute external ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area DABS (ABS)
                                     55 
                                     56 ; default segment ordering for linker
                                     57 	.area HOME
                                     58 	.area GSINIT
                                     59 	.area GSFINAL
                                     60 	.area CONST
                                     61 	.area INITIALIZER
                                     62 	.area CODE
                                     63 
                                     64 ;--------------------------------------------------------
                                     65 ; global & static initialisations
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME
                                     68 	.area GSINIT
                                     69 	.area GSFINAL
                                     70 	.area GSINIT
                                     71 ;--------------------------------------------------------
                                     72 ; Home
                                     73 ;--------------------------------------------------------
                                     74 	.area HOME
                                     75 	.area HOME
                                     76 ;--------------------------------------------------------
                                     77 ; code
                                     78 ;--------------------------------------------------------
                                     79 	.area CODE
                                     80 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 66: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     81 ;	-----------------------------------------
                                     82 ;	 function TRAP_IRQHandler
                                     83 ;	-----------------------------------------
      008714                         84 _TRAP_IRQHandler:
                                     85 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 71: }
      008714 80               [11]   86 	iret
                                     87 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 77: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     88 ;	-----------------------------------------
                                     89 ;	 function TLI_IRQHandler
                                     90 ;	-----------------------------------------
      008715                         91 _TLI_IRQHandler:
                                     92 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 81: }
      008715 80               [11]   93 	iret
                                     94 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 88: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
                                     95 ;	-----------------------------------------
                                     96 ;	 function AWU_IRQHandler
                                     97 ;	-----------------------------------------
      008716                         98 _AWU_IRQHandler:
                                     99 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 93: }
      008716 80               [11]  100 	iret
                                    101 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 100: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                    102 ;	-----------------------------------------
                                    103 ;	 function CLK_IRQHandler
                                    104 ;	-----------------------------------------
      008717                        105 _CLK_IRQHandler:
                                    106 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 105: }
      008717 80               [11]  107 	iret
                                    108 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 112: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                    109 ;	-----------------------------------------
                                    110 ;	 function EXTI_PORTA_IRQHandler
                                    111 ;	-----------------------------------------
      008718                        112 _EXTI_PORTA_IRQHandler:
                                    113 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 117: }
      008718 80               [11]  114 	iret
                                    115 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 124: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    116 ;	-----------------------------------------
                                    117 ;	 function EXTI_PORTB_IRQHandler
                                    118 ;	-----------------------------------------
      008719                        119 _EXTI_PORTB_IRQHandler:
                                    120 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 127: }
      008719 80               [11]  121 	iret
                                    122 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 134: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    123 ;	-----------------------------------------
                                    124 ;	 function EXTI_PORTC_IRQHandler
                                    125 ;	-----------------------------------------
      00871A                        126 _EXTI_PORTC_IRQHandler:
      00871A 62               [ 2]  127 	div	x, a
                                    128 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 139: if ((GPIO_ReadInputData(KEY_PORT) & KEY_PIN) == 0x00)
      00871B 4B 0A            [ 1]  129 	push	#0x0a
      00871D 4B 50            [ 1]  130 	push	#0x50
      00871F CD B5 0F         [ 4]  131 	call	_GPIO_ReadInputData
      008722 85               [ 2]  132 	popw	x
      008723 A5 08            [ 1]  133 	bcp	a, #0x08
      008725 26 0E            [ 1]  134 	jrne	00103$
                                    135 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 141: GPIO_WriteReverse(LED_PORT, LED_PIN);
      008727 4B 10            [ 1]  136 	push	#0x10
      008729 4B 19            [ 1]  137 	push	#0x19
      00872B 4B 50            [ 1]  138 	push	#0x50
      00872D CD B5 04         [ 4]  139 	call	_GPIO_WriteReverse
      008730 5B 03            [ 2]  140 	addw	sp, #3
                                    141 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 142: fan_sw();
      008732 CD 86 DA         [ 4]  142 	call	_fan_sw
      008735                        143 00103$:
                                    144 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 144: }
      008735 80               [11]  145 	iret
                                    146 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 151: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    147 ;	-----------------------------------------
                                    148 ;	 function EXTI_PORTD_IRQHandler
                                    149 ;	-----------------------------------------
      008736                        150 _EXTI_PORTD_IRQHandler:
      008736 62               [ 2]  151 	div	x, a
                                    152 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 156: if ((GPIO_ReadInputData(IR_PORT) & IR_PIN) == 0x00)
      008737 4B 0F            [ 1]  153 	push	#0x0f
      008739 4B 50            [ 1]  154 	push	#0x50
      00873B CD B5 0F         [ 4]  155 	call	_GPIO_ReadInputData
      00873E 85               [ 2]  156 	popw	x
      00873F A5 04            [ 1]  157 	bcp	a, #0x04
      008741 26 0B            [ 1]  158 	jrne	00102$
                                    159 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 158: GPIO_WriteReverse(LED_PORT, LED_PIN);
      008743 4B 10            [ 1]  160 	push	#0x10
      008745 4B 19            [ 1]  161 	push	#0x19
      008747 4B 50            [ 1]  162 	push	#0x50
      008749 CD B5 04         [ 4]  163 	call	_GPIO_WriteReverse
      00874C 5B 03            [ 2]  164 	addw	sp, #3
      00874E                        165 00102$:
                                    166 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 160: TIM3_Config();
      00874E CD 85 1D         [ 4]  167 	call	_TIM3_Config
                                    168 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 161: }
      008751 80               [11]  169 	iret
                                    170 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 168: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    171 ;	-----------------------------------------
                                    172 ;	 function EXTI_PORTE_IRQHandler
                                    173 ;	-----------------------------------------
      008752                        174 _EXTI_PORTE_IRQHandler:
                                    175 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 173: }
      008752 80               [11]  176 	iret
                                    177 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 219: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    178 ;	-----------------------------------------
                                    179 ;	 function SPI_IRQHandler
                                    180 ;	-----------------------------------------
      008753                        181 _SPI_IRQHandler:
                                    182 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 224: }
      008753 80               [11]  183 	iret
                                    184 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 231: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    185 ;	-----------------------------------------
                                    186 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    187 ;	-----------------------------------------
      008754                        188 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                                    189 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 236: }
      008754 80               [11]  190 	iret
                                    191 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 243: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    192 ;	-----------------------------------------
                                    193 ;	 function TIM1_CAP_COM_IRQHandler
                                    194 ;	-----------------------------------------
      008755                        195 _TIM1_CAP_COM_IRQHandler:
                                    196 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 248: }
      008755 80               [11]  197 	iret
                                    198 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 280: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    199 ;	-----------------------------------------
                                    200 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    201 ;	-----------------------------------------
      008756                        202 _TIM2_UPD_OVF_BRK_IRQHandler:
                                    203 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 285: }
      008756 80               [11]  204 	iret
                                    205 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 292: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
                                    206 ;	-----------------------------------------
                                    207 ;	 function TIM2_CAP_COM_IRQHandler
                                    208 ;	-----------------------------------------
      008757                        209 _TIM2_CAP_COM_IRQHandler:
                                    210 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 297: }
      008757 80               [11]  211 	iret
                                    212 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 307: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
                                    213 ;	-----------------------------------------
                                    214 ;	 function TIM3_UPD_OVF_BRK_IRQHandler
                                    215 ;	-----------------------------------------
      008758                        216 _TIM3_UPD_OVF_BRK_IRQHandler:
      008758 62               [ 2]  217 	div	x, a
                                    218 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 313: ov_handler();
      008759 CD 85 A0         [ 4]  219 	call	_ov_handler
                                    220 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 314: TIM3_ClearITPendingBit(TIM3_IT_UPDATE);
      00875C 4B 01            [ 1]  221 	push	#0x01
      00875E CD B0 E2         [ 4]  222 	call	_TIM3_ClearITPendingBit
      008761 84               [ 1]  223 	pop	a
                                    224 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 315: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_FALLING, TIM3_ICSELECTION_DIRECTTI,
      008762 4B 00            [ 1]  225 	push	#0x00
      008764 4B 00            [ 1]  226 	push	#0x00
      008766 4B 01            [ 1]  227 	push	#0x01
      008768 4B 44            [ 1]  228 	push	#0x44
      00876A 4B 00            [ 1]  229 	push	#0x00
      00876C CD A9 D8         [ 4]  230 	call	_TIM3_ICInit
      00876F 5B 05            [ 2]  231 	addw	sp, #5
                                    232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 317: }
      008771 80               [11]  233 	iret
                                    234 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 324: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
                                    235 ;	-----------------------------------------
                                    236 ;	 function TIM3_CAP_COM_IRQHandler
                                    237 ;	-----------------------------------------
      008772                        238 _TIM3_CAP_COM_IRQHandler:
      008772 62               [ 2]  239 	div	x, a
                                    240 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 329: cap_handler();
      008773 CD 85 CF         [ 4]  241 	call	_cap_handler
                                    242 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 332: TIM3_ClearFlag(TIM3_FLAG_CC1);
      008776 4B 02            [ 1]  243 	push	#0x02
      008778 4B 00            [ 1]  244 	push	#0x00
      00877A CD B0 6E         [ 4]  245 	call	_TIM3_ClearFlag
      00877D 85               [ 2]  246 	popw	x
                                    247 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 333: TIM3_SetCounter(0);
      00877E 5F               [ 1]  248 	clrw	x
      00877F 89               [ 2]  249 	pushw	x
      008780 CD AF 4C         [ 4]  250 	call	_TIM3_SetCounter
      008783 85               [ 2]  251 	popw	x
                                    252 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 334: TIM3_ClearITPendingBit(TIM3_IT_CC1);
      008784 4B 02            [ 1]  253 	push	#0x02
      008786 CD B0 E2         [ 4]  254 	call	_TIM3_ClearITPendingBit
      008789 84               [ 1]  255 	pop	a
                                    256 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 335: }
      00878A 80               [11]  257 	iret
                                    258 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 370: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    259 ;	-----------------------------------------
                                    260 ;	 function I2C_IRQHandler
                                    261 ;	-----------------------------------------
      00878B                        262 _I2C_IRQHandler:
                                    263 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 375: }
      00878B 80               [11]  264 	iret
                                    265 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 383: INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
                                    266 ;	-----------------------------------------
                                    267 ;	 function UART2_TX_IRQHandler
                                    268 ;	-----------------------------------------
      00878C                        269 _UART2_TX_IRQHandler:
                                    270 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 388: }
      00878C 80               [11]  271 	iret
                                    272 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 395: INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
                                    273 ;	-----------------------------------------
                                    274 ;	 function UART2_RX_IRQHandler
                                    275 ;	-----------------------------------------
      00878D                        276 _UART2_RX_IRQHandler:
                                    277 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 400: }
      00878D 80               [11]  278 	iret
                                    279 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 450: INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
                                    280 ;	-----------------------------------------
                                    281 ;	 function ADC1_IRQHandler
                                    282 ;	-----------------------------------------
      00878E                        283 _ADC1_IRQHandler:
                                    284 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 456: return;
                                    285 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 458: }
      00878E 80               [11]  286 	iret
                                    287 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 479: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    288 ;	-----------------------------------------
                                    289 ;	 function TIM4_UPD_OVF_IRQHandler
                                    290 ;	-----------------------------------------
      00878F                        291 _TIM4_UPD_OVF_IRQHandler:
                                    292 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 484: }
      00878F 80               [11]  293 	iret
                                    294 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 492: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    295 ;	-----------------------------------------
                                    296 ;	 function EEPROM_EEC_IRQHandler
                                    297 ;	-----------------------------------------
      008790                        298 _EEPROM_EEC_IRQHandler:
                                    299 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/stm8s_it.c: 497: }
      008790 80               [11]  300 	iret
                                    301 	.area CODE
                                    302 	.area CONST
                                    303 	.area INITIALIZER
                                    304 	.area CABS (ABS)
