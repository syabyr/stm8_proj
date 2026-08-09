                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_uart2
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _CLK_GetClockFreq
                                     13 	.globl _UART2_DeInit
                                     14 	.globl _UART2_Init
                                     15 	.globl _UART2_Cmd
                                     16 	.globl _UART2_ITConfig
                                     17 	.globl _UART2_IrDAConfig
                                     18 	.globl _UART2_IrDACmd
                                     19 	.globl _UART2_LINBreakDetectionConfig
                                     20 	.globl _UART2_LINConfig
                                     21 	.globl _UART2_LINCmd
                                     22 	.globl _UART2_SmartCardCmd
                                     23 	.globl _UART2_SmartCardNACKCmd
                                     24 	.globl _UART2_WakeUpConfig
                                     25 	.globl _UART2_ReceiverWakeUpCmd
                                     26 	.globl _UART2_ReceiveData8
                                     27 	.globl _UART2_ReceiveData9
                                     28 	.globl _UART2_SendData8
                                     29 	.globl _UART2_SendData9
                                     30 	.globl _UART2_SendBreak
                                     31 	.globl _UART2_SetAddress
                                     32 	.globl _UART2_SetGuardTime
                                     33 	.globl _UART2_SetPrescaler
                                     34 	.globl _UART2_GetFlagStatus
                                     35 	.globl _UART2_ClearFlag
                                     36 	.globl _UART2_GetITStatus
                                     37 	.globl _UART2_ClearITPendingBit
                                     38 ;--------------------------------------------------------
                                     39 ; ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DATA
                                     42 ;--------------------------------------------------------
                                     43 ; ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area INITIALIZED
                                     46 ;--------------------------------------------------------
                                     47 ; absolute external ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area DABS (ABS)
                                     50 
                                     51 ; default segment ordering for linker
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area CONST
                                     56 	.area INITIALIZER
                                     57 	.area CODE
                                     58 
                                     59 ;--------------------------------------------------------
                                     60 ; global & static initialisations
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area GSINIT
                                     64 	.area GSFINAL
                                     65 	.area GSINIT
                                     66 ;--------------------------------------------------------
                                     67 ; Home
                                     68 ;--------------------------------------------------------
                                     69 	.area HOME
                                     70 	.area HOME
                                     71 ;--------------------------------------------------------
                                     72 ; code
                                     73 ;--------------------------------------------------------
                                     74 	.area CODE
                                     75 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 53: void UART2_DeInit(void)
                                     76 ;	-----------------------------------------
                                     77 ;	 function UART2_DeInit
                                     78 ;	-----------------------------------------
      00A87F                         79 _UART2_DeInit:
                                     80 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 57: (void) UART2->SR;
      00A87F C6 52 40         [ 1]   81 	ld	a, 0x5240
                                     82 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 58: (void)UART2->DR;
      00A882 C6 52 41         [ 1]   83 	ld	a, 0x5241
                                     84 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
      00A885 35 00 52 43      [ 1]   85 	mov	0x5243+0, #0x00
                                     86 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
      00A889 35 00 52 42      [ 1]   87 	mov	0x5242+0, #0x00
                                     88 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
      00A88D 35 00 52 44      [ 1]   89 	mov	0x5244+0, #0x00
                                     90 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
      00A891 35 00 52 45      [ 1]   91 	mov	0x5245+0, #0x00
                                     92 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
      00A895 35 00 52 46      [ 1]   93 	mov	0x5246+0, #0x00
                                     94 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
      00A899 35 00 52 47      [ 1]   95 	mov	0x5247+0, #0x00
                                     96 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
      00A89D 35 00 52 48      [ 1]   97 	mov	0x5248+0, #0x00
                                     98 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
      00A8A1 35 00 52 49      [ 1]   99 	mov	0x5249+0, #0x00
                                    100 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 69: }
      00A8A5 81               [ 4]  101 	ret
                                    102 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
                                    103 ;	-----------------------------------------
                                    104 ;	 function UART2_Init
                                    105 ;	-----------------------------------------
      00A8A6                        106 _UART2_Init:
      00A8A6 52 0C            [ 2]  107 	sub	sp, #12
                                    108 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 91: assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
      00A8A8 AE 89 68         [ 2]  109 	ldw	x, #0x8968
      00A8AB 13 11            [ 2]  110 	cpw	x, (0x11, sp)
      00A8AD A6 09            [ 1]  111 	ld	a, #0x09
      00A8AF 12 10            [ 1]  112 	sbc	a, (0x10, sp)
      00A8B1 4F               [ 1]  113 	clr	a
      00A8B2 12 0F            [ 1]  114 	sbc	a, (0x0f, sp)
      00A8B4 24 0F            [ 1]  115 	jrnc	00113$
      00A8B6 4B 5B            [ 1]  116 	push	#0x5b
      00A8B8 5F               [ 1]  117 	clrw	x
      00A8B9 89               [ 2]  118 	pushw	x
      00A8BA 4B 00            [ 1]  119 	push	#0x00
      00A8BC 4B EE            [ 1]  120 	push	#<(___str_0+0)
      00A8BE 4B 82            [ 1]  121 	push	#((___str_0+0) >> 8)
      00A8C0 CD 85 5C         [ 4]  122 	call	_assert_failed
      00A8C3 5B 06            [ 2]  123 	addw	sp, #6
      00A8C5                        124 00113$:
                                    125 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 92: assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
      00A8C5 0D 13            [ 1]  126 	tnz	(0x13, sp)
      00A8C7 27 15            [ 1]  127 	jreq	00115$
      00A8C9 7B 13            [ 1]  128 	ld	a, (0x13, sp)
      00A8CB A1 10            [ 1]  129 	cp	a, #0x10
      00A8CD 27 0F            [ 1]  130 	jreq	00115$
      00A8CF 4B 5C            [ 1]  131 	push	#0x5c
      00A8D1 5F               [ 1]  132 	clrw	x
      00A8D2 89               [ 2]  133 	pushw	x
      00A8D3 4B 00            [ 1]  134 	push	#0x00
      00A8D5 4B EE            [ 1]  135 	push	#<(___str_0+0)
      00A8D7 4B 82            [ 1]  136 	push	#((___str_0+0) >> 8)
      00A8D9 CD 85 5C         [ 4]  137 	call	_assert_failed
      00A8DC 5B 06            [ 2]  138 	addw	sp, #6
      00A8DE                        139 00115$:
                                    140 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 93: assert_param(IS_UART2_STOPBITS_OK(StopBits));
      00A8DE 0D 14            [ 1]  141 	tnz	(0x14, sp)
      00A8E0 27 21            [ 1]  142 	jreq	00120$
      00A8E2 7B 14            [ 1]  143 	ld	a, (0x14, sp)
      00A8E4 A1 10            [ 1]  144 	cp	a, #0x10
      00A8E6 27 1B            [ 1]  145 	jreq	00120$
      00A8E8 7B 14            [ 1]  146 	ld	a, (0x14, sp)
      00A8EA A1 20            [ 1]  147 	cp	a, #0x20
      00A8EC 27 15            [ 1]  148 	jreq	00120$
      00A8EE 7B 14            [ 1]  149 	ld	a, (0x14, sp)
      00A8F0 A1 30            [ 1]  150 	cp	a, #0x30
      00A8F2 27 0F            [ 1]  151 	jreq	00120$
      00A8F4 4B 5D            [ 1]  152 	push	#0x5d
      00A8F6 5F               [ 1]  153 	clrw	x
      00A8F7 89               [ 2]  154 	pushw	x
      00A8F8 4B 00            [ 1]  155 	push	#0x00
      00A8FA 4B EE            [ 1]  156 	push	#<(___str_0+0)
      00A8FC 4B 82            [ 1]  157 	push	#((___str_0+0) >> 8)
      00A8FE CD 85 5C         [ 4]  158 	call	_assert_failed
      00A901 5B 06            [ 2]  159 	addw	sp, #6
      00A903                        160 00120$:
                                    161 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 94: assert_param(IS_UART2_PARITY_OK(Parity));
      00A903 0D 15            [ 1]  162 	tnz	(0x15, sp)
      00A905 27 1B            [ 1]  163 	jreq	00131$
      00A907 7B 15            [ 1]  164 	ld	a, (0x15, sp)
      00A909 A1 04            [ 1]  165 	cp	a, #0x04
      00A90B 27 15            [ 1]  166 	jreq	00131$
      00A90D 7B 15            [ 1]  167 	ld	a, (0x15, sp)
      00A90F A1 06            [ 1]  168 	cp	a, #0x06
      00A911 27 0F            [ 1]  169 	jreq	00131$
      00A913 4B 5E            [ 1]  170 	push	#0x5e
      00A915 5F               [ 1]  171 	clrw	x
      00A916 89               [ 2]  172 	pushw	x
      00A917 4B 00            [ 1]  173 	push	#0x00
      00A919 4B EE            [ 1]  174 	push	#<(___str_0+0)
      00A91B 4B 82            [ 1]  175 	push	#((___str_0+0) >> 8)
      00A91D CD 85 5C         [ 4]  176 	call	_assert_failed
      00A920 5B 06            [ 2]  177 	addw	sp, #6
      00A922                        178 00131$:
                                    179 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 95: assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
      00A922 7B 17            [ 1]  180 	ld	a, (0x17, sp)
      00A924 A1 08            [ 1]  181 	cp	a, #0x08
      00A926 27 42            [ 1]  182 	jreq	00139$
      00A928 7B 17            [ 1]  183 	ld	a, (0x17, sp)
      00A92A A1 40            [ 1]  184 	cp	a, #0x40
      00A92C 27 3C            [ 1]  185 	jreq	00139$
      00A92E 7B 17            [ 1]  186 	ld	a, (0x17, sp)
      00A930 A1 04            [ 1]  187 	cp	a, #0x04
      00A932 27 36            [ 1]  188 	jreq	00139$
      00A934 7B 17            [ 1]  189 	ld	a, (0x17, sp)
      00A936 A1 80            [ 1]  190 	cp	a, #0x80
      00A938 27 30            [ 1]  191 	jreq	00139$
      00A93A 7B 17            [ 1]  192 	ld	a, (0x17, sp)
      00A93C A0 0C            [ 1]  193 	sub	a, #0x0c
      00A93E 26 02            [ 1]  194 	jrne	00339$
      00A940 4C               [ 1]  195 	inc	a
      00A941 21                     196 	.byte 0x21
      00A942                        197 00339$:
      00A942 4F               [ 1]  198 	clr	a
      00A943                        199 00340$:
      00A943 4D               [ 1]  200 	tnz	a
      00A944 26 24            [ 1]  201 	jrne	00139$
      00A946 4D               [ 1]  202 	tnz	a
      00A947 26 21            [ 1]  203 	jrne	00139$
      00A949 7B 17            [ 1]  204 	ld	a, (0x17, sp)
      00A94B A1 44            [ 1]  205 	cp	a, #0x44
      00A94D 27 1B            [ 1]  206 	jreq	00139$
      00A94F 7B 17            [ 1]  207 	ld	a, (0x17, sp)
      00A951 A1 C0            [ 1]  208 	cp	a, #0xc0
      00A953 27 15            [ 1]  209 	jreq	00139$
      00A955 7B 17            [ 1]  210 	ld	a, (0x17, sp)
      00A957 A1 88            [ 1]  211 	cp	a, #0x88
      00A959 27 0F            [ 1]  212 	jreq	00139$
      00A95B 4B 5F            [ 1]  213 	push	#0x5f
      00A95D 5F               [ 1]  214 	clrw	x
      00A95E 89               [ 2]  215 	pushw	x
      00A95F 4B 00            [ 1]  216 	push	#0x00
      00A961 4B EE            [ 1]  217 	push	#<(___str_0+0)
      00A963 4B 82            [ 1]  218 	push	#((___str_0+0) >> 8)
      00A965 CD 85 5C         [ 4]  219 	call	_assert_failed
      00A968 5B 06            [ 2]  220 	addw	sp, #6
      00A96A                        221 00139$:
                                    222 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 96: assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
      00A96A 7B 16            [ 1]  223 	ld	a, (0x16, sp)
      00A96C A4 88            [ 1]  224 	and	a, #0x88
      00A96E A1 88            [ 1]  225 	cp	a, #0x88
      00A970 27 18            [ 1]  226 	jreq	00167$
      00A972 7B 16            [ 1]  227 	ld	a, (0x16, sp)
      00A974 A4 44            [ 1]  228 	and	a, #0x44
      00A976 A1 44            [ 1]  229 	cp	a, #0x44
      00A978 27 10            [ 1]  230 	jreq	00167$
      00A97A 7B 16            [ 1]  231 	ld	a, (0x16, sp)
      00A97C A4 22            [ 1]  232 	and	a, #0x22
      00A97E A1 22            [ 1]  233 	cp	a, #0x22
      00A980 27 08            [ 1]  234 	jreq	00167$
      00A982 7B 16            [ 1]  235 	ld	a, (0x16, sp)
      00A984 A4 11            [ 1]  236 	and	a, #0x11
      00A986 A1 11            [ 1]  237 	cp	a, #0x11
      00A988 26 0F            [ 1]  238 	jrne	00165$
      00A98A                        239 00167$:
      00A98A 4B 60            [ 1]  240 	push	#0x60
      00A98C 5F               [ 1]  241 	clrw	x
      00A98D 89               [ 2]  242 	pushw	x
      00A98E 4B 00            [ 1]  243 	push	#0x00
      00A990 4B EE            [ 1]  244 	push	#<(___str_0+0)
      00A992 4B 82            [ 1]  245 	push	#((___str_0+0) >> 8)
      00A994 CD 85 5C         [ 4]  246 	call	_assert_failed
      00A997 5B 06            [ 2]  247 	addw	sp, #6
      00A999                        248 00165$:
                                    249 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
      00A999 72 19 52 44      [ 1]  250 	bres	21060, #4
                                    251 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
      00A99D C6 52 44         [ 1]  252 	ld	a, 0x5244
      00A9A0 1A 13            [ 1]  253 	or	a, (0x13, sp)
      00A9A2 C7 52 44         [ 1]  254 	ld	0x5244, a
                                    255 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      00A9A5 C6 52 46         [ 1]  256 	ld	a, 0x5246
      00A9A8 A4 CF            [ 1]  257 	and	a, #0xcf
      00A9AA C7 52 46         [ 1]  258 	ld	0x5246, a
                                    259 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
      00A9AD C6 52 46         [ 1]  260 	ld	a, 0x5246
      00A9B0 1A 14            [ 1]  261 	or	a, (0x14, sp)
      00A9B2 C7 52 46         [ 1]  262 	ld	0x5246, a
                                    263 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
      00A9B5 C6 52 44         [ 1]  264 	ld	a, 0x5244
      00A9B8 A4 F9            [ 1]  265 	and	a, #0xf9
      00A9BA C7 52 44         [ 1]  266 	ld	0x5244, a
                                    267 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
      00A9BD C6 52 44         [ 1]  268 	ld	a, 0x5244
      00A9C0 1A 15            [ 1]  269 	or	a, (0x15, sp)
      00A9C2 C7 52 44         [ 1]  270 	ld	0x5244, a
                                    271 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
      00A9C5 C6 52 42         [ 1]  272 	ld	a, 0x5242
      00A9C8 35 00 52 42      [ 1]  273 	mov	0x5242+0, #0x00
                                    274 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
      00A9CC C6 52 43         [ 1]  275 	ld	a, 0x5243
      00A9CF A4 0F            [ 1]  276 	and	a, #0x0f
      00A9D1 C7 52 43         [ 1]  277 	ld	0x5243, a
                                    278 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
      00A9D4 C6 52 43         [ 1]  279 	ld	a, 0x5243
      00A9D7 A4 F0            [ 1]  280 	and	a, #0xf0
      00A9D9 C7 52 43         [ 1]  281 	ld	0x5243, a
                                    282 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      00A9DC CD B5 E3         [ 4]  283 	call	_CLK_GetClockFreq
      00A9DF 1F 0B            [ 2]  284 	ldw	(0x0b, sp), x
      00A9E1 1E 0F            [ 2]  285 	ldw	x, (0x0f, sp)
      00A9E3 1F 05            [ 2]  286 	ldw	(0x05, sp), x
      00A9E5 1E 11            [ 2]  287 	ldw	x, (0x11, sp)
      00A9E7 A6 04            [ 1]  288 	ld	a, #0x04
      00A9E9                        289 00364$:
      00A9E9 58               [ 2]  290 	sllw	x
      00A9EA 09 06            [ 1]  291 	rlc	(0x06, sp)
      00A9EC 09 05            [ 1]  292 	rlc	(0x05, sp)
      00A9EE 4A               [ 1]  293 	dec	a
      00A9EF 26 F8            [ 1]  294 	jrne	00364$
      00A9F1 1F 07            [ 2]  295 	ldw	(0x07, sp), x
      00A9F3 89               [ 2]  296 	pushw	x
      00A9F4 1E 07            [ 2]  297 	ldw	x, (0x07, sp)
      00A9F6 89               [ 2]  298 	pushw	x
      00A9F7 1E 0F            [ 2]  299 	ldw	x, (0x0f, sp)
      00A9F9 89               [ 2]  300 	pushw	x
      00A9FA 90 89            [ 2]  301 	pushw	y
      00A9FC CD B7 72         [ 4]  302 	call	__divulong
      00A9FF 5B 08            [ 2]  303 	addw	sp, #8
      00AA01 1F 03            [ 2]  304 	ldw	(0x03, sp), x
      00AA03 17 01            [ 2]  305 	ldw	(0x01, sp), y
                                    306 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      00AA05 CD B5 E3         [ 4]  307 	call	_CLK_GetClockFreq
      00AA08 89               [ 2]  308 	pushw	x
      00AA09 90 89            [ 2]  309 	pushw	y
      00AA0B 4B 64            [ 1]  310 	push	#0x64
      00AA0D 5F               [ 1]  311 	clrw	x
      00AA0E 89               [ 2]  312 	pushw	x
      00AA0F 4B 00            [ 1]  313 	push	#0x00
      00AA11 CD B8 21         [ 4]  314 	call	__mullong
      00AA14 5B 08            [ 2]  315 	addw	sp, #8
      00AA16 1F 0B            [ 2]  316 	ldw	(0x0b, sp), x
      00AA18 1E 07            [ 2]  317 	ldw	x, (0x07, sp)
      00AA1A 89               [ 2]  318 	pushw	x
      00AA1B 1E 07            [ 2]  319 	ldw	x, (0x07, sp)
      00AA1D 89               [ 2]  320 	pushw	x
      00AA1E 1E 0F            [ 2]  321 	ldw	x, (0x0f, sp)
      00AA20 89               [ 2]  322 	pushw	x
      00AA21 90 89            [ 2]  323 	pushw	y
      00AA23 CD B7 72         [ 4]  324 	call	__divulong
      00AA26 5B 08            [ 2]  325 	addw	sp, #8
      00AA28 90 9E            [ 1]  326 	ld	a, yh
      00AA2A 1F 07            [ 2]  327 	ldw	(0x07, sp), x
      00AA2C 6B 05            [ 1]  328 	ld	(0x05, sp), a
      00AA2E 90 9F            [ 1]  329 	ld	a, yl
                                    330 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
      00AA30 88               [ 1]  331 	push	a
      00AA31 1E 04            [ 2]  332 	ldw	x, (0x04, sp)
      00AA33 89               [ 2]  333 	pushw	x
      00AA34 1E 04            [ 2]  334 	ldw	x, (0x04, sp)
      00AA36 89               [ 2]  335 	pushw	x
      00AA37 4B 64            [ 1]  336 	push	#0x64
      00AA39 5F               [ 1]  337 	clrw	x
      00AA3A 89               [ 2]  338 	pushw	x
      00AA3B 4B 00            [ 1]  339 	push	#0x00
      00AA3D CD B8 21         [ 4]  340 	call	__mullong
      00AA40 5B 08            [ 2]  341 	addw	sp, #8
      00AA42 1F 0C            [ 2]  342 	ldw	(0x0c, sp), x
      00AA44 17 0A            [ 2]  343 	ldw	(0x0a, sp), y
      00AA46 84               [ 1]  344 	pop	a
      00AA47 16 07            [ 2]  345 	ldw	y, (0x07, sp)
      00AA49 72 F2 0B         [ 2]  346 	subw	y, (0x0b, sp)
      00AA4C 12 0A            [ 1]  347 	sbc	a, (0x0a, sp)
      00AA4E 97               [ 1]  348 	ld	xl, a
      00AA4F 7B 05            [ 1]  349 	ld	a, (0x05, sp)
      00AA51 12 09            [ 1]  350 	sbc	a, (0x09, sp)
      00AA53 95               [ 1]  351 	ld	xh, a
      00AA54 A6 04            [ 1]  352 	ld	a, #0x04
      00AA56                        353 00366$:
      00AA56 90 58            [ 2]  354 	sllw	y
      00AA58 59               [ 2]  355 	rlcw	x
      00AA59 4A               [ 1]  356 	dec	a
      00AA5A 26 FA            [ 1]  357 	jrne	00366$
      00AA5C 4B 64            [ 1]  358 	push	#0x64
      00AA5E 4B 00            [ 1]  359 	push	#0x00
      00AA60 4B 00            [ 1]  360 	push	#0x00
      00AA62 4B 00            [ 1]  361 	push	#0x00
      00AA64 90 89            [ 2]  362 	pushw	y
      00AA66 89               [ 2]  363 	pushw	x
      00AA67 CD B7 72         [ 4]  364 	call	__divulong
      00AA6A 5B 08            [ 2]  365 	addw	sp, #8
      00AA6C 9F               [ 1]  366 	ld	a, xl
      00AA6D A4 0F            [ 1]  367 	and	a, #0x0f
      00AA6F 6B 0C            [ 1]  368 	ld	(0x0c, sp), a
                                    369 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
      00AA71 1E 03            [ 2]  370 	ldw	x, (0x03, sp)
      00AA73 A6 10            [ 1]  371 	ld	a, #0x10
      00AA75 62               [ 2]  372 	div	x, a
      00AA76 9F               [ 1]  373 	ld	a, xl
      00AA77 A4 F0            [ 1]  374 	and	a, #0xf0
                                    375 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
      00AA79 1A 0C            [ 1]  376 	or	a, (0x0c, sp)
      00AA7B C7 52 43         [ 1]  377 	ld	0x5243, a
                                    378 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
      00AA7E 7B 04            [ 1]  379 	ld	a, (0x04, sp)
      00AA80 C7 52 42         [ 1]  380 	ld	0x5242, a
                                    381 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      00AA83 C6 52 45         [ 1]  382 	ld	a, 0x5245
      00AA86 A4 F3            [ 1]  383 	and	a, #0xf3
      00AA88 C7 52 45         [ 1]  384 	ld	0x5245, a
                                    385 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
      00AA8B C6 52 46         [ 1]  386 	ld	a, 0x5246
      00AA8E A4 F8            [ 1]  387 	and	a, #0xf8
      00AA90 C7 52 46         [ 1]  388 	ld	0x5246, a
                                    389 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
      00AA93 C6 52 46         [ 1]  390 	ld	a, 0x5246
      00AA96 6B 0C            [ 1]  391 	ld	(0x0c, sp), a
      00AA98 7B 16            [ 1]  392 	ld	a, (0x16, sp)
      00AA9A A4 07            [ 1]  393 	and	a, #0x07
      00AA9C 1A 0C            [ 1]  394 	or	a, (0x0c, sp)
      00AA9E C7 52 46         [ 1]  395 	ld	0x5246, a
                                    396 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      00AAA1 C6 52 45         [ 1]  397 	ld	a, 0x5245
                                    398 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
      00AAA4 88               [ 1]  399 	push	a
      00AAA5 7B 18            [ 1]  400 	ld	a, (0x18, sp)
      00AAA7 A5 04            [ 1]  401 	bcp	a, #0x04
      00AAA9 84               [ 1]  402 	pop	a
      00AAAA 27 07            [ 1]  403 	jreq	00102$
                                    404 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
      00AAAC AA 08            [ 1]  405 	or	a, #0x08
      00AAAE C7 52 45         [ 1]  406 	ld	0x5245, a
      00AAB1 20 05            [ 2]  407 	jra	00103$
      00AAB3                        408 00102$:
                                    409 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
      00AAB3 A4 F7            [ 1]  410 	and	a, #0xf7
      00AAB5 C7 52 45         [ 1]  411 	ld	0x5245, a
      00AAB8                        412 00103$:
                                    413 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      00AAB8 C6 52 45         [ 1]  414 	ld	a, 0x5245
                                    415 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
      00AABB 88               [ 1]  416 	push	a
      00AABC 7B 18            [ 1]  417 	ld	a, (0x18, sp)
      00AABE A5 08            [ 1]  418 	bcp	a, #0x08
      00AAC0 84               [ 1]  419 	pop	a
      00AAC1 27 07            [ 1]  420 	jreq	00105$
                                    421 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
      00AAC3 AA 04            [ 1]  422 	or	a, #0x04
      00AAC5 C7 52 45         [ 1]  423 	ld	0x5245, a
      00AAC8 20 05            [ 2]  424 	jra	00106$
      00AACA                        425 00105$:
                                    426 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
      00AACA A4 FB            [ 1]  427 	and	a, #0xfb
      00AACC C7 52 45         [ 1]  428 	ld	0x5245, a
      00AACF                        429 00106$:
                                    430 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      00AACF C6 52 46         [ 1]  431 	ld	a, 0x5246
                                    432 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
      00AAD2 0D 16            [ 1]  433 	tnz	(0x16, sp)
      00AAD4 2A 07            [ 1]  434 	jrpl	00108$
                                    435 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
      00AAD6 A4 F7            [ 1]  436 	and	a, #0xf7
      00AAD8 C7 52 46         [ 1]  437 	ld	0x5246, a
      00AADB 20 0D            [ 2]  438 	jra	00110$
      00AADD                        439 00108$:
                                    440 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
      00AADD 88               [ 1]  441 	push	a
      00AADE 7B 17            [ 1]  442 	ld	a, (0x17, sp)
      00AAE0 A4 08            [ 1]  443 	and	a, #0x08
      00AAE2 6B 0D            [ 1]  444 	ld	(0x0d, sp), a
      00AAE4 84               [ 1]  445 	pop	a
      00AAE5 1A 0C            [ 1]  446 	or	a, (0x0c, sp)
      00AAE7 C7 52 46         [ 1]  447 	ld	0x5246, a
      00AAEA                        448 00110$:
                                    449 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 173: }
      00AAEA 5B 0C            [ 2]  450 	addw	sp, #12
      00AAEC 81               [ 4]  451 	ret
                                    452 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
                                    453 ;	-----------------------------------------
                                    454 ;	 function UART2_Cmd
                                    455 ;	-----------------------------------------
      00AAED                        456 _UART2_Cmd:
                                    457 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      00AAED C6 52 44         [ 1]  458 	ld	a, 0x5244
                                    459 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 183: if (NewState != DISABLE)
      00AAF0 0D 03            [ 1]  460 	tnz	(0x03, sp)
      00AAF2 27 06            [ 1]  461 	jreq	00102$
                                    462 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      00AAF4 A4 DF            [ 1]  463 	and	a, #0xdf
      00AAF6 C7 52 44         [ 1]  464 	ld	0x5244, a
      00AAF9 81               [ 4]  465 	ret
      00AAFA                        466 00102$:
                                    467 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
      00AAFA AA 20            [ 1]  468 	or	a, #0x20
      00AAFC C7 52 44         [ 1]  469 	ld	0x5244, a
                                    470 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 193: }
      00AAFF 81               [ 4]  471 	ret
                                    472 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
                                    473 ;	-----------------------------------------
                                    474 ;	 function UART2_ITConfig
                                    475 ;	-----------------------------------------
      00AB00                        476 _UART2_ITConfig:
      00AB00 52 03            [ 2]  477 	sub	sp, #3
                                    478 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 215: assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
      00AB02 1E 06            [ 2]  479 	ldw	x, (0x06, sp)
      00AB04 A3 01 00         [ 2]  480 	cpw	x, #0x0100
      00AB07 27 31            [ 1]  481 	jreq	00125$
      00AB09 A3 02 77         [ 2]  482 	cpw	x, #0x0277
      00AB0C 27 2C            [ 1]  483 	jreq	00125$
      00AB0E A3 02 66         [ 2]  484 	cpw	x, #0x0266
      00AB11 27 27            [ 1]  485 	jreq	00125$
      00AB13 A3 02 05         [ 2]  486 	cpw	x, #0x0205
      00AB16 27 22            [ 1]  487 	jreq	00125$
      00AB18 A3 02 44         [ 2]  488 	cpw	x, #0x0244
      00AB1B 27 1D            [ 1]  489 	jreq	00125$
      00AB1D A3 04 12         [ 2]  490 	cpw	x, #0x0412
      00AB20 27 18            [ 1]  491 	jreq	00125$
      00AB22 A3 03 46         [ 2]  492 	cpw	x, #0x0346
      00AB25 27 13            [ 1]  493 	jreq	00125$
      00AB27 89               [ 2]  494 	pushw	x
      00AB28 4B D7            [ 1]  495 	push	#0xd7
      00AB2A 4B 00            [ 1]  496 	push	#0x00
      00AB2C 4B 00            [ 1]  497 	push	#0x00
      00AB2E 4B 00            [ 1]  498 	push	#0x00
      00AB30 4B EE            [ 1]  499 	push	#<(___str_0+0)
      00AB32 4B 82            [ 1]  500 	push	#((___str_0+0) >> 8)
      00AB34 CD 85 5C         [ 4]  501 	call	_assert_failed
      00AB37 5B 06            [ 2]  502 	addw	sp, #6
      00AB39 85               [ 2]  503 	popw	x
      00AB3A                        504 00125$:
                                    505 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00AB3A 0D 08            [ 1]  506 	tnz	(0x08, sp)
      00AB3C 27 18            [ 1]  507 	jreq	00145$
      00AB3E 7B 08            [ 1]  508 	ld	a, (0x08, sp)
      00AB40 4A               [ 1]  509 	dec	a
      00AB41 27 13            [ 1]  510 	jreq	00145$
      00AB43 89               [ 2]  511 	pushw	x
      00AB44 4B D8            [ 1]  512 	push	#0xd8
      00AB46 4B 00            [ 1]  513 	push	#0x00
      00AB48 4B 00            [ 1]  514 	push	#0x00
      00AB4A 4B 00            [ 1]  515 	push	#0x00
      00AB4C 4B EE            [ 1]  516 	push	#<(___str_0+0)
      00AB4E 4B 82            [ 1]  517 	push	#((___str_0+0) >> 8)
      00AB50 CD 85 5C         [ 4]  518 	call	_assert_failed
      00AB53 5B 06            [ 2]  519 	addw	sp, #6
      00AB55 85               [ 2]  520 	popw	x
      00AB56                        521 00145$:
                                    522 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
                                    523 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      00AB56 7B 07            [ 1]  524 	ld	a, (0x07, sp)
      00AB58 A4 0F            [ 1]  525 	and	a, #0x0f
      00AB5A 88               [ 1]  526 	push	a
      00AB5B A6 01            [ 1]  527 	ld	a, #0x01
      00AB5D 6B 04            [ 1]  528 	ld	(0x04, sp), a
      00AB5F 84               [ 1]  529 	pop	a
      00AB60 4D               [ 1]  530 	tnz	a
      00AB61 27 05            [ 1]  531 	jreq	00255$
      00AB63                        532 00254$:
      00AB63 08 03            [ 1]  533 	sll	(0x03, sp)
      00AB65 4A               [ 1]  534 	dec	a
      00AB66 26 FB            [ 1]  535 	jrne	00254$
      00AB68                        536 00255$:
                                    537 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      00AB68 9E               [ 1]  538 	ld	a, xh
      00AB69 4A               [ 1]  539 	dec	a
      00AB6A 26 05            [ 1]  540 	jrne	00257$
      00AB6C A6 01            [ 1]  541 	ld	a, #0x01
      00AB6E 6B 01            [ 1]  542 	ld	(0x01, sp), a
      00AB70 C5                     543 	.byte 0xc5
      00AB71                        544 00257$:
      00AB71 0F 01            [ 1]  545 	clr	(0x01, sp)
      00AB73                        546 00258$:
                                    547 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      00AB73 9E               [ 1]  548 	ld	a, xh
      00AB74 A0 02            [ 1]  549 	sub	a, #0x02
      00AB76 26 04            [ 1]  550 	jrne	00260$
      00AB78 4C               [ 1]  551 	inc	a
      00AB79 6B 02            [ 1]  552 	ld	(0x02, sp), a
      00AB7B C5                     553 	.byte 0xc5
      00AB7C                        554 00260$:
      00AB7C 0F 02            [ 1]  555 	clr	(0x02, sp)
      00AB7E                        556 00261$:
                                    557 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      00AB7E 9E               [ 1]  558 	ld	a, xh
      00AB7F A0 03            [ 1]  559 	sub	a, #0x03
      00AB81 26 02            [ 1]  560 	jrne	00263$
      00AB83 4C               [ 1]  561 	inc	a
      00AB84 21                     562 	.byte 0x21
      00AB85                        563 00263$:
      00AB85 4F               [ 1]  564 	clr	a
      00AB86                        565 00264$:
                                    566 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 224: if (NewState != DISABLE)
      00AB86 0D 08            [ 1]  567 	tnz	(0x08, sp)
      00AB88 27 33            [ 1]  568 	jreq	00120$
                                    569 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      00AB8A 0D 01            [ 1]  570 	tnz	(0x01, sp)
      00AB8C 27 0A            [ 1]  571 	jreq	00108$
                                    572 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 229: UART2->CR1 |= itpos;
      00AB8E C6 52 44         [ 1]  573 	ld	a, 0x5244
      00AB91 1A 03            [ 1]  574 	or	a, (0x03, sp)
      00AB93 C7 52 44         [ 1]  575 	ld	0x5244, a
      00AB96 20 5A            [ 2]  576 	jra	00122$
      00AB98                        577 00108$:
                                    578 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      00AB98 0D 02            [ 1]  579 	tnz	(0x02, sp)
      00AB9A 27 0A            [ 1]  580 	jreq	00105$
                                    581 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 233: UART2->CR2 |= itpos;
      00AB9C C6 52 45         [ 1]  582 	ld	a, 0x5245
      00AB9F 1A 03            [ 1]  583 	or	a, (0x03, sp)
      00ABA1 C7 52 45         [ 1]  584 	ld	0x5245, a
      00ABA4 20 4C            [ 2]  585 	jra	00122$
      00ABA6                        586 00105$:
                                    587 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      00ABA6 4D               [ 1]  588 	tnz	a
      00ABA7 27 0A            [ 1]  589 	jreq	00102$
                                    590 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 237: UART2->CR4 |= itpos;
      00ABA9 C6 52 47         [ 1]  591 	ld	a, 0x5247
      00ABAC 1A 03            [ 1]  592 	or	a, (0x03, sp)
      00ABAE C7 52 47         [ 1]  593 	ld	0x5247, a
      00ABB1 20 3F            [ 2]  594 	jra	00122$
      00ABB3                        595 00102$:
                                    596 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 241: UART2->CR6 |= itpos;
      00ABB3 C6 52 49         [ 1]  597 	ld	a, 0x5249
      00ABB6 1A 03            [ 1]  598 	or	a, (0x03, sp)
      00ABB8 C7 52 49         [ 1]  599 	ld	0x5249, a
      00ABBB 20 35            [ 2]  600 	jra	00122$
      00ABBD                        601 00120$:
                                    602 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      00ABBD 88               [ 1]  603 	push	a
      00ABBE 03 04            [ 1]  604 	cpl	(0x04, sp)
      00ABC0 84               [ 1]  605 	pop	a
                                    606 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 247: if (uartreg == 0x01)
      00ABC1 0D 01            [ 1]  607 	tnz	(0x01, sp)
      00ABC3 27 0A            [ 1]  608 	jreq	00117$
                                    609 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      00ABC5 C6 52 44         [ 1]  610 	ld	a, 0x5244
      00ABC8 14 03            [ 1]  611 	and	a, (0x03, sp)
      00ABCA C7 52 44         [ 1]  612 	ld	0x5244, a
      00ABCD 20 23            [ 2]  613 	jra	00122$
      00ABCF                        614 00117$:
                                    615 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 251: else if (uartreg == 0x02)
      00ABCF 0D 02            [ 1]  616 	tnz	(0x02, sp)
      00ABD1 27 0A            [ 1]  617 	jreq	00114$
                                    618 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
      00ABD3 C6 52 45         [ 1]  619 	ld	a, 0x5245
      00ABD6 14 03            [ 1]  620 	and	a, (0x03, sp)
      00ABD8 C7 52 45         [ 1]  621 	ld	0x5245, a
      00ABDB 20 15            [ 2]  622 	jra	00122$
      00ABDD                        623 00114$:
                                    624 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 255: else if (uartreg == 0x03)
      00ABDD 4D               [ 1]  625 	tnz	a
      00ABDE 27 0A            [ 1]  626 	jreq	00111$
                                    627 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
      00ABE0 C6 52 47         [ 1]  628 	ld	a, 0x5247
      00ABE3 14 03            [ 1]  629 	and	a, (0x03, sp)
      00ABE5 C7 52 47         [ 1]  630 	ld	0x5247, a
      00ABE8 20 08            [ 2]  631 	jra	00122$
      00ABEA                        632 00111$:
                                    633 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
      00ABEA C6 52 49         [ 1]  634 	ld	a, 0x5249
      00ABED 14 03            [ 1]  635 	and	a, (0x03, sp)
      00ABEF C7 52 49         [ 1]  636 	ld	0x5249, a
      00ABF2                        637 00122$:
                                    638 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 264: }
      00ABF2 5B 03            [ 2]  639 	addw	sp, #3
      00ABF4 81               [ 4]  640 	ret
                                    641 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
                                    642 ;	-----------------------------------------
                                    643 ;	 function UART2_IrDAConfig
                                    644 ;	-----------------------------------------
      00ABF5                        645 _UART2_IrDAConfig:
                                    646 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 274: assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
      00ABF5 7B 03            [ 1]  647 	ld	a, (0x03, sp)
      00ABF7 4A               [ 1]  648 	dec	a
      00ABF8 27 13            [ 1]  649 	jreq	00107$
      00ABFA 0D 03            [ 1]  650 	tnz	(0x03, sp)
      00ABFC 27 0F            [ 1]  651 	jreq	00107$
      00ABFE 4B 12            [ 1]  652 	push	#0x12
      00AC00 4B 01            [ 1]  653 	push	#0x01
      00AC02 5F               [ 1]  654 	clrw	x
      00AC03 89               [ 2]  655 	pushw	x
      00AC04 4B EE            [ 1]  656 	push	#<(___str_0+0)
      00AC06 4B 82            [ 1]  657 	push	#((___str_0+0) >> 8)
      00AC08 CD 85 5C         [ 4]  658 	call	_assert_failed
      00AC0B 5B 06            [ 2]  659 	addw	sp, #6
      00AC0D                        660 00107$:
                                    661 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      00AC0D C6 52 48         [ 1]  662 	ld	a, 0x5248
                                    663 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
      00AC10 0D 03            [ 1]  664 	tnz	(0x03, sp)
      00AC12 27 06            [ 1]  665 	jreq	00102$
                                    666 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      00AC14 AA 04            [ 1]  667 	or	a, #0x04
      00AC16 C7 52 48         [ 1]  668 	ld	0x5248, a
      00AC19 81               [ 4]  669 	ret
      00AC1A                        670 00102$:
                                    671 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
      00AC1A A4 FB            [ 1]  672 	and	a, #0xfb
      00AC1C C7 52 48         [ 1]  673 	ld	0x5248, a
                                    674 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 284: }
      00AC1F 81               [ 4]  675 	ret
                                    676 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
                                    677 ;	-----------------------------------------
                                    678 ;	 function UART2_IrDACmd
                                    679 ;	-----------------------------------------
      00AC20                        680 _UART2_IrDACmd:
                                    681 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 295: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00AC20 0D 03            [ 1]  682 	tnz	(0x03, sp)
      00AC22 27 14            [ 1]  683 	jreq	00107$
      00AC24 7B 03            [ 1]  684 	ld	a, (0x03, sp)
      00AC26 4A               [ 1]  685 	dec	a
      00AC27 27 0F            [ 1]  686 	jreq	00107$
      00AC29 4B 27            [ 1]  687 	push	#0x27
      00AC2B 4B 01            [ 1]  688 	push	#0x01
      00AC2D 5F               [ 1]  689 	clrw	x
      00AC2E 89               [ 2]  690 	pushw	x
      00AC2F 4B EE            [ 1]  691 	push	#<(___str_0+0)
      00AC31 4B 82            [ 1]  692 	push	#((___str_0+0) >> 8)
      00AC33 CD 85 5C         [ 4]  693 	call	_assert_failed
      00AC36 5B 06            [ 2]  694 	addw	sp, #6
      00AC38                        695 00107$:
                                    696 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      00AC38 C6 52 48         [ 1]  697 	ld	a, 0x5248
                                    698 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 297: if (NewState != DISABLE)
      00AC3B 0D 03            [ 1]  699 	tnz	(0x03, sp)
      00AC3D 27 06            [ 1]  700 	jreq	00102$
                                    701 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      00AC3F AA 02            [ 1]  702 	or	a, #0x02
      00AC41 C7 52 48         [ 1]  703 	ld	0x5248, a
      00AC44 81               [ 4]  704 	ret
      00AC45                        705 00102$:
                                    706 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
      00AC45 A4 FD            [ 1]  707 	and	a, #0xfd
      00AC47 C7 52 48         [ 1]  708 	ld	0x5248, a
                                    709 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 307: }
      00AC4A 81               [ 4]  710 	ret
                                    711 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
                                    712 ;	-----------------------------------------
                                    713 ;	 function UART2_LINBreakDetectionConfig
                                    714 ;	-----------------------------------------
      00AC4B                        715 _UART2_LINBreakDetectionConfig:
                                    716 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 319: assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
      00AC4B 0D 03            [ 1]  717 	tnz	(0x03, sp)
      00AC4D 27 14            [ 1]  718 	jreq	00107$
      00AC4F 7B 03            [ 1]  719 	ld	a, (0x03, sp)
      00AC51 4A               [ 1]  720 	dec	a
      00AC52 27 0F            [ 1]  721 	jreq	00107$
      00AC54 4B 3F            [ 1]  722 	push	#0x3f
      00AC56 4B 01            [ 1]  723 	push	#0x01
      00AC58 5F               [ 1]  724 	clrw	x
      00AC59 89               [ 2]  725 	pushw	x
      00AC5A 4B EE            [ 1]  726 	push	#<(___str_0+0)
      00AC5C 4B 82            [ 1]  727 	push	#((___str_0+0) >> 8)
      00AC5E CD 85 5C         [ 4]  728 	call	_assert_failed
      00AC61 5B 06            [ 2]  729 	addw	sp, #6
      00AC63                        730 00107$:
                                    731 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      00AC63 C6 52 47         [ 1]  732 	ld	a, 0x5247
                                    733 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
      00AC66 0D 03            [ 1]  734 	tnz	(0x03, sp)
      00AC68 27 06            [ 1]  735 	jreq	00102$
                                    736 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      00AC6A AA 20            [ 1]  737 	or	a, #0x20
      00AC6C C7 52 47         [ 1]  738 	ld	0x5247, a
      00AC6F 81               [ 4]  739 	ret
      00AC70                        740 00102$:
                                    741 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
      00AC70 A4 DF            [ 1]  742 	and	a, #0xdf
      00AC72 C7 52 47         [ 1]  743 	ld	0x5247, a
                                    744 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 329: }
      00AC75 81               [ 4]  745 	ret
                                    746 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
                                    747 ;	-----------------------------------------
                                    748 ;	 function UART2_LINConfig
                                    749 ;	-----------------------------------------
      00AC76                        750 _UART2_LINConfig:
                                    751 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 346: assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
      00AC76 0D 03            [ 1]  752 	tnz	(0x03, sp)
      00AC78 27 14            [ 1]  753 	jreq	00113$
      00AC7A 7B 03            [ 1]  754 	ld	a, (0x03, sp)
      00AC7C 4A               [ 1]  755 	dec	a
      00AC7D 27 0F            [ 1]  756 	jreq	00113$
      00AC7F 4B 5A            [ 1]  757 	push	#0x5a
      00AC81 4B 01            [ 1]  758 	push	#0x01
      00AC83 5F               [ 1]  759 	clrw	x
      00AC84 89               [ 2]  760 	pushw	x
      00AC85 4B EE            [ 1]  761 	push	#<(___str_0+0)
      00AC87 4B 82            [ 1]  762 	push	#((___str_0+0) >> 8)
      00AC89 CD 85 5C         [ 4]  763 	call	_assert_failed
      00AC8C 5B 06            [ 2]  764 	addw	sp, #6
      00AC8E                        765 00113$:
                                    766 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 347: assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
      00AC8E 7B 04            [ 1]  767 	ld	a, (0x04, sp)
      00AC90 4A               [ 1]  768 	dec	a
      00AC91 27 13            [ 1]  769 	jreq	00118$
      00AC93 0D 04            [ 1]  770 	tnz	(0x04, sp)
      00AC95 27 0F            [ 1]  771 	jreq	00118$
      00AC97 4B 5B            [ 1]  772 	push	#0x5b
      00AC99 4B 01            [ 1]  773 	push	#0x01
      00AC9B 5F               [ 1]  774 	clrw	x
      00AC9C 89               [ 2]  775 	pushw	x
      00AC9D 4B EE            [ 1]  776 	push	#<(___str_0+0)
      00AC9F 4B 82            [ 1]  777 	push	#((___str_0+0) >> 8)
      00ACA1 CD 85 5C         [ 4]  778 	call	_assert_failed
      00ACA4 5B 06            [ 2]  779 	addw	sp, #6
      00ACA6                        780 00118$:
                                    781 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 348: assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
      00ACA6 0D 05            [ 1]  782 	tnz	(0x05, sp)
      00ACA8 27 14            [ 1]  783 	jreq	00123$
      00ACAA 7B 05            [ 1]  784 	ld	a, (0x05, sp)
      00ACAC 4A               [ 1]  785 	dec	a
      00ACAD 27 0F            [ 1]  786 	jreq	00123$
      00ACAF 4B 5C            [ 1]  787 	push	#0x5c
      00ACB1 4B 01            [ 1]  788 	push	#0x01
      00ACB3 5F               [ 1]  789 	clrw	x
      00ACB4 89               [ 2]  790 	pushw	x
      00ACB5 4B EE            [ 1]  791 	push	#<(___str_0+0)
      00ACB7 4B 82            [ 1]  792 	push	#((___str_0+0) >> 8)
      00ACB9 CD 85 5C         [ 4]  793 	call	_assert_failed
      00ACBC 5B 06            [ 2]  794 	addw	sp, #6
      00ACBE                        795 00123$:
                                    796 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      00ACBE C6 52 49         [ 1]  797 	ld	a, 0x5249
                                    798 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
      00ACC1 0D 03            [ 1]  799 	tnz	(0x03, sp)
      00ACC3 27 07            [ 1]  800 	jreq	00102$
                                    801 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      00ACC5 AA 20            [ 1]  802 	or	a, #0x20
      00ACC7 C7 52 49         [ 1]  803 	ld	0x5249, a
      00ACCA 20 05            [ 2]  804 	jra	00103$
      00ACCC                        805 00102$:
                                    806 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
      00ACCC A4 DF            [ 1]  807 	and	a, #0xdf
      00ACCE C7 52 49         [ 1]  808 	ld	0x5249, a
      00ACD1                        809 00103$:
                                    810 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      00ACD1 C6 52 49         [ 1]  811 	ld	a, 0x5249
                                    812 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
      00ACD4 0D 04            [ 1]  813 	tnz	(0x04, sp)
      00ACD6 27 07            [ 1]  814 	jreq	00105$
                                    815 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
      00ACD8 AA 10            [ 1]  816 	or	a, #0x10
      00ACDA C7 52 49         [ 1]  817 	ld	0x5249, a
      00ACDD 20 05            [ 2]  818 	jra	00106$
      00ACDF                        819 00105$:
                                    820 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
      00ACDF A4 EF            [ 1]  821 	and	a, #0xef
      00ACE1 C7 52 49         [ 1]  822 	ld	0x5249, a
      00ACE4                        823 00106$:
                                    824 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      00ACE4 C6 52 49         [ 1]  825 	ld	a, 0x5249
                                    826 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
      00ACE7 0D 05            [ 1]  827 	tnz	(0x05, sp)
      00ACE9 27 06            [ 1]  828 	jreq	00108$
                                    829 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
      00ACEB AA 80            [ 1]  830 	or	a, #0x80
      00ACED C7 52 49         [ 1]  831 	ld	0x5249, a
      00ACF0 81               [ 4]  832 	ret
      00ACF1                        833 00108$:
                                    834 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
      00ACF1 A4 7F            [ 1]  835 	and	a, #0x7f
      00ACF3 C7 52 49         [ 1]  836 	ld	0x5249, a
                                    837 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 376: }
      00ACF6 81               [ 4]  838 	ret
                                    839 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
                                    840 ;	-----------------------------------------
                                    841 ;	 function UART2_LINCmd
                                    842 ;	-----------------------------------------
      00ACF7                        843 _UART2_LINCmd:
                                    844 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 386: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00ACF7 0D 03            [ 1]  845 	tnz	(0x03, sp)
      00ACF9 27 14            [ 1]  846 	jreq	00107$
      00ACFB 7B 03            [ 1]  847 	ld	a, (0x03, sp)
      00ACFD 4A               [ 1]  848 	dec	a
      00ACFE 27 0F            [ 1]  849 	jreq	00107$
      00AD00 4B 82            [ 1]  850 	push	#0x82
      00AD02 4B 01            [ 1]  851 	push	#0x01
      00AD04 5F               [ 1]  852 	clrw	x
      00AD05 89               [ 2]  853 	pushw	x
      00AD06 4B EE            [ 1]  854 	push	#<(___str_0+0)
      00AD08 4B 82            [ 1]  855 	push	#((___str_0+0) >> 8)
      00AD0A CD 85 5C         [ 4]  856 	call	_assert_failed
      00AD0D 5B 06            [ 2]  857 	addw	sp, #6
      00AD0F                        858 00107$:
                                    859 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      00AD0F C6 52 46         [ 1]  860 	ld	a, 0x5246
                                    861 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 388: if (NewState != DISABLE)
      00AD12 0D 03            [ 1]  862 	tnz	(0x03, sp)
      00AD14 27 06            [ 1]  863 	jreq	00102$
                                    864 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      00AD16 AA 40            [ 1]  865 	or	a, #0x40
      00AD18 C7 52 46         [ 1]  866 	ld	0x5246, a
      00AD1B 81               [ 4]  867 	ret
      00AD1C                        868 00102$:
                                    869 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
      00AD1C A4 BF            [ 1]  870 	and	a, #0xbf
      00AD1E C7 52 46         [ 1]  871 	ld	0x5246, a
                                    872 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 398: }
      00AD21 81               [ 4]  873 	ret
                                    874 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
                                    875 ;	-----------------------------------------
                                    876 ;	 function UART2_SmartCardCmd
                                    877 ;	-----------------------------------------
      00AD22                        878 _UART2_SmartCardCmd:
                                    879 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 409: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00AD22 0D 03            [ 1]  880 	tnz	(0x03, sp)
      00AD24 27 14            [ 1]  881 	jreq	00107$
      00AD26 7B 03            [ 1]  882 	ld	a, (0x03, sp)
      00AD28 4A               [ 1]  883 	dec	a
      00AD29 27 0F            [ 1]  884 	jreq	00107$
      00AD2B 4B 99            [ 1]  885 	push	#0x99
      00AD2D 4B 01            [ 1]  886 	push	#0x01
      00AD2F 5F               [ 1]  887 	clrw	x
      00AD30 89               [ 2]  888 	pushw	x
      00AD31 4B EE            [ 1]  889 	push	#<(___str_0+0)
      00AD33 4B 82            [ 1]  890 	push	#((___str_0+0) >> 8)
      00AD35 CD 85 5C         [ 4]  891 	call	_assert_failed
      00AD38 5B 06            [ 2]  892 	addw	sp, #6
      00AD3A                        893 00107$:
                                    894 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      00AD3A C6 52 48         [ 1]  895 	ld	a, 0x5248
                                    896 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 411: if (NewState != DISABLE)
      00AD3D 0D 03            [ 1]  897 	tnz	(0x03, sp)
      00AD3F 27 06            [ 1]  898 	jreq	00102$
                                    899 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      00AD41 AA 20            [ 1]  900 	or	a, #0x20
      00AD43 C7 52 48         [ 1]  901 	ld	0x5248, a
      00AD46 81               [ 4]  902 	ret
      00AD47                        903 00102$:
                                    904 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
      00AD47 A4 DF            [ 1]  905 	and	a, #0xdf
      00AD49 C7 52 48         [ 1]  906 	ld	0x5248, a
                                    907 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 421: }
      00AD4C 81               [ 4]  908 	ret
                                    909 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
                                    910 ;	-----------------------------------------
                                    911 ;	 function UART2_SmartCardNACKCmd
                                    912 ;	-----------------------------------------
      00AD4D                        913 _UART2_SmartCardNACKCmd:
                                    914 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 432: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00AD4D 0D 03            [ 1]  915 	tnz	(0x03, sp)
      00AD4F 27 14            [ 1]  916 	jreq	00107$
      00AD51 7B 03            [ 1]  917 	ld	a, (0x03, sp)
      00AD53 4A               [ 1]  918 	dec	a
      00AD54 27 0F            [ 1]  919 	jreq	00107$
      00AD56 4B B0            [ 1]  920 	push	#0xb0
      00AD58 4B 01            [ 1]  921 	push	#0x01
      00AD5A 5F               [ 1]  922 	clrw	x
      00AD5B 89               [ 2]  923 	pushw	x
      00AD5C 4B EE            [ 1]  924 	push	#<(___str_0+0)
      00AD5E 4B 82            [ 1]  925 	push	#((___str_0+0) >> 8)
      00AD60 CD 85 5C         [ 4]  926 	call	_assert_failed
      00AD63 5B 06            [ 2]  927 	addw	sp, #6
      00AD65                        928 00107$:
                                    929 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      00AD65 C6 52 48         [ 1]  930 	ld	a, 0x5248
                                    931 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 434: if (NewState != DISABLE)
      00AD68 0D 03            [ 1]  932 	tnz	(0x03, sp)
      00AD6A 27 06            [ 1]  933 	jreq	00102$
                                    934 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      00AD6C AA 10            [ 1]  935 	or	a, #0x10
      00AD6E C7 52 48         [ 1]  936 	ld	0x5248, a
      00AD71 81               [ 4]  937 	ret
      00AD72                        938 00102$:
                                    939 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
      00AD72 A4 EF            [ 1]  940 	and	a, #0xef
      00AD74 C7 52 48         [ 1]  941 	ld	0x5248, a
                                    942 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 444: }
      00AD77 81               [ 4]  943 	ret
                                    944 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
                                    945 ;	-----------------------------------------
                                    946 ;	 function UART2_WakeUpConfig
                                    947 ;	-----------------------------------------
      00AD78                        948 _UART2_WakeUpConfig:
                                    949 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 454: assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
      00AD78 0D 03            [ 1]  950 	tnz	(0x03, sp)
      00AD7A 27 15            [ 1]  951 	jreq	00104$
      00AD7C 7B 03            [ 1]  952 	ld	a, (0x03, sp)
      00AD7E A1 08            [ 1]  953 	cp	a, #0x08
      00AD80 27 0F            [ 1]  954 	jreq	00104$
      00AD82 4B C6            [ 1]  955 	push	#0xc6
      00AD84 4B 01            [ 1]  956 	push	#0x01
      00AD86 5F               [ 1]  957 	clrw	x
      00AD87 89               [ 2]  958 	pushw	x
      00AD88 4B EE            [ 1]  959 	push	#<(___str_0+0)
      00AD8A 4B 82            [ 1]  960 	push	#((___str_0+0) >> 8)
      00AD8C CD 85 5C         [ 4]  961 	call	_assert_failed
      00AD8F 5B 06            [ 2]  962 	addw	sp, #6
      00AD91                        963 00104$:
                                    964 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
      00AD91 72 17 52 44      [ 1]  965 	bres	21060, #3
                                    966 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
      00AD95 C6 52 44         [ 1]  967 	ld	a, 0x5244
      00AD98 1A 03            [ 1]  968 	or	a, (0x03, sp)
      00AD9A C7 52 44         [ 1]  969 	ld	0x5244, a
                                    970 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 458: }
      00AD9D 81               [ 4]  971 	ret
                                    972 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
                                    973 ;	-----------------------------------------
                                    974 ;	 function UART2_ReceiverWakeUpCmd
                                    975 ;	-----------------------------------------
      00AD9E                        976 _UART2_ReceiverWakeUpCmd:
                                    977 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 468: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00AD9E 0D 03            [ 1]  978 	tnz	(0x03, sp)
      00ADA0 27 14            [ 1]  979 	jreq	00107$
      00ADA2 7B 03            [ 1]  980 	ld	a, (0x03, sp)
      00ADA4 4A               [ 1]  981 	dec	a
      00ADA5 27 0F            [ 1]  982 	jreq	00107$
      00ADA7 4B D4            [ 1]  983 	push	#0xd4
      00ADA9 4B 01            [ 1]  984 	push	#0x01
      00ADAB 5F               [ 1]  985 	clrw	x
      00ADAC 89               [ 2]  986 	pushw	x
      00ADAD 4B EE            [ 1]  987 	push	#<(___str_0+0)
      00ADAF 4B 82            [ 1]  988 	push	#((___str_0+0) >> 8)
      00ADB1 CD 85 5C         [ 4]  989 	call	_assert_failed
      00ADB4 5B 06            [ 2]  990 	addw	sp, #6
      00ADB6                        991 00107$:
                                    992 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      00ADB6 C6 52 45         [ 1]  993 	ld	a, 0x5245
                                    994 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 470: if (NewState != DISABLE)
      00ADB9 0D 03            [ 1]  995 	tnz	(0x03, sp)
      00ADBB 27 06            [ 1]  996 	jreq	00102$
                                    997 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      00ADBD AA 02            [ 1]  998 	or	a, #0x02
      00ADBF C7 52 45         [ 1]  999 	ld	0x5245, a
      00ADC2 81               [ 4] 1000 	ret
      00ADC3                       1001 00102$:
                                   1002 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
      00ADC3 A4 FD            [ 1] 1003 	and	a, #0xfd
      00ADC5 C7 52 45         [ 1] 1004 	ld	0x5245, a
                                   1005 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 480: }
      00ADC8 81               [ 4] 1006 	ret
                                   1007 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function UART2_ReceiveData8
                                   1010 ;	-----------------------------------------
      00ADC9                       1011 _UART2_ReceiveData8:
                                   1012 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
      00ADC9 C6 52 41         [ 1] 1013 	ld	a, 0x5241
                                   1014 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 490: }
      00ADCC 81               [ 4] 1015 	ret
                                   1016 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
                                   1017 ;	-----------------------------------------
                                   1018 ;	 function UART2_ReceiveData9
                                   1019 ;	-----------------------------------------
      00ADCD                       1020 _UART2_ReceiveData9:
      00ADCD 89               [ 2] 1021 	pushw	x
                                   1022 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
      00ADCE C6 52 44         [ 1] 1023 	ld	a, 0x5244
      00ADD1 A4 80            [ 1] 1024 	and	a, #0x80
      00ADD3 97               [ 1] 1025 	ld	xl, a
      00ADD4 4F               [ 1] 1026 	clr	a
      00ADD5 95               [ 1] 1027 	ld	xh, a
      00ADD6 58               [ 2] 1028 	sllw	x
      00ADD7 1F 01            [ 2] 1029 	ldw	(0x01, sp), x
                                   1030 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
      00ADD9 C6 52 41         [ 1] 1031 	ld	a, 0x5241
      00ADDC 5F               [ 1] 1032 	clrw	x
      00ADDD 1A 02            [ 1] 1033 	or	a, (0x02, sp)
      00ADDF 02               [ 1] 1034 	rlwa	x
      00ADE0 1A 01            [ 1] 1035 	or	a, (0x01, sp)
      00ADE2 A4 01            [ 1] 1036 	and	a, #0x01
      00ADE4 95               [ 1] 1037 	ld	xh, a
                                   1038 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 504: }
      00ADE5 5B 02            [ 2] 1039 	addw	sp, #2
      00ADE7 81               [ 4] 1040 	ret
                                   1041 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function UART2_SendData8
                                   1044 ;	-----------------------------------------
      00ADE8                       1045 _UART2_SendData8:
                                   1046 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 514: UART2->DR = Data;
      00ADE8 AE 52 41         [ 2] 1047 	ldw	x, #0x5241
      00ADEB 7B 03            [ 1] 1048 	ld	a, (0x03, sp)
      00ADED F7               [ 1] 1049 	ld	(x), a
                                   1050 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 515: }
      00ADEE 81               [ 4] 1051 	ret
                                   1052 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
                                   1053 ;	-----------------------------------------
                                   1054 ;	 function UART2_SendData9
                                   1055 ;	-----------------------------------------
      00ADEF                       1056 _UART2_SendData9:
      00ADEF 88               [ 1] 1057 	push	a
                                   1058 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
      00ADF0 72 1D 52 44      [ 1] 1059 	bres	21060, #6
                                   1060 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
      00ADF4 C6 52 44         [ 1] 1061 	ld	a, 0x5244
      00ADF7 6B 01            [ 1] 1062 	ld	(0x01, sp), a
      00ADF9 1E 04            [ 2] 1063 	ldw	x, (0x04, sp)
      00ADFB 54               [ 2] 1064 	srlw	x
      00ADFC 54               [ 2] 1065 	srlw	x
      00ADFD 9F               [ 1] 1066 	ld	a, xl
      00ADFE A4 40            [ 1] 1067 	and	a, #0x40
      00AE00 1A 01            [ 1] 1068 	or	a, (0x01, sp)
      00AE02 C7 52 44         [ 1] 1069 	ld	0x5244, a
                                   1070 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
      00AE05 7B 05            [ 1] 1071 	ld	a, (0x05, sp)
      00AE07 C7 52 41         [ 1] 1072 	ld	0x5241, a
                                   1073 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 532: }
      00AE0A 84               [ 1] 1074 	pop	a
      00AE0B 81               [ 4] 1075 	ret
                                   1076 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 539: void UART2_SendBreak(void)
                                   1077 ;	-----------------------------------------
                                   1078 ;	 function UART2_SendBreak
                                   1079 ;	-----------------------------------------
      00AE0C                       1080 _UART2_SendBreak:
                                   1081 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
      00AE0C 72 10 52 45      [ 1] 1082 	bset	21061, #0
                                   1083 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 542: }
      00AE10 81               [ 4] 1084 	ret
                                   1085 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
                                   1086 ;	-----------------------------------------
                                   1087 ;	 function UART2_SetAddress
                                   1088 ;	-----------------------------------------
      00AE11                       1089 _UART2_SetAddress:
                                   1090 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 552: assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
      00AE11 7B 03            [ 1] 1091 	ld	a, (0x03, sp)
      00AE13 A1 10            [ 1] 1092 	cp	a, #0x10
      00AE15 25 0F            [ 1] 1093 	jrc	00104$
      00AE17 4B 28            [ 1] 1094 	push	#0x28
      00AE19 4B 02            [ 1] 1095 	push	#0x02
      00AE1B 5F               [ 1] 1096 	clrw	x
      00AE1C 89               [ 2] 1097 	pushw	x
      00AE1D 4B EE            [ 1] 1098 	push	#<(___str_0+0)
      00AE1F 4B 82            [ 1] 1099 	push	#((___str_0+0) >> 8)
      00AE21 CD 85 5C         [ 4] 1100 	call	_assert_failed
      00AE24 5B 06            [ 2] 1101 	addw	sp, #6
      00AE26                       1102 00104$:
                                   1103 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
      00AE26 C6 52 47         [ 1] 1104 	ld	a, 0x5247
      00AE29 A4 F0            [ 1] 1105 	and	a, #0xf0
      00AE2B C7 52 47         [ 1] 1106 	ld	0x5247, a
                                   1107 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
      00AE2E C6 52 47         [ 1] 1108 	ld	a, 0x5247
      00AE31 1A 03            [ 1] 1109 	or	a, (0x03, sp)
      00AE33 C7 52 47         [ 1] 1110 	ld	0x5247, a
                                   1111 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 558: }
      00AE36 81               [ 4] 1112 	ret
                                   1113 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
                                   1114 ;	-----------------------------------------
                                   1115 ;	 function UART2_SetGuardTime
                                   1116 ;	-----------------------------------------
      00AE37                       1117 _UART2_SetGuardTime:
                                   1118 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
      00AE37 AE 52 4A         [ 2] 1119 	ldw	x, #0x524a
      00AE3A 7B 03            [ 1] 1120 	ld	a, (0x03, sp)
      00AE3C F7               [ 1] 1121 	ld	(x), a
                                   1122 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 570: }
      00AE3D 81               [ 4] 1123 	ret
                                   1124 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
                                   1125 ;	-----------------------------------------
                                   1126 ;	 function UART2_SetPrescaler
                                   1127 ;	-----------------------------------------
      00AE3E                       1128 _UART2_SetPrescaler:
                                   1129 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
      00AE3E AE 52 4B         [ 2] 1130 	ldw	x, #0x524b
      00AE41 7B 03            [ 1] 1131 	ld	a, (0x03, sp)
      00AE43 F7               [ 1] 1132 	ld	(x), a
                                   1133 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 598: }
      00AE44 81               [ 4] 1134 	ret
                                   1135 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
                                   1136 ;	-----------------------------------------
                                   1137 ;	 function UART2_GetFlagStatus
                                   1138 ;	-----------------------------------------
      00AE45                       1139 _UART2_GetFlagStatus:
      00AE45 52 04            [ 2] 1140 	sub	sp, #4
                                   1141 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 611: assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
      00AE47 1E 07            [ 2] 1142 	ldw	x, (0x07, sp)
      00AE49 A3 01 01         [ 2] 1143 	cpw	x, #0x0101
      00AE4C 26 05            [ 1] 1144 	jrne	00256$
      00AE4E A6 01            [ 1] 1145 	ld	a, #0x01
      00AE50 6B 01            [ 1] 1146 	ld	(0x01, sp), a
      00AE52 C5                    1147 	.byte 0xc5
      00AE53                       1148 00256$:
      00AE53 0F 01            [ 1] 1149 	clr	(0x01, sp)
      00AE55                       1150 00257$:
      00AE55 A3 03 01         [ 2] 1151 	cpw	x, #0x0301
      00AE58 26 05            [ 1] 1152 	jrne	00259$
      00AE5A A6 01            [ 1] 1153 	ld	a, #0x01
      00AE5C 6B 02            [ 1] 1154 	ld	(0x02, sp), a
      00AE5E C5                    1155 	.byte 0xc5
      00AE5F                       1156 00259$:
      00AE5F 0F 02            [ 1] 1157 	clr	(0x02, sp)
      00AE61                       1158 00260$:
      00AE61 A3 03 02         [ 2] 1159 	cpw	x, #0x0302
      00AE64 26 05            [ 1] 1160 	jrne	00262$
      00AE66 A6 01            [ 1] 1161 	ld	a, #0x01
      00AE68 6B 03            [ 1] 1162 	ld	(0x03, sp), a
      00AE6A C5                    1163 	.byte 0xc5
      00AE6B                       1164 00262$:
      00AE6B 0F 03            [ 1] 1165 	clr	(0x03, sp)
      00AE6D                       1166 00263$:
      00AE6D A3 02 10         [ 2] 1167 	cpw	x, #0x0210
      00AE70 26 03            [ 1] 1168 	jrne	00265$
      00AE72 A6 01            [ 1] 1169 	ld	a, #0x01
      00AE74 21                    1170 	.byte 0x21
      00AE75                       1171 00265$:
      00AE75 4F               [ 1] 1172 	clr	a
      00AE76                       1173 00266$:
      00AE76 A3 00 80         [ 2] 1174 	cpw	x, #0x0080
      00AE79 27 41            [ 1] 1175 	jreq	00126$
      00AE7B A3 00 40         [ 2] 1176 	cpw	x, #0x0040
      00AE7E 27 3C            [ 1] 1177 	jreq	00126$
      00AE80 A3 00 20         [ 2] 1178 	cpw	x, #0x0020
      00AE83 27 37            [ 1] 1179 	jreq	00126$
      00AE85 A3 00 10         [ 2] 1180 	cpw	x, #0x0010
      00AE88 27 32            [ 1] 1181 	jreq	00126$
      00AE8A A3 00 08         [ 2] 1182 	cpw	x, #0x0008
      00AE8D 27 2D            [ 1] 1183 	jreq	00126$
      00AE8F A3 00 04         [ 2] 1184 	cpw	x, #0x0004
      00AE92 27 28            [ 1] 1185 	jreq	00126$
      00AE94 A3 00 02         [ 2] 1186 	cpw	x, #0x0002
      00AE97 27 23            [ 1] 1187 	jreq	00126$
      00AE99 5A               [ 2] 1188 	decw	x
      00AE9A 27 20            [ 1] 1189 	jreq	00126$
      00AE9C 0D 01            [ 1] 1190 	tnz	(0x01, sp)
      00AE9E 26 1C            [ 1] 1191 	jrne	00126$
      00AEA0 0D 02            [ 1] 1192 	tnz	(0x02, sp)
      00AEA2 26 18            [ 1] 1193 	jrne	00126$
      00AEA4 0D 03            [ 1] 1194 	tnz	(0x03, sp)
      00AEA6 26 14            [ 1] 1195 	jrne	00126$
      00AEA8 4D               [ 1] 1196 	tnz	a
      00AEA9 26 11            [ 1] 1197 	jrne	00126$
      00AEAB 88               [ 1] 1198 	push	a
      00AEAC 4B 63            [ 1] 1199 	push	#0x63
      00AEAE 4B 02            [ 1] 1200 	push	#0x02
      00AEB0 5F               [ 1] 1201 	clrw	x
      00AEB1 89               [ 2] 1202 	pushw	x
      00AEB2 4B EE            [ 1] 1203 	push	#<(___str_0+0)
      00AEB4 4B 82            [ 1] 1204 	push	#((___str_0+0) >> 8)
      00AEB6 CD 85 5C         [ 4] 1205 	call	_assert_failed
      00AEB9 5B 06            [ 2] 1206 	addw	sp, #6
      00AEBB 84               [ 1] 1207 	pop	a
      00AEBC                       1208 00126$:
                                   1209 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00AEBC 88               [ 1] 1210 	push	a
      00AEBD 7B 09            [ 1] 1211 	ld	a, (0x09, sp)
      00AEBF 6B 05            [ 1] 1212 	ld	(0x05, sp), a
      00AEC1 84               [ 1] 1213 	pop	a
                                   1214 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
      00AEC2 4D               [ 1] 1215 	tnz	a
      00AEC3 27 0E            [ 1] 1216 	jreq	00121$
                                   1217 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00AEC5 C6 52 47         [ 1] 1218 	ld	a, 0x5247
      00AEC8 14 04            [ 1] 1219 	and	a, (0x04, sp)
      00AECA 27 04            [ 1] 1220 	jreq	00102$
                                   1221 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 619: status = SET;
      00AECC A6 01            [ 1] 1222 	ld	a, #0x01
      00AECE 20 36            [ 2] 1223 	jra	00122$
      00AED0                       1224 00102$:
                                   1225 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 624: status = RESET;
      00AED0 4F               [ 1] 1226 	clr	a
      00AED1 20 33            [ 2] 1227 	jra	00122$
      00AED3                       1228 00121$:
                                   1229 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
      00AED3 7B 01            [ 1] 1230 	ld	a, (0x01, sp)
      00AED5 27 0E            [ 1] 1231 	jreq	00118$
                                   1232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00AED7 C6 52 45         [ 1] 1233 	ld	a, 0x5245
      00AEDA 14 04            [ 1] 1234 	and	a, (0x04, sp)
      00AEDC 27 04            [ 1] 1235 	jreq	00105$
                                   1236 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 632: status = SET;
      00AEDE A6 01            [ 1] 1237 	ld	a, #0x01
      00AEE0 20 24            [ 2] 1238 	jra	00122$
      00AEE2                       1239 00105$:
                                   1240 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 637: status = RESET;
      00AEE2 4F               [ 1] 1241 	clr	a
      00AEE3 20 21            [ 2] 1242 	jra	00122$
      00AEE5                       1243 00118$:
                                   1244 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
      00AEE5 7B 03            [ 1] 1245 	ld	a, (0x03, sp)
      00AEE7 26 04            [ 1] 1246 	jrne	00113$
      00AEE9 7B 02            [ 1] 1247 	ld	a, (0x02, sp)
      00AEEB 27 0E            [ 1] 1248 	jreq	00114$
      00AEED                       1249 00113$:
                                   1250 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00AEED C6 52 49         [ 1] 1251 	ld	a, 0x5249
      00AEF0 14 04            [ 1] 1252 	and	a, (0x04, sp)
      00AEF2 27 04            [ 1] 1253 	jreq	00108$
                                   1254 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 645: status = SET;
      00AEF4 A6 01            [ 1] 1255 	ld	a, #0x01
      00AEF6 20 0E            [ 2] 1256 	jra	00122$
      00AEF8                       1257 00108$:
                                   1258 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 650: status = RESET;
      00AEF8 4F               [ 1] 1259 	clr	a
      00AEF9 20 0B            [ 2] 1260 	jra	00122$
      00AEFB                       1261 00114$:
                                   1262 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00AEFB C6 52 40         [ 1] 1263 	ld	a, 0x5240
      00AEFE 14 04            [ 1] 1264 	and	a, (0x04, sp)
      00AF00 27 03            [ 1] 1265 	jreq	00111$
                                   1266 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 658: status = SET;
      00AF02 A6 01            [ 1] 1267 	ld	a, #0x01
                                   1268 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 663: status = RESET;
      00AF04 21                    1269 	.byte 0x21
      00AF05                       1270 00111$:
      00AF05 4F               [ 1] 1271 	clr	a
      00AF06                       1272 00122$:
                                   1273 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 668: return  status;
                                   1274 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 669: }
      00AF06 5B 04            [ 2] 1275 	addw	sp, #4
      00AF08 81               [ 4] 1276 	ret
                                   1277 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
                                   1278 ;	-----------------------------------------
                                   1279 ;	 function UART2_ClearFlag
                                   1280 ;	-----------------------------------------
      00AF09                       1281 _UART2_ClearFlag:
      00AF09 52 03            [ 2] 1282 	sub	sp, #3
                                   1283 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 701: assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
      00AF0B 1E 06            [ 2] 1284 	ldw	x, (0x06, sp)
      00AF0D A3 00 20         [ 2] 1285 	cpw	x, #0x0020
      00AF10 26 05            [ 1] 1286 	jrne	00159$
      00AF12 A6 01            [ 1] 1287 	ld	a, #0x01
      00AF14 6B 01            [ 1] 1288 	ld	(0x01, sp), a
      00AF16 C5                    1289 	.byte 0xc5
      00AF17                       1290 00159$:
      00AF17 0F 01            [ 1] 1291 	clr	(0x01, sp)
      00AF19                       1292 00160$:
      00AF19 A3 03 02         [ 2] 1293 	cpw	x, #0x0302
      00AF1C 26 05            [ 1] 1294 	jrne	00162$
      00AF1E A6 01            [ 1] 1295 	ld	a, #0x01
      00AF20 6B 02            [ 1] 1296 	ld	(0x02, sp), a
      00AF22 C5                    1297 	.byte 0xc5
      00AF23                       1298 00162$:
      00AF23 0F 02            [ 1] 1299 	clr	(0x02, sp)
      00AF25                       1300 00163$:
      00AF25 A3 02 10         [ 2] 1301 	cpw	x, #0x0210
      00AF28 26 05            [ 1] 1302 	jrne	00165$
      00AF2A A6 01            [ 1] 1303 	ld	a, #0x01
      00AF2C 6B 03            [ 1] 1304 	ld	(0x03, sp), a
      00AF2E C5                    1305 	.byte 0xc5
      00AF2F                       1306 00165$:
      00AF2F 0F 03            [ 1] 1307 	clr	(0x03, sp)
      00AF31                       1308 00166$:
      00AF31 0D 01            [ 1] 1309 	tnz	(0x01, sp)
      00AF33 26 1C            [ 1] 1310 	jrne	00113$
      00AF35 0D 02            [ 1] 1311 	tnz	(0x02, sp)
      00AF37 26 18            [ 1] 1312 	jrne	00113$
      00AF39 A3 03 01         [ 2] 1313 	cpw	x, #0x0301
      00AF3C 27 13            [ 1] 1314 	jreq	00113$
      00AF3E 0D 03            [ 1] 1315 	tnz	(0x03, sp)
      00AF40 26 0F            [ 1] 1316 	jrne	00113$
      00AF42 4B BD            [ 1] 1317 	push	#0xbd
      00AF44 4B 02            [ 1] 1318 	push	#0x02
      00AF46 5F               [ 1] 1319 	clrw	x
      00AF47 89               [ 2] 1320 	pushw	x
      00AF48 4B EE            [ 1] 1321 	push	#<(___str_0+0)
      00AF4A 4B 82            [ 1] 1322 	push	#((___str_0+0) >> 8)
      00AF4C CD 85 5C         [ 4] 1323 	call	_assert_failed
      00AF4F 5B 06            [ 2] 1324 	addw	sp, #6
      00AF51                       1325 00113$:
                                   1326 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
      00AF51 7B 01            [ 1] 1327 	ld	a, (0x01, sp)
      00AF53 27 06            [ 1] 1328 	jreq	00108$
                                   1329 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      00AF55 35 DF 52 40      [ 1] 1330 	mov	0x5240+0, #0xdf
      00AF59 20 20            [ 2] 1331 	jra	00110$
      00AF5B                       1332 00108$:
                                   1333 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
      00AF5B 7B 03            [ 1] 1334 	ld	a, (0x03, sp)
      00AF5D 27 06            [ 1] 1335 	jreq	00105$
                                   1336 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
      00AF5F 72 19 52 47      [ 1] 1337 	bres	21063, #4
      00AF63 20 16            [ 2] 1338 	jra	00110$
      00AF65                       1339 00105$:
                                   1340 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      00AF65 C6 52 49         [ 1] 1341 	ld	a, 0x5249
      00AF68 97               [ 1] 1342 	ld	xl, a
                                   1343 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
      00AF69 7B 02            [ 1] 1344 	ld	a, (0x02, sp)
      00AF6B 27 08            [ 1] 1345 	jreq	00102$
                                   1346 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      00AF6D 9F               [ 1] 1347 	ld	a, xl
      00AF6E A4 FD            [ 1] 1348 	and	a, #0xfd
      00AF70 C7 52 49         [ 1] 1349 	ld	0x5249, a
      00AF73 20 06            [ 2] 1350 	jra	00110$
      00AF75                       1351 00102$:
                                   1352 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
      00AF75 9F               [ 1] 1353 	ld	a, xl
      00AF76 A4 FE            [ 1] 1354 	and	a, #0xfe
      00AF78 C7 52 49         [ 1] 1355 	ld	0x5249, a
      00AF7B                       1356 00110$:
                                   1357 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 723: }
      00AF7B 5B 03            [ 2] 1358 	addw	sp, #3
      00AF7D 81               [ 4] 1359 	ret
                                   1360 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
                                   1361 ;	-----------------------------------------
                                   1362 ;	 function UART2_GetITStatus
                                   1363 ;	-----------------------------------------
      00AF7E                       1364 _UART2_GetITStatus:
      00AF7E 52 05            [ 2] 1365 	sub	sp, #5
                                   1366 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 747: assert_param(IS_UART2_GET_IT_OK(UART2_IT));
      00AF80 1E 08            [ 2] 1367 	ldw	x, (0x08, sp)
      00AF82 A3 03 46         [ 2] 1368 	cpw	x, #0x0346
      00AF85 26 05            [ 1] 1369 	jrne	00247$
      00AF87 A6 01            [ 1] 1370 	ld	a, #0x01
      00AF89 6B 01            [ 1] 1371 	ld	(0x01, sp), a
      00AF8B C5                    1372 	.byte 0xc5
      00AF8C                       1373 00247$:
      00AF8C 0F 01            [ 1] 1374 	clr	(0x01, sp)
      00AF8E                       1375 00248$:
      00AF8E A3 04 12         [ 2] 1376 	cpw	x, #0x0412
      00AF91 26 05            [ 1] 1377 	jrne	00250$
      00AF93 A6 01            [ 1] 1378 	ld	a, #0x01
      00AF95 6B 02            [ 1] 1379 	ld	(0x02, sp), a
      00AF97 C5                    1380 	.byte 0xc5
      00AF98                       1381 00250$:
      00AF98 0F 02            [ 1] 1382 	clr	(0x02, sp)
      00AF9A                       1383 00251$:
      00AF9A A3 01 00         [ 2] 1384 	cpw	x, #0x0100
      00AF9D 26 05            [ 1] 1385 	jrne	00253$
      00AF9F A6 01            [ 1] 1386 	ld	a, #0x01
      00AFA1 6B 03            [ 1] 1387 	ld	(0x03, sp), a
      00AFA3 C5                    1388 	.byte 0xc5
      00AFA4                       1389 00253$:
      00AFA4 0F 03            [ 1] 1390 	clr	(0x03, sp)
      00AFA6                       1391 00254$:
      00AFA6 A3 02 77         [ 2] 1392 	cpw	x, #0x0277
      00AFA9 27 2F            [ 1] 1393 	jreq	00129$
      00AFAB A3 02 66         [ 2] 1394 	cpw	x, #0x0266
      00AFAE 27 2A            [ 1] 1395 	jreq	00129$
      00AFB0 A3 02 55         [ 2] 1396 	cpw	x, #0x0255
      00AFB3 27 25            [ 1] 1397 	jreq	00129$
      00AFB5 A3 02 44         [ 2] 1398 	cpw	x, #0x0244
      00AFB8 27 20            [ 1] 1399 	jreq	00129$
      00AFBA A3 02 35         [ 2] 1400 	cpw	x, #0x0235
      00AFBD 27 1B            [ 1] 1401 	jreq	00129$
      00AFBF 0D 01            [ 1] 1402 	tnz	(0x01, sp)
      00AFC1 26 17            [ 1] 1403 	jrne	00129$
      00AFC3 0D 02            [ 1] 1404 	tnz	(0x02, sp)
      00AFC5 26 13            [ 1] 1405 	jrne	00129$
      00AFC7 0D 03            [ 1] 1406 	tnz	(0x03, sp)
      00AFC9 26 0F            [ 1] 1407 	jrne	00129$
      00AFCB 4B EB            [ 1] 1408 	push	#0xeb
      00AFCD 4B 02            [ 1] 1409 	push	#0x02
      00AFCF 5F               [ 1] 1410 	clrw	x
      00AFD0 89               [ 2] 1411 	pushw	x
      00AFD1 4B EE            [ 1] 1412 	push	#<(___str_0+0)
      00AFD3 4B 82            [ 1] 1413 	push	#((___str_0+0) >> 8)
      00AFD5 CD 85 5C         [ 4] 1414 	call	_assert_failed
      00AFD8 5B 06            [ 2] 1415 	addw	sp, #6
      00AFDA                       1416 00129$:
                                   1417 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      00AFDA 7B 09            [ 1] 1418 	ld	a, (0x09, sp)
      00AFDC 97               [ 1] 1419 	ld	xl, a
      00AFDD A4 0F            [ 1] 1420 	and	a, #0x0f
      00AFDF 88               [ 1] 1421 	push	a
      00AFE0 A6 01            [ 1] 1422 	ld	a, #0x01
      00AFE2 6B 05            [ 1] 1423 	ld	(0x05, sp), a
      00AFE4 84               [ 1] 1424 	pop	a
      00AFE5 4D               [ 1] 1425 	tnz	a
      00AFE6 27 05            [ 1] 1426 	jreq	00274$
      00AFE8                       1427 00273$:
      00AFE8 08 04            [ 1] 1428 	sll	(0x04, sp)
      00AFEA 4A               [ 1] 1429 	dec	a
      00AFEB 26 FB            [ 1] 1430 	jrne	00273$
      00AFED                       1431 00274$:
                                   1432 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
      00AFED 9F               [ 1] 1433 	ld	a, xl
      00AFEE 4E               [ 1] 1434 	swap	a
      00AFEF A4 0F            [ 1] 1435 	and	a, #0x0f
                                   1436 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      00AFF1 88               [ 1] 1437 	push	a
      00AFF2 A6 01            [ 1] 1438 	ld	a, #0x01
      00AFF4 6B 06            [ 1] 1439 	ld	(0x06, sp), a
      00AFF6 84               [ 1] 1440 	pop	a
      00AFF7 4D               [ 1] 1441 	tnz	a
      00AFF8 27 05            [ 1] 1442 	jreq	00276$
      00AFFA                       1443 00275$:
      00AFFA 08 05            [ 1] 1444 	sll	(0x05, sp)
      00AFFC 4A               [ 1] 1445 	dec	a
      00AFFD 26 FB            [ 1] 1446 	jrne	00275$
      00AFFF                       1447 00276$:
                                   1448 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
      00AFFF 7B 03            [ 1] 1449 	ld	a, (0x03, sp)
      00B001 27 18            [ 1] 1450 	jreq	00124$
                                   1451 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
      00B003 C6 52 44         [ 1] 1452 	ld	a, 0x5244
      00B006 14 05            [ 1] 1453 	and	a, (0x05, sp)
      00B008 97               [ 1] 1454 	ld	xl, a
                                   1455 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00B009 C6 52 40         [ 1] 1456 	ld	a, 0x5240
      00B00C 14 04            [ 1] 1457 	and	a, (0x04, sp)
      00B00E 27 08            [ 1] 1458 	jreq	00102$
      00B010 9F               [ 1] 1459 	ld	a, xl
      00B011 4D               [ 1] 1460 	tnz	a
      00B012 27 04            [ 1] 1461 	jreq	00102$
                                   1462 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 766: pendingbitstatus = SET;
      00B014 A6 01            [ 1] 1463 	ld	a, #0x01
      00B016 20 50            [ 2] 1464 	jra	00125$
      00B018                       1465 00102$:
                                   1466 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 771: pendingbitstatus = RESET;
      00B018 4F               [ 1] 1467 	clr	a
      00B019 20 4D            [ 2] 1468 	jra	00125$
      00B01B                       1469 00124$:
                                   1470 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
      00B01B 7B 01            [ 1] 1471 	ld	a, (0x01, sp)
      00B01D 27 18            [ 1] 1472 	jreq	00121$
                                   1473 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
      00B01F C6 52 47         [ 1] 1474 	ld	a, 0x5247
      00B022 14 05            [ 1] 1475 	and	a, (0x05, sp)
      00B024 97               [ 1] 1476 	ld	xl, a
                                   1477 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      00B025 C6 52 47         [ 1] 1478 	ld	a, 0x5247
      00B028 14 04            [ 1] 1479 	and	a, (0x04, sp)
      00B02A 27 08            [ 1] 1480 	jreq	00106$
      00B02C 9F               [ 1] 1481 	ld	a, xl
      00B02D 4D               [ 1] 1482 	tnz	a
      00B02E 27 04            [ 1] 1483 	jreq	00106$
                                   1484 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 782: pendingbitstatus = SET;
      00B030 A6 01            [ 1] 1485 	ld	a, #0x01
      00B032 20 34            [ 2] 1486 	jra	00125$
      00B034                       1487 00106$:
                                   1488 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 787: pendingbitstatus = RESET;
      00B034 4F               [ 1] 1489 	clr	a
      00B035 20 31            [ 2] 1490 	jra	00125$
      00B037                       1491 00121$:
                                   1492 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
      00B037 7B 02            [ 1] 1493 	ld	a, (0x02, sp)
      00B039 27 18            [ 1] 1494 	jreq	00118$
                                   1495 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
      00B03B C6 52 49         [ 1] 1496 	ld	a, 0x5249
      00B03E 14 05            [ 1] 1497 	and	a, (0x05, sp)
      00B040 97               [ 1] 1498 	ld	xl, a
                                   1499 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
      00B041 C6 52 49         [ 1] 1500 	ld	a, 0x5249
      00B044 14 04            [ 1] 1501 	and	a, (0x04, sp)
      00B046 27 08            [ 1] 1502 	jreq	00110$
      00B048 9F               [ 1] 1503 	ld	a, xl
      00B049 4D               [ 1] 1504 	tnz	a
      00B04A 27 04            [ 1] 1505 	jreq	00110$
                                   1506 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 798: pendingbitstatus = SET;
      00B04C A6 01            [ 1] 1507 	ld	a, #0x01
      00B04E 20 18            [ 2] 1508 	jra	00125$
      00B050                       1509 00110$:
                                   1510 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 803: pendingbitstatus = RESET;
      00B050 4F               [ 1] 1511 	clr	a
      00B051 20 15            [ 2] 1512 	jra	00125$
      00B053                       1513 00118$:
                                   1514 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
      00B053 C6 52 45         [ 1] 1515 	ld	a, 0x5245
      00B056 14 05            [ 1] 1516 	and	a, (0x05, sp)
      00B058 97               [ 1] 1517 	ld	xl, a
                                   1518 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00B059 C6 52 40         [ 1] 1519 	ld	a, 0x5240
      00B05C 14 04            [ 1] 1520 	and	a, (0x04, sp)
      00B05E 27 07            [ 1] 1521 	jreq	00114$
      00B060 9F               [ 1] 1522 	ld	a, xl
      00B061 4D               [ 1] 1523 	tnz	a
      00B062 27 03            [ 1] 1524 	jreq	00114$
                                   1525 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 814: pendingbitstatus = SET;
      00B064 A6 01            [ 1] 1526 	ld	a, #0x01
                                   1527 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 819: pendingbitstatus = RESET;
      00B066 21                    1528 	.byte 0x21
      00B067                       1529 00114$:
      00B067 4F               [ 1] 1530 	clr	a
      00B068                       1531 00125$:
                                   1532 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 823: return  pendingbitstatus;
                                   1533 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 824: }
      00B068 5B 05            [ 2] 1534 	addw	sp, #5
      00B06A 81               [ 4] 1535 	ret
                                   1536 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
                                   1537 ;	-----------------------------------------
                                   1538 ;	 function UART2_ClearITPendingBit
                                   1539 ;	-----------------------------------------
      00B06B                       1540 _UART2_ClearITPendingBit:
      00B06B 88               [ 1] 1541 	push	a
                                   1542 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 854: assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
      00B06C 1E 04            [ 2] 1543 	ldw	x, (0x04, sp)
      00B06E A3 02 55         [ 2] 1544 	cpw	x, #0x0255
      00B071 26 03            [ 1] 1545 	jrne	00143$
      00B073 A6 01            [ 1] 1546 	ld	a, #0x01
      00B075 21                    1547 	.byte 0x21
      00B076                       1548 00143$:
      00B076 4F               [ 1] 1549 	clr	a
      00B077                       1550 00144$:
      00B077 A3 03 46         [ 2] 1551 	cpw	x, #0x0346
      00B07A 26 07            [ 1] 1552 	jrne	00146$
      00B07C 88               [ 1] 1553 	push	a
      00B07D A6 01            [ 1] 1554 	ld	a, #0x01
      00B07F 6B 02            [ 1] 1555 	ld	(0x02, sp), a
      00B081 84               [ 1] 1556 	pop	a
      00B082 C5                    1557 	.byte 0xc5
      00B083                       1558 00146$:
      00B083 0F 01            [ 1] 1559 	clr	(0x01, sp)
      00B085                       1560 00147$:
      00B085 4D               [ 1] 1561 	tnz	a
      00B086 26 1A            [ 1] 1562 	jrne	00110$
      00B088 A3 04 12         [ 2] 1563 	cpw	x, #0x0412
      00B08B 27 15            [ 1] 1564 	jreq	00110$
      00B08D 0D 01            [ 1] 1565 	tnz	(0x01, sp)
      00B08F 26 11            [ 1] 1566 	jrne	00110$
      00B091 88               [ 1] 1567 	push	a
      00B092 4B 56            [ 1] 1568 	push	#0x56
      00B094 4B 03            [ 1] 1569 	push	#0x03
      00B096 5F               [ 1] 1570 	clrw	x
      00B097 89               [ 2] 1571 	pushw	x
      00B098 4B EE            [ 1] 1572 	push	#<(___str_0+0)
      00B09A 4B 82            [ 1] 1573 	push	#((___str_0+0) >> 8)
      00B09C CD 85 5C         [ 4] 1574 	call	_assert_failed
      00B09F 5B 06            [ 2] 1575 	addw	sp, #6
      00B0A1 84               [ 1] 1576 	pop	a
      00B0A2                       1577 00110$:
                                   1578 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
      00B0A2 4D               [ 1] 1579 	tnz	a
      00B0A3 27 06            [ 1] 1580 	jreq	00105$
                                   1581 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      00B0A5 35 DF 52 40      [ 1] 1582 	mov	0x5240+0, #0xdf
      00B0A9 20 0E            [ 2] 1583 	jra	00107$
      00B0AB                       1584 00105$:
                                   1585 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
      00B0AB 7B 01            [ 1] 1586 	ld	a, (0x01, sp)
      00B0AD 27 06            [ 1] 1587 	jreq	00102$
                                   1588 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
      00B0AF 72 19 52 47      [ 1] 1589 	bres	21063, #4
      00B0B3 20 04            [ 2] 1590 	jra	00107$
      00B0B5                       1591 00102$:
                                   1592 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      00B0B5 72 13 52 49      [ 1] 1593 	bres	21065, #1
      00B0B9                       1594 00107$:
                                   1595 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 871: }
      00B0B9 84               [ 1] 1596 	pop	a
      00B0BA 81               [ 4] 1597 	ret
                                   1598 	.area CODE
                                   1599 	.area CONST
                                   1600 	.area CONST
      0082EE                       1601 ___str_0:
      0082EE 2F 55 73 65 72 73 2F  1602 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      00832A 4D 38 53 5F 53 74 64  1603 	.ascii "M8S_StdPeriph_Driver/src/stm8s_uart2.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 75 61 72 74
             32 2E 63
      008350 00                    1604 	.db 0x00
                                   1605 	.area CODE
                                   1606 	.area INITIALIZER
                                   1607 	.area CABS (ABS)
