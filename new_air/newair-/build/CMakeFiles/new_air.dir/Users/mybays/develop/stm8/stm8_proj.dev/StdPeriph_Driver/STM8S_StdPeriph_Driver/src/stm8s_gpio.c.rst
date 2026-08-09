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
                                     59 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     60 ;	-----------------------------------------
                                     61 ;	 function GPIO_DeInit
                                     62 ;	-----------------------------------------
      00B3FD                         63 _GPIO_DeInit:
                                     64 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      00B3FD 16 03            [ 2]   65 	ldw	y, (0x03, sp)
      00B3FF 90 7F            [ 1]   66 	clr	(y)
                                     67 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      00B401 93               [ 1]   68 	ldw	x, y
      00B402 5C               [ 1]   69 	incw	x
      00B403 5C               [ 1]   70 	incw	x
      00B404 7F               [ 1]   71 	clr	(x)
                                     72 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      00B405 93               [ 1]   73 	ldw	x, y
      00B406 6F 03            [ 1]   74 	clr	(0x0003, x)
                                     75 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      00B408 93               [ 1]   76 	ldw	x, y
      00B409 6F 04            [ 1]   77 	clr	(0x0004, x)
                                     78 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 59: }
      00B40B 81               [ 4]   79 	ret
                                     80 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     81 ;	-----------------------------------------
                                     82 ;	 function GPIO_Init
                                     83 ;	-----------------------------------------
      00B40C                         84 _GPIO_Init:
      00B40C 52 05            [ 2]   85 	sub	sp, #5
                                     86 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
      00B40E 0D 0B            [ 1]   87 	tnz	(0x0b, sp)
      00B410 27 51            [ 1]   88 	jreq	00116$
      00B412 7B 0B            [ 1]   89 	ld	a, (0x0b, sp)
      00B414 A1 40            [ 1]   90 	cp	a, #0x40
      00B416 27 4B            [ 1]   91 	jreq	00116$
      00B418 7B 0B            [ 1]   92 	ld	a, (0x0b, sp)
      00B41A A1 20            [ 1]   93 	cp	a, #0x20
      00B41C 27 45            [ 1]   94 	jreq	00116$
      00B41E 7B 0B            [ 1]   95 	ld	a, (0x0b, sp)
      00B420 A1 60            [ 1]   96 	cp	a, #0x60
      00B422 27 3F            [ 1]   97 	jreq	00116$
      00B424 7B 0B            [ 1]   98 	ld	a, (0x0b, sp)
      00B426 A1 A0            [ 1]   99 	cp	a, #0xa0
      00B428 27 39            [ 1]  100 	jreq	00116$
      00B42A 7B 0B            [ 1]  101 	ld	a, (0x0b, sp)
      00B42C A1 E0            [ 1]  102 	cp	a, #0xe0
      00B42E 27 33            [ 1]  103 	jreq	00116$
      00B430 7B 0B            [ 1]  104 	ld	a, (0x0b, sp)
      00B432 A1 80            [ 1]  105 	cp	a, #0x80
      00B434 27 2D            [ 1]  106 	jreq	00116$
      00B436 7B 0B            [ 1]  107 	ld	a, (0x0b, sp)
      00B438 A1 C0            [ 1]  108 	cp	a, #0xc0
      00B43A 27 27            [ 1]  109 	jreq	00116$
      00B43C 7B 0B            [ 1]  110 	ld	a, (0x0b, sp)
      00B43E A1 B0            [ 1]  111 	cp	a, #0xb0
      00B440 27 21            [ 1]  112 	jreq	00116$
      00B442 7B 0B            [ 1]  113 	ld	a, (0x0b, sp)
      00B444 A1 F0            [ 1]  114 	cp	a, #0xf0
      00B446 27 1B            [ 1]  115 	jreq	00116$
      00B448 7B 0B            [ 1]  116 	ld	a, (0x0b, sp)
      00B44A A1 90            [ 1]  117 	cp	a, #0x90
      00B44C 27 15            [ 1]  118 	jreq	00116$
      00B44E 7B 0B            [ 1]  119 	ld	a, (0x0b, sp)
      00B450 A1 D0            [ 1]  120 	cp	a, #0xd0
      00B452 27 0F            [ 1]  121 	jreq	00116$
      00B454 4B 4D            [ 1]  122 	push	#0x4d
      00B456 5F               [ 1]  123 	clrw	x
      00B457 89               [ 2]  124 	pushw	x
      00B458 4B 00            [ 1]  125 	push	#0x00
      00B45A 4B 54            [ 1]  126 	push	#<(___str_0+0)
      00B45C 4B 82            [ 1]  127 	push	#((___str_0+0) >> 8)
      00B45E CD 85 9D         [ 4]  128 	call	_assert_failed
      00B461 5B 06            [ 2]  129 	addw	sp, #6
      00B463                        130 00116$:
                                    131 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      00B463 0D 0A            [ 1]  132 	tnz	(0x0a, sp)
      00B465 26 0F            [ 1]  133 	jrne	00151$
      00B467 4B 4E            [ 1]  134 	push	#0x4e
      00B469 5F               [ 1]  135 	clrw	x
      00B46A 89               [ 2]  136 	pushw	x
      00B46B 4B 00            [ 1]  137 	push	#0x00
      00B46D 4B 54            [ 1]  138 	push	#<(___str_0+0)
      00B46F 4B 82            [ 1]  139 	push	#((___str_0+0) >> 8)
      00B471 CD 85 9D         [ 4]  140 	call	_assert_failed
      00B474 5B 06            [ 2]  141 	addw	sp, #6
      00B476                        142 00151$:
                                    143 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00B476 16 08            [ 2]  144 	ldw	y, (0x08, sp)
      00B478 93               [ 1]  145 	ldw	x, y
      00B479 1C 00 04         [ 2]  146 	addw	x, #0x0004
      00B47C 1F 01            [ 2]  147 	ldw	(0x01, sp), x
      00B47E F6               [ 1]  148 	ld	a, (x)
      00B47F 88               [ 1]  149 	push	a
      00B480 7B 0B            [ 1]  150 	ld	a, (0x0b, sp)
      00B482 43               [ 1]  151 	cpl	a
      00B483 6B 04            [ 1]  152 	ld	(0x04, sp), a
      00B485 84               [ 1]  153 	pop	a
      00B486 14 03            [ 1]  154 	and	a, (0x03, sp)
      00B488 1E 01            [ 2]  155 	ldw	x, (0x01, sp)
      00B48A F7               [ 1]  156 	ld	(x), a
                                    157 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00B48B 93               [ 1]  158 	ldw	x, y
      00B48C 5C               [ 1]  159 	incw	x
      00B48D 5C               [ 1]  160 	incw	x
      00B48E 1F 04            [ 2]  161 	ldw	(0x04, sp), x
                                    162 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      00B490 0D 0B            [ 1]  163 	tnz	(0x0b, sp)
      00B492 2A 1E            [ 1]  164 	jrpl	00105$
                                    165 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      00B494 90 F6            [ 1]  166 	ld	a, (y)
                                    167 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      00B496 88               [ 1]  168 	push	a
      00B497 7B 0C            [ 1]  169 	ld	a, (0x0c, sp)
      00B499 A5 10            [ 1]  170 	bcp	a, #0x10
      00B49B 84               [ 1]  171 	pop	a
      00B49C 27 06            [ 1]  172 	jreq	00102$
                                    173 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      00B49E 1A 0A            [ 1]  174 	or	a, (0x0a, sp)
      00B4A0 90 F7            [ 1]  175 	ld	(y), a
      00B4A2 20 04            [ 2]  176 	jra	00103$
      00B4A4                        177 00102$:
                                    178 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      00B4A4 14 03            [ 1]  179 	and	a, (0x03, sp)
      00B4A6 90 F7            [ 1]  180 	ld	(y), a
      00B4A8                        181 00103$:
                                    182 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00B4A8 1E 04            [ 2]  183 	ldw	x, (0x04, sp)
      00B4AA F6               [ 1]  184 	ld	a, (x)
      00B4AB 1A 0A            [ 1]  185 	or	a, (0x0a, sp)
      00B4AD 1E 04            [ 2]  186 	ldw	x, (0x04, sp)
      00B4AF F7               [ 1]  187 	ld	(x), a
      00B4B0 20 08            [ 2]  188 	jra	00106$
      00B4B2                        189 00105$:
                                    190 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      00B4B2 1E 04            [ 2]  191 	ldw	x, (0x04, sp)
      00B4B4 F6               [ 1]  192 	ld	a, (x)
      00B4B5 14 03            [ 1]  193 	and	a, (0x03, sp)
      00B4B7 1E 04            [ 2]  194 	ldw	x, (0x04, sp)
      00B4B9 F7               [ 1]  195 	ld	(x), a
      00B4BA                        196 00106$:
                                    197 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00B4BA 93               [ 1]  198 	ldw	x, y
      00B4BB 1C 00 03         [ 2]  199 	addw	x, #0x0003
      00B4BE F6               [ 1]  200 	ld	a, (x)
                                    201 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      00B4BF 88               [ 1]  202 	push	a
      00B4C0 7B 0C            [ 1]  203 	ld	a, (0x0c, sp)
      00B4C2 A5 40            [ 1]  204 	bcp	a, #0x40
      00B4C4 84               [ 1]  205 	pop	a
      00B4C5 27 05            [ 1]  206 	jreq	00108$
                                    207 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00B4C7 1A 0A            [ 1]  208 	or	a, (0x0a, sp)
      00B4C9 F7               [ 1]  209 	ld	(x), a
      00B4CA 20 03            [ 2]  210 	jra	00109$
      00B4CC                        211 00108$:
                                    212 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      00B4CC 14 03            [ 1]  213 	and	a, (0x03, sp)
      00B4CE F7               [ 1]  214 	ld	(x), a
      00B4CF                        215 00109$:
                                    216 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00B4CF 1E 01            [ 2]  217 	ldw	x, (0x01, sp)
      00B4D1 F6               [ 1]  218 	ld	a, (x)
                                    219 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      00B4D2 88               [ 1]  220 	push	a
      00B4D3 7B 0C            [ 1]  221 	ld	a, (0x0c, sp)
      00B4D5 A5 20            [ 1]  222 	bcp	a, #0x20
      00B4D7 84               [ 1]  223 	pop	a
      00B4D8 27 07            [ 1]  224 	jreq	00111$
                                    225 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      00B4DA 1A 0A            [ 1]  226 	or	a, (0x0a, sp)
      00B4DC 1E 01            [ 2]  227 	ldw	x, (0x01, sp)
      00B4DE F7               [ 1]  228 	ld	(x), a
      00B4DF 20 05            [ 2]  229 	jra	00113$
      00B4E1                        230 00111$:
                                    231 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00B4E1 14 03            [ 1]  232 	and	a, (0x03, sp)
      00B4E3 1E 01            [ 2]  233 	ldw	x, (0x01, sp)
      00B4E5 F7               [ 1]  234 	ld	(x), a
      00B4E6                        235 00113$:
                                    236 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 131: }
      00B4E6 5B 05            [ 2]  237 	addw	sp, #5
      00B4E8 81               [ 4]  238 	ret
                                    239 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    240 ;	-----------------------------------------
                                    241 ;	 function GPIO_Write
                                    242 ;	-----------------------------------------
      00B4E9                        243 _GPIO_Write:
                                    244 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      00B4E9 1E 03            [ 2]  245 	ldw	x, (0x03, sp)
      00B4EB 7B 05            [ 1]  246 	ld	a, (0x05, sp)
      00B4ED F7               [ 1]  247 	ld	(x), a
                                    248 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 144: }
      00B4EE 81               [ 4]  249 	ret
                                    250 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    251 ;	-----------------------------------------
                                    252 ;	 function GPIO_WriteHigh
                                    253 ;	-----------------------------------------
      00B4EF                        254 _GPIO_WriteHigh:
                                    255 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      00B4EF 1E 03            [ 2]  256 	ldw	x, (0x03, sp)
      00B4F1 F6               [ 1]  257 	ld	a, (x)
      00B4F2 1A 05            [ 1]  258 	or	a, (0x05, sp)
      00B4F4 F7               [ 1]  259 	ld	(x), a
                                    260 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 157: }
      00B4F5 81               [ 4]  261 	ret
                                    262 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    263 ;	-----------------------------------------
                                    264 ;	 function GPIO_WriteLow
                                    265 ;	-----------------------------------------
      00B4F6                        266 _GPIO_WriteLow:
      00B4F6 88               [ 1]  267 	push	a
                                    268 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      00B4F7 1E 04            [ 2]  269 	ldw	x, (0x04, sp)
      00B4F9 F6               [ 1]  270 	ld	a, (x)
      00B4FA 6B 01            [ 1]  271 	ld	(0x01, sp), a
      00B4FC 7B 06            [ 1]  272 	ld	a, (0x06, sp)
      00B4FE 43               [ 1]  273 	cpl	a
      00B4FF 14 01            [ 1]  274 	and	a, (0x01, sp)
      00B501 F7               [ 1]  275 	ld	(x), a
                                    276 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 170: }
      00B502 84               [ 1]  277 	pop	a
      00B503 81               [ 4]  278 	ret
                                    279 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    280 ;	-----------------------------------------
                                    281 ;	 function GPIO_WriteReverse
                                    282 ;	-----------------------------------------
      00B504                        283 _GPIO_WriteReverse:
                                    284 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
      00B504 1E 03            [ 2]  285 	ldw	x, (0x03, sp)
      00B506 F6               [ 1]  286 	ld	a, (x)
      00B507 18 05            [ 1]  287 	xor	a, (0x05, sp)
      00B509 F7               [ 1]  288 	ld	(x), a
                                    289 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 183: }
      00B50A 81               [ 4]  290 	ret
                                    291 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    292 ;	-----------------------------------------
                                    293 ;	 function GPIO_ReadOutputData
                                    294 ;	-----------------------------------------
      00B50B                        295 _GPIO_ReadOutputData:
                                    296 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
      00B50B 1E 03            [ 2]  297 	ldw	x, (0x03, sp)
      00B50D F6               [ 1]  298 	ld	a, (x)
                                    299 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 194: }
      00B50E 81               [ 4]  300 	ret
                                    301 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    302 ;	-----------------------------------------
                                    303 ;	 function GPIO_ReadInputData
                                    304 ;	-----------------------------------------
      00B50F                        305 _GPIO_ReadInputData:
                                    306 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
      00B50F 1E 03            [ 2]  307 	ldw	x, (0x03, sp)
      00B511 E6 01            [ 1]  308 	ld	a, (0x1, x)
                                    309 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 205: }
      00B513 81               [ 4]  310 	ret
                                    311 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    312 ;	-----------------------------------------
                                    313 ;	 function GPIO_ReadInputPin
                                    314 ;	-----------------------------------------
      00B514                        315 _GPIO_ReadInputPin:
                                    316 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      00B514 1E 03            [ 2]  317 	ldw	x, (0x03, sp)
      00B516 E6 01            [ 1]  318 	ld	a, (0x1, x)
      00B518 14 05            [ 1]  319 	and	a, (0x05, sp)
                                    320 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 216: }
      00B51A 81               [ 4]  321 	ret
                                    322 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    323 ;	-----------------------------------------
                                    324 ;	 function GPIO_ExternalPullUpConfig
                                    325 ;	-----------------------------------------
      00B51B                        326 _GPIO_ExternalPullUpConfig:
      00B51B 88               [ 1]  327 	push	a
                                    328 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 228: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      00B51C 0D 06            [ 1]  329 	tnz	(0x06, sp)
      00B51E 26 0F            [ 1]  330 	jrne	00107$
      00B520 4B E4            [ 1]  331 	push	#0xe4
      00B522 5F               [ 1]  332 	clrw	x
      00B523 89               [ 2]  333 	pushw	x
      00B524 4B 00            [ 1]  334 	push	#0x00
      00B526 4B 54            [ 1]  335 	push	#<(___str_0+0)
      00B528 4B 82            [ 1]  336 	push	#((___str_0+0) >> 8)
      00B52A CD 85 9D         [ 4]  337 	call	_assert_failed
      00B52D 5B 06            [ 2]  338 	addw	sp, #6
      00B52F                        339 00107$:
                                    340 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 229: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B52F 0D 07            [ 1]  341 	tnz	(0x07, sp)
      00B531 27 14            [ 1]  342 	jreq	00109$
      00B533 7B 07            [ 1]  343 	ld	a, (0x07, sp)
      00B535 4A               [ 1]  344 	dec	a
      00B536 27 0F            [ 1]  345 	jreq	00109$
      00B538 4B E5            [ 1]  346 	push	#0xe5
      00B53A 5F               [ 1]  347 	clrw	x
      00B53B 89               [ 2]  348 	pushw	x
      00B53C 4B 00            [ 1]  349 	push	#0x00
      00B53E 4B 54            [ 1]  350 	push	#<(___str_0+0)
      00B540 4B 82            [ 1]  351 	push	#((___str_0+0) >> 8)
      00B542 CD 85 9D         [ 4]  352 	call	_assert_failed
      00B545 5B 06            [ 2]  353 	addw	sp, #6
      00B547                        354 00109$:
                                    355 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00B547 1E 04            [ 2]  356 	ldw	x, (0x04, sp)
      00B549 1C 00 03         [ 2]  357 	addw	x, #0x0003
      00B54C F6               [ 1]  358 	ld	a, (x)
                                    359 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
      00B54D 0D 07            [ 1]  360 	tnz	(0x07, sp)
      00B54F 27 05            [ 1]  361 	jreq	00102$
                                    362 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00B551 1A 06            [ 1]  363 	or	a, (0x06, sp)
      00B553 F7               [ 1]  364 	ld	(x), a
      00B554 20 0A            [ 2]  365 	jra	00104$
      00B556                        366 00102$:
                                    367 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      00B556 88               [ 1]  368 	push	a
      00B557 7B 07            [ 1]  369 	ld	a, (0x07, sp)
      00B559 43               [ 1]  370 	cpl	a
      00B55A 6B 02            [ 1]  371 	ld	(0x02, sp), a
      00B55C 84               [ 1]  372 	pop	a
      00B55D 14 01            [ 1]  373 	and	a, (0x01, sp)
      00B55F F7               [ 1]  374 	ld	(x), a
      00B560                        375 00104$:
                                    376 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 238: }
      00B560 84               [ 1]  377 	pop	a
      00B561 81               [ 4]  378 	ret
                                    379 	.area CODE
                                    380 	.area CONST
                                    381 	.area CONST
      008254                        382 ___str_0:
      008254 2F 55 73 65 72 73 2F   383 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      008290 4D 38 53 5F 53 74 64   384 	.ascii "M8S_StdPeriph_Driver/src/stm8s_gpio.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      0082B5 00                     385 	.db 0x00
                                    386 	.area CODE
                                    387 	.area INITIALIZER
                                    388 	.area CABS (ABS)
