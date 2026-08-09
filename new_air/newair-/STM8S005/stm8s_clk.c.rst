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
                                     74 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     75 ;	-----------------------------------------
                                     76 ;	 function CLK_DeInit
                                     77 ;	-----------------------------------------
      0090D5                         78 _CLK_DeInit:
                                     79 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      0090D5 35 01 50 C0      [ 1]   80 	mov	0x50c0+0, #0x01
                                     81 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      0090D9 35 00 50 C1      [ 1]   82 	mov	0x50c1+0, #0x00
                                     83 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      0090DD 35 E1 50 C4      [ 1]   84 	mov	0x50c4+0, #0xe1
                                     85 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      0090E1 35 00 50 C5      [ 1]   86 	mov	0x50c5+0, #0x00
                                     87 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      0090E5 35 18 50 C6      [ 1]   88 	mov	0x50c6+0, #0x18
                                     89 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      0090E9 35 FF 50 C7      [ 1]   90 	mov	0x50c7+0, #0xff
                                     91 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      0090ED 35 FF 50 CA      [ 1]   92 	mov	0x50ca+0, #0xff
                                     93 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      0090F1 35 00 50 C8      [ 1]   94 	mov	0x50c8+0, #0x00
                                     95 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      0090F5 35 00 50 C9      [ 1]   96 	mov	0x50c9+0, #0x00
                                     97 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      0090F9                         98 00101$:
      0090F9 C6 50 C9         [ 1]   99 	ld	a, 0x50c9
      0090FC 44               [ 1]  100 	srl	a
      0090FD 25 FA            [ 1]  101 	jrc	00101$
                                    102 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      0090FF 35 00 50 C9      [ 1]  103 	mov	0x50c9+0, #0x00
                                    104 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      009103 35 00 50 CC      [ 1]  105 	mov	0x50cc+0, #0x00
                                    106 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      009107 35 00 50 CD      [ 1]  107 	mov	0x50cd+0, #0x00
                                    108 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 88: }
      00910B 81               [ 4]  109 	ret
                                    110 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    111 ;	-----------------------------------------
                                    112 ;	 function CLK_FastHaltWakeUpCmd
                                    113 ;	-----------------------------------------
      00910C                        114 _CLK_FastHaltWakeUpCmd:
                                    115 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 102: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00910C 0D 03            [ 1]  116 	tnz	(0x03, sp)
      00910E 27 14            [ 1]  117 	jreq	00107$
      009110 7B 03            [ 1]  118 	ld	a, (0x03, sp)
      009112 4A               [ 1]  119 	dec	a
      009113 27 0F            [ 1]  120 	jreq	00107$
      009115 4B 66            [ 1]  121 	push	#0x66
      009117 5F               [ 1]  122 	clrw	x
      009118 89               [ 2]  123 	pushw	x
      009119 4B 00            [ 1]  124 	push	#0x00
      00911B 4B 2A            [ 1]  125 	push	#<(___str_0+0)
      00911D 4B 81            [ 1]  126 	push	#((___str_0+0) >> 8)
      00911F CD 83 84         [ 4]  127 	call	_assert_failed
      009122 5B 06            [ 2]  128 	addw	sp, #6
      009124                        129 00107$:
                                    130 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      009124 C6 50 C0         [ 1]  131 	ld	a, 0x50c0
                                    132 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 104: if (NewState != DISABLE)
      009127 0D 03            [ 1]  133 	tnz	(0x03, sp)
      009129 27 06            [ 1]  134 	jreq	00102$
                                    135 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      00912B AA 04            [ 1]  136 	or	a, #0x04
      00912D C7 50 C0         [ 1]  137 	ld	0x50c0, a
      009130 81               [ 4]  138 	ret
      009131                        139 00102$:
                                    140 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      009131 A4 FB            [ 1]  141 	and	a, #0xfb
      009133 C7 50 C0         [ 1]  142 	ld	0x50c0, a
                                    143 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 114: }
      009136 81               [ 4]  144 	ret
                                    145 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    146 ;	-----------------------------------------
                                    147 ;	 function CLK_HSECmd
                                    148 ;	-----------------------------------------
      009137                        149 _CLK_HSECmd:
                                    150 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 124: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009137 0D 03            [ 1]  151 	tnz	(0x03, sp)
      009139 27 14            [ 1]  152 	jreq	00107$
      00913B 7B 03            [ 1]  153 	ld	a, (0x03, sp)
      00913D 4A               [ 1]  154 	dec	a
      00913E 27 0F            [ 1]  155 	jreq	00107$
      009140 4B 7C            [ 1]  156 	push	#0x7c
      009142 5F               [ 1]  157 	clrw	x
      009143 89               [ 2]  158 	pushw	x
      009144 4B 00            [ 1]  159 	push	#0x00
      009146 4B 2A            [ 1]  160 	push	#<(___str_0+0)
      009148 4B 81            [ 1]  161 	push	#((___str_0+0) >> 8)
      00914A CD 83 84         [ 4]  162 	call	_assert_failed
      00914D 5B 06            [ 2]  163 	addw	sp, #6
      00914F                        164 00107$:
                                    165 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      00914F C6 50 C1         [ 1]  166 	ld	a, 0x50c1
                                    167 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 126: if (NewState != DISABLE)
      009152 0D 03            [ 1]  168 	tnz	(0x03, sp)
      009154 27 06            [ 1]  169 	jreq	00102$
                                    170 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      009156 AA 01            [ 1]  171 	or	a, #0x01
      009158 C7 50 C1         [ 1]  172 	ld	0x50c1, a
      00915B 81               [ 4]  173 	ret
      00915C                        174 00102$:
                                    175 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00915C A4 FE            [ 1]  176 	and	a, #0xfe
      00915E C7 50 C1         [ 1]  177 	ld	0x50c1, a
                                    178 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 136: }
      009161 81               [ 4]  179 	ret
                                    180 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    181 ;	-----------------------------------------
                                    182 ;	 function CLK_HSICmd
                                    183 ;	-----------------------------------------
      009162                        184 _CLK_HSICmd:
                                    185 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 146: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009162 0D 03            [ 1]  186 	tnz	(0x03, sp)
      009164 27 14            [ 1]  187 	jreq	00107$
      009166 7B 03            [ 1]  188 	ld	a, (0x03, sp)
      009168 4A               [ 1]  189 	dec	a
      009169 27 0F            [ 1]  190 	jreq	00107$
      00916B 4B 92            [ 1]  191 	push	#0x92
      00916D 5F               [ 1]  192 	clrw	x
      00916E 89               [ 2]  193 	pushw	x
      00916F 4B 00            [ 1]  194 	push	#0x00
      009171 4B 2A            [ 1]  195 	push	#<(___str_0+0)
      009173 4B 81            [ 1]  196 	push	#((___str_0+0) >> 8)
      009175 CD 83 84         [ 4]  197 	call	_assert_failed
      009178 5B 06            [ 2]  198 	addw	sp, #6
      00917A                        199 00107$:
                                    200 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      00917A C6 50 C0         [ 1]  201 	ld	a, 0x50c0
                                    202 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 148: if (NewState != DISABLE)
      00917D 0D 03            [ 1]  203 	tnz	(0x03, sp)
      00917F 27 06            [ 1]  204 	jreq	00102$
                                    205 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      009181 AA 01            [ 1]  206 	or	a, #0x01
      009183 C7 50 C0         [ 1]  207 	ld	0x50c0, a
      009186 81               [ 4]  208 	ret
      009187                        209 00102$:
                                    210 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      009187 A4 FE            [ 1]  211 	and	a, #0xfe
      009189 C7 50 C0         [ 1]  212 	ld	0x50c0, a
                                    213 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 158: }
      00918C 81               [ 4]  214 	ret
                                    215 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    216 ;	-----------------------------------------
                                    217 ;	 function CLK_LSICmd
                                    218 ;	-----------------------------------------
      00918D                        219 _CLK_LSICmd:
                                    220 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 169: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00918D 0D 03            [ 1]  221 	tnz	(0x03, sp)
      00918F 27 14            [ 1]  222 	jreq	00107$
      009191 7B 03            [ 1]  223 	ld	a, (0x03, sp)
      009193 4A               [ 1]  224 	dec	a
      009194 27 0F            [ 1]  225 	jreq	00107$
      009196 4B A9            [ 1]  226 	push	#0xa9
      009198 5F               [ 1]  227 	clrw	x
      009199 89               [ 2]  228 	pushw	x
      00919A 4B 00            [ 1]  229 	push	#0x00
      00919C 4B 2A            [ 1]  230 	push	#<(___str_0+0)
      00919E 4B 81            [ 1]  231 	push	#((___str_0+0) >> 8)
      0091A0 CD 83 84         [ 4]  232 	call	_assert_failed
      0091A3 5B 06            [ 2]  233 	addw	sp, #6
      0091A5                        234 00107$:
                                    235 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      0091A5 C6 50 C0         [ 1]  236 	ld	a, 0x50c0
                                    237 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 171: if (NewState != DISABLE)
      0091A8 0D 03            [ 1]  238 	tnz	(0x03, sp)
      0091AA 27 06            [ 1]  239 	jreq	00102$
                                    240 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      0091AC AA 08            [ 1]  241 	or	a, #0x08
      0091AE C7 50 C0         [ 1]  242 	ld	0x50c0, a
      0091B1 81               [ 4]  243 	ret
      0091B2                        244 00102$:
                                    245 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0091B2 A4 F7            [ 1]  246 	and	a, #0xf7
      0091B4 C7 50 C0         [ 1]  247 	ld	0x50c0, a
                                    248 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 181: }
      0091B7 81               [ 4]  249 	ret
                                    250 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    251 ;	-----------------------------------------
                                    252 ;	 function CLK_CCOCmd
                                    253 ;	-----------------------------------------
      0091B8                        254 _CLK_CCOCmd:
                                    255 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 192: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0091B8 0D 03            [ 1]  256 	tnz	(0x03, sp)
      0091BA 27 14            [ 1]  257 	jreq	00107$
      0091BC 7B 03            [ 1]  258 	ld	a, (0x03, sp)
      0091BE 4A               [ 1]  259 	dec	a
      0091BF 27 0F            [ 1]  260 	jreq	00107$
      0091C1 4B C0            [ 1]  261 	push	#0xc0
      0091C3 5F               [ 1]  262 	clrw	x
      0091C4 89               [ 2]  263 	pushw	x
      0091C5 4B 00            [ 1]  264 	push	#0x00
      0091C7 4B 2A            [ 1]  265 	push	#<(___str_0+0)
      0091C9 4B 81            [ 1]  266 	push	#((___str_0+0) >> 8)
      0091CB CD 83 84         [ 4]  267 	call	_assert_failed
      0091CE 5B 06            [ 2]  268 	addw	sp, #6
      0091D0                        269 00107$:
                                    270 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      0091D0 C6 50 C9         [ 1]  271 	ld	a, 0x50c9
                                    272 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 194: if (NewState != DISABLE)
      0091D3 0D 03            [ 1]  273 	tnz	(0x03, sp)
      0091D5 27 06            [ 1]  274 	jreq	00102$
                                    275 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      0091D7 AA 01            [ 1]  276 	or	a, #0x01
      0091D9 C7 50 C9         [ 1]  277 	ld	0x50c9, a
      0091DC 81               [ 4]  278 	ret
      0091DD                        279 00102$:
                                    280 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      0091DD A4 FE            [ 1]  281 	and	a, #0xfe
      0091DF C7 50 C9         [ 1]  282 	ld	0x50c9, a
                                    283 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 204: }
      0091E2 81               [ 4]  284 	ret
                                    285 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    286 ;	-----------------------------------------
                                    287 ;	 function CLK_ClockSwitchCmd
                                    288 ;	-----------------------------------------
      0091E3                        289 _CLK_ClockSwitchCmd:
                                    290 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0091E3 0D 03            [ 1]  291 	tnz	(0x03, sp)
      0091E5 27 14            [ 1]  292 	jreq	00107$
      0091E7 7B 03            [ 1]  293 	ld	a, (0x03, sp)
      0091E9 4A               [ 1]  294 	dec	a
      0091EA 27 0F            [ 1]  295 	jreq	00107$
      0091EC 4B D8            [ 1]  296 	push	#0xd8
      0091EE 5F               [ 1]  297 	clrw	x
      0091EF 89               [ 2]  298 	pushw	x
      0091F0 4B 00            [ 1]  299 	push	#0x00
      0091F2 4B 2A            [ 1]  300 	push	#<(___str_0+0)
      0091F4 4B 81            [ 1]  301 	push	#((___str_0+0) >> 8)
      0091F6 CD 83 84         [ 4]  302 	call	_assert_failed
      0091F9 5B 06            [ 2]  303 	addw	sp, #6
      0091FB                        304 00107$:
                                    305 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      0091FB C6 50 C5         [ 1]  306 	ld	a, 0x50c5
                                    307 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 218: if (NewState != DISABLE )
      0091FE 0D 03            [ 1]  308 	tnz	(0x03, sp)
      009200 27 06            [ 1]  309 	jreq	00102$
                                    310 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      009202 AA 02            [ 1]  311 	or	a, #0x02
      009204 C7 50 C5         [ 1]  312 	ld	0x50c5, a
      009207 81               [ 4]  313 	ret
      009208                        314 00102$:
                                    315 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      009208 A4 FD            [ 1]  316 	and	a, #0xfd
      00920A C7 50 C5         [ 1]  317 	ld	0x50c5, a
                                    318 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 228: }
      00920D 81               [ 4]  319 	ret
                                    320 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    321 ;	-----------------------------------------
                                    322 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    323 ;	-----------------------------------------
      00920E                        324 _CLK_SlowActiveHaltWakeUpCmd:
                                    325 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 241: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00920E 0D 03            [ 1]  326 	tnz	(0x03, sp)
      009210 27 14            [ 1]  327 	jreq	00107$
      009212 7B 03            [ 1]  328 	ld	a, (0x03, sp)
      009214 4A               [ 1]  329 	dec	a
      009215 27 0F            [ 1]  330 	jreq	00107$
      009217 4B F1            [ 1]  331 	push	#0xf1
      009219 5F               [ 1]  332 	clrw	x
      00921A 89               [ 2]  333 	pushw	x
      00921B 4B 00            [ 1]  334 	push	#0x00
      00921D 4B 2A            [ 1]  335 	push	#<(___str_0+0)
      00921F 4B 81            [ 1]  336 	push	#((___str_0+0) >> 8)
      009221 CD 83 84         [ 4]  337 	call	_assert_failed
      009224 5B 06            [ 2]  338 	addw	sp, #6
      009226                        339 00107$:
                                    340 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      009226 C6 50 C0         [ 1]  341 	ld	a, 0x50c0
                                    342 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 243: if (NewState != DISABLE)
      009229 0D 03            [ 1]  343 	tnz	(0x03, sp)
      00922B 27 06            [ 1]  344 	jreq	00102$
                                    345 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      00922D AA 20            [ 1]  346 	or	a, #0x20
      00922F C7 50 C0         [ 1]  347 	ld	0x50c0, a
      009232 81               [ 4]  348 	ret
      009233                        349 00102$:
                                    350 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      009233 A4 DF            [ 1]  351 	and	a, #0xdf
      009235 C7 50 C0         [ 1]  352 	ld	0x50c0, a
                                    353 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 253: }
      009238 81               [ 4]  354 	ret
                                    355 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    356 ;	-----------------------------------------
                                    357 ;	 function CLK_PeripheralClockConfig
                                    358 ;	-----------------------------------------
      009239                        359 _CLK_PeripheralClockConfig:
      009239 89               [ 2]  360 	pushw	x
                                    361 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 266: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00923A 0D 06            [ 1]  362 	tnz	(0x06, sp)
      00923C 27 14            [ 1]  363 	jreq	00113$
      00923E 7B 06            [ 1]  364 	ld	a, (0x06, sp)
      009240 4A               [ 1]  365 	dec	a
      009241 27 0F            [ 1]  366 	jreq	00113$
      009243 4B 0A            [ 1]  367 	push	#0x0a
      009245 4B 01            [ 1]  368 	push	#0x01
      009247 5F               [ 1]  369 	clrw	x
      009248 89               [ 2]  370 	pushw	x
      009249 4B 2A            [ 1]  371 	push	#<(___str_0+0)
      00924B 4B 81            [ 1]  372 	push	#((___str_0+0) >> 8)
      00924D CD 83 84         [ 4]  373 	call	_assert_failed
      009250 5B 06            [ 2]  374 	addw	sp, #6
      009252                        375 00113$:
                                    376 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 267: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
      009252 0D 05            [ 1]  377 	tnz	(0x05, sp)
      009254 27 67            [ 1]  378 	jreq	00118$
      009256 7B 05            [ 1]  379 	ld	a, (0x05, sp)
      009258 4A               [ 1]  380 	dec	a
      009259 27 62            [ 1]  381 	jreq	00118$
      00925B 7B 05            [ 1]  382 	ld	a, (0x05, sp)
      00925D A0 03            [ 1]  383 	sub	a, #0x03
      00925F 26 02            [ 1]  384 	jrne	00262$
      009261 4C               [ 1]  385 	inc	a
      009262 21                     386 	.byte 0x21
      009263                        387 00262$:
      009263 4F               [ 1]  388 	clr	a
      009264                        389 00263$:
      009264 4D               [ 1]  390 	tnz	a
      009265 26 56            [ 1]  391 	jrne	00118$
      009267 4D               [ 1]  392 	tnz	a
      009268 26 53            [ 1]  393 	jrne	00118$
      00926A 4D               [ 1]  394 	tnz	a
      00926B 26 50            [ 1]  395 	jrne	00118$
      00926D 7B 05            [ 1]  396 	ld	a, (0x05, sp)
      00926F A0 04            [ 1]  397 	sub	a, #0x04
      009271 26 04            [ 1]  398 	jrne	00268$
      009273 4C               [ 1]  399 	inc	a
      009274 97               [ 1]  400 	ld	xl, a
      009275 20 02            [ 2]  401 	jra	00269$
      009277                        402 00268$:
      009277 4F               [ 1]  403 	clr	a
      009278 97               [ 1]  404 	ld	xl, a
      009279                        405 00269$:
      009279 9F               [ 1]  406 	ld	a, xl
      00927A 4D               [ 1]  407 	tnz	a
      00927B 26 40            [ 1]  408 	jrne	00118$
      00927D 7B 05            [ 1]  409 	ld	a, (0x05, sp)
      00927F A0 05            [ 1]  410 	sub	a, #0x05
      009281 26 02            [ 1]  411 	jrne	00272$
      009283 4C               [ 1]  412 	inc	a
      009284 21                     413 	.byte 0x21
      009285                        414 00272$:
      009285 4F               [ 1]  415 	clr	a
      009286                        416 00273$:
      009286 4D               [ 1]  417 	tnz	a
      009287 26 34            [ 1]  418 	jrne	00118$
      009289 4D               [ 1]  419 	tnz	a
      00928A 26 31            [ 1]  420 	jrne	00118$
      00928C 9F               [ 1]  421 	ld	a, xl
      00928D 4D               [ 1]  422 	tnz	a
      00928E 26 2D            [ 1]  423 	jrne	00118$
      009290 7B 05            [ 1]  424 	ld	a, (0x05, sp)
      009292 A1 06            [ 1]  425 	cp	a, #0x06
      009294 27 27            [ 1]  426 	jreq	00118$
      009296 7B 05            [ 1]  427 	ld	a, (0x05, sp)
      009298 A1 07            [ 1]  428 	cp	a, #0x07
      00929A 27 21            [ 1]  429 	jreq	00118$
      00929C 7B 05            [ 1]  430 	ld	a, (0x05, sp)
      00929E A1 17            [ 1]  431 	cp	a, #0x17
      0092A0 27 1B            [ 1]  432 	jreq	00118$
      0092A2 7B 05            [ 1]  433 	ld	a, (0x05, sp)
      0092A4 A1 13            [ 1]  434 	cp	a, #0x13
      0092A6 27 15            [ 1]  435 	jreq	00118$
      0092A8 7B 05            [ 1]  436 	ld	a, (0x05, sp)
      0092AA A1 12            [ 1]  437 	cp	a, #0x12
      0092AC 27 0F            [ 1]  438 	jreq	00118$
      0092AE 4B 0B            [ 1]  439 	push	#0x0b
      0092B0 4B 01            [ 1]  440 	push	#0x01
      0092B2 5F               [ 1]  441 	clrw	x
      0092B3 89               [ 2]  442 	pushw	x
      0092B4 4B 2A            [ 1]  443 	push	#<(___str_0+0)
      0092B6 4B 81            [ 1]  444 	push	#((___str_0+0) >> 8)
      0092B8 CD 83 84         [ 4]  445 	call	_assert_failed
      0092BB 5B 06            [ 2]  446 	addw	sp, #6
      0092BD                        447 00118$:
                                    448 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0092BD 7B 05            [ 1]  449 	ld	a, (0x05, sp)
      0092BF A4 0F            [ 1]  450 	and	a, #0x0f
      0092C1 88               [ 1]  451 	push	a
      0092C2 A6 01            [ 1]  452 	ld	a, #0x01
      0092C4 6B 02            [ 1]  453 	ld	(0x02, sp), a
      0092C6 84               [ 1]  454 	pop	a
      0092C7 4D               [ 1]  455 	tnz	a
      0092C8 27 05            [ 1]  456 	jreq	00293$
      0092CA                        457 00292$:
      0092CA 08 01            [ 1]  458 	sll	(0x01, sp)
      0092CC 4A               [ 1]  459 	dec	a
      0092CD 26 FB            [ 1]  460 	jrne	00292$
      0092CF                        461 00293$:
                                    462 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0092CF 7B 01            [ 1]  463 	ld	a, (0x01, sp)
      0092D1 43               [ 1]  464 	cpl	a
      0092D2 6B 02            [ 1]  465 	ld	(0x02, sp), a
                                    466 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      0092D4 7B 05            [ 1]  467 	ld	a, (0x05, sp)
      0092D6 A5 10            [ 1]  468 	bcp	a, #0x10
      0092D8 26 15            [ 1]  469 	jrne	00108$
                                    470 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0092DA C6 50 C7         [ 1]  471 	ld	a, 0x50c7
                                    472 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 271: if (NewState != DISABLE)
      0092DD 0D 06            [ 1]  473 	tnz	(0x06, sp)
      0092DF 27 07            [ 1]  474 	jreq	00102$
                                    475 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0092E1 1A 01            [ 1]  476 	or	a, (0x01, sp)
      0092E3 C7 50 C7         [ 1]  477 	ld	0x50c7, a
      0092E6 20 1A            [ 2]  478 	jra	00110$
      0092E8                        479 00102$:
                                    480 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0092E8 14 02            [ 1]  481 	and	a, (0x02, sp)
      0092EA C7 50 C7         [ 1]  482 	ld	0x50c7, a
      0092ED 20 13            [ 2]  483 	jra	00110$
      0092EF                        484 00108$:
                                    485 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0092EF C6 50 CA         [ 1]  486 	ld	a, 0x50ca
                                    487 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 284: if (NewState != DISABLE)
      0092F2 0D 06            [ 1]  488 	tnz	(0x06, sp)
      0092F4 27 07            [ 1]  489 	jreq	00105$
                                    490 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0092F6 1A 01            [ 1]  491 	or	a, (0x01, sp)
      0092F8 C7 50 CA         [ 1]  492 	ld	0x50ca, a
      0092FB 20 05            [ 2]  493 	jra	00110$
      0092FD                        494 00105$:
                                    495 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0092FD 14 02            [ 1]  496 	and	a, (0x02, sp)
      0092FF C7 50 CA         [ 1]  497 	ld	0x50ca, a
      009302                        498 00110$:
                                    499 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 295: }
      009302 85               [ 2]  500 	popw	x
      009303 81               [ 4]  501 	ret
                                    502 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    503 ;	-----------------------------------------
                                    504 ;	 function CLK_ClockSwitchConfig
                                    505 ;	-----------------------------------------
      009304                        506 _CLK_ClockSwitchConfig:
      009304 88               [ 1]  507 	push	a
                                    508 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 316: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
      009305 7B 05            [ 1]  509 	ld	a, (0x05, sp)
      009307 A1 E1            [ 1]  510 	cp	a, #0xe1
      009309 27 1B            [ 1]  511 	jreq	00140$
      00930B 7B 05            [ 1]  512 	ld	a, (0x05, sp)
      00930D A1 D2            [ 1]  513 	cp	a, #0xd2
      00930F 27 15            [ 1]  514 	jreq	00140$
      009311 7B 05            [ 1]  515 	ld	a, (0x05, sp)
      009313 A1 B4            [ 1]  516 	cp	a, #0xb4
      009315 27 0F            [ 1]  517 	jreq	00140$
      009317 4B 3C            [ 1]  518 	push	#0x3c
      009319 4B 01            [ 1]  519 	push	#0x01
      00931B 5F               [ 1]  520 	clrw	x
      00931C 89               [ 2]  521 	pushw	x
      00931D 4B 2A            [ 1]  522 	push	#<(___str_0+0)
      00931F 4B 81            [ 1]  523 	push	#((___str_0+0) >> 8)
      009321 CD 83 84         [ 4]  524 	call	_assert_failed
      009324 5B 06            [ 2]  525 	addw	sp, #6
      009326                        526 00140$:
                                    527 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 317: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
      009326 7B 04            [ 1]  528 	ld	a, (0x04, sp)
      009328 4A               [ 1]  529 	dec	a
      009329 26 05            [ 1]  530 	jrne	00309$
      00932B A6 01            [ 1]  531 	ld	a, #0x01
      00932D 6B 01            [ 1]  532 	ld	(0x01, sp), a
      00932F C5                     533 	.byte 0xc5
      009330                        534 00309$:
      009330 0F 01            [ 1]  535 	clr	(0x01, sp)
      009332                        536 00310$:
      009332 0D 04            [ 1]  537 	tnz	(0x04, sp)
      009334 27 13            [ 1]  538 	jreq	00148$
      009336 0D 01            [ 1]  539 	tnz	(0x01, sp)
      009338 26 0F            [ 1]  540 	jrne	00148$
      00933A 4B 3D            [ 1]  541 	push	#0x3d
      00933C 4B 01            [ 1]  542 	push	#0x01
      00933E 5F               [ 1]  543 	clrw	x
      00933F 89               [ 2]  544 	pushw	x
      009340 4B 2A            [ 1]  545 	push	#<(___str_0+0)
      009342 4B 81            [ 1]  546 	push	#((___str_0+0) >> 8)
      009344 CD 83 84         [ 4]  547 	call	_assert_failed
      009347 5B 06            [ 2]  548 	addw	sp, #6
      009349                        549 00148$:
                                    550 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 318: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
      009349 0D 06            [ 1]  551 	tnz	(0x06, sp)
      00934B 27 14            [ 1]  552 	jreq	00153$
      00934D 7B 06            [ 1]  553 	ld	a, (0x06, sp)
      00934F 4A               [ 1]  554 	dec	a
      009350 27 0F            [ 1]  555 	jreq	00153$
      009352 4B 3E            [ 1]  556 	push	#0x3e
      009354 4B 01            [ 1]  557 	push	#0x01
      009356 5F               [ 1]  558 	clrw	x
      009357 89               [ 2]  559 	pushw	x
      009358 4B 2A            [ 1]  560 	push	#<(___str_0+0)
      00935A 4B 81            [ 1]  561 	push	#((___str_0+0) >> 8)
      00935C CD 83 84         [ 4]  562 	call	_assert_failed
      00935F 5B 06            [ 2]  563 	addw	sp, #6
      009361                        564 00153$:
                                    565 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 319: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
      009361 0D 07            [ 1]  566 	tnz	(0x07, sp)
      009363 27 14            [ 1]  567 	jreq	00158$
      009365 7B 07            [ 1]  568 	ld	a, (0x07, sp)
      009367 4A               [ 1]  569 	dec	a
      009368 27 0F            [ 1]  570 	jreq	00158$
      00936A 4B 3F            [ 1]  571 	push	#0x3f
      00936C 4B 01            [ 1]  572 	push	#0x01
      00936E 5F               [ 1]  573 	clrw	x
      00936F 89               [ 2]  574 	pushw	x
      009370 4B 2A            [ 1]  575 	push	#<(___str_0+0)
      009372 4B 81            [ 1]  576 	push	#((___str_0+0) >> 8)
      009374 CD 83 84         [ 4]  577 	call	_assert_failed
      009377 5B 06            [ 2]  578 	addw	sp, #6
      009379                        579 00158$:
                                    580 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      009379 C6 50 C3         [ 1]  581 	ld	a, 0x50c3
      00937C 90 97            [ 1]  582 	ld	yl, a
                                    583 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      00937E C6 50 C5         [ 1]  584 	ld	a, 0x50c5
      009381 97               [ 1]  585 	ld	xl, a
                                    586 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      009382 7B 01            [ 1]  587 	ld	a, (0x01, sp)
      009384 27 38            [ 1]  588 	jreq	00122$
                                    589 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      009386 9F               [ 1]  590 	ld	a, xl
      009387 AA 02            [ 1]  591 	or	a, #0x02
      009389 C7 50 C5         [ 1]  592 	ld	0x50c5, a
      00938C C6 50 C5         [ 1]  593 	ld	a, 0x50c5
                                    594 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 331: if (ITState != DISABLE)
      00938F 0D 06            [ 1]  595 	tnz	(0x06, sp)
      009391 27 07            [ 1]  596 	jreq	00102$
                                    597 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      009393 AA 04            [ 1]  598 	or	a, #0x04
      009395 C7 50 C5         [ 1]  599 	ld	0x50c5, a
      009398 20 05            [ 2]  600 	jra	00103$
      00939A                        601 00102$:
                                    602 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00939A A4 FB            [ 1]  603 	and	a, #0xfb
      00939C C7 50 C5         [ 1]  604 	ld	0x50c5, a
      00939F                        605 00103$:
                                    606 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      00939F AE 50 C4         [ 2]  607 	ldw	x, #0x50c4
      0093A2 7B 05            [ 1]  608 	ld	a, (0x05, sp)
      0093A4 F7               [ 1]  609 	ld	(x), a
                                    610 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      0093A5 5F               [ 1]  611 	clrw	x
      0093A6 5A               [ 2]  612 	decw	x
      0093A7                        613 00105$:
      0093A7 C6 50 C5         [ 1]  614 	ld	a, 0x50c5
      0093AA 44               [ 1]  615 	srl	a
      0093AB 24 06            [ 1]  616 	jrnc	00107$
      0093AD 5D               [ 2]  617 	tnzw	x
      0093AE 27 03            [ 1]  618 	jreq	00107$
                                    619 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 346: DownCounter--;
      0093B0 5A               [ 2]  620 	decw	x
      0093B1 20 F4            [ 2]  621 	jra	00105$
      0093B3                        622 00107$:
                                    623 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 349: if(DownCounter != 0)
      0093B3 5D               [ 2]  624 	tnzw	x
      0093B4 27 05            [ 1]  625 	jreq	00109$
                                    626 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 351: Swif = SUCCESS;
      0093B6 A6 01            [ 1]  627 	ld	a, #0x01
      0093B8 97               [ 1]  628 	ld	xl, a
      0093B9 20 36            [ 2]  629 	jra	00123$
      0093BB                        630 00109$:
                                    631 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 355: Swif = ERROR;
      0093BB 5F               [ 1]  632 	clrw	x
      0093BC 20 33            [ 2]  633 	jra	00123$
      0093BE                        634 00122$:
                                    635 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 361: if (ITState != DISABLE)
      0093BE 0D 06            [ 1]  636 	tnz	(0x06, sp)
      0093C0 27 08            [ 1]  637 	jreq	00112$
                                    638 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      0093C2 9F               [ 1]  639 	ld	a, xl
      0093C3 AA 04            [ 1]  640 	or	a, #0x04
      0093C5 C7 50 C5         [ 1]  641 	ld	0x50c5, a
      0093C8 20 06            [ 2]  642 	jra	00113$
      0093CA                        643 00112$:
                                    644 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0093CA 9F               [ 1]  645 	ld	a, xl
      0093CB A4 FB            [ 1]  646 	and	a, #0xfb
      0093CD C7 50 C5         [ 1]  647 	ld	0x50c5, a
      0093D0                        648 00113$:
                                    649 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      0093D0 AE 50 C4         [ 2]  650 	ldw	x, #0x50c4
      0093D3 7B 05            [ 1]  651 	ld	a, (0x05, sp)
      0093D5 F7               [ 1]  652 	ld	(x), a
                                    653 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      0093D6 5F               [ 1]  654 	clrw	x
      0093D7 5A               [ 2]  655 	decw	x
      0093D8                        656 00115$:
      0093D8 C6 50 C5         [ 1]  657 	ld	a, 0x50c5
      0093DB A5 08            [ 1]  658 	bcp	a, #0x08
      0093DD 27 06            [ 1]  659 	jreq	00117$
      0093DF 5D               [ 2]  660 	tnzw	x
      0093E0 27 03            [ 1]  661 	jreq	00117$
                                    662 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 376: DownCounter--;
      0093E2 5A               [ 2]  663 	decw	x
      0093E3 20 F3            [ 2]  664 	jra	00115$
      0093E5                        665 00117$:
                                    666 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 379: if(DownCounter != 0)
      0093E5 5D               [ 2]  667 	tnzw	x
      0093E6 27 08            [ 1]  668 	jreq	00119$
                                    669 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      0093E8 72 12 50 C5      [ 1]  670 	bset	20677, #1
                                    671 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 383: Swif = SUCCESS;
      0093EC A6 01            [ 1]  672 	ld	a, #0x01
      0093EE 97               [ 1]  673 	ld	xl, a
                                    674 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 387: Swif = ERROR;
      0093EF 21                     675 	.byte 0x21
      0093F0                        676 00119$:
      0093F0 5F               [ 1]  677 	clrw	x
      0093F1                        678 00123$:
                                    679 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 390: if(Swif != ERROR)
      0093F1 9F               [ 1]  680 	ld	a, xl
      0093F2 4D               [ 1]  681 	tnz	a
      0093F3 27 2E            [ 1]  682 	jreq	00136$
                                    683 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      0093F5 0D 07            [ 1]  684 	tnz	(0x07, sp)
      0093F7 26 0C            [ 1]  685 	jrne	00132$
      0093F9 90 9F            [ 1]  686 	ld	a, yl
      0093FB A1 E1            [ 1]  687 	cp	a, #0xe1
      0093FD 26 06            [ 1]  688 	jrne	00132$
                                    689 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0093FF 72 11 50 C0      [ 1]  690 	bres	20672, #0
      009403 20 1E            [ 2]  691 	jra	00136$
      009405                        692 00132$:
                                    693 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      009405 0D 07            [ 1]  694 	tnz	(0x07, sp)
      009407 26 0C            [ 1]  695 	jrne	00128$
      009409 90 9F            [ 1]  696 	ld	a, yl
      00940B A1 D2            [ 1]  697 	cp	a, #0xd2
      00940D 26 06            [ 1]  698 	jrne	00128$
                                    699 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00940F 72 17 50 C0      [ 1]  700 	bres	20672, #3
      009413 20 0E            [ 2]  701 	jra	00136$
      009415                        702 00128$:
                                    703 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      009415 0D 07            [ 1]  704 	tnz	(0x07, sp)
      009417 26 0A            [ 1]  705 	jrne	00136$
      009419 90 9F            [ 1]  706 	ld	a, yl
      00941B A1 B4            [ 1]  707 	cp	a, #0xb4
      00941D 26 04            [ 1]  708 	jrne	00136$
                                    709 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00941F 72 11 50 C1      [ 1]  710 	bres	20673, #0
      009423                        711 00136$:
                                    712 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 406: return(Swif);
      009423 9F               [ 1]  713 	ld	a, xl
                                    714 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 407: }
      009424 5B 01            [ 2]  715 	addw	sp, #1
      009426 81               [ 4]  716 	ret
                                    717 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    718 ;	-----------------------------------------
                                    719 ;	 function CLK_HSIPrescalerConfig
                                    720 ;	-----------------------------------------
      009427                        721 _CLK_HSIPrescalerConfig:
                                    722 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 418: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
      009427 0D 03            [ 1]  723 	tnz	(0x03, sp)
      009429 27 21            [ 1]  724 	jreq	00104$
      00942B 7B 03            [ 1]  725 	ld	a, (0x03, sp)
      00942D A1 08            [ 1]  726 	cp	a, #0x08
      00942F 27 1B            [ 1]  727 	jreq	00104$
      009431 7B 03            [ 1]  728 	ld	a, (0x03, sp)
      009433 A1 10            [ 1]  729 	cp	a, #0x10
      009435 27 15            [ 1]  730 	jreq	00104$
      009437 7B 03            [ 1]  731 	ld	a, (0x03, sp)
      009439 A1 18            [ 1]  732 	cp	a, #0x18
      00943B 27 0F            [ 1]  733 	jreq	00104$
      00943D 4B A2            [ 1]  734 	push	#0xa2
      00943F 4B 01            [ 1]  735 	push	#0x01
      009441 5F               [ 1]  736 	clrw	x
      009442 89               [ 2]  737 	pushw	x
      009443 4B 2A            [ 1]  738 	push	#<(___str_0+0)
      009445 4B 81            [ 1]  739 	push	#((___str_0+0) >> 8)
      009447 CD 83 84         [ 4]  740 	call	_assert_failed
      00944A 5B 06            [ 2]  741 	addw	sp, #6
      00944C                        742 00104$:
                                    743 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00944C C6 50 C6         [ 1]  744 	ld	a, 0x50c6
      00944F A4 E7            [ 1]  745 	and	a, #0xe7
      009451 C7 50 C6         [ 1]  746 	ld	0x50c6, a
                                    747 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      009454 C6 50 C6         [ 1]  748 	ld	a, 0x50c6
      009457 1A 03            [ 1]  749 	or	a, (0x03, sp)
      009459 C7 50 C6         [ 1]  750 	ld	0x50c6, a
                                    751 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 425: }
      00945C 81               [ 4]  752 	ret
                                    753 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    754 ;	-----------------------------------------
                                    755 ;	 function CLK_CCOConfig
                                    756 ;	-----------------------------------------
      00945D                        757 _CLK_CCOConfig:
                                    758 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 439: assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
      00945D 0D 03            [ 1]  759 	tnz	(0x03, sp)
      00945F 27 57            [ 1]  760 	jreq	00104$
      009461 7B 03            [ 1]  761 	ld	a, (0x03, sp)
      009463 A1 04            [ 1]  762 	cp	a, #0x04
      009465 27 51            [ 1]  763 	jreq	00104$
      009467 7B 03            [ 1]  764 	ld	a, (0x03, sp)
      009469 A1 02            [ 1]  765 	cp	a, #0x02
      00946B 27 4B            [ 1]  766 	jreq	00104$
      00946D 7B 03            [ 1]  767 	ld	a, (0x03, sp)
      00946F A1 08            [ 1]  768 	cp	a, #0x08
      009471 27 45            [ 1]  769 	jreq	00104$
      009473 7B 03            [ 1]  770 	ld	a, (0x03, sp)
      009475 A1 0A            [ 1]  771 	cp	a, #0x0a
      009477 27 3F            [ 1]  772 	jreq	00104$
      009479 7B 03            [ 1]  773 	ld	a, (0x03, sp)
      00947B A1 0C            [ 1]  774 	cp	a, #0x0c
      00947D 27 39            [ 1]  775 	jreq	00104$
      00947F 7B 03            [ 1]  776 	ld	a, (0x03, sp)
      009481 A1 0E            [ 1]  777 	cp	a, #0x0e
      009483 27 33            [ 1]  778 	jreq	00104$
      009485 7B 03            [ 1]  779 	ld	a, (0x03, sp)
      009487 A1 10            [ 1]  780 	cp	a, #0x10
      009489 27 2D            [ 1]  781 	jreq	00104$
      00948B 7B 03            [ 1]  782 	ld	a, (0x03, sp)
      00948D A1 12            [ 1]  783 	cp	a, #0x12
      00948F 27 27            [ 1]  784 	jreq	00104$
      009491 7B 03            [ 1]  785 	ld	a, (0x03, sp)
      009493 A1 14            [ 1]  786 	cp	a, #0x14
      009495 27 21            [ 1]  787 	jreq	00104$
      009497 7B 03            [ 1]  788 	ld	a, (0x03, sp)
      009499 A1 16            [ 1]  789 	cp	a, #0x16
      00949B 27 1B            [ 1]  790 	jreq	00104$
      00949D 7B 03            [ 1]  791 	ld	a, (0x03, sp)
      00949F A1 18            [ 1]  792 	cp	a, #0x18
      0094A1 27 15            [ 1]  793 	jreq	00104$
      0094A3 7B 03            [ 1]  794 	ld	a, (0x03, sp)
      0094A5 A1 1A            [ 1]  795 	cp	a, #0x1a
      0094A7 27 0F            [ 1]  796 	jreq	00104$
      0094A9 4B B7            [ 1]  797 	push	#0xb7
      0094AB 4B 01            [ 1]  798 	push	#0x01
      0094AD 5F               [ 1]  799 	clrw	x
      0094AE 89               [ 2]  800 	pushw	x
      0094AF 4B 2A            [ 1]  801 	push	#<(___str_0+0)
      0094B1 4B 81            [ 1]  802 	push	#((___str_0+0) >> 8)
      0094B3 CD 83 84         [ 4]  803 	call	_assert_failed
      0094B6 5B 06            [ 2]  804 	addw	sp, #6
      0094B8                        805 00104$:
                                    806 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      0094B8 C6 50 C9         [ 1]  807 	ld	a, 0x50c9
      0094BB A4 E1            [ 1]  808 	and	a, #0xe1
      0094BD C7 50 C9         [ 1]  809 	ld	0x50c9, a
                                    810 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      0094C0 C6 50 C9         [ 1]  811 	ld	a, 0x50c9
      0094C3 1A 03            [ 1]  812 	or	a, (0x03, sp)
      0094C5 C7 50 C9         [ 1]  813 	ld	0x50c9, a
                                    814 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      0094C8 72 10 50 C9      [ 1]  815 	bset	20681, #0
                                    816 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 449: }
      0094CC 81               [ 4]  817 	ret
                                    818 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    819 ;	-----------------------------------------
                                    820 ;	 function CLK_ITConfig
                                    821 ;	-----------------------------------------
      0094CD                        822 _CLK_ITConfig:
      0094CD 88               [ 1]  823 	push	a
                                    824 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 462: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0094CE 0D 05            [ 1]  825 	tnz	(0x05, sp)
      0094D0 27 14            [ 1]  826 	jreq	00115$
      0094D2 7B 05            [ 1]  827 	ld	a, (0x05, sp)
      0094D4 4A               [ 1]  828 	dec	a
      0094D5 27 0F            [ 1]  829 	jreq	00115$
      0094D7 4B CE            [ 1]  830 	push	#0xce
      0094D9 4B 01            [ 1]  831 	push	#0x01
      0094DB 5F               [ 1]  832 	clrw	x
      0094DC 89               [ 2]  833 	pushw	x
      0094DD 4B 2A            [ 1]  834 	push	#<(___str_0+0)
      0094DF 4B 81            [ 1]  835 	push	#((___str_0+0) >> 8)
      0094E1 CD 83 84         [ 4]  836 	call	_assert_failed
      0094E4 5B 06            [ 2]  837 	addw	sp, #6
      0094E6                        838 00115$:
                                    839 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 463: assert_param(IS_CLK_IT_OK(CLK_IT));
      0094E6 7B 04            [ 1]  840 	ld	a, (0x04, sp)
      0094E8 A0 0C            [ 1]  841 	sub	a, #0x0c
      0094EA 26 02            [ 1]  842 	jrne	00174$
      0094EC 4C               [ 1]  843 	inc	a
      0094ED 21                     844 	.byte 0x21
      0094EE                        845 00174$:
      0094EE 4F               [ 1]  846 	clr	a
      0094EF                        847 00175$:
      0094EF 88               [ 1]  848 	push	a
      0094F0 7B 05            [ 1]  849 	ld	a, (0x05, sp)
      0094F2 A1 1C            [ 1]  850 	cp	a, #0x1c
      0094F4 84               [ 1]  851 	pop	a
      0094F5 26 07            [ 1]  852 	jrne	00177$
      0094F7 88               [ 1]  853 	push	a
      0094F8 A6 01            [ 1]  854 	ld	a, #0x01
      0094FA 6B 02            [ 1]  855 	ld	(0x02, sp), a
      0094FC 84               [ 1]  856 	pop	a
      0094FD C5                     857 	.byte 0xc5
      0094FE                        858 00177$:
      0094FE 0F 01            [ 1]  859 	clr	(0x01, sp)
      009500                        860 00178$:
      009500 4D               [ 1]  861 	tnz	a
      009501 26 15            [ 1]  862 	jrne	00120$
      009503 0D 01            [ 1]  863 	tnz	(0x01, sp)
      009505 26 11            [ 1]  864 	jrne	00120$
      009507 88               [ 1]  865 	push	a
      009508 4B CF            [ 1]  866 	push	#0xcf
      00950A 4B 01            [ 1]  867 	push	#0x01
      00950C 5F               [ 1]  868 	clrw	x
      00950D 89               [ 2]  869 	pushw	x
      00950E 4B 2A            [ 1]  870 	push	#<(___str_0+0)
      009510 4B 81            [ 1]  871 	push	#((___str_0+0) >> 8)
      009512 CD 83 84         [ 4]  872 	call	_assert_failed
      009515 5B 06            [ 2]  873 	addw	sp, #6
      009517 84               [ 1]  874 	pop	a
      009518                        875 00120$:
                                    876 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 465: if (NewState != DISABLE)
      009518 0D 05            [ 1]  877 	tnz	(0x05, sp)
      00951A 27 13            [ 1]  878 	jreq	00110$
                                    879 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 467: switch (CLK_IT)
      00951C 4D               [ 1]  880 	tnz	a
      00951D 26 0A            [ 1]  881 	jrne	00102$
      00951F 7B 01            [ 1]  882 	ld	a, (0x01, sp)
      009521 27 1D            [ 1]  883 	jreq	00112$
                                    884 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      009523 72 14 50 C5      [ 1]  885 	bset	20677, #2
                                    886 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 471: break;
      009527 20 17            [ 2]  887 	jra	00112$
                                    888 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      009529                        889 00102$:
                                    890 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      009529 72 14 50 C8      [ 1]  891 	bset	20680, #2
                                    892 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 474: break;
      00952D 20 11            [ 2]  893 	jra	00112$
                                    894 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 477: }
      00952F                        895 00110$:
                                    896 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 481: switch (CLK_IT)
      00952F 4D               [ 1]  897 	tnz	a
      009530 26 0A            [ 1]  898 	jrne	00106$
      009532 7B 01            [ 1]  899 	ld	a, (0x01, sp)
      009534 27 0A            [ 1]  900 	jreq	00112$
                                    901 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      009536 72 15 50 C5      [ 1]  902 	bres	20677, #2
                                    903 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 485: break;
      00953A 20 04            [ 2]  904 	jra	00112$
                                    905 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      00953C                        906 00106$:
                                    907 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      00953C 72 15 50 C8      [ 1]  908 	bres	20680, #2
                                    909 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 491: }
      009540                        910 00112$:
                                    911 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 493: }
      009540 84               [ 1]  912 	pop	a
      009541 81               [ 4]  913 	ret
                                    914 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    915 ;	-----------------------------------------
                                    916 ;	 function CLK_SYSCLKConfig
                                    917 ;	-----------------------------------------
      009542                        918 _CLK_SYSCLKConfig:
      009542 88               [ 1]  919 	push	a
                                    920 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 503: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
      009543 0D 04            [ 1]  921 	tnz	(0x04, sp)
      009545 27 51            [ 1]  922 	jreq	00107$
      009547 7B 04            [ 1]  923 	ld	a, (0x04, sp)
      009549 A1 08            [ 1]  924 	cp	a, #0x08
      00954B 27 4B            [ 1]  925 	jreq	00107$
      00954D 7B 04            [ 1]  926 	ld	a, (0x04, sp)
      00954F A1 10            [ 1]  927 	cp	a, #0x10
      009551 27 45            [ 1]  928 	jreq	00107$
      009553 7B 04            [ 1]  929 	ld	a, (0x04, sp)
      009555 A1 18            [ 1]  930 	cp	a, #0x18
      009557 27 3F            [ 1]  931 	jreq	00107$
      009559 7B 04            [ 1]  932 	ld	a, (0x04, sp)
      00955B A1 80            [ 1]  933 	cp	a, #0x80
      00955D 27 39            [ 1]  934 	jreq	00107$
      00955F 7B 04            [ 1]  935 	ld	a, (0x04, sp)
      009561 A1 81            [ 1]  936 	cp	a, #0x81
      009563 27 33            [ 1]  937 	jreq	00107$
      009565 7B 04            [ 1]  938 	ld	a, (0x04, sp)
      009567 A1 82            [ 1]  939 	cp	a, #0x82
      009569 27 2D            [ 1]  940 	jreq	00107$
      00956B 7B 04            [ 1]  941 	ld	a, (0x04, sp)
      00956D A1 83            [ 1]  942 	cp	a, #0x83
      00956F 27 27            [ 1]  943 	jreq	00107$
      009571 7B 04            [ 1]  944 	ld	a, (0x04, sp)
      009573 A1 84            [ 1]  945 	cp	a, #0x84
      009575 27 21            [ 1]  946 	jreq	00107$
      009577 7B 04            [ 1]  947 	ld	a, (0x04, sp)
      009579 A1 85            [ 1]  948 	cp	a, #0x85
      00957B 27 1B            [ 1]  949 	jreq	00107$
      00957D 7B 04            [ 1]  950 	ld	a, (0x04, sp)
      00957F A1 86            [ 1]  951 	cp	a, #0x86
      009581 27 15            [ 1]  952 	jreq	00107$
      009583 7B 04            [ 1]  953 	ld	a, (0x04, sp)
      009585 A1 87            [ 1]  954 	cp	a, #0x87
      009587 27 0F            [ 1]  955 	jreq	00107$
      009589 4B F7            [ 1]  956 	push	#0xf7
      00958B 4B 01            [ 1]  957 	push	#0x01
      00958D 5F               [ 1]  958 	clrw	x
      00958E 89               [ 2]  959 	pushw	x
      00958F 4B 2A            [ 1]  960 	push	#<(___str_0+0)
      009591 4B 81            [ 1]  961 	push	#((___str_0+0) >> 8)
      009593 CD 83 84         [ 4]  962 	call	_assert_failed
      009596 5B 06            [ 2]  963 	addw	sp, #6
      009598                        964 00107$:
                                    965 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      009598 C6 50 C6         [ 1]  966 	ld	a, 0x50c6
                                    967 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      00959B 0D 04            [ 1]  968 	tnz	(0x04, sp)
      00959D 2B 15            [ 1]  969 	jrmi	00102$
                                    970 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00959F A4 E7            [ 1]  971 	and	a, #0xe7
      0095A1 C7 50 C6         [ 1]  972 	ld	0x50c6, a
                                    973 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      0095A4 C6 50 C6         [ 1]  974 	ld	a, 0x50c6
      0095A7 6B 01            [ 1]  975 	ld	(0x01, sp), a
      0095A9 7B 04            [ 1]  976 	ld	a, (0x04, sp)
      0095AB A4 18            [ 1]  977 	and	a, #0x18
      0095AD 1A 01            [ 1]  978 	or	a, (0x01, sp)
      0095AF C7 50 C6         [ 1]  979 	ld	0x50c6, a
      0095B2 20 13            [ 2]  980 	jra	00104$
      0095B4                        981 00102$:
                                    982 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      0095B4 A4 F8            [ 1]  983 	and	a, #0xf8
      0095B6 C7 50 C6         [ 1]  984 	ld	0x50c6, a
                                    985 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      0095B9 C6 50 C6         [ 1]  986 	ld	a, 0x50c6
      0095BC 6B 01            [ 1]  987 	ld	(0x01, sp), a
      0095BE 7B 04            [ 1]  988 	ld	a, (0x04, sp)
      0095C0 A4 07            [ 1]  989 	and	a, #0x07
      0095C2 1A 01            [ 1]  990 	or	a, (0x01, sp)
      0095C4 C7 50 C6         [ 1]  991 	ld	0x50c6, a
      0095C7                        992 00104$:
                                    993 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 515: }
      0095C7 84               [ 1]  994 	pop	a
      0095C8 81               [ 4]  995 	ret
                                    996 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    997 ;	-----------------------------------------
                                    998 ;	 function CLK_SWIMConfig
                                    999 ;	-----------------------------------------
      0095C9                       1000 _CLK_SWIMConfig:
                                   1001 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 526: assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
      0095C9 0D 03            [ 1] 1002 	tnz	(0x03, sp)
      0095CB 27 14            [ 1] 1003 	jreq	00107$
      0095CD 7B 03            [ 1] 1004 	ld	a, (0x03, sp)
      0095CF 4A               [ 1] 1005 	dec	a
      0095D0 27 0F            [ 1] 1006 	jreq	00107$
      0095D2 4B 0E            [ 1] 1007 	push	#0x0e
      0095D4 4B 02            [ 1] 1008 	push	#0x02
      0095D6 5F               [ 1] 1009 	clrw	x
      0095D7 89               [ 2] 1010 	pushw	x
      0095D8 4B 2A            [ 1] 1011 	push	#<(___str_0+0)
      0095DA 4B 81            [ 1] 1012 	push	#((___str_0+0) >> 8)
      0095DC CD 83 84         [ 4] 1013 	call	_assert_failed
      0095DF 5B 06            [ 2] 1014 	addw	sp, #6
      0095E1                       1015 00107$:
                                   1016 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      0095E1 C6 50 CD         [ 1] 1017 	ld	a, 0x50cd
                                   1018 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      0095E4 0D 03            [ 1] 1019 	tnz	(0x03, sp)
      0095E6 27 06            [ 1] 1020 	jreq	00102$
                                   1021 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      0095E8 AA 01            [ 1] 1022 	or	a, #0x01
      0095EA C7 50 CD         [ 1] 1023 	ld	0x50cd, a
      0095ED 81               [ 4] 1024 	ret
      0095EE                       1025 00102$:
                                   1026 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      0095EE A4 FE            [ 1] 1027 	and	a, #0xfe
      0095F0 C7 50 CD         [ 1] 1028 	ld	0x50cd, a
                                   1029 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 538: }
      0095F3 81               [ 4] 1030 	ret
                                   1031 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                   1032 ;	-----------------------------------------
                                   1033 ;	 function CLK_ClockSecuritySystemEnable
                                   1034 ;	-----------------------------------------
      0095F4                       1035 _CLK_ClockSecuritySystemEnable:
                                   1036 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      0095F4 72 10 50 C8      [ 1] 1037 	bset	20680, #0
                                   1038 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 551: }
      0095F8 81               [ 4] 1039 	ret
                                   1040 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function CLK_GetSYSCLKSource
                                   1043 ;	-----------------------------------------
      0095F9                       1044 _CLK_GetSYSCLKSource:
                                   1045 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      0095F9 C6 50 C3         [ 1] 1046 	ld	a, 0x50c3
                                   1047 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 562: }
      0095FC 81               [ 4] 1048 	ret
                                   1049 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                   1050 ;	-----------------------------------------
                                   1051 ;	 function CLK_GetClockFreq
                                   1052 ;	-----------------------------------------
      0095FD                       1053 _CLK_GetClockFreq:
      0095FD 52 04            [ 2] 1054 	sub	sp, #4
                                   1055 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      0095FF C6 50 C3         [ 1] 1056 	ld	a, 0x50c3
                                   1057 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      009602 6B 04            [ 1] 1058 	ld	(0x04, sp), a
      009604 A1 E1            [ 1] 1059 	cp	a, #0xe1
      009606 26 26            [ 1] 1060 	jrne	00105$
                                   1061 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      009608 C6 50 C6         [ 1] 1062 	ld	a, 0x50c6
      00960B A4 18            [ 1] 1063 	and	a, #0x18
                                   1064 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      00960D 44               [ 1] 1065 	srl	a
      00960E 44               [ 1] 1066 	srl	a
      00960F 44               [ 1] 1067 	srl	a
                                   1068 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      009610 5F               [ 1] 1069 	clrw	x
      009611 97               [ 1] 1070 	ld	xl, a
      009612 D6 81 1E         [ 1] 1071 	ld	a, (_HSIDivFactor+0, x)
                                   1072 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      009615 5F               [ 1] 1073 	clrw	x
      009616 97               [ 1] 1074 	ld	xl, a
      009617 90 5F            [ 1] 1075 	clrw	y
      009619 89               [ 2] 1076 	pushw	x
      00961A 90 89            [ 2] 1077 	pushw	y
      00961C 4B 00            [ 1] 1078 	push	#0x00
      00961E 4B 24            [ 1] 1079 	push	#0x24
      009620 4B F4            [ 1] 1080 	push	#0xf4
      009622 4B 00            [ 1] 1081 	push	#0x00
      009624 CD CC 9E         [ 4] 1082 	call	__divulong
      009627 5B 08            [ 2] 1083 	addw	sp, #8
      009629 51               [ 1] 1084 	exgw	x, y
      00962A 17 03            [ 2] 1085 	ldw	(0x03, sp), y
      00962C 20 17            [ 2] 1086 	jra	00106$
      00962E                       1087 00105$:
                                   1088 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      00962E 7B 04            [ 1] 1089 	ld	a, (0x04, sp)
      009630 A1 D2            [ 1] 1090 	cp	a, #0xd2
      009632 26 09            [ 1] 1091 	jrne	00102$
                                   1092 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      009634 AE F4 00         [ 2] 1093 	ldw	x, #0xf400
      009637 1F 03            [ 2] 1094 	ldw	(0x03, sp), x
      009639 5F               [ 1] 1095 	clrw	x
      00963A 5C               [ 1] 1096 	incw	x
      00963B 20 08            [ 2] 1097 	jra	00106$
      00963D                       1098 00102$:
                                   1099 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      00963D AE 24 00         [ 2] 1100 	ldw	x, #0x2400
      009640 1F 03            [ 2] 1101 	ldw	(0x03, sp), x
      009642 AE 00 F4         [ 2] 1102 	ldw	x, #0x00f4
      009645                       1103 00106$:
                                   1104 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      009645 51               [ 1] 1105 	exgw	x, y
      009646 1E 03            [ 2] 1106 	ldw	x, (0x03, sp)
                                   1107 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 595: }
      009648 5B 04            [ 2] 1108 	addw	sp, #4
      00964A 81               [ 4] 1109 	ret
                                   1110 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   1111 ;	-----------------------------------------
                                   1112 ;	 function CLK_AdjustHSICalibrationValue
                                   1113 ;	-----------------------------------------
      00964B                       1114 _CLK_AdjustHSICalibrationValue:
                                   1115 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 607: assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
      00964B 0D 03            [ 1] 1116 	tnz	(0x03, sp)
      00964D 27 38            [ 1] 1117 	jreq	00104$
      00964F 7B 03            [ 1] 1118 	ld	a, (0x03, sp)
      009651 4A               [ 1] 1119 	dec	a
      009652 27 33            [ 1] 1120 	jreq	00104$
      009654 7B 03            [ 1] 1121 	ld	a, (0x03, sp)
      009656 A1 02            [ 1] 1122 	cp	a, #0x02
      009658 27 2D            [ 1] 1123 	jreq	00104$
      00965A 7B 03            [ 1] 1124 	ld	a, (0x03, sp)
      00965C A1 03            [ 1] 1125 	cp	a, #0x03
      00965E 27 27            [ 1] 1126 	jreq	00104$
      009660 7B 03            [ 1] 1127 	ld	a, (0x03, sp)
      009662 A1 04            [ 1] 1128 	cp	a, #0x04
      009664 27 21            [ 1] 1129 	jreq	00104$
      009666 7B 03            [ 1] 1130 	ld	a, (0x03, sp)
      009668 A1 05            [ 1] 1131 	cp	a, #0x05
      00966A 27 1B            [ 1] 1132 	jreq	00104$
      00966C 7B 03            [ 1] 1133 	ld	a, (0x03, sp)
      00966E A1 06            [ 1] 1134 	cp	a, #0x06
      009670 27 15            [ 1] 1135 	jreq	00104$
      009672 7B 03            [ 1] 1136 	ld	a, (0x03, sp)
      009674 A1 07            [ 1] 1137 	cp	a, #0x07
      009676 27 0F            [ 1] 1138 	jreq	00104$
      009678 4B 5F            [ 1] 1139 	push	#0x5f
      00967A 4B 02            [ 1] 1140 	push	#0x02
      00967C 5F               [ 1] 1141 	clrw	x
      00967D 89               [ 2] 1142 	pushw	x
      00967E 4B 2A            [ 1] 1143 	push	#<(___str_0+0)
      009680 4B 81            [ 1] 1144 	push	#((___str_0+0) >> 8)
      009682 CD 83 84         [ 4] 1145 	call	_assert_failed
      009685 5B 06            [ 2] 1146 	addw	sp, #6
      009687                       1147 00104$:
                                   1148 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      009687 C6 50 CC         [ 1] 1149 	ld	a, 0x50cc
      00968A A4 F8            [ 1] 1150 	and	a, #0xf8
      00968C 1A 03            [ 1] 1151 	or	a, (0x03, sp)
      00968E C7 50 CC         [ 1] 1152 	ld	0x50cc, a
                                   1153 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 611: }
      009691 81               [ 4] 1154 	ret
                                   1155 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                   1156 ;	-----------------------------------------
                                   1157 ;	 function CLK_SYSCLKEmergencyClear
                                   1158 ;	-----------------------------------------
      009692                       1159 _CLK_SYSCLKEmergencyClear:
                                   1160 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      009692 72 11 50 C5      [ 1] 1161 	bres	20677, #0
                                   1162 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 625: }
      009696 81               [ 4] 1163 	ret
                                   1164 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   1165 ;	-----------------------------------------
                                   1166 ;	 function CLK_GetFlagStatus
                                   1167 ;	-----------------------------------------
      009697                       1168 _CLK_GetFlagStatus:
      009697 88               [ 1] 1169 	push	a
                                   1170 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 641: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
      009698 1E 04            [ 2] 1171 	ldw	x, (0x04, sp)
      00969A A3 01 10         [ 2] 1172 	cpw	x, #0x0110
      00969D 27 3B            [ 1] 1173 	jreq	00119$
      00969F A3 01 02         [ 2] 1174 	cpw	x, #0x0102
      0096A2 27 36            [ 1] 1175 	jreq	00119$
      0096A4 A3 02 02         [ 2] 1176 	cpw	x, #0x0202
      0096A7 27 31            [ 1] 1177 	jreq	00119$
      0096A9 A3 03 08         [ 2] 1178 	cpw	x, #0x0308
      0096AC 27 2C            [ 1] 1179 	jreq	00119$
      0096AE A3 03 01         [ 2] 1180 	cpw	x, #0x0301
      0096B1 27 27            [ 1] 1181 	jreq	00119$
      0096B3 A3 04 08         [ 2] 1182 	cpw	x, #0x0408
      0096B6 27 22            [ 1] 1183 	jreq	00119$
      0096B8 A3 04 02         [ 2] 1184 	cpw	x, #0x0402
      0096BB 27 1D            [ 1] 1185 	jreq	00119$
      0096BD A3 05 04         [ 2] 1186 	cpw	x, #0x0504
      0096C0 27 18            [ 1] 1187 	jreq	00119$
      0096C2 A3 05 02         [ 2] 1188 	cpw	x, #0x0502
      0096C5 27 13            [ 1] 1189 	jreq	00119$
      0096C7 89               [ 2] 1190 	pushw	x
      0096C8 4B 81            [ 1] 1191 	push	#0x81
      0096CA 4B 02            [ 1] 1192 	push	#0x02
      0096CC 4B 00            [ 1] 1193 	push	#0x00
      0096CE 4B 00            [ 1] 1194 	push	#0x00
      0096D0 4B 2A            [ 1] 1195 	push	#<(___str_0+0)
      0096D2 4B 81            [ 1] 1196 	push	#((___str_0+0) >> 8)
      0096D4 CD 83 84         [ 4] 1197 	call	_assert_failed
      0096D7 5B 06            [ 2] 1198 	addw	sp, #6
      0096D9 85               [ 2] 1199 	popw	x
      0096DA                       1200 00119$:
                                   1201 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      0096DA 4F               [ 1] 1202 	clr	a
                                   1203 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      0096DB 97               [ 1] 1204 	ld	xl, a
      0096DC A3 01 00         [ 2] 1205 	cpw	x, #0x0100
      0096DF 26 05            [ 1] 1206 	jrne	00111$
                                   1207 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      0096E1 C6 50 C0         [ 1] 1208 	ld	a, 0x50c0
      0096E4 20 21            [ 2] 1209 	jra	00112$
      0096E6                       1210 00111$:
                                   1211 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      0096E6 A3 02 00         [ 2] 1212 	cpw	x, #0x0200
      0096E9 26 05            [ 1] 1213 	jrne	00108$
                                   1214 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      0096EB C6 50 C1         [ 1] 1215 	ld	a, 0x50c1
      0096EE 20 17            [ 2] 1216 	jra	00112$
      0096F0                       1217 00108$:
                                   1218 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      0096F0 A3 03 00         [ 2] 1219 	cpw	x, #0x0300
      0096F3 26 05            [ 1] 1220 	jrne	00105$
                                   1221 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      0096F5 C6 50 C5         [ 1] 1222 	ld	a, 0x50c5
      0096F8 20 0D            [ 2] 1223 	jra	00112$
      0096FA                       1224 00105$:
                                   1225 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      0096FA A3 04 00         [ 2] 1226 	cpw	x, #0x0400
      0096FD 26 05            [ 1] 1227 	jrne	00102$
                                   1228 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      0096FF C6 50 C8         [ 1] 1229 	ld	a, 0x50c8
      009702 20 03            [ 2] 1230 	jra	00112$
      009704                       1231 00102$:
                                   1232 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      009704 C6 50 C9         [ 1] 1233 	ld	a, 0x50c9
      009707                       1234 00112$:
                                   1235 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      009707 88               [ 1] 1236 	push	a
      009708 7B 06            [ 1] 1237 	ld	a, (0x06, sp)
      00970A 6B 02            [ 1] 1238 	ld	(0x02, sp), a
      00970C 84               [ 1] 1239 	pop	a
      00970D 14 01            [ 1] 1240 	and	a, (0x01, sp)
      00970F 27 03            [ 1] 1241 	jreq	00114$
                                   1242 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 670: bitstatus = SET;
      009711 A6 01            [ 1] 1243 	ld	a, #0x01
                                   1244 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 674: bitstatus = RESET;
      009713 21                    1245 	.byte 0x21
      009714                       1246 00114$:
      009714 4F               [ 1] 1247 	clr	a
      009715                       1248 00115$:
                                   1249 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                   1250 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 679: }
      009715 5B 01            [ 2] 1251 	addw	sp, #1
      009717 81               [ 4] 1252 	ret
                                   1253 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1254 ;	-----------------------------------------
                                   1255 ;	 function CLK_GetITStatus
                                   1256 ;	-----------------------------------------
      009718                       1257 _CLK_GetITStatus:
                                   1258 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 692: assert_param(IS_CLK_IT_OK(CLK_IT));
      009718 7B 03            [ 1] 1259 	ld	a, (0x03, sp)
      00971A A0 1C            [ 1] 1260 	sub	a, #0x1c
      00971C 26 02            [ 1] 1261 	jrne	00143$
      00971E 4C               [ 1] 1262 	inc	a
      00971F 21                    1263 	.byte 0x21
      009720                       1264 00143$:
      009720 4F               [ 1] 1265 	clr	a
      009721                       1266 00144$:
      009721 88               [ 1] 1267 	push	a
      009722 7B 04            [ 1] 1268 	ld	a, (0x04, sp)
      009724 A1 0C            [ 1] 1269 	cp	a, #0x0c
      009726 84               [ 1] 1270 	pop	a
      009727 27 14            [ 1] 1271 	jreq	00113$
      009729 4D               [ 1] 1272 	tnz	a
      00972A 26 11            [ 1] 1273 	jrne	00113$
      00972C 88               [ 1] 1274 	push	a
      00972D 4B B4            [ 1] 1275 	push	#0xb4
      00972F 4B 02            [ 1] 1276 	push	#0x02
      009731 5F               [ 1] 1277 	clrw	x
      009732 89               [ 2] 1278 	pushw	x
      009733 4B 2A            [ 1] 1279 	push	#<(___str_0+0)
      009735 4B 81            [ 1] 1280 	push	#((___str_0+0) >> 8)
      009737 CD 83 84         [ 4] 1281 	call	_assert_failed
      00973A 5B 06            [ 2] 1282 	addw	sp, #6
      00973C 84               [ 1] 1283 	pop	a
      00973D                       1284 00113$:
                                   1285 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      00973D 4D               [ 1] 1286 	tnz	a
      00973E 27 0D            [ 1] 1287 	jreq	00108$
                                   1288 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      009740 C6 50 C5         [ 1] 1289 	ld	a, 0x50c5
      009743 14 03            [ 1] 1290 	and	a, (0x03, sp)
                                   1291 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 699: bitstatus = SET;
      009745 A0 0C            [ 1] 1292 	sub	a, #0x0c
      009747 26 02            [ 1] 1293 	jrne	00102$
      009749 4C               [ 1] 1294 	inc	a
      00974A 81               [ 4] 1295 	ret
      00974B                       1296 00102$:
                                   1297 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 703: bitstatus = RESET;
      00974B 4F               [ 1] 1298 	clr	a
      00974C 81               [ 4] 1299 	ret
      00974D                       1300 00108$:
                                   1301 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      00974D C6 50 C8         [ 1] 1302 	ld	a, 0x50c8
      009750 14 03            [ 1] 1303 	and	a, (0x03, sp)
                                   1304 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 711: bitstatus = SET;
      009752 A0 0C            [ 1] 1305 	sub	a, #0x0c
      009754 26 02            [ 1] 1306 	jrne	00105$
      009756 4C               [ 1] 1307 	inc	a
      009757 81               [ 4] 1308 	ret
      009758                       1309 00105$:
                                   1310 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 715: bitstatus = RESET;
      009758 4F               [ 1] 1311 	clr	a
                                   1312 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 720: return bitstatus;
                                   1313 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 721: }
      009759 81               [ 4] 1314 	ret
                                   1315 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1316 ;	-----------------------------------------
                                   1317 ;	 function CLK_ClearITPendingBit
                                   1318 ;	-----------------------------------------
      00975A                       1319 _CLK_ClearITPendingBit:
                                   1320 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 732: assert_param(IS_CLK_IT_OK(CLK_IT));
      00975A 7B 03            [ 1] 1321 	ld	a, (0x03, sp)
      00975C A0 0C            [ 1] 1322 	sub	a, #0x0c
      00975E 26 02            [ 1] 1323 	jrne	00127$
      009760 4C               [ 1] 1324 	inc	a
      009761 21                    1325 	.byte 0x21
      009762                       1326 00127$:
      009762 4F               [ 1] 1327 	clr	a
      009763                       1328 00128$:
      009763 4D               [ 1] 1329 	tnz	a
      009764 26 19            [ 1] 1330 	jrne	00107$
      009766 88               [ 1] 1331 	push	a
      009767 7B 04            [ 1] 1332 	ld	a, (0x04, sp)
      009769 A1 1C            [ 1] 1333 	cp	a, #0x1c
      00976B 84               [ 1] 1334 	pop	a
      00976C 27 11            [ 1] 1335 	jreq	00107$
      00976E 88               [ 1] 1336 	push	a
      00976F 4B DC            [ 1] 1337 	push	#0xdc
      009771 4B 02            [ 1] 1338 	push	#0x02
      009773 5F               [ 1] 1339 	clrw	x
      009774 89               [ 2] 1340 	pushw	x
      009775 4B 2A            [ 1] 1341 	push	#<(___str_0+0)
      009777 4B 81            [ 1] 1342 	push	#((___str_0+0) >> 8)
      009779 CD 83 84         [ 4] 1343 	call	_assert_failed
      00977C 5B 06            [ 2] 1344 	addw	sp, #6
      00977E 84               [ 1] 1345 	pop	a
      00977F                       1346 00107$:
                                   1347 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      00977F 4D               [ 1] 1348 	tnz	a
      009780 27 05            [ 1] 1349 	jreq	00102$
                                   1350 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      009782 72 17 50 C8      [ 1] 1351 	bres	20680, #3
      009786 81               [ 4] 1352 	ret
      009787                       1353 00102$:
                                   1354 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      009787 72 17 50 C5      [ 1] 1355 	bres	20677, #3
                                   1356 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_clk.c: 745: }
      00978B 81               [ 4] 1357 	ret
                                   1358 	.area CODE
                                   1359 	.area CONST
      00811E                       1360 _HSIDivFactor:
      00811E 01                    1361 	.db #0x01	; 1
      00811F 02                    1362 	.db #0x02	; 2
      008120 04                    1363 	.db #0x04	; 4
      008121 08                    1364 	.db #0x08	; 8
      008122                       1365 _CLKPrescTable:
      008122 01                    1366 	.db #0x01	; 1
      008123 02                    1367 	.db #0x02	; 2
      008124 04                    1368 	.db #0x04	; 4
      008125 08                    1369 	.db #0x08	; 8
      008126 0A                    1370 	.db #0x0a	; 10
      008127 10                    1371 	.db #0x10	; 16
      008128 14                    1372 	.db #0x14	; 20
      008129 28                    1373 	.db #0x28	; 40
                                   1374 	.area CONST
      00812A                       1375 ___str_0:
      00812A 2E 2E 2F 2E 2E 2F 2F  1376 	.ascii "../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_cl"
             53 74 64 50 65 72 69
             70 68 5F 44 72 69 76
             65 72 2F 53 54 4D 38
             53 5F 53 74 64 50 65
             72 69 70 68 5F 44 72
             69 76 65 72 2F 2F 73
             72 63 2F 73 74 6D 38
             73 5F 63 6C
      008166 6B 2E 63              1377 	.ascii "k.c"
      008169 00                    1378 	.db 0x00
                                   1379 	.area CODE
                                   1380 	.area INITIALIZER
                                   1381 	.area CABS (ABS)
