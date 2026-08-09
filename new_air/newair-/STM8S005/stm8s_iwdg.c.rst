                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_iwdg
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _IWDG_WriteAccessCmd
                                     13 	.globl _IWDG_SetPrescaler
                                     14 	.globl _IWDG_SetReload
                                     15 	.globl _IWDG_ReloadCounter
                                     16 	.globl _IWDG_Enable
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area DATA
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area INITIALIZED
                                     25 ;--------------------------------------------------------
                                     26 ; absolute external ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DABS (ABS)
                                     29 
                                     30 ; default segment ordering for linker
                                     31 	.area HOME
                                     32 	.area GSINIT
                                     33 	.area GSFINAL
                                     34 	.area CONST
                                     35 	.area INITIALIZER
                                     36 	.area CODE
                                     37 
                                     38 ;--------------------------------------------------------
                                     39 ; global & static initialisations
                                     40 ;--------------------------------------------------------
                                     41 	.area HOME
                                     42 	.area GSINIT
                                     43 	.area GSFINAL
                                     44 	.area GSINIT
                                     45 ;--------------------------------------------------------
                                     46 ; Home
                                     47 ;--------------------------------------------------------
                                     48 	.area HOME
                                     49 	.area HOME
                                     50 ;--------------------------------------------------------
                                     51 ; code
                                     52 ;--------------------------------------------------------
                                     53 	.area CODE
                                     54 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 48: void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
                                     55 ;	-----------------------------------------
                                     56 ;	 function IWDG_WriteAccessCmd
                                     57 ;	-----------------------------------------
      00C6ED                         58 _IWDG_WriteAccessCmd:
                                     59 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 51: assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
      00C6ED 7B 03            [ 1]   60 	ld	a, (0x03, sp)
      00C6EF A1 55            [ 1]   61 	cp	a, #0x55
      00C6F1 27 13            [ 1]   62 	jreq	00104$
      00C6F3 0D 03            [ 1]   63 	tnz	(0x03, sp)
      00C6F5 27 0F            [ 1]   64 	jreq	00104$
      00C6F7 4B 33            [ 1]   65 	push	#0x33
      00C6F9 5F               [ 1]   66 	clrw	x
      00C6FA 89               [ 2]   67 	pushw	x
      00C6FB 4B 00            [ 1]   68 	push	#0x00
      00C6FD 4B F0            [ 1]   69 	push	#<(___str_0+0)
      00C6FF 4B 82            [ 1]   70 	push	#((___str_0+0) >> 8)
      00C701 CD 83 84         [ 4]   71 	call	_assert_failed
      00C704 5B 06            [ 2]   72 	addw	sp, #6
      00C706                         73 00104$:
                                     74 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 53: IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
      00C706 AE 50 E0         [ 2]   75 	ldw	x, #0x50e0
      00C709 7B 03            [ 1]   76 	ld	a, (0x03, sp)
      00C70B F7               [ 1]   77 	ld	(x), a
                                     78 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 54: }
      00C70C 81               [ 4]   79 	ret
                                     80 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 63: void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
                                     81 ;	-----------------------------------------
                                     82 ;	 function IWDG_SetPrescaler
                                     83 ;	-----------------------------------------
      00C70D                         84 _IWDG_SetPrescaler:
                                     85 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 66: assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
      00C70D 0D 03            [ 1]   86 	tnz	(0x03, sp)
      00C70F 27 32            [ 1]   87 	jreq	00104$
      00C711 7B 03            [ 1]   88 	ld	a, (0x03, sp)
      00C713 4A               [ 1]   89 	dec	a
      00C714 27 2D            [ 1]   90 	jreq	00104$
      00C716 7B 03            [ 1]   91 	ld	a, (0x03, sp)
      00C718 A1 02            [ 1]   92 	cp	a, #0x02
      00C71A 27 27            [ 1]   93 	jreq	00104$
      00C71C 7B 03            [ 1]   94 	ld	a, (0x03, sp)
      00C71E A1 03            [ 1]   95 	cp	a, #0x03
      00C720 27 21            [ 1]   96 	jreq	00104$
      00C722 7B 03            [ 1]   97 	ld	a, (0x03, sp)
      00C724 A1 04            [ 1]   98 	cp	a, #0x04
      00C726 27 1B            [ 1]   99 	jreq	00104$
      00C728 7B 03            [ 1]  100 	ld	a, (0x03, sp)
      00C72A A1 05            [ 1]  101 	cp	a, #0x05
      00C72C 27 15            [ 1]  102 	jreq	00104$
      00C72E 7B 03            [ 1]  103 	ld	a, (0x03, sp)
      00C730 A1 06            [ 1]  104 	cp	a, #0x06
      00C732 27 0F            [ 1]  105 	jreq	00104$
      00C734 4B 42            [ 1]  106 	push	#0x42
      00C736 5F               [ 1]  107 	clrw	x
      00C737 89               [ 2]  108 	pushw	x
      00C738 4B 00            [ 1]  109 	push	#0x00
      00C73A 4B F0            [ 1]  110 	push	#<(___str_0+0)
      00C73C 4B 82            [ 1]  111 	push	#((___str_0+0) >> 8)
      00C73E CD 83 84         [ 4]  112 	call	_assert_failed
      00C741 5B 06            [ 2]  113 	addw	sp, #6
      00C743                        114 00104$:
                                    115 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 68: IWDG->PR = (uint8_t)IWDG_Prescaler;
      00C743 AE 50 E1         [ 2]  116 	ldw	x, #0x50e1
      00C746 7B 03            [ 1]  117 	ld	a, (0x03, sp)
      00C748 F7               [ 1]  118 	ld	(x), a
                                    119 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 69: }
      00C749 81               [ 4]  120 	ret
                                    121 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 78: void IWDG_SetReload(uint8_t IWDG_Reload)
                                    122 ;	-----------------------------------------
                                    123 ;	 function IWDG_SetReload
                                    124 ;	-----------------------------------------
      00C74A                        125 _IWDG_SetReload:
                                    126 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 80: IWDG->RLR = IWDG_Reload;
      00C74A AE 50 E2         [ 2]  127 	ldw	x, #0x50e2
      00C74D 7B 03            [ 1]  128 	ld	a, (0x03, sp)
      00C74F F7               [ 1]  129 	ld	(x), a
                                    130 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 81: }
      00C750 81               [ 4]  131 	ret
                                    132 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 89: void IWDG_ReloadCounter(void)
                                    133 ;	-----------------------------------------
                                    134 ;	 function IWDG_ReloadCounter
                                    135 ;	-----------------------------------------
      00C751                        136 _IWDG_ReloadCounter:
                                    137 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 91: IWDG->KR = IWDG_KEY_REFRESH;
      00C751 35 AA 50 E0      [ 1]  138 	mov	0x50e0+0, #0xaa
                                    139 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 92: }
      00C755 81               [ 4]  140 	ret
                                    141 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 99: void IWDG_Enable(void)
                                    142 ;	-----------------------------------------
                                    143 ;	 function IWDG_Enable
                                    144 ;	-----------------------------------------
      00C756                        145 _IWDG_Enable:
                                    146 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 101: IWDG->KR = IWDG_KEY_ENABLE;
      00C756 35 CC 50 E0      [ 1]  147 	mov	0x50e0+0, #0xcc
                                    148 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iwdg.c: 102: }
      00C75A 81               [ 4]  149 	ret
                                    150 	.area CODE
                                    151 	.area CONST
                                    152 	.area CONST
      0082F0                        153 ___str_0:
      0082F0 2E 2E 2F 2E 2E 2F 2F   154 	.ascii "../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_iw"
             53 74 64 50 65 72 69
             70 68 5F 44 72 69 76
             65 72 2F 53 54 4D 38
             53 5F 53 74 64 50 65
             72 69 70 68 5F 44 72
             69 76 65 72 2F 2F 73
             72 63 2F 73 74 6D 38
             73 5F 69 77
      00832C 64 67 2E 63            155 	.ascii "dg.c"
      008330 00                     156 	.db 0x00
                                    157 	.area CODE
                                    158 	.area INITIALIZER
                                    159 	.area CABS (ABS)
