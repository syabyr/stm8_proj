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
                                     11 	.globl _TIM1_SetCompare1
                                     12 	.globl _GPIO_WriteReverse
                                     13 	.globl _speed
                                     14 	.globl _fan_sw
                                     15 	.globl _fan_up
                                     16 	.globl _fan_down
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area DATA
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area INITIALIZED
      000008                         25 _speed::
      000008                         26 	.ds 2
                                     27 ;--------------------------------------------------------
                                     28 ; absolute external ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area DABS (ABS)
                                     31 
                                     32 ; default segment ordering for linker
                                     33 	.area HOME
                                     34 	.area GSINIT
                                     35 	.area GSFINAL
                                     36 	.area CONST
                                     37 	.area INITIALIZER
                                     38 	.area CODE
                                     39 
                                     40 ;--------------------------------------------------------
                                     41 ; global & static initialisations
                                     42 ;--------------------------------------------------------
                                     43 	.area HOME
                                     44 	.area GSINIT
                                     45 	.area GSFINAL
                                     46 	.area GSINIT
                                     47 ;--------------------------------------------------------
                                     48 ; Home
                                     49 ;--------------------------------------------------------
                                     50 	.area HOME
                                     51 	.area HOME
                                     52 ;--------------------------------------------------------
                                     53 ; code
                                     54 ;--------------------------------------------------------
                                     55 	.area CODE
                                     56 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 7: void fan_sw()
                                     57 ;	-----------------------------------------
                                     58 ;	 function fan_sw
                                     59 ;	-----------------------------------------
      0086DA                         60 _fan_sw:
                                     61 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 10: GPIO_WriteReverse(FAN_PORT, FAN_SW_PIN);
      0086DA 4B 04            [ 1]   62 	push	#0x04
      0086DC 4B 0A            [ 1]   63 	push	#0x0a
      0086DE 4B 50            [ 1]   64 	push	#0x50
      0086E0 CD B5 04         [ 4]   65 	call	_GPIO_WriteReverse
      0086E3 5B 03            [ 2]   66 	addw	sp, #3
                                     67 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 19: }
      0086E5 81               [ 4]   68 	ret
                                     69 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 21: void fan_up()
                                     70 ;	-----------------------------------------
                                     71 ;	 function fan_up
                                     72 ;	-----------------------------------------
      0086E6                         73 _fan_up:
                                     74 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 23: if(speed > 300)
      0086E6 CE 00 08         [ 2]   75 	ldw	x, _speed+0
      0086E9 A3 01 2C         [ 2]   76 	cpw	x, #0x012c
      0086EC 2D 06            [ 1]   77 	jrsle	00102$
                                     78 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 25: speed = speed - 300;
      0086EE 1D 01 2C         [ 2]   79 	subw	x, #0x012c
      0086F1 CF 00 08         [ 2]   80 	ldw	_speed+0, x
      0086F4                         81 00102$:
                                     82 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 28: TIM1_SetCompare1(speed);
      0086F4 CE 00 08         [ 2]   83 	ldw	x, _speed+0
      0086F7 89               [ 2]   84 	pushw	x
      0086F8 CD 99 D3         [ 4]   85 	call	_TIM1_SetCompare1
      0086FB 85               [ 2]   86 	popw	x
                                     87 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 29: }
      0086FC 81               [ 4]   88 	ret
                                     89 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 31: void fan_down()
                                     90 ;	-----------------------------------------
                                     91 ;	 function fan_down
                                     92 ;	-----------------------------------------
      0086FD                         93 _fan_down:
                                     94 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 34: if(speed < 3200)
      0086FD CE 00 08         [ 2]   95 	ldw	x, _speed+0
      008700 A3 0C 80         [ 2]   96 	cpw	x, #0x0c80
      008703 2E 06            [ 1]   97 	jrsge	00102$
                                     98 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 36: speed = speed + 300;
      008705 1C 01 2C         [ 2]   99 	addw	x, #0x012c
      008708 CF 00 08         [ 2]  100 	ldw	_speed+0, x
      00870B                        101 00102$:
                                    102 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 39: TIM1_SetCompare1(speed);
      00870B CE 00 08         [ 2]  103 	ldw	x, _speed+0
      00870E 89               [ 2]  104 	pushw	x
      00870F CD 99 D3         [ 4]  105 	call	_TIM1_SetCompare1
      008712 85               [ 2]  106 	popw	x
                                    107 ;	/Users/mybays/develop/stm8/stm8_proj.dev/new_air/newair/src/fan.c: 40: }
      008713 81               [ 4]  108 	ret
                                    109 	.area CODE
                                    110 	.area CONST
                                    111 	.area INITIALIZER
      008455                        112 __xinit__speed:
      008455 00 00                  113 	.dw #0x0000
                                    114 	.area CABS (ABS)
