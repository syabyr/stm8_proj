                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module fan
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _fan_off
                                     12 	.globl _fan_on
                                     13 	.globl _write_fan_speed
                                     14 	.globl _puts
                                     15 	.globl _TIM2_GetCapture1
                                     16 	.globl _TIM1_SetCompare1
                                     17 	.globl _GPIO_ReadInputData
                                     18 	.globl _GPIO_WriteReverse
                                     19 	.globl _GPIO_WriteLow
                                     20 	.globl _GPIO_WriteHigh
                                     21 	.globl _FLASH_ReadByte
                                     22 	.globl _FLASH_ProgramByte
                                     23 	.globl _nCounter
                                     24 	.globl _speed_counter
                                     25 	.globl _speed
                                     26 	.globl _onoff_state
                                     27 	.globl _fan_init
                                     28 	.globl _fan_sw
                                     29 	.globl _fan_up
                                     30 	.globl _fan_down
                                     31 	.globl _sd_on_cap
                                     32 	.globl _sd_on_ovf
                                     33 	.globl _ms2_update
                                     34 ;--------------------------------------------------------
                                     35 ; ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area DATA
                                     38 ;--------------------------------------------------------
                                     39 ; ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area INITIALIZED
      000008                         42 _onoff_state::
      000008                         43 	.ds 1
      000009                         44 _speed::
      000009                         45 	.ds 1
      00000A                         46 _speed_counter::
      00000A                         47 	.ds 2
      00000C                         48 _nCounter::
      00000C                         49 	.ds 2
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
                                     79 ;	./src/fan.c: 11: void write_fan_speed(int8_t value)
                                     80 ;	-----------------------------------------
                                     81 ;	 function write_fan_speed
                                     82 ;	-----------------------------------------
      008387                         83 _write_fan_speed:
                                     84 ;	./src/fan.c: 13: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
      008387 C6 50 5A         [ 1]   85 	ld	a, 0x505a
      00838A A4 FE            [ 1]   86 	and	a, #0xfe
      00838C C7 50 5A         [ 1]   87 	ld	0x505a, a
                                     88 ;	./src/fan.c: 14: FLASH->CR1 |= (uint8_t)FLASH_PROGRAMTIME_STANDARD;
      00838F C6 50 5A         [ 1]   89 	ld	a, 0x505a
      008392 C7 50 5A         [ 1]   90 	ld	0x505a, a
                                     91 ;	./src/fan.c: 18: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
      008395 35 AE 50 64      [ 1]   92 	mov	0x5064+0, #0xae
                                     93 ;	./src/fan.c: 19: FLASH->DUKR = FLASH_RASS_KEY1;
      008399 35 56 50 64      [ 1]   94 	mov	0x5064+0, #0x56
                                     95 ;	./src/fan.c: 20: FLASH_ProgramByte(0x004010, value);
      00839D 7B 03            [ 1]   96 	ld	a, (0x03, sp)
      00839F 88               [ 1]   97 	push	a
      0083A0 4B 10            [ 1]   98 	push	#0x10
      0083A2 4B 40            [ 1]   99 	push	#0x40
      0083A4 5F               [ 1]  100 	clrw	x
      0083A5 89               [ 2]  101 	pushw	x
      0083A6 CD C8 3E         [ 4]  102 	call	_FLASH_ProgramByte
      0083A9 5B 05            [ 2]  103 	addw	sp, #5
                                    104 ;	./src/fan.c: 22: }
      0083AB 81               [ 4]  105 	ret
                                    106 ;	./src/fan.c: 25: void fan_init()
                                    107 ;	-----------------------------------------
                                    108 ;	 function fan_init
                                    109 ;	-----------------------------------------
      0083AC                        110 _fan_init:
      0083AC 89               [ 2]  111 	pushw	x
                                    112 ;	./src/fan.c: 28: speed = FLASH_ReadByte(0x004010);
      0083AD 4B 10            [ 1]  113 	push	#0x10
      0083AF 4B 40            [ 1]  114 	push	#0x40
      0083B1 5F               [ 1]  115 	clrw	x
      0083B2 89               [ 2]  116 	pushw	x
      0083B3 CD C8 82         [ 4]  117 	call	_FLASH_ReadByte
      0083B6 5B 04            [ 2]  118 	addw	sp, #4
                                    119 ;	./src/fan.c: 29: if((speed<1)||(speed>10))
      0083B8 C7 00 09         [ 1]  120 	ld	_speed+0, a
      0083BB A1 01            [ 1]  121 	cp	a, #0x01
      0083BD 2F 07            [ 1]  122 	jrslt	00101$
      0083BF C6 00 09         [ 1]  123 	ld	a, _speed+0
      0083C2 A1 0A            [ 1]  124 	cp	a, #0x0a
      0083C4 2D 0A            [ 1]  125 	jrsle	00102$
      0083C6                        126 00101$:
                                    127 ;	./src/fan.c: 31: speed = 1;
      0083C6 35 01 00 09      [ 1]  128 	mov	_speed+0, #0x01
                                    129 ;	./src/fan.c: 32: write_fan_speed(speed);
      0083CA 4B 01            [ 1]  130 	push	#0x01
      0083CC CD 83 87         [ 4]  131 	call	_write_fan_speed
      0083CF 84               [ 1]  132 	pop	a
      0083D0                        133 00102$:
                                    134 ;	./src/fan.c: 34: onoff_state = 1;
      0083D0 35 01 00 08      [ 1]  135 	mov	_onoff_state+0, #0x01
                                    136 ;	./src/fan.c: 35: TIM1_SetCompare1(300*(11-speed));
      0083D4 C6 00 09         [ 1]  137 	ld	a, _speed+0
      0083D7 6B 02            [ 1]  138 	ld	(0x02, sp), a
      0083D9 49               [ 1]  139 	rlc	a
      0083DA 4F               [ 1]  140 	clr	a
      0083DB A2 00            [ 1]  141 	sbc	a, #0x00
      0083DD 6B 01            [ 1]  142 	ld	(0x01, sp), a
      0083DF AE 00 0B         [ 2]  143 	ldw	x, #0x000b
      0083E2 72 F0 01         [ 2]  144 	subw	x, (0x01, sp)
      0083E5 89               [ 2]  145 	pushw	x
      0083E6 4B 2C            [ 1]  146 	push	#0x2c
      0083E8 4B 01            [ 1]  147 	push	#0x01
      0083EA CD CC 85         [ 4]  148 	call	__mulint
      0083ED 5B 04            [ 2]  149 	addw	sp, #4
      0083EF 89               [ 2]  150 	pushw	x
      0083F0 CD A9 CE         [ 4]  151 	call	_TIM1_SetCompare1
                                    152 ;	./src/fan.c: 36: }
      0083F3 5B 04            [ 2]  153 	addw	sp, #4
      0083F5 81               [ 4]  154 	ret
                                    155 ;	./src/fan.c: 39: void fan_on()
                                    156 ;	-----------------------------------------
                                    157 ;	 function fan_on
                                    158 ;	-----------------------------------------
      0083F6                        159 _fan_on:
                                    160 ;	./src/fan.c: 41: GPIO_WriteHigh(FAN_PORT,FAN_SW_PIN);
      0083F6 4B 04            [ 1]  161 	push	#0x04
      0083F8 4B 0A            [ 1]  162 	push	#0x0a
      0083FA 4B 50            [ 1]  163 	push	#0x50
      0083FC CD C4 EA         [ 4]  164 	call	_GPIO_WriteHigh
      0083FF 5B 03            [ 2]  165 	addw	sp, #3
                                    166 ;	./src/fan.c: 42: GPIO_WriteHigh(LED_PORT,LED_PIN);
      008401 4B 10            [ 1]  167 	push	#0x10
      008403 4B 19            [ 1]  168 	push	#0x19
      008405 4B 50            [ 1]  169 	push	#0x50
      008407 CD C4 EA         [ 4]  170 	call	_GPIO_WriteHigh
      00840A 5B 03            [ 2]  171 	addw	sp, #3
                                    172 ;	./src/fan.c: 43: onoff_state = 1;
      00840C 35 01 00 08      [ 1]  173 	mov	_onoff_state+0, #0x01
                                    174 ;	./src/fan.c: 44: }
      008410 81               [ 4]  175 	ret
                                    176 ;	./src/fan.c: 46: void fan_off()
                                    177 ;	-----------------------------------------
                                    178 ;	 function fan_off
                                    179 ;	-----------------------------------------
      008411                        180 _fan_off:
                                    181 ;	./src/fan.c: 48: GPIO_WriteLow(FAN_PORT,FAN_SW_PIN);
      008411 4B 04            [ 1]  182 	push	#0x04
      008413 4B 0A            [ 1]  183 	push	#0x0a
      008415 4B 50            [ 1]  184 	push	#0x50
      008417 CD C4 F1         [ 4]  185 	call	_GPIO_WriteLow
      00841A 5B 03            [ 2]  186 	addw	sp, #3
                                    187 ;	./src/fan.c: 49: GPIO_WriteLow(LED_PORT,LED_PIN);
      00841C 4B 10            [ 1]  188 	push	#0x10
      00841E 4B 19            [ 1]  189 	push	#0x19
      008420 4B 50            [ 1]  190 	push	#0x50
      008422 CD C4 F1         [ 4]  191 	call	_GPIO_WriteLow
      008425 5B 03            [ 2]  192 	addw	sp, #3
                                    193 ;	./src/fan.c: 50: onoff_state = 0;
      008427 72 5F 00 08      [ 1]  194 	clr	_onoff_state+0
                                    195 ;	./src/fan.c: 51: }
      00842B 81               [ 4]  196 	ret
                                    197 ;	./src/fan.c: 53: void fan_sw()
                                    198 ;	-----------------------------------------
                                    199 ;	 function fan_sw
                                    200 ;	-----------------------------------------
      00842C                        201 _fan_sw:
                                    202 ;	./src/fan.c: 56: GPIO_WriteReverse(FAN_PORT, FAN_SW_PIN);
      00842C 4B 04            [ 1]  203 	push	#0x04
      00842E 4B 0A            [ 1]  204 	push	#0x0a
      008430 4B 50            [ 1]  205 	push	#0x50
      008432 CD C4 FF         [ 4]  206 	call	_GPIO_WriteReverse
      008435 5B 03            [ 2]  207 	addw	sp, #3
                                    208 ;	./src/fan.c: 58: GPIO_WriteReverse(LED_PORT, LED_PIN);
      008437 4B 10            [ 1]  209 	push	#0x10
      008439 4B 19            [ 1]  210 	push	#0x19
      00843B 4B 50            [ 1]  211 	push	#0x50
      00843D CD C4 FF         [ 4]  212 	call	_GPIO_WriteReverse
      008440 5B 03            [ 2]  213 	addw	sp, #3
                                    214 ;	./src/fan.c: 61: if ((GPIO_ReadInputData(FAN_PORT) & FAN_SW_PIN) == 0x00)
      008442 4B 0A            [ 1]  215 	push	#0x0a
      008444 4B 50            [ 1]  216 	push	#0x50
      008446 CD C5 0A         [ 4]  217 	call	_GPIO_ReadInputData
      008449 85               [ 2]  218 	popw	x
      00844A A5 04            [ 1]  219 	bcp	a, #0x04
      00844C 26 05            [ 1]  220 	jrne	00102$
                                    221 ;	./src/fan.c: 63: onoff_state = 0;
      00844E 72 5F 00 08      [ 1]  222 	clr	_onoff_state+0
      008452 81               [ 4]  223 	ret
      008453                        224 00102$:
                                    225 ;	./src/fan.c: 67: onoff_state = 1;
      008453 35 01 00 08      [ 1]  226 	mov	_onoff_state+0, #0x01
                                    227 ;	./src/fan.c: 72: }
      008457 81               [ 4]  228 	ret
                                    229 ;	./src/fan.c: 74: void fan_up()
                                    230 ;	-----------------------------------------
                                    231 ;	 function fan_up
                                    232 ;	-----------------------------------------
      008458                        233 _fan_up:
      008458 89               [ 2]  234 	pushw	x
                                    235 ;	./src/fan.c: 76: if(onoff_state != 1)
      008459 C6 00 08         [ 1]  236 	ld	a, _onoff_state+0
      00845C 4A               [ 1]  237 	dec	a
                                    238 ;	./src/fan.c: 78: return;
      00845D 26 32            [ 1]  239 	jrne	00105$
                                    240 ;	./src/fan.c: 80: if(speed<10)
      00845F C6 00 09         [ 1]  241 	ld	a, _speed+0
      008462 A1 0A            [ 1]  242 	cp	a, #0x0a
      008464 2E 2B            [ 1]  243 	jrsge	00105$
                                    244 ;	./src/fan.c: 82: speed++;
      008466 72 5C 00 09      [ 1]  245 	inc	_speed+0
                                    246 ;	./src/fan.c: 83: TIM1_SetCompare1(300*(11-speed));
      00846A C6 00 09         [ 1]  247 	ld	a, _speed+0
      00846D 6B 02            [ 1]  248 	ld	(0x02, sp), a
      00846F 49               [ 1]  249 	rlc	a
      008470 4F               [ 1]  250 	clr	a
      008471 A2 00            [ 1]  251 	sbc	a, #0x00
      008473 6B 01            [ 1]  252 	ld	(0x01, sp), a
      008475 AE 00 0B         [ 2]  253 	ldw	x, #0x000b
      008478 72 F0 01         [ 2]  254 	subw	x, (0x01, sp)
      00847B 89               [ 2]  255 	pushw	x
      00847C 4B 2C            [ 1]  256 	push	#0x2c
      00847E 4B 01            [ 1]  257 	push	#0x01
      008480 CD CC 85         [ 4]  258 	call	__mulint
      008483 5B 04            [ 2]  259 	addw	sp, #4
      008485 89               [ 2]  260 	pushw	x
      008486 CD A9 CE         [ 4]  261 	call	_TIM1_SetCompare1
      008489 85               [ 2]  262 	popw	x
                                    263 ;	./src/fan.c: 84: write_fan_speed(speed);
      00848A 3B 00 09         [ 1]  264 	push	_speed+0
      00848D CD 83 87         [ 4]  265 	call	_write_fan_speed
      008490 84               [ 1]  266 	pop	a
      008491                        267 00105$:
                                    268 ;	./src/fan.c: 86: }
      008491 85               [ 2]  269 	popw	x
      008492 81               [ 4]  270 	ret
                                    271 ;	./src/fan.c: 88: void fan_down()
                                    272 ;	-----------------------------------------
                                    273 ;	 function fan_down
                                    274 ;	-----------------------------------------
      008493                        275 _fan_down:
      008493 89               [ 2]  276 	pushw	x
                                    277 ;	./src/fan.c: 90: if(onoff_state != 1)
      008494 C6 00 08         [ 1]  278 	ld	a, _onoff_state+0
      008497 4A               [ 1]  279 	dec	a
                                    280 ;	./src/fan.c: 92: return;
      008498 26 32            [ 1]  281 	jrne	00105$
                                    282 ;	./src/fan.c: 94: if(speed>1)
      00849A C6 00 09         [ 1]  283 	ld	a, _speed+0
      00849D A1 01            [ 1]  284 	cp	a, #0x01
      00849F 2D 2B            [ 1]  285 	jrsle	00105$
                                    286 ;	./src/fan.c: 96: speed--;
      0084A1 72 5A 00 09      [ 1]  287 	dec	_speed+0
                                    288 ;	./src/fan.c: 97: TIM1_SetCompare1(300*(11-speed));
      0084A5 C6 00 09         [ 1]  289 	ld	a, _speed+0
      0084A8 6B 02            [ 1]  290 	ld	(0x02, sp), a
      0084AA 49               [ 1]  291 	rlc	a
      0084AB 4F               [ 1]  292 	clr	a
      0084AC A2 00            [ 1]  293 	sbc	a, #0x00
      0084AE 6B 01            [ 1]  294 	ld	(0x01, sp), a
      0084B0 AE 00 0B         [ 2]  295 	ldw	x, #0x000b
      0084B3 72 F0 01         [ 2]  296 	subw	x, (0x01, sp)
      0084B6 89               [ 2]  297 	pushw	x
      0084B7 4B 2C            [ 1]  298 	push	#0x2c
      0084B9 4B 01            [ 1]  299 	push	#0x01
      0084BB CD CC 85         [ 4]  300 	call	__mulint
      0084BE 5B 04            [ 2]  301 	addw	sp, #4
      0084C0 89               [ 2]  302 	pushw	x
      0084C1 CD A9 CE         [ 4]  303 	call	_TIM1_SetCompare1
      0084C4 85               [ 2]  304 	popw	x
                                    305 ;	./src/fan.c: 98: write_fan_speed(speed);
      0084C5 3B 00 09         [ 1]  306 	push	_speed+0
      0084C8 CD 83 87         [ 4]  307 	call	_write_fan_speed
      0084CB 84               [ 1]  308 	pop	a
      0084CC                        309 00105$:
                                    310 ;	./src/fan.c: 100: }
      0084CC 85               [ 2]  311 	popw	x
      0084CD 81               [ 4]  312 	ret
                                    313 ;	./src/fan.c: 105: void sd_on_cap()
                                    314 ;	-----------------------------------------
                                    315 ;	 function sd_on_cap
                                    316 ;	-----------------------------------------
      0084CE                        317 _sd_on_cap:
                                    318 ;	./src/fan.c: 107: printf("cap\r\n");
      0084CE 4B 8C            [ 1]  319 	push	#<(___str_1+0)
      0084D0 4B 80            [ 1]  320 	push	#((___str_1+0) >> 8)
      0084D2 CD CC F8         [ 4]  321 	call	_puts
      0084D5 85               [ 2]  322 	popw	x
                                    323 ;	./src/fan.c: 108: speed_counter = TIM2_GetCapture1();
      0084D6 CD B6 71         [ 4]  324 	call	_TIM2_GetCapture1
      0084D9 CF 00 0A         [ 2]  325 	ldw	_speed_counter+0, x
                                    326 ;	./src/fan.c: 110: }
      0084DC 81               [ 4]  327 	ret
                                    328 ;	./src/fan.c: 115: void sd_on_ovf()
                                    329 ;	-----------------------------------------
                                    330 ;	 function sd_on_ovf
                                    331 ;	-----------------------------------------
      0084DD                        332 _sd_on_ovf:
                                    333 ;	./src/fan.c: 118: if(onoff_state != 0)
      0084DD 72 5D 00 08      [ 1]  334 	tnz	_onoff_state+0
      0084E1 26 01            [ 1]  335 	jrne	00110$
      0084E3 81               [ 4]  336 	ret
      0084E4                        337 00110$:
                                    338 ;	./src/fan.c: 120: printf("fan error\r\n");
      0084E4 4B 91            [ 1]  339 	push	#<(___str_3+0)
      0084E6 4B 80            [ 1]  340 	push	#((___str_3+0) >> 8)
      0084E8 CD CC F8         [ 4]  341 	call	_puts
      0084EB 85               [ 2]  342 	popw	x
                                    343 ;	./src/fan.c: 124: }
      0084EC 81               [ 4]  344 	ret
                                    345 ;	./src/fan.c: 127: void ms2_update()
                                    346 ;	-----------------------------------------
                                    347 ;	 function ms2_update
                                    348 ;	-----------------------------------------
      0084ED                        349 _ms2_update:
                                    350 ;	./src/fan.c: 129: nCounter++;
      0084ED CE 00 0C         [ 2]  351 	ldw	x, _nCounter+0
      0084F0 5C               [ 1]  352 	incw	x
      0084F1 CF 00 0C         [ 2]  353 	ldw	_nCounter+0, x
                                    354 ;	./src/fan.c: 130: }
      0084F4 81               [ 4]  355 	ret
                                    356 	.area CODE
                                    357 	.area CONST
                                    358 	.area CONST
      00808C                        359 ___str_1:
      00808C 63 61 70               360 	.ascii "cap"
      00808F 0D                     361 	.db 0x0d
      008090 00                     362 	.db 0x00
                                    363 	.area CODE
                                    364 	.area CONST
      008091                        365 ___str_3:
      008091 66 61 6E 20 65 72 72   366 	.ascii "fan error"
             6F 72
      00809A 0D                     367 	.db 0x0d
      00809B 00                     368 	.db 0x00
                                    369 	.area CODE
                                    370 	.area INITIALIZER
      00837E                        371 __xinit__onoff_state:
      00837E 00                     372 	.db #0x00	;  0
      00837F                        373 __xinit__speed:
      00837F 00                     374 	.db #0x00	;  0
      008380                        375 __xinit__speed_counter:
      008380 00 00                  376 	.dw #0x0000
      008382                        377 __xinit__nCounter:
      008382 00 00                  378 	.dw #0x0000
                                    379 	.area CABS (ABS)
