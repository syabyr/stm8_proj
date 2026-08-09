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
      00BF2E                         78 _CLK_DeInit:
                                     79 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      00BF2E 35 01 50 C0      [ 1]   80 	mov	0x50c0+0, #0x01
                                     81 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      00BF32 35 00 50 C1      [ 1]   82 	mov	0x50c1+0, #0x00
                                     83 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      00BF36 35 E1 50 C4      [ 1]   84 	mov	0x50c4+0, #0xe1
                                     85 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      00BF3A 35 00 50 C5      [ 1]   86 	mov	0x50c5+0, #0x00
                                     87 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      00BF3E 35 18 50 C6      [ 1]   88 	mov	0x50c6+0, #0x18
                                     89 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      00BF42 35 FF 50 C7      [ 1]   90 	mov	0x50c7+0, #0xff
                                     91 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      00BF46 35 FF 50 CA      [ 1]   92 	mov	0x50ca+0, #0xff
                                     93 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      00BF4A 35 00 50 C8      [ 1]   94 	mov	0x50c8+0, #0x00
                                     95 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00BF4E 35 00 50 C9      [ 1]   96 	mov	0x50c9+0, #0x00
                                     97 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      00BF52                         98 00101$:
      00BF52 C6 50 C9         [ 1]   99 	ld	a, 0x50c9
      00BF55 44               [ 1]  100 	srl	a
      00BF56 25 FA            [ 1]  101 	jrc	00101$
                                    102 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00BF58 35 00 50 C9      [ 1]  103 	mov	0x50c9+0, #0x00
                                    104 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      00BF5C 35 00 50 CC      [ 1]  105 	mov	0x50cc+0, #0x00
                                    106 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      00BF60 35 00 50 CD      [ 1]  107 	mov	0x50cd+0, #0x00
                                    108 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 88: }
      00BF64 81               [ 4]  109 	ret
                                    110 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    111 ;	-----------------------------------------
                                    112 ;	 function CLK_FastHaltWakeUpCmd
                                    113 ;	-----------------------------------------
      00BF65                        114 _CLK_FastHaltWakeUpCmd:
                                    115 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 102: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BF65 0D 03            [ 1]  116 	tnz	(0x03, sp)
      00BF67 27 14            [ 1]  117 	jreq	00107$
      00BF69 7B 03            [ 1]  118 	ld	a, (0x03, sp)
      00BF6B 4A               [ 1]  119 	dec	a
      00BF6C 27 0F            [ 1]  120 	jreq	00107$
      00BF6E 4B 66            [ 1]  121 	push	#0x66
      00BF70 5F               [ 1]  122 	clrw	x
      00BF71 89               [ 2]  123 	pushw	x
      00BF72 4B 00            [ 1]  124 	push	#0x00
      00BF74 4B 87            [ 1]  125 	push	#<(___str_0+0)
      00BF76 4B 83            [ 1]  126 	push	#((___str_0+0) >> 8)
      00BF78 CD 85 9D         [ 4]  127 	call	_assert_failed
      00BF7B 5B 06            [ 2]  128 	addw	sp, #6
      00BF7D                        129 00107$:
                                    130 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      00BF7D C6 50 C0         [ 1]  131 	ld	a, 0x50c0
                                    132 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 104: if (NewState != DISABLE)
      00BF80 0D 03            [ 1]  133 	tnz	(0x03, sp)
      00BF82 27 06            [ 1]  134 	jreq	00102$
                                    135 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      00BF84 AA 04            [ 1]  136 	or	a, #0x04
      00BF86 C7 50 C0         [ 1]  137 	ld	0x50c0, a
      00BF89 81               [ 4]  138 	ret
      00BF8A                        139 00102$:
                                    140 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      00BF8A A4 FB            [ 1]  141 	and	a, #0xfb
      00BF8C C7 50 C0         [ 1]  142 	ld	0x50c0, a
                                    143 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 114: }
      00BF8F 81               [ 4]  144 	ret
                                    145 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    146 ;	-----------------------------------------
                                    147 ;	 function CLK_HSECmd
                                    148 ;	-----------------------------------------
      00BF90                        149 _CLK_HSECmd:
                                    150 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 124: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BF90 0D 03            [ 1]  151 	tnz	(0x03, sp)
      00BF92 27 14            [ 1]  152 	jreq	00107$
      00BF94 7B 03            [ 1]  153 	ld	a, (0x03, sp)
      00BF96 4A               [ 1]  154 	dec	a
      00BF97 27 0F            [ 1]  155 	jreq	00107$
      00BF99 4B 7C            [ 1]  156 	push	#0x7c
      00BF9B 5F               [ 1]  157 	clrw	x
      00BF9C 89               [ 2]  158 	pushw	x
      00BF9D 4B 00            [ 1]  159 	push	#0x00
      00BF9F 4B 87            [ 1]  160 	push	#<(___str_0+0)
      00BFA1 4B 83            [ 1]  161 	push	#((___str_0+0) >> 8)
      00BFA3 CD 85 9D         [ 4]  162 	call	_assert_failed
      00BFA6 5B 06            [ 2]  163 	addw	sp, #6
      00BFA8                        164 00107$:
                                    165 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      00BFA8 C6 50 C1         [ 1]  166 	ld	a, 0x50c1
                                    167 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 126: if (NewState != DISABLE)
      00BFAB 0D 03            [ 1]  168 	tnz	(0x03, sp)
      00BFAD 27 06            [ 1]  169 	jreq	00102$
                                    170 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      00BFAF AA 01            [ 1]  171 	or	a, #0x01
      00BFB1 C7 50 C1         [ 1]  172 	ld	0x50c1, a
      00BFB4 81               [ 4]  173 	ret
      00BFB5                        174 00102$:
                                    175 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00BFB5 A4 FE            [ 1]  176 	and	a, #0xfe
      00BFB7 C7 50 C1         [ 1]  177 	ld	0x50c1, a
                                    178 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 136: }
      00BFBA 81               [ 4]  179 	ret
                                    180 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    181 ;	-----------------------------------------
                                    182 ;	 function CLK_HSICmd
                                    183 ;	-----------------------------------------
      00BFBB                        184 _CLK_HSICmd:
                                    185 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 146: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BFBB 0D 03            [ 1]  186 	tnz	(0x03, sp)
      00BFBD 27 14            [ 1]  187 	jreq	00107$
      00BFBF 7B 03            [ 1]  188 	ld	a, (0x03, sp)
      00BFC1 4A               [ 1]  189 	dec	a
      00BFC2 27 0F            [ 1]  190 	jreq	00107$
      00BFC4 4B 92            [ 1]  191 	push	#0x92
      00BFC6 5F               [ 1]  192 	clrw	x
      00BFC7 89               [ 2]  193 	pushw	x
      00BFC8 4B 00            [ 1]  194 	push	#0x00
      00BFCA 4B 87            [ 1]  195 	push	#<(___str_0+0)
      00BFCC 4B 83            [ 1]  196 	push	#((___str_0+0) >> 8)
      00BFCE CD 85 9D         [ 4]  197 	call	_assert_failed
      00BFD1 5B 06            [ 2]  198 	addw	sp, #6
      00BFD3                        199 00107$:
                                    200 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      00BFD3 C6 50 C0         [ 1]  201 	ld	a, 0x50c0
                                    202 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 148: if (NewState != DISABLE)
      00BFD6 0D 03            [ 1]  203 	tnz	(0x03, sp)
      00BFD8 27 06            [ 1]  204 	jreq	00102$
                                    205 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      00BFDA AA 01            [ 1]  206 	or	a, #0x01
      00BFDC C7 50 C0         [ 1]  207 	ld	0x50c0, a
      00BFDF 81               [ 4]  208 	ret
      00BFE0                        209 00102$:
                                    210 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00BFE0 A4 FE            [ 1]  211 	and	a, #0xfe
      00BFE2 C7 50 C0         [ 1]  212 	ld	0x50c0, a
                                    213 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 158: }
      00BFE5 81               [ 4]  214 	ret
                                    215 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    216 ;	-----------------------------------------
                                    217 ;	 function CLK_LSICmd
                                    218 ;	-----------------------------------------
      00BFE6                        219 _CLK_LSICmd:
                                    220 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 169: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BFE6 0D 03            [ 1]  221 	tnz	(0x03, sp)
      00BFE8 27 14            [ 1]  222 	jreq	00107$
      00BFEA 7B 03            [ 1]  223 	ld	a, (0x03, sp)
      00BFEC 4A               [ 1]  224 	dec	a
      00BFED 27 0F            [ 1]  225 	jreq	00107$
      00BFEF 4B A9            [ 1]  226 	push	#0xa9
      00BFF1 5F               [ 1]  227 	clrw	x
      00BFF2 89               [ 2]  228 	pushw	x
      00BFF3 4B 00            [ 1]  229 	push	#0x00
      00BFF5 4B 87            [ 1]  230 	push	#<(___str_0+0)
      00BFF7 4B 83            [ 1]  231 	push	#((___str_0+0) >> 8)
      00BFF9 CD 85 9D         [ 4]  232 	call	_assert_failed
      00BFFC 5B 06            [ 2]  233 	addw	sp, #6
      00BFFE                        234 00107$:
                                    235 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      00BFFE C6 50 C0         [ 1]  236 	ld	a, 0x50c0
                                    237 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 171: if (NewState != DISABLE)
      00C001 0D 03            [ 1]  238 	tnz	(0x03, sp)
      00C003 27 06            [ 1]  239 	jreq	00102$
                                    240 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      00C005 AA 08            [ 1]  241 	or	a, #0x08
      00C007 C7 50 C0         [ 1]  242 	ld	0x50c0, a
      00C00A 81               [ 4]  243 	ret
      00C00B                        244 00102$:
                                    245 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00C00B A4 F7            [ 1]  246 	and	a, #0xf7
      00C00D C7 50 C0         [ 1]  247 	ld	0x50c0, a
                                    248 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 181: }
      00C010 81               [ 4]  249 	ret
                                    250 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    251 ;	-----------------------------------------
                                    252 ;	 function CLK_CCOCmd
                                    253 ;	-----------------------------------------
      00C011                        254 _CLK_CCOCmd:
                                    255 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 192: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C011 0D 03            [ 1]  256 	tnz	(0x03, sp)
      00C013 27 14            [ 1]  257 	jreq	00107$
      00C015 7B 03            [ 1]  258 	ld	a, (0x03, sp)
      00C017 4A               [ 1]  259 	dec	a
      00C018 27 0F            [ 1]  260 	jreq	00107$
      00C01A 4B C0            [ 1]  261 	push	#0xc0
      00C01C 5F               [ 1]  262 	clrw	x
      00C01D 89               [ 2]  263 	pushw	x
      00C01E 4B 00            [ 1]  264 	push	#0x00
      00C020 4B 87            [ 1]  265 	push	#<(___str_0+0)
      00C022 4B 83            [ 1]  266 	push	#((___str_0+0) >> 8)
      00C024 CD 85 9D         [ 4]  267 	call	_assert_failed
      00C027 5B 06            [ 2]  268 	addw	sp, #6
      00C029                        269 00107$:
                                    270 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      00C029 C6 50 C9         [ 1]  271 	ld	a, 0x50c9
                                    272 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 194: if (NewState != DISABLE)
      00C02C 0D 03            [ 1]  273 	tnz	(0x03, sp)
      00C02E 27 06            [ 1]  274 	jreq	00102$
                                    275 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      00C030 AA 01            [ 1]  276 	or	a, #0x01
      00C032 C7 50 C9         [ 1]  277 	ld	0x50c9, a
      00C035 81               [ 4]  278 	ret
      00C036                        279 00102$:
                                    280 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      00C036 A4 FE            [ 1]  281 	and	a, #0xfe
      00C038 C7 50 C9         [ 1]  282 	ld	0x50c9, a
                                    283 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 204: }
      00C03B 81               [ 4]  284 	ret
                                    285 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    286 ;	-----------------------------------------
                                    287 ;	 function CLK_ClockSwitchCmd
                                    288 ;	-----------------------------------------
      00C03C                        289 _CLK_ClockSwitchCmd:
                                    290 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C03C 0D 03            [ 1]  291 	tnz	(0x03, sp)
      00C03E 27 14            [ 1]  292 	jreq	00107$
      00C040 7B 03            [ 1]  293 	ld	a, (0x03, sp)
      00C042 4A               [ 1]  294 	dec	a
      00C043 27 0F            [ 1]  295 	jreq	00107$
      00C045 4B D8            [ 1]  296 	push	#0xd8
      00C047 5F               [ 1]  297 	clrw	x
      00C048 89               [ 2]  298 	pushw	x
      00C049 4B 00            [ 1]  299 	push	#0x00
      00C04B 4B 87            [ 1]  300 	push	#<(___str_0+0)
      00C04D 4B 83            [ 1]  301 	push	#((___str_0+0) >> 8)
      00C04F CD 85 9D         [ 4]  302 	call	_assert_failed
      00C052 5B 06            [ 2]  303 	addw	sp, #6
      00C054                        304 00107$:
                                    305 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      00C054 C6 50 C5         [ 1]  306 	ld	a, 0x50c5
                                    307 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 218: if (NewState != DISABLE )
      00C057 0D 03            [ 1]  308 	tnz	(0x03, sp)
      00C059 27 06            [ 1]  309 	jreq	00102$
                                    310 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      00C05B AA 02            [ 1]  311 	or	a, #0x02
      00C05D C7 50 C5         [ 1]  312 	ld	0x50c5, a
      00C060 81               [ 4]  313 	ret
      00C061                        314 00102$:
                                    315 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      00C061 A4 FD            [ 1]  316 	and	a, #0xfd
      00C063 C7 50 C5         [ 1]  317 	ld	0x50c5, a
                                    318 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 228: }
      00C066 81               [ 4]  319 	ret
                                    320 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    321 ;	-----------------------------------------
                                    322 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    323 ;	-----------------------------------------
      00C067                        324 _CLK_SlowActiveHaltWakeUpCmd:
                                    325 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 241: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C067 0D 03            [ 1]  326 	tnz	(0x03, sp)
      00C069 27 14            [ 1]  327 	jreq	00107$
      00C06B 7B 03            [ 1]  328 	ld	a, (0x03, sp)
      00C06D 4A               [ 1]  329 	dec	a
      00C06E 27 0F            [ 1]  330 	jreq	00107$
      00C070 4B F1            [ 1]  331 	push	#0xf1
      00C072 5F               [ 1]  332 	clrw	x
      00C073 89               [ 2]  333 	pushw	x
      00C074 4B 00            [ 1]  334 	push	#0x00
      00C076 4B 87            [ 1]  335 	push	#<(___str_0+0)
      00C078 4B 83            [ 1]  336 	push	#((___str_0+0) >> 8)
      00C07A CD 85 9D         [ 4]  337 	call	_assert_failed
      00C07D 5B 06            [ 2]  338 	addw	sp, #6
      00C07F                        339 00107$:
                                    340 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      00C07F C6 50 C0         [ 1]  341 	ld	a, 0x50c0
                                    342 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 243: if (NewState != DISABLE)
      00C082 0D 03            [ 1]  343 	tnz	(0x03, sp)
      00C084 27 06            [ 1]  344 	jreq	00102$
                                    345 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      00C086 AA 20            [ 1]  346 	or	a, #0x20
      00C088 C7 50 C0         [ 1]  347 	ld	0x50c0, a
      00C08B 81               [ 4]  348 	ret
      00C08C                        349 00102$:
                                    350 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      00C08C A4 DF            [ 1]  351 	and	a, #0xdf
      00C08E C7 50 C0         [ 1]  352 	ld	0x50c0, a
                                    353 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 253: }
      00C091 81               [ 4]  354 	ret
                                    355 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    356 ;	-----------------------------------------
                                    357 ;	 function CLK_PeripheralClockConfig
                                    358 ;	-----------------------------------------
      00C092                        359 _CLK_PeripheralClockConfig:
      00C092 89               [ 2]  360 	pushw	x
                                    361 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 266: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C093 0D 06            [ 1]  362 	tnz	(0x06, sp)
      00C095 27 14            [ 1]  363 	jreq	00113$
      00C097 7B 06            [ 1]  364 	ld	a, (0x06, sp)
      00C099 4A               [ 1]  365 	dec	a
      00C09A 27 0F            [ 1]  366 	jreq	00113$
      00C09C 4B 0A            [ 1]  367 	push	#0x0a
      00C09E 4B 01            [ 1]  368 	push	#0x01
      00C0A0 5F               [ 1]  369 	clrw	x
      00C0A1 89               [ 2]  370 	pushw	x
      00C0A2 4B 87            [ 1]  371 	push	#<(___str_0+0)
      00C0A4 4B 83            [ 1]  372 	push	#((___str_0+0) >> 8)
      00C0A6 CD 85 9D         [ 4]  373 	call	_assert_failed
      00C0A9 5B 06            [ 2]  374 	addw	sp, #6
      00C0AB                        375 00113$:
                                    376 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 267: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      00C0AB 0D 05            [ 1]  377 	tnz	(0x05, sp)
      00C0AD 27 67            [ 1]  378 	jreq	00118$
      00C0AF 7B 05            [ 1]  379 	ld	a, (0x05, sp)
      00C0B1 4A               [ 1]  380 	dec	a
      00C0B2 27 62            [ 1]  381 	jreq	00118$
      00C0B4 7B 05            [ 1]  382 	ld	a, (0x05, sp)
      00C0B6 A0 03            [ 1]  383 	sub	a, #0x03
      00C0B8 26 02            [ 1]  384 	jrne	00262$
      00C0BA 4C               [ 1]  385 	inc	a
      00C0BB 21                     386 	.byte 0x21
      00C0BC                        387 00262$:
      00C0BC 4F               [ 1]  388 	clr	a
      00C0BD                        389 00263$:
      00C0BD 4D               [ 1]  390 	tnz	a
      00C0BE 26 56            [ 1]  391 	jrne	00118$
      00C0C0 4D               [ 1]  392 	tnz	a
      00C0C1 26 53            [ 1]  393 	jrne	00118$
      00C0C3 4D               [ 1]  394 	tnz	a
      00C0C4 26 50            [ 1]  395 	jrne	00118$
      00C0C6 7B 05            [ 1]  396 	ld	a, (0x05, sp)
      00C0C8 A0 04            [ 1]  397 	sub	a, #0x04
      00C0CA 26 04            [ 1]  398 	jrne	00268$
      00C0CC 4C               [ 1]  399 	inc	a
      00C0CD 97               [ 1]  400 	ld	xl, a
      00C0CE 20 02            [ 2]  401 	jra	00269$
      00C0D0                        402 00268$:
      00C0D0 4F               [ 1]  403 	clr	a
      00C0D1 97               [ 1]  404 	ld	xl, a
      00C0D2                        405 00269$:
      00C0D2 9F               [ 1]  406 	ld	a, xl
      00C0D3 4D               [ 1]  407 	tnz	a
      00C0D4 26 40            [ 1]  408 	jrne	00118$
      00C0D6 7B 05            [ 1]  409 	ld	a, (0x05, sp)
      00C0D8 A0 05            [ 1]  410 	sub	a, #0x05
      00C0DA 26 02            [ 1]  411 	jrne	00272$
      00C0DC 4C               [ 1]  412 	inc	a
      00C0DD 21                     413 	.byte 0x21
      00C0DE                        414 00272$:
      00C0DE 4F               [ 1]  415 	clr	a
      00C0DF                        416 00273$:
      00C0DF 4D               [ 1]  417 	tnz	a
      00C0E0 26 34            [ 1]  418 	jrne	00118$
      00C0E2 4D               [ 1]  419 	tnz	a
      00C0E3 26 31            [ 1]  420 	jrne	00118$
      00C0E5 9F               [ 1]  421 	ld	a, xl
      00C0E6 4D               [ 1]  422 	tnz	a
      00C0E7 26 2D            [ 1]  423 	jrne	00118$
      00C0E9 7B 05            [ 1]  424 	ld	a, (0x05, sp)
      00C0EB A1 06            [ 1]  425 	cp	a, #0x06
      00C0ED 27 27            [ 1]  426 	jreq	00118$
      00C0EF 7B 05            [ 1]  427 	ld	a, (0x05, sp)
      00C0F1 A1 07            [ 1]  428 	cp	a, #0x07
      00C0F3 27 21            [ 1]  429 	jreq	00118$
      00C0F5 7B 05            [ 1]  430 	ld	a, (0x05, sp)
      00C0F7 A1 17            [ 1]  431 	cp	a, #0x17
      00C0F9 27 1B            [ 1]  432 	jreq	00118$
      00C0FB 7B 05            [ 1]  433 	ld	a, (0x05, sp)
      00C0FD A1 13            [ 1]  434 	cp	a, #0x13
      00C0FF 27 15            [ 1]  435 	jreq	00118$
      00C101 7B 05            [ 1]  436 	ld	a, (0x05, sp)
      00C103 A1 12            [ 1]  437 	cp	a, #0x12
      00C105 27 0F            [ 1]  438 	jreq	00118$
      00C107 4B 0B            [ 1]  439 	push	#0x0b
      00C109 4B 01            [ 1]  440 	push	#0x01
      00C10B 5F               [ 1]  441 	clrw	x
      00C10C 89               [ 2]  442 	pushw	x
      00C10D 4B 87            [ 1]  443 	push	#<(___str_0+0)
      00C10F 4B 83            [ 1]  444 	push	#((___str_0+0) >> 8)
      00C111 CD 85 9D         [ 4]  445 	call	_assert_failed
      00C114 5B 06            [ 2]  446 	addw	sp, #6
      00C116                        447 00118$:
                                    448 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00C116 7B 05            [ 1]  449 	ld	a, (0x05, sp)
      00C118 A4 0F            [ 1]  450 	and	a, #0x0f
      00C11A 88               [ 1]  451 	push	a
      00C11B A6 01            [ 1]  452 	ld	a, #0x01
      00C11D 6B 02            [ 1]  453 	ld	(0x02, sp), a
      00C11F 84               [ 1]  454 	pop	a
      00C120 4D               [ 1]  455 	tnz	a
      00C121 27 05            [ 1]  456 	jreq	00293$
      00C123                        457 00292$:
      00C123 08 01            [ 1]  458 	sll	(0x01, sp)
      00C125 4A               [ 1]  459 	dec	a
      00C126 26 FB            [ 1]  460 	jrne	00292$
      00C128                        461 00293$:
                                    462 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00C128 7B 01            [ 1]  463 	ld	a, (0x01, sp)
      00C12A 43               [ 1]  464 	cpl	a
      00C12B 6B 02            [ 1]  465 	ld	(0x02, sp), a
                                    466 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      00C12D 7B 05            [ 1]  467 	ld	a, (0x05, sp)
      00C12F A5 10            [ 1]  468 	bcp	a, #0x10
      00C131 26 15            [ 1]  469 	jrne	00108$
                                    470 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00C133 C6 50 C7         [ 1]  471 	ld	a, 0x50c7
                                    472 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 271: if (NewState != DISABLE)
      00C136 0D 06            [ 1]  473 	tnz	(0x06, sp)
      00C138 27 07            [ 1]  474 	jreq	00102$
                                    475 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00C13A 1A 01            [ 1]  476 	or	a, (0x01, sp)
      00C13C C7 50 C7         [ 1]  477 	ld	0x50c7, a
      00C13F 20 1A            [ 2]  478 	jra	00110$
      00C141                        479 00102$:
                                    480 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00C141 14 02            [ 1]  481 	and	a, (0x02, sp)
      00C143 C7 50 C7         [ 1]  482 	ld	0x50c7, a
      00C146 20 13            [ 2]  483 	jra	00110$
      00C148                        484 00108$:
                                    485 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00C148 C6 50 CA         [ 1]  486 	ld	a, 0x50ca
                                    487 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 284: if (NewState != DISABLE)
      00C14B 0D 06            [ 1]  488 	tnz	(0x06, sp)
      00C14D 27 07            [ 1]  489 	jreq	00105$
                                    490 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00C14F 1A 01            [ 1]  491 	or	a, (0x01, sp)
      00C151 C7 50 CA         [ 1]  492 	ld	0x50ca, a
      00C154 20 05            [ 2]  493 	jra	00110$
      00C156                        494 00105$:
                                    495 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00C156 14 02            [ 1]  496 	and	a, (0x02, sp)
      00C158 C7 50 CA         [ 1]  497 	ld	0x50ca, a
      00C15B                        498 00110$:
                                    499 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 295: }
      00C15B 85               [ 2]  500 	popw	x
      00C15C 81               [ 4]  501 	ret
                                    502 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    503 ;	-----------------------------------------
                                    504 ;	 function CLK_ClockSwitchConfig
                                    505 ;	-----------------------------------------
      00C15D                        506 _CLK_ClockSwitchConfig:
      00C15D 88               [ 1]  507 	push	a
                                    508 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 316: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      00C15E 7B 05            [ 1]  509 	ld	a, (0x05, sp)
      00C160 A1 E1            [ 1]  510 	cp	a, #0xe1
      00C162 27 1B            [ 1]  511 	jreq	00140$
      00C164 7B 05            [ 1]  512 	ld	a, (0x05, sp)
      00C166 A1 D2            [ 1]  513 	cp	a, #0xd2
      00C168 27 15            [ 1]  514 	jreq	00140$
      00C16A 7B 05            [ 1]  515 	ld	a, (0x05, sp)
      00C16C A1 B4            [ 1]  516 	cp	a, #0xb4
      00C16E 27 0F            [ 1]  517 	jreq	00140$
      00C170 4B 3C            [ 1]  518 	push	#0x3c
      00C172 4B 01            [ 1]  519 	push	#0x01
      00C174 5F               [ 1]  520 	clrw	x
      00C175 89               [ 2]  521 	pushw	x
      00C176 4B 87            [ 1]  522 	push	#<(___str_0+0)
      00C178 4B 83            [ 1]  523 	push	#((___str_0+0) >> 8)
      00C17A CD 85 9D         [ 4]  524 	call	_assert_failed
      00C17D 5B 06            [ 2]  525 	addw	sp, #6
      00C17F                        526 00140$:
                                    527 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 317: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      00C17F 7B 04            [ 1]  528 	ld	a, (0x04, sp)
      00C181 4A               [ 1]  529 	dec	a
      00C182 26 05            [ 1]  530 	jrne	00309$
      00C184 A6 01            [ 1]  531 	ld	a, #0x01
      00C186 6B 01            [ 1]  532 	ld	(0x01, sp), a
      00C188 C5                     533 	.byte 0xc5
      00C189                        534 00309$:
      00C189 0F 01            [ 1]  535 	clr	(0x01, sp)
      00C18B                        536 00310$:
      00C18B 0D 04            [ 1]  537 	tnz	(0x04, sp)
      00C18D 27 13            [ 1]  538 	jreq	00148$
      00C18F 0D 01            [ 1]  539 	tnz	(0x01, sp)
      00C191 26 0F            [ 1]  540 	jrne	00148$
      00C193 4B 3D            [ 1]  541 	push	#0x3d
      00C195 4B 01            [ 1]  542 	push	#0x01
      00C197 5F               [ 1]  543 	clrw	x
      00C198 89               [ 2]  544 	pushw	x
      00C199 4B 87            [ 1]  545 	push	#<(___str_0+0)
      00C19B 4B 83            [ 1]  546 	push	#((___str_0+0) >> 8)
      00C19D CD 85 9D         [ 4]  547 	call	_assert_failed
      00C1A0 5B 06            [ 2]  548 	addw	sp, #6
      00C1A2                        549 00148$:
                                    550 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 318: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      00C1A2 0D 06            [ 1]  551 	tnz	(0x06, sp)
      00C1A4 27 14            [ 1]  552 	jreq	00153$
      00C1A6 7B 06            [ 1]  553 	ld	a, (0x06, sp)
      00C1A8 4A               [ 1]  554 	dec	a
      00C1A9 27 0F            [ 1]  555 	jreq	00153$
      00C1AB 4B 3E            [ 1]  556 	push	#0x3e
      00C1AD 4B 01            [ 1]  557 	push	#0x01
      00C1AF 5F               [ 1]  558 	clrw	x
      00C1B0 89               [ 2]  559 	pushw	x
      00C1B1 4B 87            [ 1]  560 	push	#<(___str_0+0)
      00C1B3 4B 83            [ 1]  561 	push	#((___str_0+0) >> 8)
      00C1B5 CD 85 9D         [ 4]  562 	call	_assert_failed
      00C1B8 5B 06            [ 2]  563 	addw	sp, #6
      00C1BA                        564 00153$:
                                    565 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 319: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      00C1BA 0D 07            [ 1]  566 	tnz	(0x07, sp)
      00C1BC 27 14            [ 1]  567 	jreq	00158$
      00C1BE 7B 07            [ 1]  568 	ld	a, (0x07, sp)
      00C1C0 4A               [ 1]  569 	dec	a
      00C1C1 27 0F            [ 1]  570 	jreq	00158$
      00C1C3 4B 3F            [ 1]  571 	push	#0x3f
      00C1C5 4B 01            [ 1]  572 	push	#0x01
      00C1C7 5F               [ 1]  573 	clrw	x
      00C1C8 89               [ 2]  574 	pushw	x
      00C1C9 4B 87            [ 1]  575 	push	#<(___str_0+0)
      00C1CB 4B 83            [ 1]  576 	push	#((___str_0+0) >> 8)
      00C1CD CD 85 9D         [ 4]  577 	call	_assert_failed
      00C1D0 5B 06            [ 2]  578 	addw	sp, #6
      00C1D2                        579 00158$:
                                    580 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      00C1D2 C6 50 C3         [ 1]  581 	ld	a, 0x50c3
      00C1D5 90 97            [ 1]  582 	ld	yl, a
                                    583 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      00C1D7 C6 50 C5         [ 1]  584 	ld	a, 0x50c5
      00C1DA 97               [ 1]  585 	ld	xl, a
                                    586 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      00C1DB 7B 01            [ 1]  587 	ld	a, (0x01, sp)
      00C1DD 27 38            [ 1]  588 	jreq	00122$
                                    589 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      00C1DF 9F               [ 1]  590 	ld	a, xl
      00C1E0 AA 02            [ 1]  591 	or	a, #0x02
      00C1E2 C7 50 C5         [ 1]  592 	ld	0x50c5, a
      00C1E5 C6 50 C5         [ 1]  593 	ld	a, 0x50c5
                                    594 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 331: if (ITState != DISABLE)
      00C1E8 0D 06            [ 1]  595 	tnz	(0x06, sp)
      00C1EA 27 07            [ 1]  596 	jreq	00102$
                                    597 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      00C1EC AA 04            [ 1]  598 	or	a, #0x04
      00C1EE C7 50 C5         [ 1]  599 	ld	0x50c5, a
      00C1F1 20 05            [ 2]  600 	jra	00103$
      00C1F3                        601 00102$:
                                    602 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00C1F3 A4 FB            [ 1]  603 	and	a, #0xfb
      00C1F5 C7 50 C5         [ 1]  604 	ld	0x50c5, a
      00C1F8                        605 00103$:
                                    606 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      00C1F8 AE 50 C4         [ 2]  607 	ldw	x, #0x50c4
      00C1FB 7B 05            [ 1]  608 	ld	a, (0x05, sp)
      00C1FD F7               [ 1]  609 	ld	(x), a
                                    610 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      00C1FE 5F               [ 1]  611 	clrw	x
      00C1FF 5A               [ 2]  612 	decw	x
      00C200                        613 00105$:
      00C200 C6 50 C5         [ 1]  614 	ld	a, 0x50c5
      00C203 44               [ 1]  615 	srl	a
      00C204 24 06            [ 1]  616 	jrnc	00107$
      00C206 5D               [ 2]  617 	tnzw	x
      00C207 27 03            [ 1]  618 	jreq	00107$
                                    619 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 346: DownCounter--;
      00C209 5A               [ 2]  620 	decw	x
      00C20A 20 F4            [ 2]  621 	jra	00105$
      00C20C                        622 00107$:
                                    623 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 349: if(DownCounter != 0)
      00C20C 5D               [ 2]  624 	tnzw	x
      00C20D 27 05            [ 1]  625 	jreq	00109$
                                    626 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 351: Swif = SUCCESS;
      00C20F A6 01            [ 1]  627 	ld	a, #0x01
      00C211 97               [ 1]  628 	ld	xl, a
      00C212 20 36            [ 2]  629 	jra	00123$
      00C214                        630 00109$:
                                    631 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 355: Swif = ERROR;
      00C214 5F               [ 1]  632 	clrw	x
      00C215 20 33            [ 2]  633 	jra	00123$
      00C217                        634 00122$:
                                    635 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 361: if (ITState != DISABLE)
      00C217 0D 06            [ 1]  636 	tnz	(0x06, sp)
      00C219 27 08            [ 1]  637 	jreq	00112$
                                    638 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      00C21B 9F               [ 1]  639 	ld	a, xl
      00C21C AA 04            [ 1]  640 	or	a, #0x04
      00C21E C7 50 C5         [ 1]  641 	ld	0x50c5, a
      00C221 20 06            [ 2]  642 	jra	00113$
      00C223                        643 00112$:
                                    644 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00C223 9F               [ 1]  645 	ld	a, xl
      00C224 A4 FB            [ 1]  646 	and	a, #0xfb
      00C226 C7 50 C5         [ 1]  647 	ld	0x50c5, a
      00C229                        648 00113$:
                                    649 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      00C229 AE 50 C4         [ 2]  650 	ldw	x, #0x50c4
      00C22C 7B 05            [ 1]  651 	ld	a, (0x05, sp)
      00C22E F7               [ 1]  652 	ld	(x), a
                                    653 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      00C22F 5F               [ 1]  654 	clrw	x
      00C230 5A               [ 2]  655 	decw	x
      00C231                        656 00115$:
      00C231 C6 50 C5         [ 1]  657 	ld	a, 0x50c5
      00C234 A5 08            [ 1]  658 	bcp	a, #0x08
      00C236 27 06            [ 1]  659 	jreq	00117$
      00C238 5D               [ 2]  660 	tnzw	x
      00C239 27 03            [ 1]  661 	jreq	00117$
                                    662 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 376: DownCounter--;
      00C23B 5A               [ 2]  663 	decw	x
      00C23C 20 F3            [ 2]  664 	jra	00115$
      00C23E                        665 00117$:
                                    666 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 379: if(DownCounter != 0)
      00C23E 5D               [ 2]  667 	tnzw	x
      00C23F 27 08            [ 1]  668 	jreq	00119$
                                    669 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      00C241 72 12 50 C5      [ 1]  670 	bset	20677, #1
                                    671 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 383: Swif = SUCCESS;
      00C245 A6 01            [ 1]  672 	ld	a, #0x01
      00C247 97               [ 1]  673 	ld	xl, a
                                    674 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 387: Swif = ERROR;
      00C248 21                     675 	.byte 0x21
      00C249                        676 00119$:
      00C249 5F               [ 1]  677 	clrw	x
      00C24A                        678 00123$:
                                    679 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 390: if(Swif != ERROR)
      00C24A 9F               [ 1]  680 	ld	a, xl
      00C24B 4D               [ 1]  681 	tnz	a
      00C24C 27 2E            [ 1]  682 	jreq	00136$
                                    683 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      00C24E 0D 07            [ 1]  684 	tnz	(0x07, sp)
      00C250 26 0C            [ 1]  685 	jrne	00132$
      00C252 90 9F            [ 1]  686 	ld	a, yl
      00C254 A1 E1            [ 1]  687 	cp	a, #0xe1
      00C256 26 06            [ 1]  688 	jrne	00132$
                                    689 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00C258 72 11 50 C0      [ 1]  690 	bres	20672, #0
      00C25C 20 1E            [ 2]  691 	jra	00136$
      00C25E                        692 00132$:
                                    693 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      00C25E 0D 07            [ 1]  694 	tnz	(0x07, sp)
      00C260 26 0C            [ 1]  695 	jrne	00128$
      00C262 90 9F            [ 1]  696 	ld	a, yl
      00C264 A1 D2            [ 1]  697 	cp	a, #0xd2
      00C266 26 06            [ 1]  698 	jrne	00128$
                                    699 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00C268 72 17 50 C0      [ 1]  700 	bres	20672, #3
      00C26C 20 0E            [ 2]  701 	jra	00136$
      00C26E                        702 00128$:
                                    703 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      00C26E 0D 07            [ 1]  704 	tnz	(0x07, sp)
      00C270 26 0A            [ 1]  705 	jrne	00136$
      00C272 90 9F            [ 1]  706 	ld	a, yl
      00C274 A1 B4            [ 1]  707 	cp	a, #0xb4
      00C276 26 04            [ 1]  708 	jrne	00136$
                                    709 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00C278 72 11 50 C1      [ 1]  710 	bres	20673, #0
      00C27C                        711 00136$:
                                    712 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 406: return(Swif);
      00C27C 9F               [ 1]  713 	ld	a, xl
                                    714 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 407: }
      00C27D 5B 01            [ 2]  715 	addw	sp, #1
      00C27F 81               [ 4]  716 	ret
                                    717 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    718 ;	-----------------------------------------
                                    719 ;	 function CLK_HSIPrescalerConfig
                                    720 ;	-----------------------------------------
      00C280                        721 _CLK_HSIPrescalerConfig:
                                    722 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 418: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      00C280 0D 03            [ 1]  723 	tnz	(0x03, sp)
      00C282 27 21            [ 1]  724 	jreq	00104$
      00C284 7B 03            [ 1]  725 	ld	a, (0x03, sp)
      00C286 A1 08            [ 1]  726 	cp	a, #0x08
      00C288 27 1B            [ 1]  727 	jreq	00104$
      00C28A 7B 03            [ 1]  728 	ld	a, (0x03, sp)
      00C28C A1 10            [ 1]  729 	cp	a, #0x10
      00C28E 27 15            [ 1]  730 	jreq	00104$
      00C290 7B 03            [ 1]  731 	ld	a, (0x03, sp)
      00C292 A1 18            [ 1]  732 	cp	a, #0x18
      00C294 27 0F            [ 1]  733 	jreq	00104$
      00C296 4B A2            [ 1]  734 	push	#0xa2
      00C298 4B 01            [ 1]  735 	push	#0x01
      00C29A 5F               [ 1]  736 	clrw	x
      00C29B 89               [ 2]  737 	pushw	x
      00C29C 4B 87            [ 1]  738 	push	#<(___str_0+0)
      00C29E 4B 83            [ 1]  739 	push	#((___str_0+0) >> 8)
      00C2A0 CD 85 9D         [ 4]  740 	call	_assert_failed
      00C2A3 5B 06            [ 2]  741 	addw	sp, #6
      00C2A5                        742 00104$:
                                    743 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00C2A5 C6 50 C6         [ 1]  744 	ld	a, 0x50c6
      00C2A8 A4 E7            [ 1]  745 	and	a, #0xe7
      00C2AA C7 50 C6         [ 1]  746 	ld	0x50c6, a
                                    747 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      00C2AD C6 50 C6         [ 1]  748 	ld	a, 0x50c6
      00C2B0 1A 03            [ 1]  749 	or	a, (0x03, sp)
      00C2B2 C7 50 C6         [ 1]  750 	ld	0x50c6, a
                                    751 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 425: }
      00C2B5 81               [ 4]  752 	ret
                                    753 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    754 ;	-----------------------------------------
                                    755 ;	 function CLK_CCOConfig
                                    756 ;	-----------------------------------------
      00C2B6                        757 _CLK_CCOConfig:
                                    758 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 439: assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
      00C2B6 0D 03            [ 1]  759 	tnz	(0x03, sp)
      00C2B8 27 57            [ 1]  760 	jreq	00104$
      00C2BA 7B 03            [ 1]  761 	ld	a, (0x03, sp)
      00C2BC A1 04            [ 1]  762 	cp	a, #0x04
      00C2BE 27 51            [ 1]  763 	jreq	00104$
      00C2C0 7B 03            [ 1]  764 	ld	a, (0x03, sp)
      00C2C2 A1 02            [ 1]  765 	cp	a, #0x02
      00C2C4 27 4B            [ 1]  766 	jreq	00104$
      00C2C6 7B 03            [ 1]  767 	ld	a, (0x03, sp)
      00C2C8 A1 08            [ 1]  768 	cp	a, #0x08
      00C2CA 27 45            [ 1]  769 	jreq	00104$
      00C2CC 7B 03            [ 1]  770 	ld	a, (0x03, sp)
      00C2CE A1 0A            [ 1]  771 	cp	a, #0x0a
      00C2D0 27 3F            [ 1]  772 	jreq	00104$
      00C2D2 7B 03            [ 1]  773 	ld	a, (0x03, sp)
      00C2D4 A1 0C            [ 1]  774 	cp	a, #0x0c
      00C2D6 27 39            [ 1]  775 	jreq	00104$
      00C2D8 7B 03            [ 1]  776 	ld	a, (0x03, sp)
      00C2DA A1 0E            [ 1]  777 	cp	a, #0x0e
      00C2DC 27 33            [ 1]  778 	jreq	00104$
      00C2DE 7B 03            [ 1]  779 	ld	a, (0x03, sp)
      00C2E0 A1 10            [ 1]  780 	cp	a, #0x10
      00C2E2 27 2D            [ 1]  781 	jreq	00104$
      00C2E4 7B 03            [ 1]  782 	ld	a, (0x03, sp)
      00C2E6 A1 12            [ 1]  783 	cp	a, #0x12
      00C2E8 27 27            [ 1]  784 	jreq	00104$
      00C2EA 7B 03            [ 1]  785 	ld	a, (0x03, sp)
      00C2EC A1 14            [ 1]  786 	cp	a, #0x14
      00C2EE 27 21            [ 1]  787 	jreq	00104$
      00C2F0 7B 03            [ 1]  788 	ld	a, (0x03, sp)
      00C2F2 A1 16            [ 1]  789 	cp	a, #0x16
      00C2F4 27 1B            [ 1]  790 	jreq	00104$
      00C2F6 7B 03            [ 1]  791 	ld	a, (0x03, sp)
      00C2F8 A1 18            [ 1]  792 	cp	a, #0x18
      00C2FA 27 15            [ 1]  793 	jreq	00104$
      00C2FC 7B 03            [ 1]  794 	ld	a, (0x03, sp)
      00C2FE A1 1A            [ 1]  795 	cp	a, #0x1a
      00C300 27 0F            [ 1]  796 	jreq	00104$
      00C302 4B B7            [ 1]  797 	push	#0xb7
      00C304 4B 01            [ 1]  798 	push	#0x01
      00C306 5F               [ 1]  799 	clrw	x
      00C307 89               [ 2]  800 	pushw	x
      00C308 4B 87            [ 1]  801 	push	#<(___str_0+0)
      00C30A 4B 83            [ 1]  802 	push	#((___str_0+0) >> 8)
      00C30C CD 85 9D         [ 4]  803 	call	_assert_failed
      00C30F 5B 06            [ 2]  804 	addw	sp, #6
      00C311                        805 00104$:
                                    806 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      00C311 C6 50 C9         [ 1]  807 	ld	a, 0x50c9
      00C314 A4 E1            [ 1]  808 	and	a, #0xe1
      00C316 C7 50 C9         [ 1]  809 	ld	0x50c9, a
                                    810 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      00C319 C6 50 C9         [ 1]  811 	ld	a, 0x50c9
      00C31C 1A 03            [ 1]  812 	or	a, (0x03, sp)
      00C31E C7 50 C9         [ 1]  813 	ld	0x50c9, a
                                    814 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      00C321 72 10 50 C9      [ 1]  815 	bset	20681, #0
                                    816 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 449: }
      00C325 81               [ 4]  817 	ret
                                    818 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    819 ;	-----------------------------------------
                                    820 ;	 function CLK_ITConfig
                                    821 ;	-----------------------------------------
      00C326                        822 _CLK_ITConfig:
      00C326 88               [ 1]  823 	push	a
                                    824 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 462: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C327 0D 05            [ 1]  825 	tnz	(0x05, sp)
      00C329 27 14            [ 1]  826 	jreq	00115$
      00C32B 7B 05            [ 1]  827 	ld	a, (0x05, sp)
      00C32D 4A               [ 1]  828 	dec	a
      00C32E 27 0F            [ 1]  829 	jreq	00115$
      00C330 4B CE            [ 1]  830 	push	#0xce
      00C332 4B 01            [ 1]  831 	push	#0x01
      00C334 5F               [ 1]  832 	clrw	x
      00C335 89               [ 2]  833 	pushw	x
      00C336 4B 87            [ 1]  834 	push	#<(___str_0+0)
      00C338 4B 83            [ 1]  835 	push	#((___str_0+0) >> 8)
      00C33A CD 85 9D         [ 4]  836 	call	_assert_failed
      00C33D 5B 06            [ 2]  837 	addw	sp, #6
      00C33F                        838 00115$:
                                    839 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 463: assert_param(IS_CLK_IT_OK(CLK_IT));
      00C33F 7B 04            [ 1]  840 	ld	a, (0x04, sp)
      00C341 A0 0C            [ 1]  841 	sub	a, #0x0c
      00C343 26 02            [ 1]  842 	jrne	00174$
      00C345 4C               [ 1]  843 	inc	a
      00C346 21                     844 	.byte 0x21
      00C347                        845 00174$:
      00C347 4F               [ 1]  846 	clr	a
      00C348                        847 00175$:
      00C348 88               [ 1]  848 	push	a
      00C349 7B 05            [ 1]  849 	ld	a, (0x05, sp)
      00C34B A1 1C            [ 1]  850 	cp	a, #0x1c
      00C34D 84               [ 1]  851 	pop	a
      00C34E 26 07            [ 1]  852 	jrne	00177$
      00C350 88               [ 1]  853 	push	a
      00C351 A6 01            [ 1]  854 	ld	a, #0x01
      00C353 6B 02            [ 1]  855 	ld	(0x02, sp), a
      00C355 84               [ 1]  856 	pop	a
      00C356 C5                     857 	.byte 0xc5
      00C357                        858 00177$:
      00C357 0F 01            [ 1]  859 	clr	(0x01, sp)
      00C359                        860 00178$:
      00C359 4D               [ 1]  861 	tnz	a
      00C35A 26 15            [ 1]  862 	jrne	00120$
      00C35C 0D 01            [ 1]  863 	tnz	(0x01, sp)
      00C35E 26 11            [ 1]  864 	jrne	00120$
      00C360 88               [ 1]  865 	push	a
      00C361 4B CF            [ 1]  866 	push	#0xcf
      00C363 4B 01            [ 1]  867 	push	#0x01
      00C365 5F               [ 1]  868 	clrw	x
      00C366 89               [ 2]  869 	pushw	x
      00C367 4B 87            [ 1]  870 	push	#<(___str_0+0)
      00C369 4B 83            [ 1]  871 	push	#((___str_0+0) >> 8)
      00C36B CD 85 9D         [ 4]  872 	call	_assert_failed
      00C36E 5B 06            [ 2]  873 	addw	sp, #6
      00C370 84               [ 1]  874 	pop	a
      00C371                        875 00120$:
                                    876 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 465: if (NewState != DISABLE)
      00C371 0D 05            [ 1]  877 	tnz	(0x05, sp)
      00C373 27 13            [ 1]  878 	jreq	00110$
                                    879 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
      00C375 4D               [ 1]  880 	tnz	a
      00C376 26 0A            [ 1]  881 	jrne	00102$
      00C378 7B 01            [ 1]  882 	ld	a, (0x01, sp)
      00C37A 27 1D            [ 1]  883 	jreq	00112$
                                    884 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      00C37C 72 14 50 C5      [ 1]  885 	bset	20677, #2
                                    886 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 471: break;
      00C380 20 17            [ 2]  887 	jra	00112$
                                    888 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      00C382                        889 00102$:
                                    890 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      00C382 72 14 50 C8      [ 1]  891 	bset	20680, #2
                                    892 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 474: break;
      00C386 20 11            [ 2]  893 	jra	00112$
                                    894 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 477: }
      00C388                        895 00110$:
                                    896 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 481: switch (CLK_IT)
      00C388 4D               [ 1]  897 	tnz	a
      00C389 26 0A            [ 1]  898 	jrne	00106$
      00C38B 7B 01            [ 1]  899 	ld	a, (0x01, sp)
      00C38D 27 0A            [ 1]  900 	jreq	00112$
                                    901 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      00C38F 72 15 50 C5      [ 1]  902 	bres	20677, #2
                                    903 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 485: break;
      00C393 20 04            [ 2]  904 	jra	00112$
                                    905 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      00C395                        906 00106$:
                                    907 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      00C395 72 15 50 C8      [ 1]  908 	bres	20680, #2
                                    909 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 491: }
      00C399                        910 00112$:
                                    911 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 493: }
      00C399 84               [ 1]  912 	pop	a
      00C39A 81               [ 4]  913 	ret
                                    914 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    915 ;	-----------------------------------------
                                    916 ;	 function CLK_SYSCLKConfig
                                    917 ;	-----------------------------------------
      00C39B                        918 _CLK_SYSCLKConfig:
      00C39B 88               [ 1]  919 	push	a
                                    920 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 503: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      00C39C 0D 04            [ 1]  921 	tnz	(0x04, sp)
      00C39E 27 51            [ 1]  922 	jreq	00107$
      00C3A0 7B 04            [ 1]  923 	ld	a, (0x04, sp)
      00C3A2 A1 08            [ 1]  924 	cp	a, #0x08
      00C3A4 27 4B            [ 1]  925 	jreq	00107$
      00C3A6 7B 04            [ 1]  926 	ld	a, (0x04, sp)
      00C3A8 A1 10            [ 1]  927 	cp	a, #0x10
      00C3AA 27 45            [ 1]  928 	jreq	00107$
      00C3AC 7B 04            [ 1]  929 	ld	a, (0x04, sp)
      00C3AE A1 18            [ 1]  930 	cp	a, #0x18
      00C3B0 27 3F            [ 1]  931 	jreq	00107$
      00C3B2 7B 04            [ 1]  932 	ld	a, (0x04, sp)
      00C3B4 A1 80            [ 1]  933 	cp	a, #0x80
      00C3B6 27 39            [ 1]  934 	jreq	00107$
      00C3B8 7B 04            [ 1]  935 	ld	a, (0x04, sp)
      00C3BA A1 81            [ 1]  936 	cp	a, #0x81
      00C3BC 27 33            [ 1]  937 	jreq	00107$
      00C3BE 7B 04            [ 1]  938 	ld	a, (0x04, sp)
      00C3C0 A1 82            [ 1]  939 	cp	a, #0x82
      00C3C2 27 2D            [ 1]  940 	jreq	00107$
      00C3C4 7B 04            [ 1]  941 	ld	a, (0x04, sp)
      00C3C6 A1 83            [ 1]  942 	cp	a, #0x83
      00C3C8 27 27            [ 1]  943 	jreq	00107$
      00C3CA 7B 04            [ 1]  944 	ld	a, (0x04, sp)
      00C3CC A1 84            [ 1]  945 	cp	a, #0x84
      00C3CE 27 21            [ 1]  946 	jreq	00107$
      00C3D0 7B 04            [ 1]  947 	ld	a, (0x04, sp)
      00C3D2 A1 85            [ 1]  948 	cp	a, #0x85
      00C3D4 27 1B            [ 1]  949 	jreq	00107$
      00C3D6 7B 04            [ 1]  950 	ld	a, (0x04, sp)
      00C3D8 A1 86            [ 1]  951 	cp	a, #0x86
      00C3DA 27 15            [ 1]  952 	jreq	00107$
      00C3DC 7B 04            [ 1]  953 	ld	a, (0x04, sp)
      00C3DE A1 87            [ 1]  954 	cp	a, #0x87
      00C3E0 27 0F            [ 1]  955 	jreq	00107$
      00C3E2 4B F7            [ 1]  956 	push	#0xf7
      00C3E4 4B 01            [ 1]  957 	push	#0x01
      00C3E6 5F               [ 1]  958 	clrw	x
      00C3E7 89               [ 2]  959 	pushw	x
      00C3E8 4B 87            [ 1]  960 	push	#<(___str_0+0)
      00C3EA 4B 83            [ 1]  961 	push	#((___str_0+0) >> 8)
      00C3EC CD 85 9D         [ 4]  962 	call	_assert_failed
      00C3EF 5B 06            [ 2]  963 	addw	sp, #6
      00C3F1                        964 00107$:
                                    965 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00C3F1 C6 50 C6         [ 1]  966 	ld	a, 0x50c6
                                    967 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      00C3F4 0D 04            [ 1]  968 	tnz	(0x04, sp)
      00C3F6 2B 15            [ 1]  969 	jrmi	00102$
                                    970 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00C3F8 A4 E7            [ 1]  971 	and	a, #0xe7
      00C3FA C7 50 C6         [ 1]  972 	ld	0x50c6, a
                                    973 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      00C3FD C6 50 C6         [ 1]  974 	ld	a, 0x50c6
      00C400 6B 01            [ 1]  975 	ld	(0x01, sp), a
      00C402 7B 04            [ 1]  976 	ld	a, (0x04, sp)
      00C404 A4 18            [ 1]  977 	and	a, #0x18
      00C406 1A 01            [ 1]  978 	or	a, (0x01, sp)
      00C408 C7 50 C6         [ 1]  979 	ld	0x50c6, a
      00C40B 20 13            [ 2]  980 	jra	00104$
      00C40D                        981 00102$:
                                    982 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      00C40D A4 F8            [ 1]  983 	and	a, #0xf8
      00C40F C7 50 C6         [ 1]  984 	ld	0x50c6, a
                                    985 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      00C412 C6 50 C6         [ 1]  986 	ld	a, 0x50c6
      00C415 6B 01            [ 1]  987 	ld	(0x01, sp), a
      00C417 7B 04            [ 1]  988 	ld	a, (0x04, sp)
      00C419 A4 07            [ 1]  989 	and	a, #0x07
      00C41B 1A 01            [ 1]  990 	or	a, (0x01, sp)
      00C41D C7 50 C6         [ 1]  991 	ld	0x50c6, a
      00C420                        992 00104$:
                                    993 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 515: }
      00C420 84               [ 1]  994 	pop	a
      00C421 81               [ 4]  995 	ret
                                    996 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    997 ;	-----------------------------------------
                                    998 ;	 function CLK_SWIMConfig
                                    999 ;	-----------------------------------------
      00C422                       1000 _CLK_SWIMConfig:
                                   1001 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 526: assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
      00C422 0D 03            [ 1] 1002 	tnz	(0x03, sp)
      00C424 27 14            [ 1] 1003 	jreq	00107$
      00C426 7B 03            [ 1] 1004 	ld	a, (0x03, sp)
      00C428 4A               [ 1] 1005 	dec	a
      00C429 27 0F            [ 1] 1006 	jreq	00107$
      00C42B 4B 0E            [ 1] 1007 	push	#0x0e
      00C42D 4B 02            [ 1] 1008 	push	#0x02
      00C42F 5F               [ 1] 1009 	clrw	x
      00C430 89               [ 2] 1010 	pushw	x
      00C431 4B 87            [ 1] 1011 	push	#<(___str_0+0)
      00C433 4B 83            [ 1] 1012 	push	#((___str_0+0) >> 8)
      00C435 CD 85 9D         [ 4] 1013 	call	_assert_failed
      00C438 5B 06            [ 2] 1014 	addw	sp, #6
      00C43A                       1015 00107$:
                                   1016 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      00C43A C6 50 CD         [ 1] 1017 	ld	a, 0x50cd
                                   1018 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      00C43D 0D 03            [ 1] 1019 	tnz	(0x03, sp)
      00C43F 27 06            [ 1] 1020 	jreq	00102$
                                   1021 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      00C441 AA 01            [ 1] 1022 	or	a, #0x01
      00C443 C7 50 CD         [ 1] 1023 	ld	0x50cd, a
      00C446 81               [ 4] 1024 	ret
      00C447                       1025 00102$:
                                   1026 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      00C447 A4 FE            [ 1] 1027 	and	a, #0xfe
      00C449 C7 50 CD         [ 1] 1028 	ld	0x50cd, a
                                   1029 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 538: }
      00C44C 81               [ 4] 1030 	ret
                                   1031 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                   1032 ;	-----------------------------------------
                                   1033 ;	 function CLK_ClockSecuritySystemEnable
                                   1034 ;	-----------------------------------------
      00C44D                       1035 _CLK_ClockSecuritySystemEnable:
                                   1036 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      00C44D 72 10 50 C8      [ 1] 1037 	bset	20680, #0
                                   1038 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 551: }
      00C451 81               [ 4] 1039 	ret
                                   1040 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function CLK_GetSYSCLKSource
                                   1043 ;	-----------------------------------------
      00C452                       1044 _CLK_GetSYSCLKSource:
                                   1045 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      00C452 C6 50 C3         [ 1] 1046 	ld	a, 0x50c3
                                   1047 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 562: }
      00C455 81               [ 4] 1048 	ret
                                   1049 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                   1050 ;	-----------------------------------------
                                   1051 ;	 function CLK_GetClockFreq
                                   1052 ;	-----------------------------------------
      00C456                       1053 _CLK_GetClockFreq:
      00C456 52 04            [ 2] 1054 	sub	sp, #4
                                   1055 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      00C458 C6 50 C3         [ 1] 1056 	ld	a, 0x50c3
                                   1057 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      00C45B 6B 04            [ 1] 1058 	ld	(0x04, sp), a
      00C45D A1 E1            [ 1] 1059 	cp	a, #0xe1
      00C45F 26 26            [ 1] 1060 	jrne	00105$
                                   1061 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      00C461 C6 50 C6         [ 1] 1062 	ld	a, 0x50c6
      00C464 A4 18            [ 1] 1063 	and	a, #0x18
                                   1064 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      00C466 44               [ 1] 1065 	srl	a
      00C467 44               [ 1] 1066 	srl	a
      00C468 44               [ 1] 1067 	srl	a
                                   1068 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      00C469 5F               [ 1] 1069 	clrw	x
      00C46A 97               [ 1] 1070 	ld	xl, a
      00C46B D6 83 7B         [ 1] 1071 	ld	a, (_HSIDivFactor+0, x)
                                   1072 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      00C46E 5F               [ 1] 1073 	clrw	x
      00C46F 97               [ 1] 1074 	ld	xl, a
      00C470 90 5F            [ 1] 1075 	clrw	y
      00C472 89               [ 2] 1076 	pushw	x
      00C473 90 89            [ 2] 1077 	pushw	y
      00C475 4B 00            [ 1] 1078 	push	#0x00
      00C477 4B 24            [ 1] 1079 	push	#0x24
      00C479 4B F4            [ 1] 1080 	push	#0xf4
      00C47B 4B 00            [ 1] 1081 	push	#0x00
      00C47D CD C6 53         [ 4] 1082 	call	__divulong
      00C480 5B 08            [ 2] 1083 	addw	sp, #8
      00C482 51               [ 1] 1084 	exgw	x, y
      00C483 17 03            [ 2] 1085 	ldw	(0x03, sp), y
      00C485 20 17            [ 2] 1086 	jra	00106$
      00C487                       1087 00105$:
                                   1088 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      00C487 7B 04            [ 1] 1089 	ld	a, (0x04, sp)
      00C489 A1 D2            [ 1] 1090 	cp	a, #0xd2
      00C48B 26 09            [ 1] 1091 	jrne	00102$
                                   1092 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      00C48D AE F4 00         [ 2] 1093 	ldw	x, #0xf400
      00C490 1F 03            [ 2] 1094 	ldw	(0x03, sp), x
      00C492 5F               [ 1] 1095 	clrw	x
      00C493 5C               [ 1] 1096 	incw	x
      00C494 20 08            [ 2] 1097 	jra	00106$
      00C496                       1098 00102$:
                                   1099 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      00C496 AE 24 00         [ 2] 1100 	ldw	x, #0x2400
      00C499 1F 03            [ 2] 1101 	ldw	(0x03, sp), x
      00C49B AE 00 F4         [ 2] 1102 	ldw	x, #0x00f4
      00C49E                       1103 00106$:
                                   1104 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      00C49E 51               [ 1] 1105 	exgw	x, y
      00C49F 1E 03            [ 2] 1106 	ldw	x, (0x03, sp)
                                   1107 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 595: }
      00C4A1 5B 04            [ 2] 1108 	addw	sp, #4
      00C4A3 81               [ 4] 1109 	ret
                                   1110 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   1111 ;	-----------------------------------------
                                   1112 ;	 function CLK_AdjustHSICalibrationValue
                                   1113 ;	-----------------------------------------
      00C4A4                       1114 _CLK_AdjustHSICalibrationValue:
                                   1115 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 607: assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
      00C4A4 0D 03            [ 1] 1116 	tnz	(0x03, sp)
      00C4A6 27 38            [ 1] 1117 	jreq	00104$
      00C4A8 7B 03            [ 1] 1118 	ld	a, (0x03, sp)
      00C4AA 4A               [ 1] 1119 	dec	a
      00C4AB 27 33            [ 1] 1120 	jreq	00104$
      00C4AD 7B 03            [ 1] 1121 	ld	a, (0x03, sp)
      00C4AF A1 02            [ 1] 1122 	cp	a, #0x02
      00C4B1 27 2D            [ 1] 1123 	jreq	00104$
      00C4B3 7B 03            [ 1] 1124 	ld	a, (0x03, sp)
      00C4B5 A1 03            [ 1] 1125 	cp	a, #0x03
      00C4B7 27 27            [ 1] 1126 	jreq	00104$
      00C4B9 7B 03            [ 1] 1127 	ld	a, (0x03, sp)
      00C4BB A1 04            [ 1] 1128 	cp	a, #0x04
      00C4BD 27 21            [ 1] 1129 	jreq	00104$
      00C4BF 7B 03            [ 1] 1130 	ld	a, (0x03, sp)
      00C4C1 A1 05            [ 1] 1131 	cp	a, #0x05
      00C4C3 27 1B            [ 1] 1132 	jreq	00104$
      00C4C5 7B 03            [ 1] 1133 	ld	a, (0x03, sp)
      00C4C7 A1 06            [ 1] 1134 	cp	a, #0x06
      00C4C9 27 15            [ 1] 1135 	jreq	00104$
      00C4CB 7B 03            [ 1] 1136 	ld	a, (0x03, sp)
      00C4CD A1 07            [ 1] 1137 	cp	a, #0x07
      00C4CF 27 0F            [ 1] 1138 	jreq	00104$
      00C4D1 4B 5F            [ 1] 1139 	push	#0x5f
      00C4D3 4B 02            [ 1] 1140 	push	#0x02
      00C4D5 5F               [ 1] 1141 	clrw	x
      00C4D6 89               [ 2] 1142 	pushw	x
      00C4D7 4B 87            [ 1] 1143 	push	#<(___str_0+0)
      00C4D9 4B 83            [ 1] 1144 	push	#((___str_0+0) >> 8)
      00C4DB CD 85 9D         [ 4] 1145 	call	_assert_failed
      00C4DE 5B 06            [ 2] 1146 	addw	sp, #6
      00C4E0                       1147 00104$:
                                   1148 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      00C4E0 C6 50 CC         [ 1] 1149 	ld	a, 0x50cc
      00C4E3 A4 F8            [ 1] 1150 	and	a, #0xf8
      00C4E5 1A 03            [ 1] 1151 	or	a, (0x03, sp)
      00C4E7 C7 50 CC         [ 1] 1152 	ld	0x50cc, a
                                   1153 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 611: }
      00C4EA 81               [ 4] 1154 	ret
                                   1155 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                   1156 ;	-----------------------------------------
                                   1157 ;	 function CLK_SYSCLKEmergencyClear
                                   1158 ;	-----------------------------------------
      00C4EB                       1159 _CLK_SYSCLKEmergencyClear:
                                   1160 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      00C4EB 72 11 50 C5      [ 1] 1161 	bres	20677, #0
                                   1162 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 625: }
      00C4EF 81               [ 4] 1163 	ret
                                   1164 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   1165 ;	-----------------------------------------
                                   1166 ;	 function CLK_GetFlagStatus
                                   1167 ;	-----------------------------------------
      00C4F0                       1168 _CLK_GetFlagStatus:
      00C4F0 88               [ 1] 1169 	push	a
                                   1170 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 641: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      00C4F1 1E 04            [ 2] 1171 	ldw	x, (0x04, sp)
      00C4F3 A3 01 10         [ 2] 1172 	cpw	x, #0x0110
      00C4F6 27 3B            [ 1] 1173 	jreq	00119$
      00C4F8 A3 01 02         [ 2] 1174 	cpw	x, #0x0102
      00C4FB 27 36            [ 1] 1175 	jreq	00119$
      00C4FD A3 02 02         [ 2] 1176 	cpw	x, #0x0202
      00C500 27 31            [ 1] 1177 	jreq	00119$
      00C502 A3 03 08         [ 2] 1178 	cpw	x, #0x0308
      00C505 27 2C            [ 1] 1179 	jreq	00119$
      00C507 A3 03 01         [ 2] 1180 	cpw	x, #0x0301
      00C50A 27 27            [ 1] 1181 	jreq	00119$
      00C50C A3 04 08         [ 2] 1182 	cpw	x, #0x0408
      00C50F 27 22            [ 1] 1183 	jreq	00119$
      00C511 A3 04 02         [ 2] 1184 	cpw	x, #0x0402
      00C514 27 1D            [ 1] 1185 	jreq	00119$
      00C516 A3 05 04         [ 2] 1186 	cpw	x, #0x0504
      00C519 27 18            [ 1] 1187 	jreq	00119$
      00C51B A3 05 02         [ 2] 1188 	cpw	x, #0x0502
      00C51E 27 13            [ 1] 1189 	jreq	00119$
      00C520 89               [ 2] 1190 	pushw	x
      00C521 4B 81            [ 1] 1191 	push	#0x81
      00C523 4B 02            [ 1] 1192 	push	#0x02
      00C525 4B 00            [ 1] 1193 	push	#0x00
      00C527 4B 00            [ 1] 1194 	push	#0x00
      00C529 4B 87            [ 1] 1195 	push	#<(___str_0+0)
      00C52B 4B 83            [ 1] 1196 	push	#((___str_0+0) >> 8)
      00C52D CD 85 9D         [ 4] 1197 	call	_assert_failed
      00C530 5B 06            [ 2] 1198 	addw	sp, #6
      00C532 85               [ 2] 1199 	popw	x
      00C533                       1200 00119$:
                                   1201 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      00C533 4F               [ 1] 1202 	clr	a
                                   1203 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      00C534 97               [ 1] 1204 	ld	xl, a
      00C535 A3 01 00         [ 2] 1205 	cpw	x, #0x0100
      00C538 26 05            [ 1] 1206 	jrne	00111$
                                   1207 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      00C53A C6 50 C0         [ 1] 1208 	ld	a, 0x50c0
      00C53D 20 21            [ 2] 1209 	jra	00112$
      00C53F                       1210 00111$:
                                   1211 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      00C53F A3 02 00         [ 2] 1212 	cpw	x, #0x0200
      00C542 26 05            [ 1] 1213 	jrne	00108$
                                   1214 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      00C544 C6 50 C1         [ 1] 1215 	ld	a, 0x50c1
      00C547 20 17            [ 2] 1216 	jra	00112$
      00C549                       1217 00108$:
                                   1218 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      00C549 A3 03 00         [ 2] 1219 	cpw	x, #0x0300
      00C54C 26 05            [ 1] 1220 	jrne	00105$
                                   1221 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      00C54E C6 50 C5         [ 1] 1222 	ld	a, 0x50c5
      00C551 20 0D            [ 2] 1223 	jra	00112$
      00C553                       1224 00105$:
                                   1225 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      00C553 A3 04 00         [ 2] 1226 	cpw	x, #0x0400
      00C556 26 05            [ 1] 1227 	jrne	00102$
                                   1228 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      00C558 C6 50 C8         [ 1] 1229 	ld	a, 0x50c8
      00C55B 20 03            [ 2] 1230 	jra	00112$
      00C55D                       1231 00102$:
                                   1232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      00C55D C6 50 C9         [ 1] 1233 	ld	a, 0x50c9
      00C560                       1234 00112$:
                                   1235 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      00C560 88               [ 1] 1236 	push	a
      00C561 7B 06            [ 1] 1237 	ld	a, (0x06, sp)
      00C563 6B 02            [ 1] 1238 	ld	(0x02, sp), a
      00C565 84               [ 1] 1239 	pop	a
      00C566 14 01            [ 1] 1240 	and	a, (0x01, sp)
      00C568 27 03            [ 1] 1241 	jreq	00114$
                                   1242 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 670: bitstatus = SET;
      00C56A A6 01            [ 1] 1243 	ld	a, #0x01
                                   1244 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 674: bitstatus = RESET;
      00C56C 21                    1245 	.byte 0x21
      00C56D                       1246 00114$:
      00C56D 4F               [ 1] 1247 	clr	a
      00C56E                       1248 00115$:
                                   1249 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                   1250 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 679: }
      00C56E 5B 01            [ 2] 1251 	addw	sp, #1
      00C570 81               [ 4] 1252 	ret
                                   1253 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1254 ;	-----------------------------------------
                                   1255 ;	 function CLK_GetITStatus
                                   1256 ;	-----------------------------------------
      00C571                       1257 _CLK_GetITStatus:
                                   1258 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 692: assert_param(IS_CLK_IT_OK(CLK_IT));
      00C571 7B 03            [ 1] 1259 	ld	a, (0x03, sp)
      00C573 A0 1C            [ 1] 1260 	sub	a, #0x1c
      00C575 26 02            [ 1] 1261 	jrne	00143$
      00C577 4C               [ 1] 1262 	inc	a
      00C578 21                    1263 	.byte 0x21
      00C579                       1264 00143$:
      00C579 4F               [ 1] 1265 	clr	a
      00C57A                       1266 00144$:
      00C57A 88               [ 1] 1267 	push	a
      00C57B 7B 04            [ 1] 1268 	ld	a, (0x04, sp)
      00C57D A1 0C            [ 1] 1269 	cp	a, #0x0c
      00C57F 84               [ 1] 1270 	pop	a
      00C580 27 14            [ 1] 1271 	jreq	00113$
      00C582 4D               [ 1] 1272 	tnz	a
      00C583 26 11            [ 1] 1273 	jrne	00113$
      00C585 88               [ 1] 1274 	push	a
      00C586 4B B4            [ 1] 1275 	push	#0xb4
      00C588 4B 02            [ 1] 1276 	push	#0x02
      00C58A 5F               [ 1] 1277 	clrw	x
      00C58B 89               [ 2] 1278 	pushw	x
      00C58C 4B 87            [ 1] 1279 	push	#<(___str_0+0)
      00C58E 4B 83            [ 1] 1280 	push	#((___str_0+0) >> 8)
      00C590 CD 85 9D         [ 4] 1281 	call	_assert_failed
      00C593 5B 06            [ 2] 1282 	addw	sp, #6
      00C595 84               [ 1] 1283 	pop	a
      00C596                       1284 00113$:
                                   1285 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      00C596 4D               [ 1] 1286 	tnz	a
      00C597 27 0D            [ 1] 1287 	jreq	00108$
                                   1288 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      00C599 C6 50 C5         [ 1] 1289 	ld	a, 0x50c5
      00C59C 14 03            [ 1] 1290 	and	a, (0x03, sp)
                                   1291 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 699: bitstatus = SET;
      00C59E A0 0C            [ 1] 1292 	sub	a, #0x0c
      00C5A0 26 02            [ 1] 1293 	jrne	00102$
      00C5A2 4C               [ 1] 1294 	inc	a
      00C5A3 81               [ 4] 1295 	ret
      00C5A4                       1296 00102$:
                                   1297 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 703: bitstatus = RESET;
      00C5A4 4F               [ 1] 1298 	clr	a
      00C5A5 81               [ 4] 1299 	ret
      00C5A6                       1300 00108$:
                                   1301 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      00C5A6 C6 50 C8         [ 1] 1302 	ld	a, 0x50c8
      00C5A9 14 03            [ 1] 1303 	and	a, (0x03, sp)
                                   1304 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 711: bitstatus = SET;
      00C5AB A0 0C            [ 1] 1305 	sub	a, #0x0c
      00C5AD 26 02            [ 1] 1306 	jrne	00105$
      00C5AF 4C               [ 1] 1307 	inc	a
      00C5B0 81               [ 4] 1308 	ret
      00C5B1                       1309 00105$:
                                   1310 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 715: bitstatus = RESET;
      00C5B1 4F               [ 1] 1311 	clr	a
                                   1312 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 720: return bitstatus;
                                   1313 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 721: }
      00C5B2 81               [ 4] 1314 	ret
                                   1315 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1316 ;	-----------------------------------------
                                   1317 ;	 function CLK_ClearITPendingBit
                                   1318 ;	-----------------------------------------
      00C5B3                       1319 _CLK_ClearITPendingBit:
                                   1320 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 732: assert_param(IS_CLK_IT_OK(CLK_IT));
      00C5B3 7B 03            [ 1] 1321 	ld	a, (0x03, sp)
      00C5B5 A0 0C            [ 1] 1322 	sub	a, #0x0c
      00C5B7 26 02            [ 1] 1323 	jrne	00127$
      00C5B9 4C               [ 1] 1324 	inc	a
      00C5BA 21                    1325 	.byte 0x21
      00C5BB                       1326 00127$:
      00C5BB 4F               [ 1] 1327 	clr	a
      00C5BC                       1328 00128$:
      00C5BC 4D               [ 1] 1329 	tnz	a
      00C5BD 26 19            [ 1] 1330 	jrne	00107$
      00C5BF 88               [ 1] 1331 	push	a
      00C5C0 7B 04            [ 1] 1332 	ld	a, (0x04, sp)
      00C5C2 A1 1C            [ 1] 1333 	cp	a, #0x1c
      00C5C4 84               [ 1] 1334 	pop	a
      00C5C5 27 11            [ 1] 1335 	jreq	00107$
      00C5C7 88               [ 1] 1336 	push	a
      00C5C8 4B DC            [ 1] 1337 	push	#0xdc
      00C5CA 4B 02            [ 1] 1338 	push	#0x02
      00C5CC 5F               [ 1] 1339 	clrw	x
      00C5CD 89               [ 2] 1340 	pushw	x
      00C5CE 4B 87            [ 1] 1341 	push	#<(___str_0+0)
      00C5D0 4B 83            [ 1] 1342 	push	#((___str_0+0) >> 8)
      00C5D2 CD 85 9D         [ 4] 1343 	call	_assert_failed
      00C5D5 5B 06            [ 2] 1344 	addw	sp, #6
      00C5D7 84               [ 1] 1345 	pop	a
      00C5D8                       1346 00107$:
                                   1347 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      00C5D8 4D               [ 1] 1348 	tnz	a
      00C5D9 27 05            [ 1] 1349 	jreq	00102$
                                   1350 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      00C5DB 72 17 50 C8      [ 1] 1351 	bres	20680, #3
      00C5DF 81               [ 4] 1352 	ret
      00C5E0                       1353 00102$:
                                   1354 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      00C5E0 72 17 50 C5      [ 1] 1355 	bres	20677, #3
                                   1356 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 745: }
      00C5E4 81               [ 4] 1357 	ret
                                   1358 	.area CODE
                                   1359 	.area CONST
      00837B                       1360 _HSIDivFactor:
      00837B 01                    1361 	.db #0x01	; 1
      00837C 02                    1362 	.db #0x02	; 2
      00837D 04                    1363 	.db #0x04	; 4
      00837E 08                    1364 	.db #0x08	; 8
      00837F                       1365 _CLKPrescTable:
      00837F 01                    1366 	.db #0x01	; 1
      008380 02                    1367 	.db #0x02	; 2
      008381 04                    1368 	.db #0x04	; 4
      008382 08                    1369 	.db #0x08	; 8
      008383 0A                    1370 	.db #0x0a	; 10
      008384 10                    1371 	.db #0x10	; 16
      008385 14                    1372 	.db #0x14	; 20
      008386 28                    1373 	.db #0x28	; 40
                                   1374 	.area CONST
      008387                       1375 ___str_0:
      008387 2F 55 73 65 72 73 2F  1376 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      0083C3 4D 38 53 5F 53 74 64  1377 	.ascii "M8S_StdPeriph_Driver/src/stm8s_clk.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 63 6C 6B 2E
             63
      0083E7 00                    1378 	.db 0x00
                                   1379 	.area CODE
                                   1380 	.area INITIALIZER
                                   1381 	.area CABS (ABS)
