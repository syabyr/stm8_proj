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
      00A58A                         63 _GPIO_DeInit:
                                     64 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      00A58A 16 03            [ 2]   65 	ldw	y, (0x03, sp)
      00A58C 90 7F            [ 1]   66 	clr	(y)
                                     67 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      00A58E 93               [ 1]   68 	ldw	x, y
      00A58F 5C               [ 1]   69 	incw	x
      00A590 5C               [ 1]   70 	incw	x
      00A591 7F               [ 1]   71 	clr	(x)
                                     72 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      00A592 93               [ 1]   73 	ldw	x, y
      00A593 6F 03            [ 1]   74 	clr	(0x0003, x)
                                     75 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      00A595 93               [ 1]   76 	ldw	x, y
      00A596 6F 04            [ 1]   77 	clr	(0x0004, x)
                                     78 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 59: }
      00A598 81               [ 4]   79 	ret
                                     80 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     81 ;	-----------------------------------------
                                     82 ;	 function GPIO_Init
                                     83 ;	-----------------------------------------
      00A599                         84 _GPIO_Init:
      00A599 52 05            [ 2]   85 	sub	sp, #5
                                     86 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
      00A59B 0D 0B            [ 1]   87 	tnz	(0x0b, sp)
      00A59D 27 51            [ 1]   88 	jreq	00116$
      00A59F 7B 0B            [ 1]   89 	ld	a, (0x0b, sp)
      00A5A1 A1 40            [ 1]   90 	cp	a, #0x40
      00A5A3 27 4B            [ 1]   91 	jreq	00116$
      00A5A5 7B 0B            [ 1]   92 	ld	a, (0x0b, sp)
      00A5A7 A1 20            [ 1]   93 	cp	a, #0x20
      00A5A9 27 45            [ 1]   94 	jreq	00116$
      00A5AB 7B 0B            [ 1]   95 	ld	a, (0x0b, sp)
      00A5AD A1 60            [ 1]   96 	cp	a, #0x60
      00A5AF 27 3F            [ 1]   97 	jreq	00116$
      00A5B1 7B 0B            [ 1]   98 	ld	a, (0x0b, sp)
      00A5B3 A1 A0            [ 1]   99 	cp	a, #0xa0
      00A5B5 27 39            [ 1]  100 	jreq	00116$
      00A5B7 7B 0B            [ 1]  101 	ld	a, (0x0b, sp)
      00A5B9 A1 E0            [ 1]  102 	cp	a, #0xe0
      00A5BB 27 33            [ 1]  103 	jreq	00116$
      00A5BD 7B 0B            [ 1]  104 	ld	a, (0x0b, sp)
      00A5BF A1 80            [ 1]  105 	cp	a, #0x80
      00A5C1 27 2D            [ 1]  106 	jreq	00116$
      00A5C3 7B 0B            [ 1]  107 	ld	a, (0x0b, sp)
      00A5C5 A1 C0            [ 1]  108 	cp	a, #0xc0
      00A5C7 27 27            [ 1]  109 	jreq	00116$
      00A5C9 7B 0B            [ 1]  110 	ld	a, (0x0b, sp)
      00A5CB A1 B0            [ 1]  111 	cp	a, #0xb0
      00A5CD 27 21            [ 1]  112 	jreq	00116$
      00A5CF 7B 0B            [ 1]  113 	ld	a, (0x0b, sp)
      00A5D1 A1 F0            [ 1]  114 	cp	a, #0xf0
      00A5D3 27 1B            [ 1]  115 	jreq	00116$
      00A5D5 7B 0B            [ 1]  116 	ld	a, (0x0b, sp)
      00A5D7 A1 90            [ 1]  117 	cp	a, #0x90
      00A5D9 27 15            [ 1]  118 	jreq	00116$
      00A5DB 7B 0B            [ 1]  119 	ld	a, (0x0b, sp)
      00A5DD A1 D0            [ 1]  120 	cp	a, #0xd0
      00A5DF 27 0F            [ 1]  121 	jreq	00116$
      00A5E1 4B 4D            [ 1]  122 	push	#0x4d
      00A5E3 5F               [ 1]  123 	clrw	x
      00A5E4 89               [ 2]  124 	pushw	x
      00A5E5 4B 00            [ 1]  125 	push	#0x00
      00A5E7 4B 2A            [ 1]  126 	push	#<(___str_0+0)
      00A5E9 4B 82            [ 1]  127 	push	#((___str_0+0) >> 8)
      00A5EB CD 85 5C         [ 4]  128 	call	_assert_failed
      00A5EE 5B 06            [ 2]  129 	addw	sp, #6
      00A5F0                        130 00116$:
                                    131 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      00A5F0 0D 0A            [ 1]  132 	tnz	(0x0a, sp)
      00A5F2 26 0F            [ 1]  133 	jrne	00151$
      00A5F4 4B 4E            [ 1]  134 	push	#0x4e
      00A5F6 5F               [ 1]  135 	clrw	x
      00A5F7 89               [ 2]  136 	pushw	x
      00A5F8 4B 00            [ 1]  137 	push	#0x00
      00A5FA 4B 2A            [ 1]  138 	push	#<(___str_0+0)
      00A5FC 4B 82            [ 1]  139 	push	#((___str_0+0) >> 8)
      00A5FE CD 85 5C         [ 4]  140 	call	_assert_failed
      00A601 5B 06            [ 2]  141 	addw	sp, #6
      00A603                        142 00151$:
                                    143 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00A603 16 08            [ 2]  144 	ldw	y, (0x08, sp)
      00A605 93               [ 1]  145 	ldw	x, y
      00A606 1C 00 04         [ 2]  146 	addw	x, #0x0004
      00A609 1F 01            [ 2]  147 	ldw	(0x01, sp), x
      00A60B F6               [ 1]  148 	ld	a, (x)
      00A60C 88               [ 1]  149 	push	a
      00A60D 7B 0B            [ 1]  150 	ld	a, (0x0b, sp)
      00A60F 43               [ 1]  151 	cpl	a
      00A610 6B 04            [ 1]  152 	ld	(0x04, sp), a
      00A612 84               [ 1]  153 	pop	a
      00A613 14 03            [ 1]  154 	and	a, (0x03, sp)
      00A615 1E 01            [ 2]  155 	ldw	x, (0x01, sp)
      00A617 F7               [ 1]  156 	ld	(x), a
                                    157 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00A618 93               [ 1]  158 	ldw	x, y
      00A619 5C               [ 1]  159 	incw	x
      00A61A 5C               [ 1]  160 	incw	x
      00A61B 1F 04            [ 2]  161 	ldw	(0x04, sp), x
                                    162 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      00A61D 0D 0B            [ 1]  163 	tnz	(0x0b, sp)
      00A61F 2A 1E            [ 1]  164 	jrpl	00105$
                                    165 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      00A621 90 F6            [ 1]  166 	ld	a, (y)
                                    167 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      00A623 88               [ 1]  168 	push	a
      00A624 7B 0C            [ 1]  169 	ld	a, (0x0c, sp)
      00A626 A5 10            [ 1]  170 	bcp	a, #0x10
      00A628 84               [ 1]  171 	pop	a
      00A629 27 06            [ 1]  172 	jreq	00102$
                                    173 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      00A62B 1A 0A            [ 1]  174 	or	a, (0x0a, sp)
      00A62D 90 F7            [ 1]  175 	ld	(y), a
      00A62F 20 04            [ 2]  176 	jra	00103$
      00A631                        177 00102$:
                                    178 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      00A631 14 03            [ 1]  179 	and	a, (0x03, sp)
      00A633 90 F7            [ 1]  180 	ld	(y), a
      00A635                        181 00103$:
                                    182 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00A635 1E 04            [ 2]  183 	ldw	x, (0x04, sp)
      00A637 F6               [ 1]  184 	ld	a, (x)
      00A638 1A 0A            [ 1]  185 	or	a, (0x0a, sp)
      00A63A 1E 04            [ 2]  186 	ldw	x, (0x04, sp)
      00A63C F7               [ 1]  187 	ld	(x), a
      00A63D 20 08            [ 2]  188 	jra	00106$
      00A63F                        189 00105$:
                                    190 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      00A63F 1E 04            [ 2]  191 	ldw	x, (0x04, sp)
      00A641 F6               [ 1]  192 	ld	a, (x)
      00A642 14 03            [ 1]  193 	and	a, (0x03, sp)
      00A644 1E 04            [ 2]  194 	ldw	x, (0x04, sp)
      00A646 F7               [ 1]  195 	ld	(x), a
      00A647                        196 00106$:
                                    197 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00A647 93               [ 1]  198 	ldw	x, y
      00A648 1C 00 03         [ 2]  199 	addw	x, #0x0003
      00A64B F6               [ 1]  200 	ld	a, (x)
                                    201 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      00A64C 88               [ 1]  202 	push	a
      00A64D 7B 0C            [ 1]  203 	ld	a, (0x0c, sp)
      00A64F A5 40            [ 1]  204 	bcp	a, #0x40
      00A651 84               [ 1]  205 	pop	a
      00A652 27 05            [ 1]  206 	jreq	00108$
                                    207 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00A654 1A 0A            [ 1]  208 	or	a, (0x0a, sp)
      00A656 F7               [ 1]  209 	ld	(x), a
      00A657 20 03            [ 2]  210 	jra	00109$
      00A659                        211 00108$:
                                    212 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      00A659 14 03            [ 1]  213 	and	a, (0x03, sp)
      00A65B F7               [ 1]  214 	ld	(x), a
      00A65C                        215 00109$:
                                    216 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00A65C 1E 01            [ 2]  217 	ldw	x, (0x01, sp)
      00A65E F6               [ 1]  218 	ld	a, (x)
                                    219 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      00A65F 88               [ 1]  220 	push	a
      00A660 7B 0C            [ 1]  221 	ld	a, (0x0c, sp)
      00A662 A5 20            [ 1]  222 	bcp	a, #0x20
      00A664 84               [ 1]  223 	pop	a
      00A665 27 07            [ 1]  224 	jreq	00111$
                                    225 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      00A667 1A 0A            [ 1]  226 	or	a, (0x0a, sp)
      00A669 1E 01            [ 2]  227 	ldw	x, (0x01, sp)
      00A66B F7               [ 1]  228 	ld	(x), a
      00A66C 20 05            [ 2]  229 	jra	00113$
      00A66E                        230 00111$:
                                    231 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00A66E 14 03            [ 1]  232 	and	a, (0x03, sp)
      00A670 1E 01            [ 2]  233 	ldw	x, (0x01, sp)
      00A672 F7               [ 1]  234 	ld	(x), a
      00A673                        235 00113$:
                                    236 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 131: }
      00A673 5B 05            [ 2]  237 	addw	sp, #5
      00A675 81               [ 4]  238 	ret
                                    239 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    240 ;	-----------------------------------------
                                    241 ;	 function GPIO_Write
                                    242 ;	-----------------------------------------
      00A676                        243 _GPIO_Write:
                                    244 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      00A676 1E 03            [ 2]  245 	ldw	x, (0x03, sp)
      00A678 7B 05            [ 1]  246 	ld	a, (0x05, sp)
      00A67A F7               [ 1]  247 	ld	(x), a
                                    248 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 144: }
      00A67B 81               [ 4]  249 	ret
                                    250 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    251 ;	-----------------------------------------
                                    252 ;	 function GPIO_WriteHigh
                                    253 ;	-----------------------------------------
      00A67C                        254 _GPIO_WriteHigh:
                                    255 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      00A67C 1E 03            [ 2]  256 	ldw	x, (0x03, sp)
      00A67E F6               [ 1]  257 	ld	a, (x)
      00A67F 1A 05            [ 1]  258 	or	a, (0x05, sp)
      00A681 F7               [ 1]  259 	ld	(x), a
                                    260 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 157: }
      00A682 81               [ 4]  261 	ret
                                    262 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    263 ;	-----------------------------------------
                                    264 ;	 function GPIO_WriteLow
                                    265 ;	-----------------------------------------
      00A683                        266 _GPIO_WriteLow:
      00A683 88               [ 1]  267 	push	a
                                    268 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      00A684 1E 04            [ 2]  269 	ldw	x, (0x04, sp)
      00A686 F6               [ 1]  270 	ld	a, (x)
      00A687 6B 01            [ 1]  271 	ld	(0x01, sp), a
      00A689 7B 06            [ 1]  272 	ld	a, (0x06, sp)
      00A68B 43               [ 1]  273 	cpl	a
      00A68C 14 01            [ 1]  274 	and	a, (0x01, sp)
      00A68E F7               [ 1]  275 	ld	(x), a
                                    276 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 170: }
      00A68F 84               [ 1]  277 	pop	a
      00A690 81               [ 4]  278 	ret
                                    279 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    280 ;	-----------------------------------------
                                    281 ;	 function GPIO_WriteReverse
                                    282 ;	-----------------------------------------
      00A691                        283 _GPIO_WriteReverse:
                                    284 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
      00A691 1E 03            [ 2]  285 	ldw	x, (0x03, sp)
      00A693 F6               [ 1]  286 	ld	a, (x)
      00A694 18 05            [ 1]  287 	xor	a, (0x05, sp)
      00A696 F7               [ 1]  288 	ld	(x), a
                                    289 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 183: }
      00A697 81               [ 4]  290 	ret
                                    291 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    292 ;	-----------------------------------------
                                    293 ;	 function GPIO_ReadOutputData
                                    294 ;	-----------------------------------------
      00A698                        295 _GPIO_ReadOutputData:
                                    296 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
      00A698 1E 03            [ 2]  297 	ldw	x, (0x03, sp)
      00A69A F6               [ 1]  298 	ld	a, (x)
                                    299 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 194: }
      00A69B 81               [ 4]  300 	ret
                                    301 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    302 ;	-----------------------------------------
                                    303 ;	 function GPIO_ReadInputData
                                    304 ;	-----------------------------------------
      00A69C                        305 _GPIO_ReadInputData:
                                    306 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
      00A69C 1E 03            [ 2]  307 	ldw	x, (0x03, sp)
      00A69E E6 01            [ 1]  308 	ld	a, (0x1, x)
                                    309 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 205: }
      00A6A0 81               [ 4]  310 	ret
                                    311 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    312 ;	-----------------------------------------
                                    313 ;	 function GPIO_ReadInputPin
                                    314 ;	-----------------------------------------
      00A6A1                        315 _GPIO_ReadInputPin:
                                    316 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      00A6A1 1E 03            [ 2]  317 	ldw	x, (0x03, sp)
      00A6A3 E6 01            [ 1]  318 	ld	a, (0x1, x)
      00A6A5 14 05            [ 1]  319 	and	a, (0x05, sp)
                                    320 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 216: }
      00A6A7 81               [ 4]  321 	ret
                                    322 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    323 ;	-----------------------------------------
                                    324 ;	 function GPIO_ExternalPullUpConfig
                                    325 ;	-----------------------------------------
      00A6A8                        326 _GPIO_ExternalPullUpConfig:
      00A6A8 88               [ 1]  327 	push	a
                                    328 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 228: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
      00A6A9 0D 06            [ 1]  329 	tnz	(0x06, sp)
      00A6AB 26 0F            [ 1]  330 	jrne	00107$
      00A6AD 4B E4            [ 1]  331 	push	#0xe4
      00A6AF 5F               [ 1]  332 	clrw	x
      00A6B0 89               [ 2]  333 	pushw	x
      00A6B1 4B 00            [ 1]  334 	push	#0x00
      00A6B3 4B 2A            [ 1]  335 	push	#<(___str_0+0)
      00A6B5 4B 82            [ 1]  336 	push	#((___str_0+0) >> 8)
      00A6B7 CD 85 5C         [ 4]  337 	call	_assert_failed
      00A6BA 5B 06            [ 2]  338 	addw	sp, #6
      00A6BC                        339 00107$:
                                    340 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 229: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A6BC 0D 07            [ 1]  341 	tnz	(0x07, sp)
      00A6BE 27 14            [ 1]  342 	jreq	00109$
      00A6C0 7B 07            [ 1]  343 	ld	a, (0x07, sp)
      00A6C2 4A               [ 1]  344 	dec	a
      00A6C3 27 0F            [ 1]  345 	jreq	00109$
      00A6C5 4B E5            [ 1]  346 	push	#0xe5
      00A6C7 5F               [ 1]  347 	clrw	x
      00A6C8 89               [ 2]  348 	pushw	x
      00A6C9 4B 00            [ 1]  349 	push	#0x00
      00A6CB 4B 2A            [ 1]  350 	push	#<(___str_0+0)
      00A6CD 4B 82            [ 1]  351 	push	#((___str_0+0) >> 8)
      00A6CF CD 85 5C         [ 4]  352 	call	_assert_failed
      00A6D2 5B 06            [ 2]  353 	addw	sp, #6
      00A6D4                        354 00109$:
                                    355 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00A6D4 1E 04            [ 2]  356 	ldw	x, (0x04, sp)
      00A6D6 1C 00 03         [ 2]  357 	addw	x, #0x0003
      00A6D9 F6               [ 1]  358 	ld	a, (x)
                                    359 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
      00A6DA 0D 07            [ 1]  360 	tnz	(0x07, sp)
      00A6DC 27 05            [ 1]  361 	jreq	00102$
                                    362 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00A6DE 1A 06            [ 1]  363 	or	a, (0x06, sp)
      00A6E0 F7               [ 1]  364 	ld	(x), a
      00A6E1 20 0A            [ 2]  365 	jra	00104$
      00A6E3                        366 00102$:
                                    367 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      00A6E3 88               [ 1]  368 	push	a
      00A6E4 7B 07            [ 1]  369 	ld	a, (0x07, sp)
      00A6E6 43               [ 1]  370 	cpl	a
      00A6E7 6B 02            [ 1]  371 	ld	(0x02, sp), a
      00A6E9 84               [ 1]  372 	pop	a
      00A6EA 14 01            [ 1]  373 	and	a, (0x01, sp)
      00A6EC F7               [ 1]  374 	ld	(x), a
      00A6ED                        375 00104$:
                                    376 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 238: }
      00A6ED 84               [ 1]  377 	pop	a
      00A6EE 81               [ 4]  378 	ret
                                    379 	.area CODE
                                    380 	.area CONST
                                    381 	.area CONST
      00822A                        382 ___str_0:
      00822A 2F 55 73 65 72 73 2F   383 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      008266 4D 38 53 5F 53 74 64   384 	.ascii "M8S_StdPeriph_Driver/src/stm8s_gpio.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      00828B 00                     385 	.db 0x00
                                    386 	.area CODE
                                    387 	.area INITIALIZER
                                    388 	.area CABS (ABS)
