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
                                     11 	.globl _ms2_update
                                     12 	.globl _sd_on_ovf
                                     13 	.globl _sd_on_cap
                                     14 	.globl _fan_sw
                                     15 	.globl _cap_handler
                                     16 	.globl _ov_handler
                                     17 	.globl _TIM3_Config
                                     18 	.globl _TIM4_ClearITPendingBit
                                     19 	.globl _TIM3_ClearITPendingBit
                                     20 	.globl _TIM3_ClearFlag
                                     21 	.globl _TIM3_SetCounter
                                     22 	.globl _TIM3_ICInit
                                     23 	.globl _TIM2_ClearITPendingBit
                                     24 	.globl _TIM2_ClearFlag
                                     25 	.globl _TIM2_SetCounter
                                     26 	.globl _GPIO_ReadInputData
                                     27 	.globl _GPIO_WriteReverse
                                     28 	.globl _TRAP_IRQHandler
                                     29 	.globl _TLI_IRQHandler
                                     30 	.globl _AWU_IRQHandler
                                     31 	.globl _CLK_IRQHandler
                                     32 	.globl _EXTI_PORTA_IRQHandler
                                     33 	.globl _EXTI_PORTB_IRQHandler
                                     34 	.globl _EXTI_PORTC_IRQHandler
                                     35 	.globl _EXTI_PORTD_IRQHandler
                                     36 	.globl _EXTI_PORTE_IRQHandler
                                     37 	.globl _SPI_IRQHandler
                                     38 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     39 	.globl _TIM1_CAP_COM_IRQHandler
                                     40 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     41 	.globl _TIM2_CAP_COM_IRQHandler
                                     42 	.globl _TIM3_UPD_OVF_BRK_IRQHandler
                                     43 	.globl _TIM3_CAP_COM_IRQHandler
                                     44 	.globl _I2C_IRQHandler
                                     45 	.globl _UART2_TX_IRQHandler
                                     46 	.globl _UART2_RX_IRQHandler
                                     47 	.globl _ADC1_IRQHandler
                                     48 	.globl _TIM4_UPD_OVF_IRQHandler
                                     49 	.globl _EEPROM_EEC_IRQHandler
                                     50 ;--------------------------------------------------------
                                     51 ; ram data
                                     52 ;--------------------------------------------------------
                                     53 	.area DATA
                                     54 ;--------------------------------------------------------
                                     55 ; ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area INITIALIZED
                                     58 ;--------------------------------------------------------
                                     59 ; absolute external ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area DABS (ABS)
                                     62 
                                     63 ; default segment ordering for linker
                                     64 	.area HOME
                                     65 	.area GSINIT
                                     66 	.area GSFINAL
                                     67 	.area CONST
                                     68 	.area INITIALIZER
                                     69 	.area CODE
                                     70 
                                     71 ;--------------------------------------------------------
                                     72 ; global & static initialisations
                                     73 ;--------------------------------------------------------
                                     74 	.area HOME
                                     75 	.area GSINIT
                                     76 	.area GSFINAL
                                     77 	.area GSINIT
                                     78 ;--------------------------------------------------------
                                     79 ; Home
                                     80 ;--------------------------------------------------------
                                     81 	.area HOME
                                     82 	.area HOME
                                     83 ;--------------------------------------------------------
                                     84 ; code
                                     85 ;--------------------------------------------------------
                                     86 	.area CODE
                                     87 ;	./src/stm8s_it.c: 66: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     88 ;	-----------------------------------------
                                     89 ;	 function TRAP_IRQHandler
                                     90 ;	-----------------------------------------
      0087FB                         91 _TRAP_IRQHandler:
                                     92 ;	./src/stm8s_it.c: 71: }
      0087FB 80               [11]   93 	iret
                                     94 ;	./src/stm8s_it.c: 77: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     95 ;	-----------------------------------------
                                     96 ;	 function TLI_IRQHandler
                                     97 ;	-----------------------------------------
      0087FC                         98 _TLI_IRQHandler:
                                     99 ;	./src/stm8s_it.c: 81: }
      0087FC 80               [11]  100 	iret
                                    101 ;	./src/stm8s_it.c: 88: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
                                    102 ;	-----------------------------------------
                                    103 ;	 function AWU_IRQHandler
                                    104 ;	-----------------------------------------
      0087FD                        105 _AWU_IRQHandler:
                                    106 ;	./src/stm8s_it.c: 93: }
      0087FD 80               [11]  107 	iret
                                    108 ;	./src/stm8s_it.c: 100: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                    109 ;	-----------------------------------------
                                    110 ;	 function CLK_IRQHandler
                                    111 ;	-----------------------------------------
      0087FE                        112 _CLK_IRQHandler:
                                    113 ;	./src/stm8s_it.c: 105: }
      0087FE 80               [11]  114 	iret
                                    115 ;	./src/stm8s_it.c: 112: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                    116 ;	-----------------------------------------
                                    117 ;	 function EXTI_PORTA_IRQHandler
                                    118 ;	-----------------------------------------
      0087FF                        119 _EXTI_PORTA_IRQHandler:
                                    120 ;	./src/stm8s_it.c: 117: }
      0087FF 80               [11]  121 	iret
                                    122 ;	./src/stm8s_it.c: 124: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    123 ;	-----------------------------------------
                                    124 ;	 function EXTI_PORTB_IRQHandler
                                    125 ;	-----------------------------------------
      008800                        126 _EXTI_PORTB_IRQHandler:
                                    127 ;	./src/stm8s_it.c: 127: }
      008800 80               [11]  128 	iret
                                    129 ;	./src/stm8s_it.c: 134: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    130 ;	-----------------------------------------
                                    131 ;	 function EXTI_PORTC_IRQHandler
                                    132 ;	-----------------------------------------
      008801                        133 _EXTI_PORTC_IRQHandler:
      008801 62               [ 2]  134 	div	x, a
                                    135 ;	./src/stm8s_it.c: 139: if ((GPIO_ReadInputData(KEY_PORT) & KEY_PIN) == 0x00)
      008802 4B 0A            [ 1]  136 	push	#0x0a
      008804 4B 50            [ 1]  137 	push	#0x50
      008806 CD C5 0A         [ 4]  138 	call	_GPIO_ReadInputData
      008809 85               [ 2]  139 	popw	x
      00880A A5 08            [ 1]  140 	bcp	a, #0x08
      00880C 26 03            [ 1]  141 	jrne	00103$
                                    142 ;	./src/stm8s_it.c: 141: fan_sw();
      00880E CD 84 2C         [ 4]  143 	call	_fan_sw
      008811                        144 00103$:
                                    145 ;	./src/stm8s_it.c: 143: }
      008811 80               [11]  146 	iret
                                    147 ;	./src/stm8s_it.c: 150: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    148 ;	-----------------------------------------
                                    149 ;	 function EXTI_PORTD_IRQHandler
                                    150 ;	-----------------------------------------
      008812                        151 _EXTI_PORTD_IRQHandler:
      008812 62               [ 2]  152 	div	x, a
                                    153 ;	./src/stm8s_it.c: 155: if ((GPIO_ReadInputData(IR_PORT) & IR_PIN) == 0x00)
      008813 4B 0F            [ 1]  154 	push	#0x0f
      008815 4B 50            [ 1]  155 	push	#0x50
      008817 CD C5 0A         [ 4]  156 	call	_GPIO_ReadInputData
      00881A 85               [ 2]  157 	popw	x
      00881B A5 04            [ 1]  158 	bcp	a, #0x04
      00881D 26 0B            [ 1]  159 	jrne	00102$
                                    160 ;	./src/stm8s_it.c: 157: GPIO_WriteReverse(LED_PORT, LED_PIN);
      00881F 4B 10            [ 1]  161 	push	#0x10
      008821 4B 19            [ 1]  162 	push	#0x19
      008823 4B 50            [ 1]  163 	push	#0x50
      008825 CD C4 FF         [ 4]  164 	call	_GPIO_WriteReverse
      008828 5B 03            [ 2]  165 	addw	sp, #3
      00882A                        166 00102$:
                                    167 ;	./src/stm8s_it.c: 159: TIM3_Config();
      00882A CD 87 67         [ 4]  168 	call	_TIM3_Config
                                    169 ;	./src/stm8s_it.c: 160: }
      00882D 80               [11]  170 	iret
                                    171 ;	./src/stm8s_it.c: 167: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    172 ;	-----------------------------------------
                                    173 ;	 function EXTI_PORTE_IRQHandler
                                    174 ;	-----------------------------------------
      00882E                        175 _EXTI_PORTE_IRQHandler:
                                    176 ;	./src/stm8s_it.c: 172: }
      00882E 80               [11]  177 	iret
                                    178 ;	./src/stm8s_it.c: 218: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    179 ;	-----------------------------------------
                                    180 ;	 function SPI_IRQHandler
                                    181 ;	-----------------------------------------
      00882F                        182 _SPI_IRQHandler:
                                    183 ;	./src/stm8s_it.c: 223: }
      00882F 80               [11]  184 	iret
                                    185 ;	./src/stm8s_it.c: 230: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    186 ;	-----------------------------------------
                                    187 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    188 ;	-----------------------------------------
      008830                        189 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                                    190 ;	./src/stm8s_it.c: 235: }
      008830 80               [11]  191 	iret
                                    192 ;	./src/stm8s_it.c: 242: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    193 ;	-----------------------------------------
                                    194 ;	 function TIM1_CAP_COM_IRQHandler
                                    195 ;	-----------------------------------------
      008831                        196 _TIM1_CAP_COM_IRQHandler:
                                    197 ;	./src/stm8s_it.c: 247: }
      008831 80               [11]  198 	iret
                                    199 ;	./src/stm8s_it.c: 279: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    200 ;	-----------------------------------------
                                    201 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    202 ;	-----------------------------------------
      008832                        203 _TIM2_UPD_OVF_BRK_IRQHandler:
      008832 62               [ 2]  204 	div	x, a
                                    205 ;	./src/stm8s_it.c: 285: sd_on_ovf();
      008833 CD 84 DD         [ 4]  206 	call	_sd_on_ovf
                                    207 ;	./src/stm8s_it.c: 286: TIM2_ClearITPendingBit(TIM2_IT_UPDATE);
      008836 4B 01            [ 1]  208 	push	#0x01
      008838 CD B7 9A         [ 4]  209 	call	_TIM2_ClearITPendingBit
      00883B 84               [ 1]  210 	pop	a
                                    211 ;	./src/stm8s_it.c: 287: }
      00883C 80               [11]  212 	iret
                                    213 ;	./src/stm8s_it.c: 294: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
                                    214 ;	-----------------------------------------
                                    215 ;	 function TIM2_CAP_COM_IRQHandler
                                    216 ;	-----------------------------------------
      00883D                        217 _TIM2_CAP_COM_IRQHandler:
      00883D 62               [ 2]  218 	div	x, a
                                    219 ;	./src/stm8s_it.c: 299: sd_on_cap();
      00883E CD 84 CE         [ 4]  220 	call	_sd_on_cap
                                    221 ;	./src/stm8s_it.c: 300: TIM2_ClearFlag(TIM2_FLAG_CC1);
      008841 4B 02            [ 1]  222 	push	#0x02
      008843 4B 00            [ 1]  223 	push	#0x00
      008845 CD B7 28         [ 4]  224 	call	_TIM2_ClearFlag
      008848 85               [ 2]  225 	popw	x
                                    226 ;	./src/stm8s_it.c: 301: TIM2_SetCounter(0);
      008849 5F               [ 1]  227 	clrw	x
      00884A 89               [ 2]  228 	pushw	x
      00884B CD B5 AA         [ 4]  229 	call	_TIM2_SetCounter
      00884E 85               [ 2]  230 	popw	x
                                    231 ;	./src/stm8s_it.c: 302: TIM2_ClearITPendingBit(TIM2_IT_CC1);
      00884F 4B 02            [ 1]  232 	push	#0x02
      008851 CD B7 9A         [ 4]  233 	call	_TIM2_ClearITPendingBit
      008854 84               [ 1]  234 	pop	a
                                    235 ;	./src/stm8s_it.c: 303: }
      008855 80               [11]  236 	iret
                                    237 ;	./src/stm8s_it.c: 313: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
                                    238 ;	-----------------------------------------
                                    239 ;	 function TIM3_UPD_OVF_BRK_IRQHandler
                                    240 ;	-----------------------------------------
      008856                        241 _TIM3_UPD_OVF_BRK_IRQHandler:
      008856 62               [ 2]  242 	div	x, a
                                    243 ;	./src/stm8s_it.c: 319: ov_handler();
      008857 CD 84 F5         [ 4]  244 	call	_ov_handler
                                    245 ;	./src/stm8s_it.c: 320: TIM3_ClearITPendingBit(TIM3_IT_UPDATE);
      00885A 4B 01            [ 1]  246 	push	#0x01
      00885C CD C0 DD         [ 4]  247 	call	_TIM3_ClearITPendingBit
      00885F 84               [ 1]  248 	pop	a
                                    249 ;	./src/stm8s_it.c: 321: TIM3_ICInit( TIM3_CHANNEL_1, TIM3_ICPOLARITY_FALLING, TIM3_ICSELECTION_DIRECTTI,
      008860 4B 00            [ 1]  250 	push	#0x00
      008862 4B 00            [ 1]  251 	push	#0x00
      008864 4B 01            [ 1]  252 	push	#0x01
      008866 4B 44            [ 1]  253 	push	#0x44
      008868 4B 00            [ 1]  254 	push	#0x00
      00886A CD B9 D3         [ 4]  255 	call	_TIM3_ICInit
      00886D 5B 05            [ 2]  256 	addw	sp, #5
                                    257 ;	./src/stm8s_it.c: 323: }
      00886F 80               [11]  258 	iret
                                    259 ;	./src/stm8s_it.c: 330: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
                                    260 ;	-----------------------------------------
                                    261 ;	 function TIM3_CAP_COM_IRQHandler
                                    262 ;	-----------------------------------------
      008870                        263 _TIM3_CAP_COM_IRQHandler:
      008870 62               [ 2]  264 	div	x, a
                                    265 ;	./src/stm8s_it.c: 335: cap_handler();
      008871 CD 85 24         [ 4]  266 	call	_cap_handler
                                    267 ;	./src/stm8s_it.c: 338: TIM3_ClearFlag(TIM3_FLAG_CC1);
      008874 4B 02            [ 1]  268 	push	#0x02
      008876 4B 00            [ 1]  269 	push	#0x00
      008878 CD C0 69         [ 4]  270 	call	_TIM3_ClearFlag
      00887B 85               [ 2]  271 	popw	x
                                    272 ;	./src/stm8s_it.c: 339: TIM3_SetCounter(0);
      00887C 5F               [ 1]  273 	clrw	x
      00887D 89               [ 2]  274 	pushw	x
      00887E CD BF 47         [ 4]  275 	call	_TIM3_SetCounter
      008881 85               [ 2]  276 	popw	x
                                    277 ;	./src/stm8s_it.c: 340: TIM3_ClearITPendingBit(TIM3_IT_CC1);
      008882 4B 02            [ 1]  278 	push	#0x02
      008884 CD C0 DD         [ 4]  279 	call	_TIM3_ClearITPendingBit
      008887 84               [ 1]  280 	pop	a
                                    281 ;	./src/stm8s_it.c: 341: }
      008888 80               [11]  282 	iret
                                    283 ;	./src/stm8s_it.c: 376: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    284 ;	-----------------------------------------
                                    285 ;	 function I2C_IRQHandler
                                    286 ;	-----------------------------------------
      008889                        287 _I2C_IRQHandler:
                                    288 ;	./src/stm8s_it.c: 381: }
      008889 80               [11]  289 	iret
                                    290 ;	./src/stm8s_it.c: 389: INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
                                    291 ;	-----------------------------------------
                                    292 ;	 function UART2_TX_IRQHandler
                                    293 ;	-----------------------------------------
      00888A                        294 _UART2_TX_IRQHandler:
                                    295 ;	./src/stm8s_it.c: 394: }
      00888A 80               [11]  296 	iret
                                    297 ;	./src/stm8s_it.c: 401: INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
                                    298 ;	-----------------------------------------
                                    299 ;	 function UART2_RX_IRQHandler
                                    300 ;	-----------------------------------------
      00888B                        301 _UART2_RX_IRQHandler:
                                    302 ;	./src/stm8s_it.c: 406: }
      00888B 80               [11]  303 	iret
                                    304 ;	./src/stm8s_it.c: 456: INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
                                    305 ;	-----------------------------------------
                                    306 ;	 function ADC1_IRQHandler
                                    307 ;	-----------------------------------------
      00888C                        308 _ADC1_IRQHandler:
                                    309 ;	./src/stm8s_it.c: 462: return;
                                    310 ;	./src/stm8s_it.c: 464: }
      00888C 80               [11]  311 	iret
                                    312 ;	./src/stm8s_it.c: 485: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    313 ;	-----------------------------------------
                                    314 ;	 function TIM4_UPD_OVF_IRQHandler
                                    315 ;	-----------------------------------------
      00888D                        316 _TIM4_UPD_OVF_IRQHandler:
      00888D 62               [ 2]  317 	div	x, a
                                    318 ;	./src/stm8s_it.c: 488: ms2_update();
      00888E CD 84 ED         [ 4]  319 	call	_ms2_update
                                    320 ;	./src/stm8s_it.c: 489: TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
      008891 4B 01            [ 1]  321 	push	#0x01
      008893 CD C3 DD         [ 4]  322 	call	_TIM4_ClearITPendingBit
      008896 84               [ 1]  323 	pop	a
                                    324 ;	./src/stm8s_it.c: 494: }
      008897 80               [11]  325 	iret
                                    326 ;	./src/stm8s_it.c: 502: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    327 ;	-----------------------------------------
                                    328 ;	 function EEPROM_EEC_IRQHandler
                                    329 ;	-----------------------------------------
      008898                        330 _EEPROM_EEC_IRQHandler:
                                    331 ;	./src/stm8s_it.c: 507: }
      008898 80               [11]  332 	iret
                                    333 	.area CODE
                                    334 	.area CONST
                                    335 	.area INITIALIZER
                                    336 	.area CABS (ABS)
