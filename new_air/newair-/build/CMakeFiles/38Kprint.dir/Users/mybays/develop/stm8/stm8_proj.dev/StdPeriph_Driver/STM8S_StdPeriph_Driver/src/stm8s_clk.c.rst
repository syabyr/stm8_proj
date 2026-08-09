                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _assert_failed
                                     14 	.globl _CLK_DeInit
                                     15 	.globl _CLK_FastHaltWakeUpCmd
                                     16 	.globl _CLK_HSECmd
                                     17 	.globl _CLK_HSICmd
                                     18 	.globl _CLK_LSICmd
                                     19 	.globl _CLK_CCOCmd
                                     20 	.globl _CLK_ClockSwitchCmd
                                     21 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     22 	.globl _CLK_PeripheralClockConfig
                                     23 	.globl _CLK_ClockSwitchConfig
                                     24 	.globl _CLK_HSIPrescalerConfig
                                     25 	.globl _CLK_CCOConfig
                                     26 	.globl _CLK_ITConfig
                                     27 	.globl _CLK_SYSCLKConfig
                                     28 	.globl _CLK_SWIMConfig
                                     29 	.globl _CLK_ClockSecuritySystemEnable
                                     30 	.globl _CLK_GetSYSCLKSource
                                     31 	.globl _CLK_GetClockFreq
                                     32 	.globl _CLK_AdjustHSICalibrationValue
                                     33 	.globl _CLK_SYSCLKEmergencyClear
                                     34 	.globl _CLK_GetFlagStatus
                                     35 	.globl _CLK_GetITStatus
                                     36 	.globl _CLK_ClearITPendingBit
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area DABS (ABS)
                                     49 
                                     50 ; default segment ordering for linker
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area CONST
                                     55 	.area INITIALIZER
                                     56 	.area CODE
                                     57 
                                     58 ;--------------------------------------------------------
                                     59 ; global & static initialisations
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area GSINIT
                                     63 	.area GSFINAL
                                     64 	.area GSINIT
                                     65 ;--------------------------------------------------------
                                     66 ; Home
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME
                                     69 	.area HOME
                                     70 ;--------------------------------------------------------
                                     71 ; code
                                     72 ;--------------------------------------------------------
                                     73 	.area CODE
                                     74 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     75 ;	-----------------------------------------
                                     76 ;	 function CLK_DeInit
                                     77 ;	-----------------------------------------
      00B0BB                         78 _CLK_DeInit:
                                     79 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      00B0BB 35 01 50 C0      [ 1]   80 	mov	0x50c0+0, #0x01
                                     81 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      00B0BF 35 00 50 C1      [ 1]   82 	mov	0x50c1+0, #0x00
                                     83 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      00B0C3 35 E1 50 C4      [ 1]   84 	mov	0x50c4+0, #0xe1
                                     85 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      00B0C7 35 00 50 C5      [ 1]   86 	mov	0x50c5+0, #0x00
                                     87 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      00B0CB 35 18 50 C6      [ 1]   88 	mov	0x50c6+0, #0x18
                                     89 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      00B0CF 35 FF 50 C7      [ 1]   90 	mov	0x50c7+0, #0xff
                                     91 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      00B0D3 35 FF 50 CA      [ 1]   92 	mov	0x50ca+0, #0xff
                                     93 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      00B0D7 35 00 50 C8      [ 1]   94 	mov	0x50c8+0, #0x00
                                     95 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00B0DB 35 00 50 C9      [ 1]   96 	mov	0x50c9+0, #0x00
                                     97 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      00B0DF                         98 00101$:
      00B0DF C6 50 C9         [ 1]   99 	ld	a, 0x50c9
      00B0E2 44               [ 1]  100 	srl	a
      00B0E3 25 FA            [ 1]  101 	jrc	00101$
                                    102 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00B0E5 35 00 50 C9      [ 1]  103 	mov	0x50c9+0, #0x00
                                    104 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      00B0E9 35 00 50 CC      [ 1]  105 	mov	0x50cc+0, #0x00
                                    106 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      00B0ED 35 00 50 CD      [ 1]  107 	mov	0x50cd+0, #0x00
                                    108 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 88: }
      00B0F1 81               [ 4]  109 	ret
                                    110 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    111 ;	-----------------------------------------
                                    112 ;	 function CLK_FastHaltWakeUpCmd
                                    113 ;	-----------------------------------------
      00B0F2                        114 _CLK_FastHaltWakeUpCmd:
                                    115 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 102: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B0F2 0D 03            [ 1]  116 	tnz	(0x03, sp)
      00B0F4 27 14            [ 1]  117 	jreq	00107$
      00B0F6 7B 03            [ 1]  118 	ld	a, (0x03, sp)
      00B0F8 4A               [ 1]  119 	dec	a
      00B0F9 27 0F            [ 1]  120 	jreq	00107$
      00B0FB 4B 66            [ 1]  121 	push	#0x66
      00B0FD 5F               [ 1]  122 	clrw	x
      00B0FE 89               [ 2]  123 	pushw	x
      00B0FF 4B 00            [ 1]  124 	push	#0x00
      00B101 4B 5D            [ 1]  125 	push	#<(___str_0+0)
      00B103 4B 83            [ 1]  126 	push	#((___str_0+0) >> 8)
      00B105 CD 85 5C         [ 4]  127 	call	_assert_failed
      00B108 5B 06            [ 2]  128 	addw	sp, #6
      00B10A                        129 00107$:
                                    130 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      00B10A C6 50 C0         [ 1]  131 	ld	a, 0x50c0
                                    132 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 104: if (NewState != DISABLE)
      00B10D 0D 03            [ 1]  133 	tnz	(0x03, sp)
      00B10F 27 06            [ 1]  134 	jreq	00102$
                                    135 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      00B111 AA 04            [ 1]  136 	or	a, #0x04
      00B113 C7 50 C0         [ 1]  137 	ld	0x50c0, a
      00B116 81               [ 4]  138 	ret
      00B117                        139 00102$:
                                    140 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      00B117 A4 FB            [ 1]  141 	and	a, #0xfb
      00B119 C7 50 C0         [ 1]  142 	ld	0x50c0, a
                                    143 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 114: }
      00B11C 81               [ 4]  144 	ret
                                    145 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    146 ;	-----------------------------------------
                                    147 ;	 function CLK_HSECmd
                                    148 ;	-----------------------------------------
      00B11D                        149 _CLK_HSECmd:
                                    150 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 124: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B11D 0D 03            [ 1]  151 	tnz	(0x03, sp)
      00B11F 27 14            [ 1]  152 	jreq	00107$
      00B121 7B 03            [ 1]  153 	ld	a, (0x03, sp)
      00B123 4A               [ 1]  154 	dec	a
      00B124 27 0F            [ 1]  155 	jreq	00107$
      00B126 4B 7C            [ 1]  156 	push	#0x7c
      00B128 5F               [ 1]  157 	clrw	x
      00B129 89               [ 2]  158 	pushw	x
      00B12A 4B 00            [ 1]  159 	push	#0x00
      00B12C 4B 5D            [ 1]  160 	push	#<(___str_0+0)
      00B12E 4B 83            [ 1]  161 	push	#((___str_0+0) >> 8)
      00B130 CD 85 5C         [ 4]  162 	call	_assert_failed
      00B133 5B 06            [ 2]  163 	addw	sp, #6
      00B135                        164 00107$:
                                    165 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      00B135 C6 50 C1         [ 1]  166 	ld	a, 0x50c1
                                    167 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 126: if (NewState != DISABLE)
      00B138 0D 03            [ 1]  168 	tnz	(0x03, sp)
      00B13A 27 06            [ 1]  169 	jreq	00102$
                                    170 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      00B13C AA 01            [ 1]  171 	or	a, #0x01
      00B13E C7 50 C1         [ 1]  172 	ld	0x50c1, a
      00B141 81               [ 4]  173 	ret
      00B142                        174 00102$:
                                    175 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00B142 A4 FE            [ 1]  176 	and	a, #0xfe
      00B144 C7 50 C1         [ 1]  177 	ld	0x50c1, a
                                    178 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 136: }
      00B147 81               [ 4]  179 	ret
                                    180 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    181 ;	-----------------------------------------
                                    182 ;	 function CLK_HSICmd
                                    183 ;	-----------------------------------------
      00B148                        184 _CLK_HSICmd:
                                    185 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 146: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B148 0D 03            [ 1]  186 	tnz	(0x03, sp)
      00B14A 27 14            [ 1]  187 	jreq	00107$
      00B14C 7B 03            [ 1]  188 	ld	a, (0x03, sp)
      00B14E 4A               [ 1]  189 	dec	a
      00B14F 27 0F            [ 1]  190 	jreq	00107$
      00B151 4B 92            [ 1]  191 	push	#0x92
      00B153 5F               [ 1]  192 	clrw	x
      00B154 89               [ 2]  193 	pushw	x
      00B155 4B 00            [ 1]  194 	push	#0x00
      00B157 4B 5D            [ 1]  195 	push	#<(___str_0+0)
      00B159 4B 83            [ 1]  196 	push	#((___str_0+0) >> 8)
      00B15B CD 85 5C         [ 4]  197 	call	_assert_failed
      00B15E 5B 06            [ 2]  198 	addw	sp, #6
      00B160                        199 00107$:
                                    200 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      00B160 C6 50 C0         [ 1]  201 	ld	a, 0x50c0
                                    202 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 148: if (NewState != DISABLE)
      00B163 0D 03            [ 1]  203 	tnz	(0x03, sp)
      00B165 27 06            [ 1]  204 	jreq	00102$
                                    205 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      00B167 AA 01            [ 1]  206 	or	a, #0x01
      00B169 C7 50 C0         [ 1]  207 	ld	0x50c0, a
      00B16C 81               [ 4]  208 	ret
      00B16D                        209 00102$:
                                    210 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00B16D A4 FE            [ 1]  211 	and	a, #0xfe
      00B16F C7 50 C0         [ 1]  212 	ld	0x50c0, a
                                    213 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 158: }
      00B172 81               [ 4]  214 	ret
                                    215 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    216 ;	-----------------------------------------
                                    217 ;	 function CLK_LSICmd
                                    218 ;	-----------------------------------------
      00B173                        219 _CLK_LSICmd:
                                    220 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 169: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B173 0D 03            [ 1]  221 	tnz	(0x03, sp)
      00B175 27 14            [ 1]  222 	jreq	00107$
      00B177 7B 03            [ 1]  223 	ld	a, (0x03, sp)
      00B179 4A               [ 1]  224 	dec	a
      00B17A 27 0F            [ 1]  225 	jreq	00107$
      00B17C 4B A9            [ 1]  226 	push	#0xa9
      00B17E 5F               [ 1]  227 	clrw	x
      00B17F 89               [ 2]  228 	pushw	x
      00B180 4B 00            [ 1]  229 	push	#0x00
      00B182 4B 5D            [ 1]  230 	push	#<(___str_0+0)
      00B184 4B 83            [ 1]  231 	push	#((___str_0+0) >> 8)
      00B186 CD 85 5C         [ 4]  232 	call	_assert_failed
      00B189 5B 06            [ 2]  233 	addw	sp, #6
      00B18B                        234 00107$:
                                    235 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      00B18B C6 50 C0         [ 1]  236 	ld	a, 0x50c0
                                    237 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 171: if (NewState != DISABLE)
      00B18E 0D 03            [ 1]  238 	tnz	(0x03, sp)
      00B190 27 06            [ 1]  239 	jreq	00102$
                                    240 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      00B192 AA 08            [ 1]  241 	or	a, #0x08
      00B194 C7 50 C0         [ 1]  242 	ld	0x50c0, a
      00B197 81               [ 4]  243 	ret
      00B198                        244 00102$:
                                    245 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00B198 A4 F7            [ 1]  246 	and	a, #0xf7
      00B19A C7 50 C0         [ 1]  247 	ld	0x50c0, a
                                    248 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 181: }
      00B19D 81               [ 4]  249 	ret
                                    250 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    251 ;	-----------------------------------------
                                    252 ;	 function CLK_CCOCmd
                                    253 ;	-----------------------------------------
      00B19E                        254 _CLK_CCOCmd:
                                    255 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 192: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B19E 0D 03            [ 1]  256 	tnz	(0x03, sp)
      00B1A0 27 14            [ 1]  257 	jreq	00107$
      00B1A2 7B 03            [ 1]  258 	ld	a, (0x03, sp)
      00B1A4 4A               [ 1]  259 	dec	a
      00B1A5 27 0F            [ 1]  260 	jreq	00107$
      00B1A7 4B C0            [ 1]  261 	push	#0xc0
      00B1A9 5F               [ 1]  262 	clrw	x
      00B1AA 89               [ 2]  263 	pushw	x
      00B1AB 4B 00            [ 1]  264 	push	#0x00
      00B1AD 4B 5D            [ 1]  265 	push	#<(___str_0+0)
      00B1AF 4B 83            [ 1]  266 	push	#((___str_0+0) >> 8)
      00B1B1 CD 85 5C         [ 4]  267 	call	_assert_failed
      00B1B4 5B 06            [ 2]  268 	addw	sp, #6
      00B1B6                        269 00107$:
                                    270 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      00B1B6 C6 50 C9         [ 1]  271 	ld	a, 0x50c9
                                    272 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 194: if (NewState != DISABLE)
      00B1B9 0D 03            [ 1]  273 	tnz	(0x03, sp)
      00B1BB 27 06            [ 1]  274 	jreq	00102$
                                    275 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      00B1BD AA 01            [ 1]  276 	or	a, #0x01
      00B1BF C7 50 C9         [ 1]  277 	ld	0x50c9, a
      00B1C2 81               [ 4]  278 	ret
      00B1C3                        279 00102$:
                                    280 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      00B1C3 A4 FE            [ 1]  281 	and	a, #0xfe
      00B1C5 C7 50 C9         [ 1]  282 	ld	0x50c9, a
                                    283 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 204: }
      00B1C8 81               [ 4]  284 	ret
                                    285 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    286 ;	-----------------------------------------
                                    287 ;	 function CLK_ClockSwitchCmd
                                    288 ;	-----------------------------------------
      00B1C9                        289 _CLK_ClockSwitchCmd:
                                    290 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B1C9 0D 03            [ 1]  291 	tnz	(0x03, sp)
      00B1CB 27 14            [ 1]  292 	jreq	00107$
      00B1CD 7B 03            [ 1]  293 	ld	a, (0x03, sp)
      00B1CF 4A               [ 1]  294 	dec	a
      00B1D0 27 0F            [ 1]  295 	jreq	00107$
      00B1D2 4B D8            [ 1]  296 	push	#0xd8
      00B1D4 5F               [ 1]  297 	clrw	x
      00B1D5 89               [ 2]  298 	pushw	x
      00B1D6 4B 00            [ 1]  299 	push	#0x00
      00B1D8 4B 5D            [ 1]  300 	push	#<(___str_0+0)
      00B1DA 4B 83            [ 1]  301 	push	#((___str_0+0) >> 8)
      00B1DC CD 85 5C         [ 4]  302 	call	_assert_failed
      00B1DF 5B 06            [ 2]  303 	addw	sp, #6
      00B1E1                        304 00107$:
                                    305 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      00B1E1 C6 50 C5         [ 1]  306 	ld	a, 0x50c5
                                    307 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 218: if (NewState != DISABLE )
      00B1E4 0D 03            [ 1]  308 	tnz	(0x03, sp)
      00B1E6 27 06            [ 1]  309 	jreq	00102$
                                    310 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      00B1E8 AA 02            [ 1]  311 	or	a, #0x02
      00B1EA C7 50 C5         [ 1]  312 	ld	0x50c5, a
      00B1ED 81               [ 4]  313 	ret
      00B1EE                        314 00102$:
                                    315 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      00B1EE A4 FD            [ 1]  316 	and	a, #0xfd
      00B1F0 C7 50 C5         [ 1]  317 	ld	0x50c5, a
                                    318 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 228: }
      00B1F3 81               [ 4]  319 	ret
                                    320 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    321 ;	-----------------------------------------
                                    322 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    323 ;	-----------------------------------------
      00B1F4                        324 _CLK_SlowActiveHaltWakeUpCmd:
                                    325 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 241: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B1F4 0D 03            [ 1]  326 	tnz	(0x03, sp)
      00B1F6 27 14            [ 1]  327 	jreq	00107$
      00B1F8 7B 03            [ 1]  328 	ld	a, (0x03, sp)
      00B1FA 4A               [ 1]  329 	dec	a
      00B1FB 27 0F            [ 1]  330 	jreq	00107$
      00B1FD 4B F1            [ 1]  331 	push	#0xf1
      00B1FF 5F               [ 1]  332 	clrw	x
      00B200 89               [ 2]  333 	pushw	x
      00B201 4B 00            [ 1]  334 	push	#0x00
      00B203 4B 5D            [ 1]  335 	push	#<(___str_0+0)
      00B205 4B 83            [ 1]  336 	push	#((___str_0+0) >> 8)
      00B207 CD 85 5C         [ 4]  337 	call	_assert_failed
      00B20A 5B 06            [ 2]  338 	addw	sp, #6
      00B20C                        339 00107$:
                                    340 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      00B20C C6 50 C0         [ 1]  341 	ld	a, 0x50c0
                                    342 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 243: if (NewState != DISABLE)
      00B20F 0D 03            [ 1]  343 	tnz	(0x03, sp)
      00B211 27 06            [ 1]  344 	jreq	00102$
                                    345 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      00B213 AA 20            [ 1]  346 	or	a, #0x20
      00B215 C7 50 C0         [ 1]  347 	ld	0x50c0, a
      00B218 81               [ 4]  348 	ret
      00B219                        349 00102$:
                                    350 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      00B219 A4 DF            [ 1]  351 	and	a, #0xdf
      00B21B C7 50 C0         [ 1]  352 	ld	0x50c0, a
                                    353 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 253: }
      00B21E 81               [ 4]  354 	ret
                                    355 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    356 ;	-----------------------------------------
                                    357 ;	 function CLK_PeripheralClockConfig
                                    358 ;	-----------------------------------------
      00B21F                        359 _CLK_PeripheralClockConfig:
      00B21F 89               [ 2]  360 	pushw	x
                                    361 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 266: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B220 0D 06            [ 1]  362 	tnz	(0x06, sp)
      00B222 27 14            [ 1]  363 	jreq	00113$
      00B224 7B 06            [ 1]  364 	ld	a, (0x06, sp)
      00B226 4A               [ 1]  365 	dec	a
      00B227 27 0F            [ 1]  366 	jreq	00113$
      00B229 4B 0A            [ 1]  367 	push	#0x0a
      00B22B 4B 01            [ 1]  368 	push	#0x01
      00B22D 5F               [ 1]  369 	clrw	x
      00B22E 89               [ 2]  370 	pushw	x
      00B22F 4B 5D            [ 1]  371 	push	#<(___str_0+0)
      00B231 4B 83            [ 1]  372 	push	#((___str_0+0) >> 8)
      00B233 CD 85 5C         [ 4]  373 	call	_assert_failed
      00B236 5B 06            [ 2]  374 	addw	sp, #6
      00B238                        375 00113$:
                                    376 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 267: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      00B238 0D 05            [ 1]  377 	tnz	(0x05, sp)
      00B23A 27 67            [ 1]  378 	jreq	00118$
      00B23C 7B 05            [ 1]  379 	ld	a, (0x05, sp)
      00B23E 4A               [ 1]  380 	dec	a
      00B23F 27 62            [ 1]  381 	jreq	00118$
      00B241 7B 05            [ 1]  382 	ld	a, (0x05, sp)
      00B243 A0 03            [ 1]  383 	sub	a, #0x03
      00B245 26 02            [ 1]  384 	jrne	00262$
      00B247 4C               [ 1]  385 	inc	a
      00B248 21                     386 	.byte 0x21
      00B249                        387 00262$:
      00B249 4F               [ 1]  388 	clr	a
      00B24A                        389 00263$:
      00B24A 4D               [ 1]  390 	tnz	a
      00B24B 26 56            [ 1]  391 	jrne	00118$
      00B24D 4D               [ 1]  392 	tnz	a
      00B24E 26 53            [ 1]  393 	jrne	00118$
      00B250 4D               [ 1]  394 	tnz	a
      00B251 26 50            [ 1]  395 	jrne	00118$
      00B253 7B 05            [ 1]  396 	ld	a, (0x05, sp)
      00B255 A0 04            [ 1]  397 	sub	a, #0x04
      00B257 26 04            [ 1]  398 	jrne	00268$
      00B259 4C               [ 1]  399 	inc	a
      00B25A 97               [ 1]  400 	ld	xl, a
      00B25B 20 02            [ 2]  401 	jra	00269$
      00B25D                        402 00268$:
      00B25D 4F               [ 1]  403 	clr	a
      00B25E 97               [ 1]  404 	ld	xl, a
      00B25F                        405 00269$:
      00B25F 9F               [ 1]  406 	ld	a, xl
      00B260 4D               [ 1]  407 	tnz	a
      00B261 26 40            [ 1]  408 	jrne	00118$
      00B263 7B 05            [ 1]  409 	ld	a, (0x05, sp)
      00B265 A0 05            [ 1]  410 	sub	a, #0x05
      00B267 26 02            [ 1]  411 	jrne	00272$
      00B269 4C               [ 1]  412 	inc	a
      00B26A 21                     413 	.byte 0x21
      00B26B                        414 00272$:
      00B26B 4F               [ 1]  415 	clr	a
      00B26C                        416 00273$:
      00B26C 4D               [ 1]  417 	tnz	a
      00B26D 26 34            [ 1]  418 	jrne	00118$
      00B26F 4D               [ 1]  419 	tnz	a
      00B270 26 31            [ 1]  420 	jrne	00118$
      00B272 9F               [ 1]  421 	ld	a, xl
      00B273 4D               [ 1]  422 	tnz	a
      00B274 26 2D            [ 1]  423 	jrne	00118$
      00B276 7B 05            [ 1]  424 	ld	a, (0x05, sp)
      00B278 A1 06            [ 1]  425 	cp	a, #0x06
      00B27A 27 27            [ 1]  426 	jreq	00118$
      00B27C 7B 05            [ 1]  427 	ld	a, (0x05, sp)
      00B27E A1 07            [ 1]  428 	cp	a, #0x07
      00B280 27 21            [ 1]  429 	jreq	00118$
      00B282 7B 05            [ 1]  430 	ld	a, (0x05, sp)
      00B284 A1 17            [ 1]  431 	cp	a, #0x17
      00B286 27 1B            [ 1]  432 	jreq	00118$
      00B288 7B 05            [ 1]  433 	ld	a, (0x05, sp)
      00B28A A1 13            [ 1]  434 	cp	a, #0x13
      00B28C 27 15            [ 1]  435 	jreq	00118$
      00B28E 7B 05            [ 1]  436 	ld	a, (0x05, sp)
      00B290 A1 12            [ 1]  437 	cp	a, #0x12
      00B292 27 0F            [ 1]  438 	jreq	00118$
      00B294 4B 0B            [ 1]  439 	push	#0x0b
      00B296 4B 01            [ 1]  440 	push	#0x01
      00B298 5F               [ 1]  441 	clrw	x
      00B299 89               [ 2]  442 	pushw	x
      00B29A 4B 5D            [ 1]  443 	push	#<(___str_0+0)
      00B29C 4B 83            [ 1]  444 	push	#((___str_0+0) >> 8)
      00B29E CD 85 5C         [ 4]  445 	call	_assert_failed
      00B2A1 5B 06            [ 2]  446 	addw	sp, #6
      00B2A3                        447 00118$:
                                    448 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00B2A3 7B 05            [ 1]  449 	ld	a, (0x05, sp)
      00B2A5 A4 0F            [ 1]  450 	and	a, #0x0f
      00B2A7 88               [ 1]  451 	push	a
      00B2A8 A6 01            [ 1]  452 	ld	a, #0x01
      00B2AA 6B 02            [ 1]  453 	ld	(0x02, sp), a
      00B2AC 84               [ 1]  454 	pop	a
      00B2AD 4D               [ 1]  455 	tnz	a
      00B2AE 27 05            [ 1]  456 	jreq	00293$
      00B2B0                        457 00292$:
      00B2B0 08 01            [ 1]  458 	sll	(0x01, sp)
      00B2B2 4A               [ 1]  459 	dec	a
      00B2B3 26 FB            [ 1]  460 	jrne	00292$
      00B2B5                        461 00293$:
                                    462 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00B2B5 7B 01            [ 1]  463 	ld	a, (0x01, sp)
      00B2B7 43               [ 1]  464 	cpl	a
      00B2B8 6B 02            [ 1]  465 	ld	(0x02, sp), a
                                    466 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      00B2BA 7B 05            [ 1]  467 	ld	a, (0x05, sp)
      00B2BC A5 10            [ 1]  468 	bcp	a, #0x10
      00B2BE 26 15            [ 1]  469 	jrne	00108$
                                    470 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00B2C0 C6 50 C7         [ 1]  471 	ld	a, 0x50c7
                                    472 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 271: if (NewState != DISABLE)
      00B2C3 0D 06            [ 1]  473 	tnz	(0x06, sp)
      00B2C5 27 07            [ 1]  474 	jreq	00102$
                                    475 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00B2C7 1A 01            [ 1]  476 	or	a, (0x01, sp)
      00B2C9 C7 50 C7         [ 1]  477 	ld	0x50c7, a
      00B2CC 20 1A            [ 2]  478 	jra	00110$
      00B2CE                        479 00102$:
                                    480 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00B2CE 14 02            [ 1]  481 	and	a, (0x02, sp)
      00B2D0 C7 50 C7         [ 1]  482 	ld	0x50c7, a
      00B2D3 20 13            [ 2]  483 	jra	00110$
      00B2D5                        484 00108$:
                                    485 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00B2D5 C6 50 CA         [ 1]  486 	ld	a, 0x50ca
                                    487 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 284: if (NewState != DISABLE)
      00B2D8 0D 06            [ 1]  488 	tnz	(0x06, sp)
      00B2DA 27 07            [ 1]  489 	jreq	00105$
                                    490 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00B2DC 1A 01            [ 1]  491 	or	a, (0x01, sp)
      00B2DE C7 50 CA         [ 1]  492 	ld	0x50ca, a
      00B2E1 20 05            [ 2]  493 	jra	00110$
      00B2E3                        494 00105$:
                                    495 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00B2E3 14 02            [ 1]  496 	and	a, (0x02, sp)
      00B2E5 C7 50 CA         [ 1]  497 	ld	0x50ca, a
      00B2E8                        498 00110$:
                                    499 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 295: }
      00B2E8 85               [ 2]  500 	popw	x
      00B2E9 81               [ 4]  501 	ret
                                    502 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    503 ;	-----------------------------------------
                                    504 ;	 function CLK_ClockSwitchConfig
                                    505 ;	-----------------------------------------
      00B2EA                        506 _CLK_ClockSwitchConfig:
      00B2EA 88               [ 1]  507 	push	a
                                    508 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 316: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      00B2EB 7B 05            [ 1]  509 	ld	a, (0x05, sp)
      00B2ED A1 E1            [ 1]  510 	cp	a, #0xe1
      00B2EF 27 1B            [ 1]  511 	jreq	00140$
      00B2F1 7B 05            [ 1]  512 	ld	a, (0x05, sp)
      00B2F3 A1 D2            [ 1]  513 	cp	a, #0xd2
      00B2F5 27 15            [ 1]  514 	jreq	00140$
      00B2F7 7B 05            [ 1]  515 	ld	a, (0x05, sp)
      00B2F9 A1 B4            [ 1]  516 	cp	a, #0xb4
      00B2FB 27 0F            [ 1]  517 	jreq	00140$
      00B2FD 4B 3C            [ 1]  518 	push	#0x3c
      00B2FF 4B 01            [ 1]  519 	push	#0x01
      00B301 5F               [ 1]  520 	clrw	x
      00B302 89               [ 2]  521 	pushw	x
      00B303 4B 5D            [ 1]  522 	push	#<(___str_0+0)
      00B305 4B 83            [ 1]  523 	push	#((___str_0+0) >> 8)
      00B307 CD 85 5C         [ 4]  524 	call	_assert_failed
      00B30A 5B 06            [ 2]  525 	addw	sp, #6
      00B30C                        526 00140$:
                                    527 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 317: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      00B30C 7B 04            [ 1]  528 	ld	a, (0x04, sp)
      00B30E 4A               [ 1]  529 	dec	a
      00B30F 26 05            [ 1]  530 	jrne	00309$
      00B311 A6 01            [ 1]  531 	ld	a, #0x01
      00B313 6B 01            [ 1]  532 	ld	(0x01, sp), a
      00B315 C5                     533 	.byte 0xc5
      00B316                        534 00309$:
      00B316 0F 01            [ 1]  535 	clr	(0x01, sp)
      00B318                        536 00310$:
      00B318 0D 04            [ 1]  537 	tnz	(0x04, sp)
      00B31A 27 13            [ 1]  538 	jreq	00148$
      00B31C 0D 01            [ 1]  539 	tnz	(0x01, sp)
      00B31E 26 0F            [ 1]  540 	jrne	00148$
      00B320 4B 3D            [ 1]  541 	push	#0x3d
      00B322 4B 01            [ 1]  542 	push	#0x01
      00B324 5F               [ 1]  543 	clrw	x
      00B325 89               [ 2]  544 	pushw	x
      00B326 4B 5D            [ 1]  545 	push	#<(___str_0+0)
      00B328 4B 83            [ 1]  546 	push	#((___str_0+0) >> 8)
      00B32A CD 85 5C         [ 4]  547 	call	_assert_failed
      00B32D 5B 06            [ 2]  548 	addw	sp, #6
      00B32F                        549 00148$:
                                    550 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 318: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      00B32F 0D 06            [ 1]  551 	tnz	(0x06, sp)
      00B331 27 14            [ 1]  552 	jreq	00153$
      00B333 7B 06            [ 1]  553 	ld	a, (0x06, sp)
      00B335 4A               [ 1]  554 	dec	a
      00B336 27 0F            [ 1]  555 	jreq	00153$
      00B338 4B 3E            [ 1]  556 	push	#0x3e
      00B33A 4B 01            [ 1]  557 	push	#0x01
      00B33C 5F               [ 1]  558 	clrw	x
      00B33D 89               [ 2]  559 	pushw	x
      00B33E 4B 5D            [ 1]  560 	push	#<(___str_0+0)
      00B340 4B 83            [ 1]  561 	push	#((___str_0+0) >> 8)
      00B342 CD 85 5C         [ 4]  562 	call	_assert_failed
      00B345 5B 06            [ 2]  563 	addw	sp, #6
      00B347                        564 00153$:
                                    565 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 319: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      00B347 0D 07            [ 1]  566 	tnz	(0x07, sp)
      00B349 27 14            [ 1]  567 	jreq	00158$
      00B34B 7B 07            [ 1]  568 	ld	a, (0x07, sp)
      00B34D 4A               [ 1]  569 	dec	a
      00B34E 27 0F            [ 1]  570 	jreq	00158$
      00B350 4B 3F            [ 1]  571 	push	#0x3f
      00B352 4B 01            [ 1]  572 	push	#0x01
      00B354 5F               [ 1]  573 	clrw	x
      00B355 89               [ 2]  574 	pushw	x
      00B356 4B 5D            [ 1]  575 	push	#<(___str_0+0)
      00B358 4B 83            [ 1]  576 	push	#((___str_0+0) >> 8)
      00B35A CD 85 5C         [ 4]  577 	call	_assert_failed
      00B35D 5B 06            [ 2]  578 	addw	sp, #6
      00B35F                        579 00158$:
                                    580 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      00B35F C6 50 C3         [ 1]  581 	ld	a, 0x50c3
      00B362 90 97            [ 1]  582 	ld	yl, a
                                    583 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      00B364 C6 50 C5         [ 1]  584 	ld	a, 0x50c5
      00B367 97               [ 1]  585 	ld	xl, a
                                    586 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      00B368 7B 01            [ 1]  587 	ld	a, (0x01, sp)
      00B36A 27 38            [ 1]  588 	jreq	00122$
                                    589 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      00B36C 9F               [ 1]  590 	ld	a, xl
      00B36D AA 02            [ 1]  591 	or	a, #0x02
      00B36F C7 50 C5         [ 1]  592 	ld	0x50c5, a
      00B372 C6 50 C5         [ 1]  593 	ld	a, 0x50c5
                                    594 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 331: if (ITState != DISABLE)
      00B375 0D 06            [ 1]  595 	tnz	(0x06, sp)
      00B377 27 07            [ 1]  596 	jreq	00102$
                                    597 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      00B379 AA 04            [ 1]  598 	or	a, #0x04
      00B37B C7 50 C5         [ 1]  599 	ld	0x50c5, a
      00B37E 20 05            [ 2]  600 	jra	00103$
      00B380                        601 00102$:
                                    602 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00B380 A4 FB            [ 1]  603 	and	a, #0xfb
      00B382 C7 50 C5         [ 1]  604 	ld	0x50c5, a
      00B385                        605 00103$:
                                    606 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      00B385 AE 50 C4         [ 2]  607 	ldw	x, #0x50c4
      00B388 7B 05            [ 1]  608 	ld	a, (0x05, sp)
      00B38A F7               [ 1]  609 	ld	(x), a
                                    610 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      00B38B 5F               [ 1]  611 	clrw	x
      00B38C 5A               [ 2]  612 	decw	x
      00B38D                        613 00105$:
      00B38D C6 50 C5         [ 1]  614 	ld	a, 0x50c5
      00B390 44               [ 1]  615 	srl	a
      00B391 24 06            [ 1]  616 	jrnc	00107$
      00B393 5D               [ 2]  617 	tnzw	x
      00B394 27 03            [ 1]  618 	jreq	00107$
                                    619 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 346: DownCounter--;
      00B396 5A               [ 2]  620 	decw	x
      00B397 20 F4            [ 2]  621 	jra	00105$
      00B399                        622 00107$:
                                    623 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 349: if(DownCounter != 0)
      00B399 5D               [ 2]  624 	tnzw	x
      00B39A 27 05            [ 1]  625 	jreq	00109$
                                    626 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 351: Swif = SUCCESS;
      00B39C A6 01            [ 1]  627 	ld	a, #0x01
      00B39E 97               [ 1]  628 	ld	xl, a
      00B39F 20 36            [ 2]  629 	jra	00123$
      00B3A1                        630 00109$:
                                    631 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 355: Swif = ERROR;
      00B3A1 5F               [ 1]  632 	clrw	x
      00B3A2 20 33            [ 2]  633 	jra	00123$
      00B3A4                        634 00122$:
                                    635 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 361: if (ITState != DISABLE)
      00B3A4 0D 06            [ 1]  636 	tnz	(0x06, sp)
      00B3A6 27 08            [ 1]  637 	jreq	00112$
                                    638 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      00B3A8 9F               [ 1]  639 	ld	a, xl
      00B3A9 AA 04            [ 1]  640 	or	a, #0x04
      00B3AB C7 50 C5         [ 1]  641 	ld	0x50c5, a
      00B3AE 20 06            [ 2]  642 	jra	00113$
      00B3B0                        643 00112$:
                                    644 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00B3B0 9F               [ 1]  645 	ld	a, xl
      00B3B1 A4 FB            [ 1]  646 	and	a, #0xfb
      00B3B3 C7 50 C5         [ 1]  647 	ld	0x50c5, a
      00B3B6                        648 00113$:
                                    649 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      00B3B6 AE 50 C4         [ 2]  650 	ldw	x, #0x50c4
      00B3B9 7B 05            [ 1]  651 	ld	a, (0x05, sp)
      00B3BB F7               [ 1]  652 	ld	(x), a
                                    653 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      00B3BC 5F               [ 1]  654 	clrw	x
      00B3BD 5A               [ 2]  655 	decw	x
      00B3BE                        656 00115$:
      00B3BE C6 50 C5         [ 1]  657 	ld	a, 0x50c5
      00B3C1 A5 08            [ 1]  658 	bcp	a, #0x08
      00B3C3 27 06            [ 1]  659 	jreq	00117$
      00B3C5 5D               [ 2]  660 	tnzw	x
      00B3C6 27 03            [ 1]  661 	jreq	00117$
                                    662 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 376: DownCounter--;
      00B3C8 5A               [ 2]  663 	decw	x
      00B3C9 20 F3            [ 2]  664 	jra	00115$
      00B3CB                        665 00117$:
                                    666 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 379: if(DownCounter != 0)
      00B3CB 5D               [ 2]  667 	tnzw	x
      00B3CC 27 08            [ 1]  668 	jreq	00119$
                                    669 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      00B3CE 72 12 50 C5      [ 1]  670 	bset	20677, #1
                                    671 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 383: Swif = SUCCESS;
      00B3D2 A6 01            [ 1]  672 	ld	a, #0x01
      00B3D4 97               [ 1]  673 	ld	xl, a
                                    674 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 387: Swif = ERROR;
      00B3D5 21                     675 	.byte 0x21
      00B3D6                        676 00119$:
      00B3D6 5F               [ 1]  677 	clrw	x
      00B3D7                        678 00123$:
                                    679 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 390: if(Swif != ERROR)
      00B3D7 9F               [ 1]  680 	ld	a, xl
      00B3D8 4D               [ 1]  681 	tnz	a
      00B3D9 27 2E            [ 1]  682 	jreq	00136$
                                    683 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      00B3DB 0D 07            [ 1]  684 	tnz	(0x07, sp)
      00B3DD 26 0C            [ 1]  685 	jrne	00132$
      00B3DF 90 9F            [ 1]  686 	ld	a, yl
      00B3E1 A1 E1            [ 1]  687 	cp	a, #0xe1
      00B3E3 26 06            [ 1]  688 	jrne	00132$
                                    689 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00B3E5 72 11 50 C0      [ 1]  690 	bres	20672, #0
      00B3E9 20 1E            [ 2]  691 	jra	00136$
      00B3EB                        692 00132$:
                                    693 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      00B3EB 0D 07            [ 1]  694 	tnz	(0x07, sp)
      00B3ED 26 0C            [ 1]  695 	jrne	00128$
      00B3EF 90 9F            [ 1]  696 	ld	a, yl
      00B3F1 A1 D2            [ 1]  697 	cp	a, #0xd2
      00B3F3 26 06            [ 1]  698 	jrne	00128$
                                    699 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00B3F5 72 17 50 C0      [ 1]  700 	bres	20672, #3
      00B3F9 20 0E            [ 2]  701 	jra	00136$
      00B3FB                        702 00128$:
                                    703 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      00B3FB 0D 07            [ 1]  704 	tnz	(0x07, sp)
      00B3FD 26 0A            [ 1]  705 	jrne	00136$
      00B3FF 90 9F            [ 1]  706 	ld	a, yl
      00B401 A1 B4            [ 1]  707 	cp	a, #0xb4
      00B403 26 04            [ 1]  708 	jrne	00136$
                                    709 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00B405 72 11 50 C1      [ 1]  710 	bres	20673, #0
      00B409                        711 00136$:
                                    712 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 406: return(Swif);
      00B409 9F               [ 1]  713 	ld	a, xl
                                    714 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 407: }
      00B40A 5B 01            [ 2]  715 	addw	sp, #1
      00B40C 81               [ 4]  716 	ret
                                    717 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    718 ;	-----------------------------------------
                                    719 ;	 function CLK_HSIPrescalerConfig
                                    720 ;	-----------------------------------------
      00B40D                        721 _CLK_HSIPrescalerConfig:
                                    722 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 418: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      00B40D 0D 03            [ 1]  723 	tnz	(0x03, sp)
      00B40F 27 21            [ 1]  724 	jreq	00104$
      00B411 7B 03            [ 1]  725 	ld	a, (0x03, sp)
      00B413 A1 08            [ 1]  726 	cp	a, #0x08
      00B415 27 1B            [ 1]  727 	jreq	00104$
      00B417 7B 03            [ 1]  728 	ld	a, (0x03, sp)
      00B419 A1 10            [ 1]  729 	cp	a, #0x10
      00B41B 27 15            [ 1]  730 	jreq	00104$
      00B41D 7B 03            [ 1]  731 	ld	a, (0x03, sp)
      00B41F A1 18            [ 1]  732 	cp	a, #0x18
      00B421 27 0F            [ 1]  733 	jreq	00104$
      00B423 4B A2            [ 1]  734 	push	#0xa2
      00B425 4B 01            [ 1]  735 	push	#0x01
      00B427 5F               [ 1]  736 	clrw	x
      00B428 89               [ 2]  737 	pushw	x
      00B429 4B 5D            [ 1]  738 	push	#<(___str_0+0)
      00B42B 4B 83            [ 1]  739 	push	#((___str_0+0) >> 8)
      00B42D CD 85 5C         [ 4]  740 	call	_assert_failed
      00B430 5B 06            [ 2]  741 	addw	sp, #6
      00B432                        742 00104$:
                                    743 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00B432 C6 50 C6         [ 1]  744 	ld	a, 0x50c6
      00B435 A4 E7            [ 1]  745 	and	a, #0xe7
      00B437 C7 50 C6         [ 1]  746 	ld	0x50c6, a
                                    747 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      00B43A C6 50 C6         [ 1]  748 	ld	a, 0x50c6
      00B43D 1A 03            [ 1]  749 	or	a, (0x03, sp)
      00B43F C7 50 C6         [ 1]  750 	ld	0x50c6, a
                                    751 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 425: }
      00B442 81               [ 4]  752 	ret
                                    753 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    754 ;	-----------------------------------------
                                    755 ;	 function CLK_CCOConfig
                                    756 ;	-----------------------------------------
      00B443                        757 _CLK_CCOConfig:
                                    758 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 439: assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
      00B443 0D 03            [ 1]  759 	tnz	(0x03, sp)
      00B445 27 57            [ 1]  760 	jreq	00104$
      00B447 7B 03            [ 1]  761 	ld	a, (0x03, sp)
      00B449 A1 04            [ 1]  762 	cp	a, #0x04
      00B44B 27 51            [ 1]  763 	jreq	00104$
      00B44D 7B 03            [ 1]  764 	ld	a, (0x03, sp)
      00B44F A1 02            [ 1]  765 	cp	a, #0x02
      00B451 27 4B            [ 1]  766 	jreq	00104$
      00B453 7B 03            [ 1]  767 	ld	a, (0x03, sp)
      00B455 A1 08            [ 1]  768 	cp	a, #0x08
      00B457 27 45            [ 1]  769 	jreq	00104$
      00B459 7B 03            [ 1]  770 	ld	a, (0x03, sp)
      00B45B A1 0A            [ 1]  771 	cp	a, #0x0a
      00B45D 27 3F            [ 1]  772 	jreq	00104$
      00B45F 7B 03            [ 1]  773 	ld	a, (0x03, sp)
      00B461 A1 0C            [ 1]  774 	cp	a, #0x0c
      00B463 27 39            [ 1]  775 	jreq	00104$
      00B465 7B 03            [ 1]  776 	ld	a, (0x03, sp)
      00B467 A1 0E            [ 1]  777 	cp	a, #0x0e
      00B469 27 33            [ 1]  778 	jreq	00104$
      00B46B 7B 03            [ 1]  779 	ld	a, (0x03, sp)
      00B46D A1 10            [ 1]  780 	cp	a, #0x10
      00B46F 27 2D            [ 1]  781 	jreq	00104$
      00B471 7B 03            [ 1]  782 	ld	a, (0x03, sp)
      00B473 A1 12            [ 1]  783 	cp	a, #0x12
      00B475 27 27            [ 1]  784 	jreq	00104$
      00B477 7B 03            [ 1]  785 	ld	a, (0x03, sp)
      00B479 A1 14            [ 1]  786 	cp	a, #0x14
      00B47B 27 21            [ 1]  787 	jreq	00104$
      00B47D 7B 03            [ 1]  788 	ld	a, (0x03, sp)
      00B47F A1 16            [ 1]  789 	cp	a, #0x16
      00B481 27 1B            [ 1]  790 	jreq	00104$
      00B483 7B 03            [ 1]  791 	ld	a, (0x03, sp)
      00B485 A1 18            [ 1]  792 	cp	a, #0x18
      00B487 27 15            [ 1]  793 	jreq	00104$
      00B489 7B 03            [ 1]  794 	ld	a, (0x03, sp)
      00B48B A1 1A            [ 1]  795 	cp	a, #0x1a
      00B48D 27 0F            [ 1]  796 	jreq	00104$
      00B48F 4B B7            [ 1]  797 	push	#0xb7
      00B491 4B 01            [ 1]  798 	push	#0x01
      00B493 5F               [ 1]  799 	clrw	x
      00B494 89               [ 2]  800 	pushw	x
      00B495 4B 5D            [ 1]  801 	push	#<(___str_0+0)
      00B497 4B 83            [ 1]  802 	push	#((___str_0+0) >> 8)
      00B499 CD 85 5C         [ 4]  803 	call	_assert_failed
      00B49C 5B 06            [ 2]  804 	addw	sp, #6
      00B49E                        805 00104$:
                                    806 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      00B49E C6 50 C9         [ 1]  807 	ld	a, 0x50c9
      00B4A1 A4 E1            [ 1]  808 	and	a, #0xe1
      00B4A3 C7 50 C9         [ 1]  809 	ld	0x50c9, a
                                    810 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      00B4A6 C6 50 C9         [ 1]  811 	ld	a, 0x50c9
      00B4A9 1A 03            [ 1]  812 	or	a, (0x03, sp)
      00B4AB C7 50 C9         [ 1]  813 	ld	0x50c9, a
                                    814 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      00B4AE 72 10 50 C9      [ 1]  815 	bset	20681, #0
                                    816 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 449: }
      00B4B2 81               [ 4]  817 	ret
                                    818 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    819 ;	-----------------------------------------
                                    820 ;	 function CLK_ITConfig
                                    821 ;	-----------------------------------------
      00B4B3                        822 _CLK_ITConfig:
      00B4B3 88               [ 1]  823 	push	a
                                    824 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 462: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B4B4 0D 05            [ 1]  825 	tnz	(0x05, sp)
      00B4B6 27 14            [ 1]  826 	jreq	00115$
      00B4B8 7B 05            [ 1]  827 	ld	a, (0x05, sp)
      00B4BA 4A               [ 1]  828 	dec	a
      00B4BB 27 0F            [ 1]  829 	jreq	00115$
      00B4BD 4B CE            [ 1]  830 	push	#0xce
      00B4BF 4B 01            [ 1]  831 	push	#0x01
      00B4C1 5F               [ 1]  832 	clrw	x
      00B4C2 89               [ 2]  833 	pushw	x
      00B4C3 4B 5D            [ 1]  834 	push	#<(___str_0+0)
      00B4C5 4B 83            [ 1]  835 	push	#((___str_0+0) >> 8)
      00B4C7 CD 85 5C         [ 4]  836 	call	_assert_failed
      00B4CA 5B 06            [ 2]  837 	addw	sp, #6
      00B4CC                        838 00115$:
                                    839 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 463: assert_param(IS_CLK_IT_OK(CLK_IT));
      00B4CC 7B 04            [ 1]  840 	ld	a, (0x04, sp)
      00B4CE A0 0C            [ 1]  841 	sub	a, #0x0c
      00B4D0 26 02            [ 1]  842 	jrne	00174$
      00B4D2 4C               [ 1]  843 	inc	a
      00B4D3 21                     844 	.byte 0x21
      00B4D4                        845 00174$:
      00B4D4 4F               [ 1]  846 	clr	a
      00B4D5                        847 00175$:
      00B4D5 88               [ 1]  848 	push	a
      00B4D6 7B 05            [ 1]  849 	ld	a, (0x05, sp)
      00B4D8 A1 1C            [ 1]  850 	cp	a, #0x1c
      00B4DA 84               [ 1]  851 	pop	a
      00B4DB 26 07            [ 1]  852 	jrne	00177$
      00B4DD 88               [ 1]  853 	push	a
      00B4DE A6 01            [ 1]  854 	ld	a, #0x01
      00B4E0 6B 02            [ 1]  855 	ld	(0x02, sp), a
      00B4E2 84               [ 1]  856 	pop	a
      00B4E3 C5                     857 	.byte 0xc5
      00B4E4                        858 00177$:
      00B4E4 0F 01            [ 1]  859 	clr	(0x01, sp)
      00B4E6                        860 00178$:
      00B4E6 4D               [ 1]  861 	tnz	a
      00B4E7 26 15            [ 1]  862 	jrne	00120$
      00B4E9 0D 01            [ 1]  863 	tnz	(0x01, sp)
      00B4EB 26 11            [ 1]  864 	jrne	00120$
      00B4ED 88               [ 1]  865 	push	a
      00B4EE 4B CF            [ 1]  866 	push	#0xcf
      00B4F0 4B 01            [ 1]  867 	push	#0x01
      00B4F2 5F               [ 1]  868 	clrw	x
      00B4F3 89               [ 2]  869 	pushw	x
      00B4F4 4B 5D            [ 1]  870 	push	#<(___str_0+0)
      00B4F6 4B 83            [ 1]  871 	push	#((___str_0+0) >> 8)
      00B4F8 CD 85 5C         [ 4]  872 	call	_assert_failed
      00B4FB 5B 06            [ 2]  873 	addw	sp, #6
      00B4FD 84               [ 1]  874 	pop	a
      00B4FE                        875 00120$:
                                    876 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 465: if (NewState != DISABLE)
      00B4FE 0D 05            [ 1]  877 	tnz	(0x05, sp)
      00B500 27 13            [ 1]  878 	jreq	00110$
                                    879 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
      00B502 4D               [ 1]  880 	tnz	a
      00B503 26 0A            [ 1]  881 	jrne	00102$
      00B505 7B 01            [ 1]  882 	ld	a, (0x01, sp)
      00B507 27 1D            [ 1]  883 	jreq	00112$
                                    884 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      00B509 72 14 50 C5      [ 1]  885 	bset	20677, #2
                                    886 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 471: break;
      00B50D 20 17            [ 2]  887 	jra	00112$
                                    888 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      00B50F                        889 00102$:
                                    890 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      00B50F 72 14 50 C8      [ 1]  891 	bset	20680, #2
                                    892 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 474: break;
      00B513 20 11            [ 2]  893 	jra	00112$
                                    894 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 477: }
      00B515                        895 00110$:
                                    896 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 481: switch (CLK_IT)
      00B515 4D               [ 1]  897 	tnz	a
      00B516 26 0A            [ 1]  898 	jrne	00106$
      00B518 7B 01            [ 1]  899 	ld	a, (0x01, sp)
      00B51A 27 0A            [ 1]  900 	jreq	00112$
                                    901 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      00B51C 72 15 50 C5      [ 1]  902 	bres	20677, #2
                                    903 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 485: break;
      00B520 20 04            [ 2]  904 	jra	00112$
                                    905 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      00B522                        906 00106$:
                                    907 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      00B522 72 15 50 C8      [ 1]  908 	bres	20680, #2
                                    909 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 491: }
      00B526                        910 00112$:
                                    911 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 493: }
      00B526 84               [ 1]  912 	pop	a
      00B527 81               [ 4]  913 	ret
                                    914 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    915 ;	-----------------------------------------
                                    916 ;	 function CLK_SYSCLKConfig
                                    917 ;	-----------------------------------------
      00B528                        918 _CLK_SYSCLKConfig:
      00B528 88               [ 1]  919 	push	a
                                    920 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 503: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      00B529 0D 04            [ 1]  921 	tnz	(0x04, sp)
      00B52B 27 51            [ 1]  922 	jreq	00107$
      00B52D 7B 04            [ 1]  923 	ld	a, (0x04, sp)
      00B52F A1 08            [ 1]  924 	cp	a, #0x08
      00B531 27 4B            [ 1]  925 	jreq	00107$
      00B533 7B 04            [ 1]  926 	ld	a, (0x04, sp)
      00B535 A1 10            [ 1]  927 	cp	a, #0x10
      00B537 27 45            [ 1]  928 	jreq	00107$
      00B539 7B 04            [ 1]  929 	ld	a, (0x04, sp)
      00B53B A1 18            [ 1]  930 	cp	a, #0x18
      00B53D 27 3F            [ 1]  931 	jreq	00107$
      00B53F 7B 04            [ 1]  932 	ld	a, (0x04, sp)
      00B541 A1 80            [ 1]  933 	cp	a, #0x80
      00B543 27 39            [ 1]  934 	jreq	00107$
      00B545 7B 04            [ 1]  935 	ld	a, (0x04, sp)
      00B547 A1 81            [ 1]  936 	cp	a, #0x81
      00B549 27 33            [ 1]  937 	jreq	00107$
      00B54B 7B 04            [ 1]  938 	ld	a, (0x04, sp)
      00B54D A1 82            [ 1]  939 	cp	a, #0x82
      00B54F 27 2D            [ 1]  940 	jreq	00107$
      00B551 7B 04            [ 1]  941 	ld	a, (0x04, sp)
      00B553 A1 83            [ 1]  942 	cp	a, #0x83
      00B555 27 27            [ 1]  943 	jreq	00107$
      00B557 7B 04            [ 1]  944 	ld	a, (0x04, sp)
      00B559 A1 84            [ 1]  945 	cp	a, #0x84
      00B55B 27 21            [ 1]  946 	jreq	00107$
      00B55D 7B 04            [ 1]  947 	ld	a, (0x04, sp)
      00B55F A1 85            [ 1]  948 	cp	a, #0x85
      00B561 27 1B            [ 1]  949 	jreq	00107$
      00B563 7B 04            [ 1]  950 	ld	a, (0x04, sp)
      00B565 A1 86            [ 1]  951 	cp	a, #0x86
      00B567 27 15            [ 1]  952 	jreq	00107$
      00B569 7B 04            [ 1]  953 	ld	a, (0x04, sp)
      00B56B A1 87            [ 1]  954 	cp	a, #0x87
      00B56D 27 0F            [ 1]  955 	jreq	00107$
      00B56F 4B F7            [ 1]  956 	push	#0xf7
      00B571 4B 01            [ 1]  957 	push	#0x01
      00B573 5F               [ 1]  958 	clrw	x
      00B574 89               [ 2]  959 	pushw	x
      00B575 4B 5D            [ 1]  960 	push	#<(___str_0+0)
      00B577 4B 83            [ 1]  961 	push	#((___str_0+0) >> 8)
      00B579 CD 85 5C         [ 4]  962 	call	_assert_failed
      00B57C 5B 06            [ 2]  963 	addw	sp, #6
      00B57E                        964 00107$:
                                    965 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00B57E C6 50 C6         [ 1]  966 	ld	a, 0x50c6
                                    967 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      00B581 0D 04            [ 1]  968 	tnz	(0x04, sp)
      00B583 2B 15            [ 1]  969 	jrmi	00102$
                                    970 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00B585 A4 E7            [ 1]  971 	and	a, #0xe7
      00B587 C7 50 C6         [ 1]  972 	ld	0x50c6, a
                                    973 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      00B58A C6 50 C6         [ 1]  974 	ld	a, 0x50c6
      00B58D 6B 01            [ 1]  975 	ld	(0x01, sp), a
      00B58F 7B 04            [ 1]  976 	ld	a, (0x04, sp)
      00B591 A4 18            [ 1]  977 	and	a, #0x18
      00B593 1A 01            [ 1]  978 	or	a, (0x01, sp)
      00B595 C7 50 C6         [ 1]  979 	ld	0x50c6, a
      00B598 20 13            [ 2]  980 	jra	00104$
      00B59A                        981 00102$:
                                    982 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      00B59A A4 F8            [ 1]  983 	and	a, #0xf8
      00B59C C7 50 C6         [ 1]  984 	ld	0x50c6, a
                                    985 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      00B59F C6 50 C6         [ 1]  986 	ld	a, 0x50c6
      00B5A2 6B 01            [ 1]  987 	ld	(0x01, sp), a
      00B5A4 7B 04            [ 1]  988 	ld	a, (0x04, sp)
      00B5A6 A4 07            [ 1]  989 	and	a, #0x07
      00B5A8 1A 01            [ 1]  990 	or	a, (0x01, sp)
      00B5AA C7 50 C6         [ 1]  991 	ld	0x50c6, a
      00B5AD                        992 00104$:
                                    993 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 515: }
      00B5AD 84               [ 1]  994 	pop	a
      00B5AE 81               [ 4]  995 	ret
                                    996 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    997 ;	-----------------------------------------
                                    998 ;	 function CLK_SWIMConfig
                                    999 ;	-----------------------------------------
      00B5AF                       1000 _CLK_SWIMConfig:
                                   1001 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 526: assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
      00B5AF 0D 03            [ 1] 1002 	tnz	(0x03, sp)
      00B5B1 27 14            [ 1] 1003 	jreq	00107$
      00B5B3 7B 03            [ 1] 1004 	ld	a, (0x03, sp)
      00B5B5 4A               [ 1] 1005 	dec	a
      00B5B6 27 0F            [ 1] 1006 	jreq	00107$
      00B5B8 4B 0E            [ 1] 1007 	push	#0x0e
      00B5BA 4B 02            [ 1] 1008 	push	#0x02
      00B5BC 5F               [ 1] 1009 	clrw	x
      00B5BD 89               [ 2] 1010 	pushw	x
      00B5BE 4B 5D            [ 1] 1011 	push	#<(___str_0+0)
      00B5C0 4B 83            [ 1] 1012 	push	#((___str_0+0) >> 8)
      00B5C2 CD 85 5C         [ 4] 1013 	call	_assert_failed
      00B5C5 5B 06            [ 2] 1014 	addw	sp, #6
      00B5C7                       1015 00107$:
                                   1016 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      00B5C7 C6 50 CD         [ 1] 1017 	ld	a, 0x50cd
                                   1018 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      00B5CA 0D 03            [ 1] 1019 	tnz	(0x03, sp)
      00B5CC 27 06            [ 1] 1020 	jreq	00102$
                                   1021 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      00B5CE AA 01            [ 1] 1022 	or	a, #0x01
      00B5D0 C7 50 CD         [ 1] 1023 	ld	0x50cd, a
      00B5D3 81               [ 4] 1024 	ret
      00B5D4                       1025 00102$:
                                   1026 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      00B5D4 A4 FE            [ 1] 1027 	and	a, #0xfe
      00B5D6 C7 50 CD         [ 1] 1028 	ld	0x50cd, a
                                   1029 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 538: }
      00B5D9 81               [ 4] 1030 	ret
                                   1031 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                   1032 ;	-----------------------------------------
                                   1033 ;	 function CLK_ClockSecuritySystemEnable
                                   1034 ;	-----------------------------------------
      00B5DA                       1035 _CLK_ClockSecuritySystemEnable:
                                   1036 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      00B5DA 72 10 50 C8      [ 1] 1037 	bset	20680, #0
                                   1038 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 551: }
      00B5DE 81               [ 4] 1039 	ret
                                   1040 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function CLK_GetSYSCLKSource
                                   1043 ;	-----------------------------------------
      00B5DF                       1044 _CLK_GetSYSCLKSource:
                                   1045 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      00B5DF C6 50 C3         [ 1] 1046 	ld	a, 0x50c3
                                   1047 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 562: }
      00B5E2 81               [ 4] 1048 	ret
                                   1049 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                   1050 ;	-----------------------------------------
                                   1051 ;	 function CLK_GetClockFreq
                                   1052 ;	-----------------------------------------
      00B5E3                       1053 _CLK_GetClockFreq:
      00B5E3 52 04            [ 2] 1054 	sub	sp, #4
                                   1055 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      00B5E5 C6 50 C3         [ 1] 1056 	ld	a, 0x50c3
                                   1057 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      00B5E8 6B 04            [ 1] 1058 	ld	(0x04, sp), a
      00B5EA A1 E1            [ 1] 1059 	cp	a, #0xe1
      00B5EC 26 26            [ 1] 1060 	jrne	00105$
                                   1061 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      00B5EE C6 50 C6         [ 1] 1062 	ld	a, 0x50c6
      00B5F1 A4 18            [ 1] 1063 	and	a, #0x18
                                   1064 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      00B5F3 44               [ 1] 1065 	srl	a
      00B5F4 44               [ 1] 1066 	srl	a
      00B5F5 44               [ 1] 1067 	srl	a
                                   1068 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      00B5F6 5F               [ 1] 1069 	clrw	x
      00B5F7 97               [ 1] 1070 	ld	xl, a
      00B5F8 D6 83 51         [ 1] 1071 	ld	a, (_HSIDivFactor+0, x)
                                   1072 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      00B5FB 5F               [ 1] 1073 	clrw	x
      00B5FC 97               [ 1] 1074 	ld	xl, a
      00B5FD 90 5F            [ 1] 1075 	clrw	y
      00B5FF 89               [ 2] 1076 	pushw	x
      00B600 90 89            [ 2] 1077 	pushw	y
      00B602 4B 00            [ 1] 1078 	push	#0x00
      00B604 4B 24            [ 1] 1079 	push	#0x24
      00B606 4B F4            [ 1] 1080 	push	#0xf4
      00B608 4B 00            [ 1] 1081 	push	#0x00
      00B60A CD B7 72         [ 4] 1082 	call	__divulong
      00B60D 5B 08            [ 2] 1083 	addw	sp, #8
      00B60F 51               [ 1] 1084 	exgw	x, y
      00B610 17 03            [ 2] 1085 	ldw	(0x03, sp), y
      00B612 20 17            [ 2] 1086 	jra	00106$
      00B614                       1087 00105$:
                                   1088 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      00B614 7B 04            [ 1] 1089 	ld	a, (0x04, sp)
      00B616 A1 D2            [ 1] 1090 	cp	a, #0xd2
      00B618 26 09            [ 1] 1091 	jrne	00102$
                                   1092 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      00B61A AE F4 00         [ 2] 1093 	ldw	x, #0xf400
      00B61D 1F 03            [ 2] 1094 	ldw	(0x03, sp), x
      00B61F 5F               [ 1] 1095 	clrw	x
      00B620 5C               [ 1] 1096 	incw	x
      00B621 20 08            [ 2] 1097 	jra	00106$
      00B623                       1098 00102$:
                                   1099 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      00B623 AE 24 00         [ 2] 1100 	ldw	x, #0x2400
      00B626 1F 03            [ 2] 1101 	ldw	(0x03, sp), x
      00B628 AE 00 F4         [ 2] 1102 	ldw	x, #0x00f4
      00B62B                       1103 00106$:
                                   1104 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      00B62B 51               [ 1] 1105 	exgw	x, y
      00B62C 1E 03            [ 2] 1106 	ldw	x, (0x03, sp)
                                   1107 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 595: }
      00B62E 5B 04            [ 2] 1108 	addw	sp, #4
      00B630 81               [ 4] 1109 	ret
                                   1110 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   1111 ;	-----------------------------------------
                                   1112 ;	 function CLK_AdjustHSICalibrationValue
                                   1113 ;	-----------------------------------------
      00B631                       1114 _CLK_AdjustHSICalibrationValue:
                                   1115 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 607: assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
      00B631 0D 03            [ 1] 1116 	tnz	(0x03, sp)
      00B633 27 38            [ 1] 1117 	jreq	00104$
      00B635 7B 03            [ 1] 1118 	ld	a, (0x03, sp)
      00B637 4A               [ 1] 1119 	dec	a
      00B638 27 33            [ 1] 1120 	jreq	00104$
      00B63A 7B 03            [ 1] 1121 	ld	a, (0x03, sp)
      00B63C A1 02            [ 1] 1122 	cp	a, #0x02
      00B63E 27 2D            [ 1] 1123 	jreq	00104$
      00B640 7B 03            [ 1] 1124 	ld	a, (0x03, sp)
      00B642 A1 03            [ 1] 1125 	cp	a, #0x03
      00B644 27 27            [ 1] 1126 	jreq	00104$
      00B646 7B 03            [ 1] 1127 	ld	a, (0x03, sp)
      00B648 A1 04            [ 1] 1128 	cp	a, #0x04
      00B64A 27 21            [ 1] 1129 	jreq	00104$
      00B64C 7B 03            [ 1] 1130 	ld	a, (0x03, sp)
      00B64E A1 05            [ 1] 1131 	cp	a, #0x05
      00B650 27 1B            [ 1] 1132 	jreq	00104$
      00B652 7B 03            [ 1] 1133 	ld	a, (0x03, sp)
      00B654 A1 06            [ 1] 1134 	cp	a, #0x06
      00B656 27 15            [ 1] 1135 	jreq	00104$
      00B658 7B 03            [ 1] 1136 	ld	a, (0x03, sp)
      00B65A A1 07            [ 1] 1137 	cp	a, #0x07
      00B65C 27 0F            [ 1] 1138 	jreq	00104$
      00B65E 4B 5F            [ 1] 1139 	push	#0x5f
      00B660 4B 02            [ 1] 1140 	push	#0x02
      00B662 5F               [ 1] 1141 	clrw	x
      00B663 89               [ 2] 1142 	pushw	x
      00B664 4B 5D            [ 1] 1143 	push	#<(___str_0+0)
      00B666 4B 83            [ 1] 1144 	push	#((___str_0+0) >> 8)
      00B668 CD 85 5C         [ 4] 1145 	call	_assert_failed
      00B66B 5B 06            [ 2] 1146 	addw	sp, #6
      00B66D                       1147 00104$:
                                   1148 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      00B66D C6 50 CC         [ 1] 1149 	ld	a, 0x50cc
      00B670 A4 F8            [ 1] 1150 	and	a, #0xf8
      00B672 1A 03            [ 1] 1151 	or	a, (0x03, sp)
      00B674 C7 50 CC         [ 1] 1152 	ld	0x50cc, a
                                   1153 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 611: }
      00B677 81               [ 4] 1154 	ret
                                   1155 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                   1156 ;	-----------------------------------------
                                   1157 ;	 function CLK_SYSCLKEmergencyClear
                                   1158 ;	-----------------------------------------
      00B678                       1159 _CLK_SYSCLKEmergencyClear:
                                   1160 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      00B678 72 11 50 C5      [ 1] 1161 	bres	20677, #0
                                   1162 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 625: }
      00B67C 81               [ 4] 1163 	ret
                                   1164 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   1165 ;	-----------------------------------------
                                   1166 ;	 function CLK_GetFlagStatus
                                   1167 ;	-----------------------------------------
      00B67D                       1168 _CLK_GetFlagStatus:
      00B67D 88               [ 1] 1169 	push	a
                                   1170 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 641: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      00B67E 1E 04            [ 2] 1171 	ldw	x, (0x04, sp)
      00B680 A3 01 10         [ 2] 1172 	cpw	x, #0x0110
      00B683 27 3B            [ 1] 1173 	jreq	00119$
      00B685 A3 01 02         [ 2] 1174 	cpw	x, #0x0102
      00B688 27 36            [ 1] 1175 	jreq	00119$
      00B68A A3 02 02         [ 2] 1176 	cpw	x, #0x0202
      00B68D 27 31            [ 1] 1177 	jreq	00119$
      00B68F A3 03 08         [ 2] 1178 	cpw	x, #0x0308
      00B692 27 2C            [ 1] 1179 	jreq	00119$
      00B694 A3 03 01         [ 2] 1180 	cpw	x, #0x0301
      00B697 27 27            [ 1] 1181 	jreq	00119$
      00B699 A3 04 08         [ 2] 1182 	cpw	x, #0x0408
      00B69C 27 22            [ 1] 1183 	jreq	00119$
      00B69E A3 04 02         [ 2] 1184 	cpw	x, #0x0402
      00B6A1 27 1D            [ 1] 1185 	jreq	00119$
      00B6A3 A3 05 04         [ 2] 1186 	cpw	x, #0x0504
      00B6A6 27 18            [ 1] 1187 	jreq	00119$
      00B6A8 A3 05 02         [ 2] 1188 	cpw	x, #0x0502
      00B6AB 27 13            [ 1] 1189 	jreq	00119$
      00B6AD 89               [ 2] 1190 	pushw	x
      00B6AE 4B 81            [ 1] 1191 	push	#0x81
      00B6B0 4B 02            [ 1] 1192 	push	#0x02
      00B6B2 4B 00            [ 1] 1193 	push	#0x00
      00B6B4 4B 00            [ 1] 1194 	push	#0x00
      00B6B6 4B 5D            [ 1] 1195 	push	#<(___str_0+0)
      00B6B8 4B 83            [ 1] 1196 	push	#((___str_0+0) >> 8)
      00B6BA CD 85 5C         [ 4] 1197 	call	_assert_failed
      00B6BD 5B 06            [ 2] 1198 	addw	sp, #6
      00B6BF 85               [ 2] 1199 	popw	x
      00B6C0                       1200 00119$:
                                   1201 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      00B6C0 4F               [ 1] 1202 	clr	a
                                   1203 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      00B6C1 97               [ 1] 1204 	ld	xl, a
      00B6C2 A3 01 00         [ 2] 1205 	cpw	x, #0x0100
      00B6C5 26 05            [ 1] 1206 	jrne	00111$
                                   1207 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      00B6C7 C6 50 C0         [ 1] 1208 	ld	a, 0x50c0
      00B6CA 20 21            [ 2] 1209 	jra	00112$
      00B6CC                       1210 00111$:
                                   1211 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      00B6CC A3 02 00         [ 2] 1212 	cpw	x, #0x0200
      00B6CF 26 05            [ 1] 1213 	jrne	00108$
                                   1214 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      00B6D1 C6 50 C1         [ 1] 1215 	ld	a, 0x50c1
      00B6D4 20 17            [ 2] 1216 	jra	00112$
      00B6D6                       1217 00108$:
                                   1218 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      00B6D6 A3 03 00         [ 2] 1219 	cpw	x, #0x0300
      00B6D9 26 05            [ 1] 1220 	jrne	00105$
                                   1221 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      00B6DB C6 50 C5         [ 1] 1222 	ld	a, 0x50c5
      00B6DE 20 0D            [ 2] 1223 	jra	00112$
      00B6E0                       1224 00105$:
                                   1225 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      00B6E0 A3 04 00         [ 2] 1226 	cpw	x, #0x0400
      00B6E3 26 05            [ 1] 1227 	jrne	00102$
                                   1228 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      00B6E5 C6 50 C8         [ 1] 1229 	ld	a, 0x50c8
      00B6E8 20 03            [ 2] 1230 	jra	00112$
      00B6EA                       1231 00102$:
                                   1232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      00B6EA C6 50 C9         [ 1] 1233 	ld	a, 0x50c9
      00B6ED                       1234 00112$:
                                   1235 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      00B6ED 88               [ 1] 1236 	push	a
      00B6EE 7B 06            [ 1] 1237 	ld	a, (0x06, sp)
      00B6F0 6B 02            [ 1] 1238 	ld	(0x02, sp), a
      00B6F2 84               [ 1] 1239 	pop	a
      00B6F3 14 01            [ 1] 1240 	and	a, (0x01, sp)
      00B6F5 27 03            [ 1] 1241 	jreq	00114$
                                   1242 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 670: bitstatus = SET;
      00B6F7 A6 01            [ 1] 1243 	ld	a, #0x01
                                   1244 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 674: bitstatus = RESET;
      00B6F9 21                    1245 	.byte 0x21
      00B6FA                       1246 00114$:
      00B6FA 4F               [ 1] 1247 	clr	a
      00B6FB                       1248 00115$:
                                   1249 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                   1250 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 679: }
      00B6FB 5B 01            [ 2] 1251 	addw	sp, #1
      00B6FD 81               [ 4] 1252 	ret
                                   1253 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1254 ;	-----------------------------------------
                                   1255 ;	 function CLK_GetITStatus
                                   1256 ;	-----------------------------------------
      00B6FE                       1257 _CLK_GetITStatus:
                                   1258 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 692: assert_param(IS_CLK_IT_OK(CLK_IT));
      00B6FE 7B 03            [ 1] 1259 	ld	a, (0x03, sp)
      00B700 A0 1C            [ 1] 1260 	sub	a, #0x1c
      00B702 26 02            [ 1] 1261 	jrne	00143$
      00B704 4C               [ 1] 1262 	inc	a
      00B705 21                    1263 	.byte 0x21
      00B706                       1264 00143$:
      00B706 4F               [ 1] 1265 	clr	a
      00B707                       1266 00144$:
      00B707 88               [ 1] 1267 	push	a
      00B708 7B 04            [ 1] 1268 	ld	a, (0x04, sp)
      00B70A A1 0C            [ 1] 1269 	cp	a, #0x0c
      00B70C 84               [ 1] 1270 	pop	a
      00B70D 27 14            [ 1] 1271 	jreq	00113$
      00B70F 4D               [ 1] 1272 	tnz	a
      00B710 26 11            [ 1] 1273 	jrne	00113$
      00B712 88               [ 1] 1274 	push	a
      00B713 4B B4            [ 1] 1275 	push	#0xb4
      00B715 4B 02            [ 1] 1276 	push	#0x02
      00B717 5F               [ 1] 1277 	clrw	x
      00B718 89               [ 2] 1278 	pushw	x
      00B719 4B 5D            [ 1] 1279 	push	#<(___str_0+0)
      00B71B 4B 83            [ 1] 1280 	push	#((___str_0+0) >> 8)
      00B71D CD 85 5C         [ 4] 1281 	call	_assert_failed
      00B720 5B 06            [ 2] 1282 	addw	sp, #6
      00B722 84               [ 1] 1283 	pop	a
      00B723                       1284 00113$:
                                   1285 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      00B723 4D               [ 1] 1286 	tnz	a
      00B724 27 0D            [ 1] 1287 	jreq	00108$
                                   1288 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      00B726 C6 50 C5         [ 1] 1289 	ld	a, 0x50c5
      00B729 14 03            [ 1] 1290 	and	a, (0x03, sp)
                                   1291 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 699: bitstatus = SET;
      00B72B A0 0C            [ 1] 1292 	sub	a, #0x0c
      00B72D 26 02            [ 1] 1293 	jrne	00102$
      00B72F 4C               [ 1] 1294 	inc	a
      00B730 81               [ 4] 1295 	ret
      00B731                       1296 00102$:
                                   1297 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 703: bitstatus = RESET;
      00B731 4F               [ 1] 1298 	clr	a
      00B732 81               [ 4] 1299 	ret
      00B733                       1300 00108$:
                                   1301 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      00B733 C6 50 C8         [ 1] 1302 	ld	a, 0x50c8
      00B736 14 03            [ 1] 1303 	and	a, (0x03, sp)
                                   1304 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 711: bitstatus = SET;
      00B738 A0 0C            [ 1] 1305 	sub	a, #0x0c
      00B73A 26 02            [ 1] 1306 	jrne	00105$
      00B73C 4C               [ 1] 1307 	inc	a
      00B73D 81               [ 4] 1308 	ret
      00B73E                       1309 00105$:
                                   1310 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 715: bitstatus = RESET;
      00B73E 4F               [ 1] 1311 	clr	a
                                   1312 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 720: return bitstatus;
                                   1313 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 721: }
      00B73F 81               [ 4] 1314 	ret
                                   1315 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1316 ;	-----------------------------------------
                                   1317 ;	 function CLK_ClearITPendingBit
                                   1318 ;	-----------------------------------------
      00B740                       1319 _CLK_ClearITPendingBit:
                                   1320 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 732: assert_param(IS_CLK_IT_OK(CLK_IT));
      00B740 7B 03            [ 1] 1321 	ld	a, (0x03, sp)
      00B742 A0 0C            [ 1] 1322 	sub	a, #0x0c
      00B744 26 02            [ 1] 1323 	jrne	00127$
      00B746 4C               [ 1] 1324 	inc	a
      00B747 21                    1325 	.byte 0x21
      00B748                       1326 00127$:
      00B748 4F               [ 1] 1327 	clr	a
      00B749                       1328 00128$:
      00B749 4D               [ 1] 1329 	tnz	a
      00B74A 26 19            [ 1] 1330 	jrne	00107$
      00B74C 88               [ 1] 1331 	push	a
      00B74D 7B 04            [ 1] 1332 	ld	a, (0x04, sp)
      00B74F A1 1C            [ 1] 1333 	cp	a, #0x1c
      00B751 84               [ 1] 1334 	pop	a
      00B752 27 11            [ 1] 1335 	jreq	00107$
      00B754 88               [ 1] 1336 	push	a
      00B755 4B DC            [ 1] 1337 	push	#0xdc
      00B757 4B 02            [ 1] 1338 	push	#0x02
      00B759 5F               [ 1] 1339 	clrw	x
      00B75A 89               [ 2] 1340 	pushw	x
      00B75B 4B 5D            [ 1] 1341 	push	#<(___str_0+0)
      00B75D 4B 83            [ 1] 1342 	push	#((___str_0+0) >> 8)
      00B75F CD 85 5C         [ 4] 1343 	call	_assert_failed
      00B762 5B 06            [ 2] 1344 	addw	sp, #6
      00B764 84               [ 1] 1345 	pop	a
      00B765                       1346 00107$:
                                   1347 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      00B765 4D               [ 1] 1348 	tnz	a
      00B766 27 05            [ 1] 1349 	jreq	00102$
                                   1350 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      00B768 72 17 50 C8      [ 1] 1351 	bres	20680, #3
      00B76C 81               [ 4] 1352 	ret
      00B76D                       1353 00102$:
                                   1354 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      00B76D 72 17 50 C5      [ 1] 1355 	bres	20677, #3
                                   1356 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 745: }
      00B771 81               [ 4] 1357 	ret
                                   1358 	.area CODE
                                   1359 	.area CONST
      008351                       1360 _HSIDivFactor:
      008351 01                    1361 	.db #0x01	; 1
      008352 02                    1362 	.db #0x02	; 2
      008353 04                    1363 	.db #0x04	; 4
      008354 08                    1364 	.db #0x08	; 8
      008355                       1365 _CLKPrescTable:
      008355 01                    1366 	.db #0x01	; 1
      008356 02                    1367 	.db #0x02	; 2
      008357 04                    1368 	.db #0x04	; 4
      008358 08                    1369 	.db #0x08	; 8
      008359 0A                    1370 	.db #0x0a	; 10
      00835A 10                    1371 	.db #0x10	; 16
      00835B 14                    1372 	.db #0x14	; 20
      00835C 28                    1373 	.db #0x28	; 40
                                   1374 	.area CONST
      00835D                       1375 ___str_0:
      00835D 2F 55 73 65 72 73 2F  1376 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      008399 4D 38 53 5F 53 74 64  1377 	.ascii "M8S_StdPeriph_Driver/src/stm8s_clk.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 63 6C 6B 2E
             63
      0083BD 00                    1378 	.db 0x00
                                   1379 	.area CODE
                                   1380 	.area INITIALIZER
                                   1381 	.area CABS (ABS)
