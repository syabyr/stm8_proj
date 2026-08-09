                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _GPIO_DeInit
                                     13 	.globl _GPIO_Init
                                     14 	.globl _GPIO_Write
                                     15 	.globl _GPIO_WriteHigh
                                     16 	.globl _GPIO_WriteLow
                                     17 	.globl _GPIO_WriteReverse
                                     18 	.globl _GPIO_ReadOutputData
                                     19 	.globl _GPIO_ReadInputData
                                     20 	.globl _GPIO_ReadInputPin
                                     21 	.globl _GPIO_ExternalPullUpConfig
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area DATA
                                     26 ;--------------------------------------------------------
                                     27 ; ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area INITIALIZED
                                     30 ;--------------------------------------------------------
                                     31 ; absolute external ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DABS (ABS)
                                     34 
                                     35 ; default segment ordering for linker
                                     36 	.area HOME
                                     37 	.area GSINIT
                                     38 	.area GSFINAL
                                     39 	.area CONST
                                     40 	.area INITIALIZER
                                     41 	.area CODE
                                     42 
                                     43 ;--------------------------------------------------------
                                     44 ; global & static initialisations
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area GSINIT
                                     50 ;--------------------------------------------------------
                                     51 ; Home
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area HOME
                                     55 ;--------------------------------------------------------
                                     56 ; code
                                     57 ;--------------------------------------------------------
                                     58 	.area CODE
                                     59 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     60 ;	-----------------------------------------
                                     61 ;	 function GPIO_DeInit
                                     62 ;	-----------------------------------------
      00C3F8                         63 _GPIO_DeInit:
                                     64 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      00C3F8 16 03            [ 2]   65 	ldw	y, (0x03, sp)
      00C3FA 90 7F            [ 1]   66 	clr	(y)
                                     67 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      00C3FC 93               [ 1]   68 	ldw	x, y
      00C3FD 5C               [ 1]   69 	incw	x
      00C3FE 5C               [ 1]   70 	incw	x
      00C3FF 7F               [ 1]   71 	clr	(x)
                                     72 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      00C400 93               [ 1]   73 	ldw	x, y
      00C401 6F 03            [ 1]   74 	clr	(0x0003, x)
                                     75 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      00C403 93               [ 1]   76 	ldw	x, y
      00C404 6F 04            [ 1]   77 	clr	(0x0004, x)
                                     78 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 59: }
      00C406 81               [ 4]   79 	ret
                                     80 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     81 ;	-----------------------------------------
                                     82 ;	 function GPIO_Init
                                     83 ;	-----------------------------------------
      00C407                         84 _GPIO_Init:
      00C407 52 05            [ 2]   85 	sub	sp, #5
                                     86 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
      00C409 0D 0B            [ 1]   87 	tnz	(0x0b, sp)
      00C40B 27 51            [ 1]   88 	jreq	00116$
      00C40D 7B 0B            [ 1]   89 	ld	a, (0x0b, sp)
      00C40F A1 40            [ 1]   90 	cp	a, #0x40
      00C411 27 4B            [ 1]   91 	jreq	00116$
      00C413 7B 0B            [ 1]   92 	ld	a, (0x0b, sp)
      00C415 A1 20            [ 1]   93 	cp	a, #0x20
      00C417 27 45            [ 1]   94 	jreq	00116$
      00C419 7B 0B            [ 1]   95 	ld	a, (0x0b, sp)
      00C41B A1 60            [ 1]   96 	cp	a, #0x60
      00C41D 27 3F            [ 1]   97 	jreq	00116$
      00C41F 7B 0B            [ 1]   98 	ld	a, (0x0b, sp)
      00C421 A1 A0            [ 1]   99 	cp	a, #0xa0
      00C423 27 39            [ 1]  100 	jreq	00116$
      00C425 7B 0B            [ 1]  101 	ld	a, (0x0b, sp)
      00C427 A1 E0            [ 1]  102 	cp	a, #0xe0
      00C429 27 33            [ 1]  103 	jreq	00116$
      00C42B 7B 0B            [ 1]  104 	ld	a, (0x0b, sp)
      00C42D A1 80            [ 1]  105 	cp	a, #0x80
      00C42F 27 2D            [ 1]  106 	jreq	00116$
      00C431 7B 0B            [ 1]  107 	ld	a, (0x0b, sp)
      00C433 A1 C0            [ 1]  108 	cp	a, #0xc0
      00C435 27 27            [ 1]  109 	jreq	00116$
      00C437 7B 0B            [ 1]  110 	ld	a, (0x0b, sp)
      00C439 A1 B0            [ 1]  111 	cp	a, #0xb0
      00C43B 27 21            [ 1]  112 	jreq	00116$
      00C43D 7B 0B            [ 1]  113 	ld	a, (0x0b, sp)
      00C43F A1 F0            [ 1]  114 	cp	a, #0xf0
      00C441 27 1B            [ 1]  115 	jreq	00116$
      00C443 7B 0B            [ 1]  116 	ld	a, (0x0b, sp)
      00C445 A1 90            [ 1]  117 	cp	a, #0x90
      00C447 27 15            [ 1]  118 	jreq	00116$
      00C449 7B 0B            [ 1]  119 	ld	a, (0x0b, sp)
      00C44B A1 D0            [ 1]  120 	cp	a, #0xd0
      00C44D 27 0F            [ 1]  121 	jreq	00116$
      00C44F 4B 4D            [ 1]  122 	push	#0x4d
      00C451 5F               [ 1]  123 	clrw	x
      00C452 89               [ 2]  124 	pushw	x
      00C453 4B 00            [ 1]  125 	push	#0x00
      00C455 4B 6E            [ 1]  126 	push	#<(___str_0+0)
      00C457 4B 82            [ 1]  127 	push	#((___str_0+0) >> 8)
      00C459 CD 83 84         [ 4]  128 	call	_assert_failed
      00C45C 5B 06            [ 2]  129 	addw	sp, #6
      00C45E                        130 00116$:
                                    131 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      00C45E 0D 0A            [ 1]  132 	tnz	(0x0a, sp)
      00C460 26 0F            [ 1]  133 	jrne	00151$
      00C462 4B 4E            [ 1]  134 	push	#0x4e
      00C464 5F               [ 1]  135 	clrw	x
      00C465 89               [ 2]  136 	pushw	x
      00C466 4B 00            [ 1]  137 	push	#0x00
      00C468 4B 6E            [ 1]  138 	push	#<(___str_0+0)
      00C46A 4B 82            [ 1]  139 	push	#((___str_0+0) >> 8)
      00C46C CD 83 84         [ 4]  140 	call	_assert_failed
      00C46F 5B 06            [ 2]  141 	addw	sp, #6
      00C471                        142 00151$:
                                    143 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00C471 16 08            [ 2]  144 	ldw	y, (0x08, sp)
      00C473 93               [ 1]  145 	ldw	x, y
      00C474 1C 00 04         [ 2]  146 	addw	x, #0x0004
      00C477 1F 01            [ 2]  147 	ldw	(0x01, sp), x
      00C479 F6               [ 1]  148 	ld	a, (x)
      00C47A 88               [ 1]  149 	push	a
      00C47B 7B 0B            [ 1]  150 	ld	a, (0x0b, sp)
      00C47D 43               [ 1]  151 	cpl	a
      00C47E 6B 04            [ 1]  152 	ld	(0x04, sp), a
      00C480 84               [ 1]  153 	pop	a
      00C481 14 03            [ 1]  154 	and	a, (0x03, sp)
      00C483 1E 01            [ 2]  155 	ldw	x, (0x01, sp)
      00C485 F7               [ 1]  156 	ld	(x), a
                                    157 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00C486 93               [ 1]  158 	ldw	x, y
      00C487 5C               [ 1]  159 	incw	x
      00C488 5C               [ 1]  160 	incw	x
      00C489 1F 04            [ 2]  161 	ldw	(0x04, sp), x
                                    162 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      00C48B 0D 0B            [ 1]  163 	tnz	(0x0b, sp)
      00C48D 2A 1E            [ 1]  164 	jrpl	00105$
                                    165 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      00C48F 90 F6            [ 1]  166 	ld	a, (y)
                                    167 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      00C491 88               [ 1]  168 	push	a
      00C492 7B 0C            [ 1]  169 	ld	a, (0x0c, sp)
      00C494 A5 10            [ 1]  170 	bcp	a, #0x10
      00C496 84               [ 1]  171 	pop	a
      00C497 27 06            [ 1]  172 	jreq	00102$
                                    173 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      00C499 1A 0A            [ 1]  174 	or	a, (0x0a, sp)
      00C49B 90 F7            [ 1]  175 	ld	(y), a
      00C49D 20 04            [ 2]  176 	jra	00103$
      00C49F                        177 00102$:
                                    178 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      00C49F 14 03            [ 1]  179 	and	a, (0x03, sp)
      00C4A1 90 F7            [ 1]  180 	ld	(y), a
      00C4A3                        181 00103$:
                                    182 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00C4A3 1E 04            [ 2]  183 	ldw	x, (0x04, sp)
      00C4A5 F6               [ 1]  184 	ld	a, (x)
      00C4A6 1A 0A            [ 1]  185 	or	a, (0x0a, sp)
      00C4A8 1E 04            [ 2]  186 	ldw	x, (0x04, sp)
      00C4AA F7               [ 1]  187 	ld	(x), a
      00C4AB 20 08            [ 2]  188 	jra	00106$
      00C4AD                        189 00105$:
                                    190 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      00C4AD 1E 04            [ 2]  191 	ldw	x, (0x04, sp)
      00C4AF F6               [ 1]  192 	ld	a, (x)
      00C4B0 14 03            [ 1]  193 	and	a, (0x03, sp)
      00C4B2 1E 04            [ 2]  194 	ldw	x, (0x04, sp)
      00C4B4 F7               [ 1]  195 	ld	(x), a
      00C4B5                        196 00106$:
                                    197 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00C4B5 93               [ 1]  198 	ldw	x, y
      00C4B6 1C 00 03         [ 2]  199 	addw	x, #0x0003
      00C4B9 F6               [ 1]  200 	ld	a, (x)
                                    201 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      00C4BA 88               [ 1]  202 	push	a
      00C4BB 7B 0C            [ 1]  203 	ld	a, (0x0c, sp)
      00C4BD A5 40            [ 1]  204 	bcp	a, #0x40
      00C4BF 84               [ 1]  205 	pop	a
      00C4C0 27 05            [ 1]  206 	jreq	00108$
                                    207 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00C4C2 1A 0A            [ 1]  208 	or	a, (0x0a, sp)
      00C4C4 F7               [ 1]  209 	ld	(x), a
      00C4C5 20 03            [ 2]  210 	jra	00109$
      00C4C7                        211 00108$:
                                    212 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      00C4C7 14 03            [ 1]  213 	and	a, (0x03, sp)
      00C4C9 F7               [ 1]  214 	ld	(x), a
      00C4CA                        215 00109$:
                                    216 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00C4CA 1E 01            [ 2]  217 	ldw	x, (0x01, sp)
      00C4CC F6               [ 1]  218 	ld	a, (x)
                                    219 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      00C4CD 88               [ 1]  220 	push	a
      00C4CE 7B 0C            [ 1]  221 	ld	a, (0x0c, sp)
      00C4D0 A5 20            [ 1]  222 	bcp	a, #0x20
      00C4D2 84               [ 1]  223 	pop	a
      00C4D3 27 07            [ 1]  224 	jreq	00111$
                                    225 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      00C4D5 1A 0A            [ 1]  226 	or	a, (0x0a, sp)
      00C4D7 1E 01            [ 2]  227 	ldw	x, (0x01, sp)
      00C4D9 F7               [ 1]  228 	ld	(x), a
      00C4DA 20 05            [ 2]  229 	jra	00113$
      00C4DC                        230 00111$:
                                    231 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00C4DC 14 03            [ 1]  232 	and	a, (0x03, sp)
      00C4DE 1E 01            [ 2]  233 	ldw	x, (0x01, sp)
      00C4E0 F7               [ 1]  234 	ld	(x), a
      00C4E1                        235 00113$:
                                    236 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 131: }
      00C4E1 5B 05            [ 2]  237 	addw	sp, #5
      00C4E3 81               [ 4]  238 	ret
                                    239 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    240 ;	-----------------------------------------
                                    241 ;	 function GPIO_Write
                                    242 ;	-----------------------------------------
      00C4E4                        243 _GPIO_Write:
                                    244 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      00C4E4 1E 03            [ 2]  245 	ldw	x, (0x03, sp)
      00C4E6 7B 05            [ 1]  246 	ld	a, (0x05, sp)
      00C4E8 F7               [ 1]  247 	ld	(x), a
                                    248 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 144: }
      00C4E9 81               [ 4]  249 	ret
                                    250 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    251 ;	-----------------------------------------
                                    252 ;	 function GPIO_WriteHigh
                                    253 ;	-----------------------------------------
      00C4EA                        254 _GPIO_WriteHigh:
                                    255 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      00C4EA 1E 03            [ 2]  256 	ldw	x, (0x03, sp)
      00C4EC F6               [ 1]  257 	ld	a, (x)
      00C4ED 1A 05            [ 1]  258 	or	a, (0x05, sp)
      00C4EF F7               [ 1]  259 	ld	(x), a
                                    260 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 157: }
      00C4F0 81               [ 4]  261 	ret
                                    262 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    263 ;	-----------------------------------------
                                    264 ;	 function GPIO_WriteLow
                                    265 ;	-----------------------------------------
      00C4F1                        266 _GPIO_WriteLow:
      00C4F1 88               [ 1]  267 	push	a
                                    268 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      00C4F2 1E 04            [ 2]  269 	ldw	x, (0x04, sp)
      00C4F4 F6               [ 1]  270 	ld	a, (x)
      00C4F5 6B 01            [ 1]  271 	ld	(0x01, sp), a
      00C4F7 7B 06            [ 1]  272 	ld	a, (0x06, sp)
      00C4F9 43               [ 1]  273 	cpl	a
      00C4FA 14 01            [ 1]  274 	and	a, (0x01, sp)
      00C4FC F7               [ 1]  275 	ld	(x), a
                                    276 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 170: }
      00C4FD 84               [ 1]  277 	pop	a
      00C4FE 81               [ 4]  278 	ret
                                    279 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    280 ;	-----------------------------------------
                                    281 ;	 function GPIO_WriteReverse
                                    282 ;	-----------------------------------------
      00C4FF                        283 _GPIO_WriteReverse:
                                    284 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
      00C4FF 1E 03            [ 2]  285 	ldw	x, (0x03, sp)
      00C501 F6               [ 1]  286 	ld	a, (x)
      00C502 18 05            [ 1]  287 	xor	a, (0x05, sp)
      00C504 F7               [ 1]  288 	ld	(x), a
                                    289 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 183: }
      00C505 81               [ 4]  290 	ret
                                    291 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    292 ;	-----------------------------------------
                                    293 ;	 function GPIO_ReadOutputData
                                    294 ;	-----------------------------------------
      00C506                        295 _GPIO_ReadOutputData:
                                    296 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
      00C506 1E 03            [ 2]  297 	ldw	x, (0x03, sp)
      00C508 F6               [ 1]  298 	ld	a, (x)
                                    299 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 194: }
      00C509 81               [ 4]  300 	ret
                                    301 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    302 ;	-----------------------------------------
                                    303 ;	 function GPIO_ReadInputData
                                    304 ;	-----------------------------------------
      00C50A                        305 _GPIO_ReadInputData:
                                    306 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
      00C50A 1E 03            [ 2]  307 	ldw	x, (0x03, sp)
      00C50C E6 01            [ 1]  308 	ld	a, (0x1, x)
                                    309 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 205: }
      00C50E 81               [ 4]  310 	ret
                                    311 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    312 ;	-----------------------------------------
                                    313 ;	 function GPIO_ReadInputPin
                                    314 ;	-----------------------------------------
      00C50F                        315 _GPIO_ReadInputPin:
                                    316 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      00C50F 1E 03            [ 2]  317 	ldw	x, (0x03, sp)
      00C511 E6 01            [ 1]  318 	ld	a, (0x1, x)
      00C513 14 05            [ 1]  319 	and	a, (0x05, sp)
                                    320 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 216: }
      00C515 81               [ 4]  321 	ret
                                    322 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    323 ;	-----------------------------------------
                                    324 ;	 function GPIO_ExternalPullUpConfig
                                    325 ;	-----------------------------------------
      00C516                        326 _GPIO_ExternalPullUpConfig:
      00C516 88               [ 1]  327 	push	a
                                    328 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 228: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      00C517 0D 06            [ 1]  329 	tnz	(0x06, sp)
      00C519 26 0F            [ 1]  330 	jrne	00107$
      00C51B 4B E4            [ 1]  331 	push	#0xe4
      00C51D 5F               [ 1]  332 	clrw	x
      00C51E 89               [ 2]  333 	pushw	x
      00C51F 4B 00            [ 1]  334 	push	#0x00
      00C521 4B 6E            [ 1]  335 	push	#<(___str_0+0)
      00C523 4B 82            [ 1]  336 	push	#((___str_0+0) >> 8)
      00C525 CD 83 84         [ 4]  337 	call	_assert_failed
      00C528 5B 06            [ 2]  338 	addw	sp, #6
      00C52A                        339 00107$:
                                    340 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 229: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C52A 0D 07            [ 1]  341 	tnz	(0x07, sp)
      00C52C 27 14            [ 1]  342 	jreq	00109$
      00C52E 7B 07            [ 1]  343 	ld	a, (0x07, sp)
      00C530 4A               [ 1]  344 	dec	a
      00C531 27 0F            [ 1]  345 	jreq	00109$
      00C533 4B E5            [ 1]  346 	push	#0xe5
      00C535 5F               [ 1]  347 	clrw	x
      00C536 89               [ 2]  348 	pushw	x
      00C537 4B 00            [ 1]  349 	push	#0x00
      00C539 4B 6E            [ 1]  350 	push	#<(___str_0+0)
      00C53B 4B 82            [ 1]  351 	push	#((___str_0+0) >> 8)
      00C53D CD 83 84         [ 4]  352 	call	_assert_failed
      00C540 5B 06            [ 2]  353 	addw	sp, #6
      00C542                        354 00109$:
                                    355 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00C542 1E 04            [ 2]  356 	ldw	x, (0x04, sp)
      00C544 1C 00 03         [ 2]  357 	addw	x, #0x0003
      00C547 F6               [ 1]  358 	ld	a, (x)
                                    359 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
      00C548 0D 07            [ 1]  360 	tnz	(0x07, sp)
      00C54A 27 05            [ 1]  361 	jreq	00102$
                                    362 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00C54C 1A 06            [ 1]  363 	or	a, (0x06, sp)
      00C54E F7               [ 1]  364 	ld	(x), a
      00C54F 20 0A            [ 2]  365 	jra	00104$
      00C551                        366 00102$:
                                    367 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      00C551 88               [ 1]  368 	push	a
      00C552 7B 07            [ 1]  369 	ld	a, (0x07, sp)
      00C554 43               [ 1]  370 	cpl	a
      00C555 6B 02            [ 1]  371 	ld	(0x02, sp), a
      00C557 84               [ 1]  372 	pop	a
      00C558 14 01            [ 1]  373 	and	a, (0x01, sp)
      00C55A F7               [ 1]  374 	ld	(x), a
      00C55B                        375 00104$:
                                    376 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gpio.c: 238: }
      00C55B 84               [ 1]  377 	pop	a
      00C55C 81               [ 4]  378 	ret
                                    379 	.area CODE
                                    380 	.area CONST
                                    381 	.area CONST
      00826E                        382 ___str_0:
      00826E 2E 2E 2F 2E 2E 2F 2F   383 	.ascii "../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_gp"
             53 74 64 50 65 72 69
             70 68 5F 44 72 69 76
             65 72 2F 53 54 4D 38
             53 5F 53 74 64 50 65
             72 69 70 68 5F 44 72
             69 76 65 72 2F 2F 73
             72 63 2F 73 74 6D 38
             73 5F 67 70
      0082AA 69 6F 2E 63            384 	.ascii "io.c"
      0082AE 00                     385 	.db 0x00
                                    386 	.area CODE
                                    387 	.area INITIALIZER
                                    388 	.area CABS (ABS)
