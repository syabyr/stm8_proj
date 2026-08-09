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
                                     75 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 53: void UART2_DeInit(void)
                                     76 ;	-----------------------------------------
                                     77 ;	 function UART2_DeInit
                                     78 ;	-----------------------------------------
      008899                         79 _UART2_DeInit:
                                     80 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 57: (void) UART2->SR;
      008899 C6 52 40         [ 1]   81 	ld	a, 0x5240
                                     82 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 58: (void)UART2->DR;
      00889C C6 52 41         [ 1]   83 	ld	a, 0x5241
                                     84 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
      00889F 35 00 52 43      [ 1]   85 	mov	0x5243+0, #0x00
                                     86 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
      0088A3 35 00 52 42      [ 1]   87 	mov	0x5242+0, #0x00
                                     88 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
      0088A7 35 00 52 44      [ 1]   89 	mov	0x5244+0, #0x00
                                     90 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
      0088AB 35 00 52 45      [ 1]   91 	mov	0x5245+0, #0x00
                                     92 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
      0088AF 35 00 52 46      [ 1]   93 	mov	0x5246+0, #0x00
                                     94 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
      0088B3 35 00 52 47      [ 1]   95 	mov	0x5247+0, #0x00
                                     96 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
      0088B7 35 00 52 48      [ 1]   97 	mov	0x5248+0, #0x00
                                     98 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
      0088BB 35 00 52 49      [ 1]   99 	mov	0x5249+0, #0x00
                                    100 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 69: }
      0088BF 81               [ 4]  101 	ret
                                    102 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
                                    103 ;	-----------------------------------------
                                    104 ;	 function UART2_Init
                                    105 ;	-----------------------------------------
      0088C0                        106 _UART2_Init:
      0088C0 52 0C            [ 2]  107 	sub	sp, #12
                                    108 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 91: assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
      0088C2 AE 89 68         [ 2]  109 	ldw	x, #0x8968
      0088C5 13 11            [ 2]  110 	cpw	x, (0x11, sp)
      0088C7 A6 09            [ 1]  111 	ld	a, #0x09
      0088C9 12 10            [ 1]  112 	sbc	a, (0x10, sp)
      0088CB 4F               [ 1]  113 	clr	a
      0088CC 12 0F            [ 1]  114 	sbc	a, (0x0f, sp)
      0088CE 24 0F            [ 1]  115 	jrnc	00113$
      0088D0 4B 5B            [ 1]  116 	push	#0x5b
      0088D2 5F               [ 1]  117 	clrw	x
      0088D3 89               [ 2]  118 	pushw	x
      0088D4 4B 00            [ 1]  119 	push	#0x00
      0088D6 4B DC            [ 1]  120 	push	#<(___str_0+0)
      0088D8 4B 80            [ 1]  121 	push	#((___str_0+0) >> 8)
      0088DA CD 83 84         [ 4]  122 	call	_assert_failed
      0088DD 5B 06            [ 2]  123 	addw	sp, #6
      0088DF                        124 00113$:
                                    125 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 92: assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
      0088DF 0D 13            [ 1]  126 	tnz	(0x13, sp)
      0088E1 27 15            [ 1]  127 	jreq	00115$
      0088E3 7B 13            [ 1]  128 	ld	a, (0x13, sp)
      0088E5 A1 10            [ 1]  129 	cp	a, #0x10
      0088E7 27 0F            [ 1]  130 	jreq	00115$
      0088E9 4B 5C            [ 1]  131 	push	#0x5c
      0088EB 5F               [ 1]  132 	clrw	x
      0088EC 89               [ 2]  133 	pushw	x
      0088ED 4B 00            [ 1]  134 	push	#0x00
      0088EF 4B DC            [ 1]  135 	push	#<(___str_0+0)
      0088F1 4B 80            [ 1]  136 	push	#((___str_0+0) >> 8)
      0088F3 CD 83 84         [ 4]  137 	call	_assert_failed
      0088F6 5B 06            [ 2]  138 	addw	sp, #6
      0088F8                        139 00115$:
                                    140 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 93: assert_param(IS_UART2_STOPBITS_OK(StopBits));
      0088F8 0D 14            [ 1]  141 	tnz	(0x14, sp)
      0088FA 27 21            [ 1]  142 	jreq	00120$
      0088FC 7B 14            [ 1]  143 	ld	a, (0x14, sp)
      0088FE A1 10            [ 1]  144 	cp	a, #0x10
      008900 27 1B            [ 1]  145 	jreq	00120$
      008902 7B 14            [ 1]  146 	ld	a, (0x14, sp)
      008904 A1 20            [ 1]  147 	cp	a, #0x20
      008906 27 15            [ 1]  148 	jreq	00120$
      008908 7B 14            [ 1]  149 	ld	a, (0x14, sp)
      00890A A1 30            [ 1]  150 	cp	a, #0x30
      00890C 27 0F            [ 1]  151 	jreq	00120$
      00890E 4B 5D            [ 1]  152 	push	#0x5d
      008910 5F               [ 1]  153 	clrw	x
      008911 89               [ 2]  154 	pushw	x
      008912 4B 00            [ 1]  155 	push	#0x00
      008914 4B DC            [ 1]  156 	push	#<(___str_0+0)
      008916 4B 80            [ 1]  157 	push	#((___str_0+0) >> 8)
      008918 CD 83 84         [ 4]  158 	call	_assert_failed
      00891B 5B 06            [ 2]  159 	addw	sp, #6
      00891D                        160 00120$:
                                    161 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 94: assert_param(IS_UART2_PARITY_OK(Parity));
      00891D 0D 15            [ 1]  162 	tnz	(0x15, sp)
      00891F 27 1B            [ 1]  163 	jreq	00131$
      008921 7B 15            [ 1]  164 	ld	a, (0x15, sp)
      008923 A1 04            [ 1]  165 	cp	a, #0x04
      008925 27 15            [ 1]  166 	jreq	00131$
      008927 7B 15            [ 1]  167 	ld	a, (0x15, sp)
      008929 A1 06            [ 1]  168 	cp	a, #0x06
      00892B 27 0F            [ 1]  169 	jreq	00131$
      00892D 4B 5E            [ 1]  170 	push	#0x5e
      00892F 5F               [ 1]  171 	clrw	x
      008930 89               [ 2]  172 	pushw	x
      008931 4B 00            [ 1]  173 	push	#0x00
      008933 4B DC            [ 1]  174 	push	#<(___str_0+0)
      008935 4B 80            [ 1]  175 	push	#((___str_0+0) >> 8)
      008937 CD 83 84         [ 4]  176 	call	_assert_failed
      00893A 5B 06            [ 2]  177 	addw	sp, #6
      00893C                        178 00131$:
                                    179 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 95: assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
      00893C 7B 17            [ 1]  180 	ld	a, (0x17, sp)
      00893E A1 08            [ 1]  181 	cp	a, #0x08
      008940 27 42            [ 1]  182 	jreq	00139$
      008942 7B 17            [ 1]  183 	ld	a, (0x17, sp)
      008944 A1 40            [ 1]  184 	cp	a, #0x40
      008946 27 3C            [ 1]  185 	jreq	00139$
      008948 7B 17            [ 1]  186 	ld	a, (0x17, sp)
      00894A A1 04            [ 1]  187 	cp	a, #0x04
      00894C 27 36            [ 1]  188 	jreq	00139$
      00894E 7B 17            [ 1]  189 	ld	a, (0x17, sp)
      008950 A1 80            [ 1]  190 	cp	a, #0x80
      008952 27 30            [ 1]  191 	jreq	00139$
      008954 7B 17            [ 1]  192 	ld	a, (0x17, sp)
      008956 A0 0C            [ 1]  193 	sub	a, #0x0c
      008958 26 02            [ 1]  194 	jrne	00339$
      00895A 4C               [ 1]  195 	inc	a
      00895B 21                     196 	.byte 0x21
      00895C                        197 00339$:
      00895C 4F               [ 1]  198 	clr	a
      00895D                        199 00340$:
      00895D 4D               [ 1]  200 	tnz	a
      00895E 26 24            [ 1]  201 	jrne	00139$
      008960 4D               [ 1]  202 	tnz	a
      008961 26 21            [ 1]  203 	jrne	00139$
      008963 7B 17            [ 1]  204 	ld	a, (0x17, sp)
      008965 A1 44            [ 1]  205 	cp	a, #0x44
      008967 27 1B            [ 1]  206 	jreq	00139$
      008969 7B 17            [ 1]  207 	ld	a, (0x17, sp)
      00896B A1 C0            [ 1]  208 	cp	a, #0xc0
      00896D 27 15            [ 1]  209 	jreq	00139$
      00896F 7B 17            [ 1]  210 	ld	a, (0x17, sp)
      008971 A1 88            [ 1]  211 	cp	a, #0x88
      008973 27 0F            [ 1]  212 	jreq	00139$
      008975 4B 5F            [ 1]  213 	push	#0x5f
      008977 5F               [ 1]  214 	clrw	x
      008978 89               [ 2]  215 	pushw	x
      008979 4B 00            [ 1]  216 	push	#0x00
      00897B 4B DC            [ 1]  217 	push	#<(___str_0+0)
      00897D 4B 80            [ 1]  218 	push	#((___str_0+0) >> 8)
      00897F CD 83 84         [ 4]  219 	call	_assert_failed
      008982 5B 06            [ 2]  220 	addw	sp, #6
      008984                        221 00139$:
                                    222 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 96: assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
      008984 7B 16            [ 1]  223 	ld	a, (0x16, sp)
      008986 A4 88            [ 1]  224 	and	a, #0x88
      008988 A1 88            [ 1]  225 	cp	a, #0x88
      00898A 27 18            [ 1]  226 	jreq	00167$
      00898C 7B 16            [ 1]  227 	ld	a, (0x16, sp)
      00898E A4 44            [ 1]  228 	and	a, #0x44
      008990 A1 44            [ 1]  229 	cp	a, #0x44
      008992 27 10            [ 1]  230 	jreq	00167$
      008994 7B 16            [ 1]  231 	ld	a, (0x16, sp)
      008996 A4 22            [ 1]  232 	and	a, #0x22
      008998 A1 22            [ 1]  233 	cp	a, #0x22
      00899A 27 08            [ 1]  234 	jreq	00167$
      00899C 7B 16            [ 1]  235 	ld	a, (0x16, sp)
      00899E A4 11            [ 1]  236 	and	a, #0x11
      0089A0 A1 11            [ 1]  237 	cp	a, #0x11
      0089A2 26 0F            [ 1]  238 	jrne	00165$
      0089A4                        239 00167$:
      0089A4 4B 60            [ 1]  240 	push	#0x60
      0089A6 5F               [ 1]  241 	clrw	x
      0089A7 89               [ 2]  242 	pushw	x
      0089A8 4B 00            [ 1]  243 	push	#0x00
      0089AA 4B DC            [ 1]  244 	push	#<(___str_0+0)
      0089AC 4B 80            [ 1]  245 	push	#((___str_0+0) >> 8)
      0089AE CD 83 84         [ 4]  246 	call	_assert_failed
      0089B1 5B 06            [ 2]  247 	addw	sp, #6
      0089B3                        248 00165$:
                                    249 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
      0089B3 72 19 52 44      [ 1]  250 	bres	21060, #4
                                    251 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
      0089B7 C6 52 44         [ 1]  252 	ld	a, 0x5244
      0089BA 1A 13            [ 1]  253 	or	a, (0x13, sp)
      0089BC C7 52 44         [ 1]  254 	ld	0x5244, a
                                    255 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      0089BF C6 52 46         [ 1]  256 	ld	a, 0x5246
      0089C2 A4 CF            [ 1]  257 	and	a, #0xcf
      0089C4 C7 52 46         [ 1]  258 	ld	0x5246, a
                                    259 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
      0089C7 C6 52 46         [ 1]  260 	ld	a, 0x5246
      0089CA 1A 14            [ 1]  261 	or	a, (0x14, sp)
      0089CC C7 52 46         [ 1]  262 	ld	0x5246, a
                                    263 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
      0089CF C6 52 44         [ 1]  264 	ld	a, 0x5244
      0089D2 A4 F9            [ 1]  265 	and	a, #0xf9
      0089D4 C7 52 44         [ 1]  266 	ld	0x5244, a
                                    267 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
      0089D7 C6 52 44         [ 1]  268 	ld	a, 0x5244
      0089DA 1A 15            [ 1]  269 	or	a, (0x15, sp)
      0089DC C7 52 44         [ 1]  270 	ld	0x5244, a
                                    271 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
      0089DF C6 52 42         [ 1]  272 	ld	a, 0x5242
      0089E2 35 00 52 42      [ 1]  273 	mov	0x5242+0, #0x00
                                    274 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
      0089E6 C6 52 43         [ 1]  275 	ld	a, 0x5243
      0089E9 A4 0F            [ 1]  276 	and	a, #0x0f
      0089EB C7 52 43         [ 1]  277 	ld	0x5243, a
                                    278 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
      0089EE C6 52 43         [ 1]  279 	ld	a, 0x5243
      0089F1 A4 F0            [ 1]  280 	and	a, #0xf0
      0089F3 C7 52 43         [ 1]  281 	ld	0x5243, a
                                    282 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0089F6 CD 95 FD         [ 4]  283 	call	_CLK_GetClockFreq
      0089F9 1F 0B            [ 2]  284 	ldw	(0x0b, sp), x
      0089FB 1E 0F            [ 2]  285 	ldw	x, (0x0f, sp)
      0089FD 1F 05            [ 2]  286 	ldw	(0x05, sp), x
      0089FF 1E 11            [ 2]  287 	ldw	x, (0x11, sp)
      008A01 A6 04            [ 1]  288 	ld	a, #0x04
      008A03                        289 00364$:
      008A03 58               [ 2]  290 	sllw	x
      008A04 09 06            [ 1]  291 	rlc	(0x06, sp)
      008A06 09 05            [ 1]  292 	rlc	(0x05, sp)
      008A08 4A               [ 1]  293 	dec	a
      008A09 26 F8            [ 1]  294 	jrne	00364$
      008A0B 1F 07            [ 2]  295 	ldw	(0x07, sp), x
      008A0D 89               [ 2]  296 	pushw	x
      008A0E 1E 07            [ 2]  297 	ldw	x, (0x07, sp)
      008A10 89               [ 2]  298 	pushw	x
      008A11 1E 0F            [ 2]  299 	ldw	x, (0x0f, sp)
      008A13 89               [ 2]  300 	pushw	x
      008A14 90 89            [ 2]  301 	pushw	y
      008A16 CD CC 9E         [ 4]  302 	call	__divulong
      008A19 5B 08            [ 2]  303 	addw	sp, #8
      008A1B 1F 03            [ 2]  304 	ldw	(0x03, sp), x
      008A1D 17 01            [ 2]  305 	ldw	(0x01, sp), y
                                    306 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      008A1F CD 95 FD         [ 4]  307 	call	_CLK_GetClockFreq
      008A22 89               [ 2]  308 	pushw	x
      008A23 90 89            [ 2]  309 	pushw	y
      008A25 4B 64            [ 1]  310 	push	#0x64
      008A27 5F               [ 1]  311 	clrw	x
      008A28 89               [ 2]  312 	pushw	x
      008A29 4B 00            [ 1]  313 	push	#0x00
      008A2B CD CD 4D         [ 4]  314 	call	__mullong
      008A2E 5B 08            [ 2]  315 	addw	sp, #8
      008A30 1F 0B            [ 2]  316 	ldw	(0x0b, sp), x
      008A32 1E 07            [ 2]  317 	ldw	x, (0x07, sp)
      008A34 89               [ 2]  318 	pushw	x
      008A35 1E 07            [ 2]  319 	ldw	x, (0x07, sp)
      008A37 89               [ 2]  320 	pushw	x
      008A38 1E 0F            [ 2]  321 	ldw	x, (0x0f, sp)
      008A3A 89               [ 2]  322 	pushw	x
      008A3B 90 89            [ 2]  323 	pushw	y
      008A3D CD CC 9E         [ 4]  324 	call	__divulong
      008A40 5B 08            [ 2]  325 	addw	sp, #8
      008A42 90 9E            [ 1]  326 	ld	a, yh
      008A44 1F 07            [ 2]  327 	ldw	(0x07, sp), x
      008A46 6B 05            [ 1]  328 	ld	(0x05, sp), a
      008A48 90 9F            [ 1]  329 	ld	a, yl
                                    330 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
      008A4A 88               [ 1]  331 	push	a
      008A4B 1E 04            [ 2]  332 	ldw	x, (0x04, sp)
      008A4D 89               [ 2]  333 	pushw	x
      008A4E 1E 04            [ 2]  334 	ldw	x, (0x04, sp)
      008A50 89               [ 2]  335 	pushw	x
      008A51 4B 64            [ 1]  336 	push	#0x64
      008A53 5F               [ 1]  337 	clrw	x
      008A54 89               [ 2]  338 	pushw	x
      008A55 4B 00            [ 1]  339 	push	#0x00
      008A57 CD CD 4D         [ 4]  340 	call	__mullong
      008A5A 5B 08            [ 2]  341 	addw	sp, #8
      008A5C 1F 0C            [ 2]  342 	ldw	(0x0c, sp), x
      008A5E 17 0A            [ 2]  343 	ldw	(0x0a, sp), y
      008A60 84               [ 1]  344 	pop	a
      008A61 16 07            [ 2]  345 	ldw	y, (0x07, sp)
      008A63 72 F2 0B         [ 2]  346 	subw	y, (0x0b, sp)
      008A66 12 0A            [ 1]  347 	sbc	a, (0x0a, sp)
      008A68 97               [ 1]  348 	ld	xl, a
      008A69 7B 05            [ 1]  349 	ld	a, (0x05, sp)
      008A6B 12 09            [ 1]  350 	sbc	a, (0x09, sp)
      008A6D 95               [ 1]  351 	ld	xh, a
      008A6E A6 04            [ 1]  352 	ld	a, #0x04
      008A70                        353 00366$:
      008A70 90 58            [ 2]  354 	sllw	y
      008A72 59               [ 2]  355 	rlcw	x
      008A73 4A               [ 1]  356 	dec	a
      008A74 26 FA            [ 1]  357 	jrne	00366$
      008A76 4B 64            [ 1]  358 	push	#0x64
      008A78 4B 00            [ 1]  359 	push	#0x00
      008A7A 4B 00            [ 1]  360 	push	#0x00
      008A7C 4B 00            [ 1]  361 	push	#0x00
      008A7E 90 89            [ 2]  362 	pushw	y
      008A80 89               [ 2]  363 	pushw	x
      008A81 CD CC 9E         [ 4]  364 	call	__divulong
      008A84 5B 08            [ 2]  365 	addw	sp, #8
      008A86 9F               [ 1]  366 	ld	a, xl
      008A87 A4 0F            [ 1]  367 	and	a, #0x0f
      008A89 6B 0C            [ 1]  368 	ld	(0x0c, sp), a
                                    369 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
      008A8B 1E 03            [ 2]  370 	ldw	x, (0x03, sp)
      008A8D A6 10            [ 1]  371 	ld	a, #0x10
      008A8F 62               [ 2]  372 	div	x, a
      008A90 9F               [ 1]  373 	ld	a, xl
      008A91 A4 F0            [ 1]  374 	and	a, #0xf0
                                    375 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
      008A93 1A 0C            [ 1]  376 	or	a, (0x0c, sp)
      008A95 C7 52 43         [ 1]  377 	ld	0x5243, a
                                    378 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
      008A98 7B 04            [ 1]  379 	ld	a, (0x04, sp)
      008A9A C7 52 42         [ 1]  380 	ld	0x5242, a
                                    381 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      008A9D C6 52 45         [ 1]  382 	ld	a, 0x5245
      008AA0 A4 F3            [ 1]  383 	and	a, #0xf3
      008AA2 C7 52 45         [ 1]  384 	ld	0x5245, a
                                    385 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
      008AA5 C6 52 46         [ 1]  386 	ld	a, 0x5246
      008AA8 A4 F8            [ 1]  387 	and	a, #0xf8
      008AAA C7 52 46         [ 1]  388 	ld	0x5246, a
                                    389 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
      008AAD C6 52 46         [ 1]  390 	ld	a, 0x5246
      008AB0 6B 0C            [ 1]  391 	ld	(0x0c, sp), a
      008AB2 7B 16            [ 1]  392 	ld	a, (0x16, sp)
      008AB4 A4 07            [ 1]  393 	and	a, #0x07
      008AB6 1A 0C            [ 1]  394 	or	a, (0x0c, sp)
      008AB8 C7 52 46         [ 1]  395 	ld	0x5246, a
                                    396 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      008ABB C6 52 45         [ 1]  397 	ld	a, 0x5245
                                    398 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
      008ABE 88               [ 1]  399 	push	a
      008ABF 7B 18            [ 1]  400 	ld	a, (0x18, sp)
      008AC1 A5 04            [ 1]  401 	bcp	a, #0x04
      008AC3 84               [ 1]  402 	pop	a
      008AC4 27 07            [ 1]  403 	jreq	00102$
                                    404 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
      008AC6 AA 08            [ 1]  405 	or	a, #0x08
      008AC8 C7 52 45         [ 1]  406 	ld	0x5245, a
      008ACB 20 05            [ 2]  407 	jra	00103$
      008ACD                        408 00102$:
                                    409 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
      008ACD A4 F7            [ 1]  410 	and	a, #0xf7
      008ACF C7 52 45         [ 1]  411 	ld	0x5245, a
      008AD2                        412 00103$:
                                    413 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      008AD2 C6 52 45         [ 1]  414 	ld	a, 0x5245
                                    415 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
      008AD5 88               [ 1]  416 	push	a
      008AD6 7B 18            [ 1]  417 	ld	a, (0x18, sp)
      008AD8 A5 08            [ 1]  418 	bcp	a, #0x08
      008ADA 84               [ 1]  419 	pop	a
      008ADB 27 07            [ 1]  420 	jreq	00105$
                                    421 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
      008ADD AA 04            [ 1]  422 	or	a, #0x04
      008ADF C7 52 45         [ 1]  423 	ld	0x5245, a
      008AE2 20 05            [ 2]  424 	jra	00106$
      008AE4                        425 00105$:
                                    426 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
      008AE4 A4 FB            [ 1]  427 	and	a, #0xfb
      008AE6 C7 52 45         [ 1]  428 	ld	0x5245, a
      008AE9                        429 00106$:
                                    430 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      008AE9 C6 52 46         [ 1]  431 	ld	a, 0x5246
                                    432 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
      008AEC 0D 16            [ 1]  433 	tnz	(0x16, sp)
      008AEE 2A 07            [ 1]  434 	jrpl	00108$
                                    435 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
      008AF0 A4 F7            [ 1]  436 	and	a, #0xf7
      008AF2 C7 52 46         [ 1]  437 	ld	0x5246, a
      008AF5 20 0D            [ 2]  438 	jra	00110$
      008AF7                        439 00108$:
                                    440 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
      008AF7 88               [ 1]  441 	push	a
      008AF8 7B 17            [ 1]  442 	ld	a, (0x17, sp)
      008AFA A4 08            [ 1]  443 	and	a, #0x08
      008AFC 6B 0D            [ 1]  444 	ld	(0x0d, sp), a
      008AFE 84               [ 1]  445 	pop	a
      008AFF 1A 0C            [ 1]  446 	or	a, (0x0c, sp)
      008B01 C7 52 46         [ 1]  447 	ld	0x5246, a
      008B04                        448 00110$:
                                    449 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 173: }
      008B04 5B 0C            [ 2]  450 	addw	sp, #12
      008B06 81               [ 4]  451 	ret
                                    452 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
                                    453 ;	-----------------------------------------
                                    454 ;	 function UART2_Cmd
                                    455 ;	-----------------------------------------
      008B07                        456 _UART2_Cmd:
                                    457 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      008B07 C6 52 44         [ 1]  458 	ld	a, 0x5244
                                    459 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 183: if (NewState != DISABLE)
      008B0A 0D 03            [ 1]  460 	tnz	(0x03, sp)
      008B0C 27 06            [ 1]  461 	jreq	00102$
                                    462 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      008B0E A4 DF            [ 1]  463 	and	a, #0xdf
      008B10 C7 52 44         [ 1]  464 	ld	0x5244, a
      008B13 81               [ 4]  465 	ret
      008B14                        466 00102$:
                                    467 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
      008B14 AA 20            [ 1]  468 	or	a, #0x20
      008B16 C7 52 44         [ 1]  469 	ld	0x5244, a
                                    470 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 193: }
      008B19 81               [ 4]  471 	ret
                                    472 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
                                    473 ;	-----------------------------------------
                                    474 ;	 function UART2_ITConfig
                                    475 ;	-----------------------------------------
      008B1A                        476 _UART2_ITConfig:
      008B1A 52 03            [ 2]  477 	sub	sp, #3
                                    478 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 215: assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
      008B1C 1E 06            [ 2]  479 	ldw	x, (0x06, sp)
      008B1E A3 01 00         [ 2]  480 	cpw	x, #0x0100
      008B21 27 31            [ 1]  481 	jreq	00125$
      008B23 A3 02 77         [ 2]  482 	cpw	x, #0x0277
      008B26 27 2C            [ 1]  483 	jreq	00125$
      008B28 A3 02 66         [ 2]  484 	cpw	x, #0x0266
      008B2B 27 27            [ 1]  485 	jreq	00125$
      008B2D A3 02 05         [ 2]  486 	cpw	x, #0x0205
      008B30 27 22            [ 1]  487 	jreq	00125$
      008B32 A3 02 44         [ 2]  488 	cpw	x, #0x0244
      008B35 27 1D            [ 1]  489 	jreq	00125$
      008B37 A3 04 12         [ 2]  490 	cpw	x, #0x0412
      008B3A 27 18            [ 1]  491 	jreq	00125$
      008B3C A3 03 46         [ 2]  492 	cpw	x, #0x0346
      008B3F 27 13            [ 1]  493 	jreq	00125$
      008B41 89               [ 2]  494 	pushw	x
      008B42 4B D7            [ 1]  495 	push	#0xd7
      008B44 4B 00            [ 1]  496 	push	#0x00
      008B46 4B 00            [ 1]  497 	push	#0x00
      008B48 4B 00            [ 1]  498 	push	#0x00
      008B4A 4B DC            [ 1]  499 	push	#<(___str_0+0)
      008B4C 4B 80            [ 1]  500 	push	#((___str_0+0) >> 8)
      008B4E CD 83 84         [ 4]  501 	call	_assert_failed
      008B51 5B 06            [ 2]  502 	addw	sp, #6
      008B53 85               [ 2]  503 	popw	x
      008B54                        504 00125$:
                                    505 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008B54 0D 08            [ 1]  506 	tnz	(0x08, sp)
      008B56 27 18            [ 1]  507 	jreq	00145$
      008B58 7B 08            [ 1]  508 	ld	a, (0x08, sp)
      008B5A 4A               [ 1]  509 	dec	a
      008B5B 27 13            [ 1]  510 	jreq	00145$
      008B5D 89               [ 2]  511 	pushw	x
      008B5E 4B D8            [ 1]  512 	push	#0xd8
      008B60 4B 00            [ 1]  513 	push	#0x00
      008B62 4B 00            [ 1]  514 	push	#0x00
      008B64 4B 00            [ 1]  515 	push	#0x00
      008B66 4B DC            [ 1]  516 	push	#<(___str_0+0)
      008B68 4B 80            [ 1]  517 	push	#((___str_0+0) >> 8)
      008B6A CD 83 84         [ 4]  518 	call	_assert_failed
      008B6D 5B 06            [ 2]  519 	addw	sp, #6
      008B6F 85               [ 2]  520 	popw	x
      008B70                        521 00145$:
                                    522 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
                                    523 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      008B70 7B 07            [ 1]  524 	ld	a, (0x07, sp)
      008B72 A4 0F            [ 1]  525 	and	a, #0x0f
      008B74 88               [ 1]  526 	push	a
      008B75 A6 01            [ 1]  527 	ld	a, #0x01
      008B77 6B 04            [ 1]  528 	ld	(0x04, sp), a
      008B79 84               [ 1]  529 	pop	a
      008B7A 4D               [ 1]  530 	tnz	a
      008B7B 27 05            [ 1]  531 	jreq	00255$
      008B7D                        532 00254$:
      008B7D 08 03            [ 1]  533 	sll	(0x03, sp)
      008B7F 4A               [ 1]  534 	dec	a
      008B80 26 FB            [ 1]  535 	jrne	00254$
      008B82                        536 00255$:
                                    537 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      008B82 9E               [ 1]  538 	ld	a, xh
      008B83 4A               [ 1]  539 	dec	a
      008B84 26 05            [ 1]  540 	jrne	00257$
      008B86 A6 01            [ 1]  541 	ld	a, #0x01
      008B88 6B 01            [ 1]  542 	ld	(0x01, sp), a
      008B8A C5                     543 	.byte 0xc5
      008B8B                        544 00257$:
      008B8B 0F 01            [ 1]  545 	clr	(0x01, sp)
      008B8D                        546 00258$:
                                    547 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      008B8D 9E               [ 1]  548 	ld	a, xh
      008B8E A0 02            [ 1]  549 	sub	a, #0x02
      008B90 26 04            [ 1]  550 	jrne	00260$
      008B92 4C               [ 1]  551 	inc	a
      008B93 6B 02            [ 1]  552 	ld	(0x02, sp), a
      008B95 C5                     553 	.byte 0xc5
      008B96                        554 00260$:
      008B96 0F 02            [ 1]  555 	clr	(0x02, sp)
      008B98                        556 00261$:
                                    557 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      008B98 9E               [ 1]  558 	ld	a, xh
      008B99 A0 03            [ 1]  559 	sub	a, #0x03
      008B9B 26 02            [ 1]  560 	jrne	00263$
      008B9D 4C               [ 1]  561 	inc	a
      008B9E 21                     562 	.byte 0x21
      008B9F                        563 00263$:
      008B9F 4F               [ 1]  564 	clr	a
      008BA0                        565 00264$:
                                    566 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 224: if (NewState != DISABLE)
      008BA0 0D 08            [ 1]  567 	tnz	(0x08, sp)
      008BA2 27 33            [ 1]  568 	jreq	00120$
                                    569 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      008BA4 0D 01            [ 1]  570 	tnz	(0x01, sp)
      008BA6 27 0A            [ 1]  571 	jreq	00108$
                                    572 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 229: UART2->CR1 |= itpos;
      008BA8 C6 52 44         [ 1]  573 	ld	a, 0x5244
      008BAB 1A 03            [ 1]  574 	or	a, (0x03, sp)
      008BAD C7 52 44         [ 1]  575 	ld	0x5244, a
      008BB0 20 5A            [ 2]  576 	jra	00122$
      008BB2                        577 00108$:
                                    578 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      008BB2 0D 02            [ 1]  579 	tnz	(0x02, sp)
      008BB4 27 0A            [ 1]  580 	jreq	00105$
                                    581 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 233: UART2->CR2 |= itpos;
      008BB6 C6 52 45         [ 1]  582 	ld	a, 0x5245
      008BB9 1A 03            [ 1]  583 	or	a, (0x03, sp)
      008BBB C7 52 45         [ 1]  584 	ld	0x5245, a
      008BBE 20 4C            [ 2]  585 	jra	00122$
      008BC0                        586 00105$:
                                    587 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      008BC0 4D               [ 1]  588 	tnz	a
      008BC1 27 0A            [ 1]  589 	jreq	00102$
                                    590 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 237: UART2->CR4 |= itpos;
      008BC3 C6 52 47         [ 1]  591 	ld	a, 0x5247
      008BC6 1A 03            [ 1]  592 	or	a, (0x03, sp)
      008BC8 C7 52 47         [ 1]  593 	ld	0x5247, a
      008BCB 20 3F            [ 2]  594 	jra	00122$
      008BCD                        595 00102$:
                                    596 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 241: UART2->CR6 |= itpos;
      008BCD C6 52 49         [ 1]  597 	ld	a, 0x5249
      008BD0 1A 03            [ 1]  598 	or	a, (0x03, sp)
      008BD2 C7 52 49         [ 1]  599 	ld	0x5249, a
      008BD5 20 35            [ 2]  600 	jra	00122$
      008BD7                        601 00120$:
                                    602 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      008BD7 88               [ 1]  603 	push	a
      008BD8 03 04            [ 1]  604 	cpl	(0x04, sp)
      008BDA 84               [ 1]  605 	pop	a
                                    606 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 247: if (uartreg == 0x01)
      008BDB 0D 01            [ 1]  607 	tnz	(0x01, sp)
      008BDD 27 0A            [ 1]  608 	jreq	00117$
                                    609 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      008BDF C6 52 44         [ 1]  610 	ld	a, 0x5244
      008BE2 14 03            [ 1]  611 	and	a, (0x03, sp)
      008BE4 C7 52 44         [ 1]  612 	ld	0x5244, a
      008BE7 20 23            [ 2]  613 	jra	00122$
      008BE9                        614 00117$:
                                    615 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 251: else if (uartreg == 0x02)
      008BE9 0D 02            [ 1]  616 	tnz	(0x02, sp)
      008BEB 27 0A            [ 1]  617 	jreq	00114$
                                    618 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
      008BED C6 52 45         [ 1]  619 	ld	a, 0x5245
      008BF0 14 03            [ 1]  620 	and	a, (0x03, sp)
      008BF2 C7 52 45         [ 1]  621 	ld	0x5245, a
      008BF5 20 15            [ 2]  622 	jra	00122$
      008BF7                        623 00114$:
                                    624 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 255: else if (uartreg == 0x03)
      008BF7 4D               [ 1]  625 	tnz	a
      008BF8 27 0A            [ 1]  626 	jreq	00111$
                                    627 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
      008BFA C6 52 47         [ 1]  628 	ld	a, 0x5247
      008BFD 14 03            [ 1]  629 	and	a, (0x03, sp)
      008BFF C7 52 47         [ 1]  630 	ld	0x5247, a
      008C02 20 08            [ 2]  631 	jra	00122$
      008C04                        632 00111$:
                                    633 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
      008C04 C6 52 49         [ 1]  634 	ld	a, 0x5249
      008C07 14 03            [ 1]  635 	and	a, (0x03, sp)
      008C09 C7 52 49         [ 1]  636 	ld	0x5249, a
      008C0C                        637 00122$:
                                    638 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 264: }
      008C0C 5B 03            [ 2]  639 	addw	sp, #3
      008C0E 81               [ 4]  640 	ret
                                    641 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
                                    642 ;	-----------------------------------------
                                    643 ;	 function UART2_IrDAConfig
                                    644 ;	-----------------------------------------
      008C0F                        645 _UART2_IrDAConfig:
                                    646 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 274: assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
      008C0F 7B 03            [ 1]  647 	ld	a, (0x03, sp)
      008C11 4A               [ 1]  648 	dec	a
      008C12 27 13            [ 1]  649 	jreq	00107$
      008C14 0D 03            [ 1]  650 	tnz	(0x03, sp)
      008C16 27 0F            [ 1]  651 	jreq	00107$
      008C18 4B 12            [ 1]  652 	push	#0x12
      008C1A 4B 01            [ 1]  653 	push	#0x01
      008C1C 5F               [ 1]  654 	clrw	x
      008C1D 89               [ 2]  655 	pushw	x
      008C1E 4B DC            [ 1]  656 	push	#<(___str_0+0)
      008C20 4B 80            [ 1]  657 	push	#((___str_0+0) >> 8)
      008C22 CD 83 84         [ 4]  658 	call	_assert_failed
      008C25 5B 06            [ 2]  659 	addw	sp, #6
      008C27                        660 00107$:
                                    661 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      008C27 C6 52 48         [ 1]  662 	ld	a, 0x5248
                                    663 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
      008C2A 0D 03            [ 1]  664 	tnz	(0x03, sp)
      008C2C 27 06            [ 1]  665 	jreq	00102$
                                    666 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      008C2E AA 04            [ 1]  667 	or	a, #0x04
      008C30 C7 52 48         [ 1]  668 	ld	0x5248, a
      008C33 81               [ 4]  669 	ret
      008C34                        670 00102$:
                                    671 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
      008C34 A4 FB            [ 1]  672 	and	a, #0xfb
      008C36 C7 52 48         [ 1]  673 	ld	0x5248, a
                                    674 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 284: }
      008C39 81               [ 4]  675 	ret
                                    676 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
                                    677 ;	-----------------------------------------
                                    678 ;	 function UART2_IrDACmd
                                    679 ;	-----------------------------------------
      008C3A                        680 _UART2_IrDACmd:
                                    681 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 295: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008C3A 0D 03            [ 1]  682 	tnz	(0x03, sp)
      008C3C 27 14            [ 1]  683 	jreq	00107$
      008C3E 7B 03            [ 1]  684 	ld	a, (0x03, sp)
      008C40 4A               [ 1]  685 	dec	a
      008C41 27 0F            [ 1]  686 	jreq	00107$
      008C43 4B 27            [ 1]  687 	push	#0x27
      008C45 4B 01            [ 1]  688 	push	#0x01
      008C47 5F               [ 1]  689 	clrw	x
      008C48 89               [ 2]  690 	pushw	x
      008C49 4B DC            [ 1]  691 	push	#<(___str_0+0)
      008C4B 4B 80            [ 1]  692 	push	#((___str_0+0) >> 8)
      008C4D CD 83 84         [ 4]  693 	call	_assert_failed
      008C50 5B 06            [ 2]  694 	addw	sp, #6
      008C52                        695 00107$:
                                    696 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      008C52 C6 52 48         [ 1]  697 	ld	a, 0x5248
                                    698 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 297: if (NewState != DISABLE)
      008C55 0D 03            [ 1]  699 	tnz	(0x03, sp)
      008C57 27 06            [ 1]  700 	jreq	00102$
                                    701 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      008C59 AA 02            [ 1]  702 	or	a, #0x02
      008C5B C7 52 48         [ 1]  703 	ld	0x5248, a
      008C5E 81               [ 4]  704 	ret
      008C5F                        705 00102$:
                                    706 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
      008C5F A4 FD            [ 1]  707 	and	a, #0xfd
      008C61 C7 52 48         [ 1]  708 	ld	0x5248, a
                                    709 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 307: }
      008C64 81               [ 4]  710 	ret
                                    711 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
                                    712 ;	-----------------------------------------
                                    713 ;	 function UART2_LINBreakDetectionConfig
                                    714 ;	-----------------------------------------
      008C65                        715 _UART2_LINBreakDetectionConfig:
                                    716 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 319: assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
      008C65 0D 03            [ 1]  717 	tnz	(0x03, sp)
      008C67 27 14            [ 1]  718 	jreq	00107$
      008C69 7B 03            [ 1]  719 	ld	a, (0x03, sp)
      008C6B 4A               [ 1]  720 	dec	a
      008C6C 27 0F            [ 1]  721 	jreq	00107$
      008C6E 4B 3F            [ 1]  722 	push	#0x3f
      008C70 4B 01            [ 1]  723 	push	#0x01
      008C72 5F               [ 1]  724 	clrw	x
      008C73 89               [ 2]  725 	pushw	x
      008C74 4B DC            [ 1]  726 	push	#<(___str_0+0)
      008C76 4B 80            [ 1]  727 	push	#((___str_0+0) >> 8)
      008C78 CD 83 84         [ 4]  728 	call	_assert_failed
      008C7B 5B 06            [ 2]  729 	addw	sp, #6
      008C7D                        730 00107$:
                                    731 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      008C7D C6 52 47         [ 1]  732 	ld	a, 0x5247
                                    733 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
      008C80 0D 03            [ 1]  734 	tnz	(0x03, sp)
      008C82 27 06            [ 1]  735 	jreq	00102$
                                    736 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      008C84 AA 20            [ 1]  737 	or	a, #0x20
      008C86 C7 52 47         [ 1]  738 	ld	0x5247, a
      008C89 81               [ 4]  739 	ret
      008C8A                        740 00102$:
                                    741 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
      008C8A A4 DF            [ 1]  742 	and	a, #0xdf
      008C8C C7 52 47         [ 1]  743 	ld	0x5247, a
                                    744 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 329: }
      008C8F 81               [ 4]  745 	ret
                                    746 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
                                    747 ;	-----------------------------------------
                                    748 ;	 function UART2_LINConfig
                                    749 ;	-----------------------------------------
      008C90                        750 _UART2_LINConfig:
                                    751 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 346: assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
      008C90 0D 03            [ 1]  752 	tnz	(0x03, sp)
      008C92 27 14            [ 1]  753 	jreq	00113$
      008C94 7B 03            [ 1]  754 	ld	a, (0x03, sp)
      008C96 4A               [ 1]  755 	dec	a
      008C97 27 0F            [ 1]  756 	jreq	00113$
      008C99 4B 5A            [ 1]  757 	push	#0x5a
      008C9B 4B 01            [ 1]  758 	push	#0x01
      008C9D 5F               [ 1]  759 	clrw	x
      008C9E 89               [ 2]  760 	pushw	x
      008C9F 4B DC            [ 1]  761 	push	#<(___str_0+0)
      008CA1 4B 80            [ 1]  762 	push	#((___str_0+0) >> 8)
      008CA3 CD 83 84         [ 4]  763 	call	_assert_failed
      008CA6 5B 06            [ 2]  764 	addw	sp, #6
      008CA8                        765 00113$:
                                    766 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 347: assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
      008CA8 7B 04            [ 1]  767 	ld	a, (0x04, sp)
      008CAA 4A               [ 1]  768 	dec	a
      008CAB 27 13            [ 1]  769 	jreq	00118$
      008CAD 0D 04            [ 1]  770 	tnz	(0x04, sp)
      008CAF 27 0F            [ 1]  771 	jreq	00118$
      008CB1 4B 5B            [ 1]  772 	push	#0x5b
      008CB3 4B 01            [ 1]  773 	push	#0x01
      008CB5 5F               [ 1]  774 	clrw	x
      008CB6 89               [ 2]  775 	pushw	x
      008CB7 4B DC            [ 1]  776 	push	#<(___str_0+0)
      008CB9 4B 80            [ 1]  777 	push	#((___str_0+0) >> 8)
      008CBB CD 83 84         [ 4]  778 	call	_assert_failed
      008CBE 5B 06            [ 2]  779 	addw	sp, #6
      008CC0                        780 00118$:
                                    781 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 348: assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
      008CC0 0D 05            [ 1]  782 	tnz	(0x05, sp)
      008CC2 27 14            [ 1]  783 	jreq	00123$
      008CC4 7B 05            [ 1]  784 	ld	a, (0x05, sp)
      008CC6 4A               [ 1]  785 	dec	a
      008CC7 27 0F            [ 1]  786 	jreq	00123$
      008CC9 4B 5C            [ 1]  787 	push	#0x5c
      008CCB 4B 01            [ 1]  788 	push	#0x01
      008CCD 5F               [ 1]  789 	clrw	x
      008CCE 89               [ 2]  790 	pushw	x
      008CCF 4B DC            [ 1]  791 	push	#<(___str_0+0)
      008CD1 4B 80            [ 1]  792 	push	#((___str_0+0) >> 8)
      008CD3 CD 83 84         [ 4]  793 	call	_assert_failed
      008CD6 5B 06            [ 2]  794 	addw	sp, #6
      008CD8                        795 00123$:
                                    796 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      008CD8 C6 52 49         [ 1]  797 	ld	a, 0x5249
                                    798 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
      008CDB 0D 03            [ 1]  799 	tnz	(0x03, sp)
      008CDD 27 07            [ 1]  800 	jreq	00102$
                                    801 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      008CDF AA 20            [ 1]  802 	or	a, #0x20
      008CE1 C7 52 49         [ 1]  803 	ld	0x5249, a
      008CE4 20 05            [ 2]  804 	jra	00103$
      008CE6                        805 00102$:
                                    806 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
      008CE6 A4 DF            [ 1]  807 	and	a, #0xdf
      008CE8 C7 52 49         [ 1]  808 	ld	0x5249, a
      008CEB                        809 00103$:
                                    810 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      008CEB C6 52 49         [ 1]  811 	ld	a, 0x5249
                                    812 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
      008CEE 0D 04            [ 1]  813 	tnz	(0x04, sp)
      008CF0 27 07            [ 1]  814 	jreq	00105$
                                    815 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
      008CF2 AA 10            [ 1]  816 	or	a, #0x10
      008CF4 C7 52 49         [ 1]  817 	ld	0x5249, a
      008CF7 20 05            [ 2]  818 	jra	00106$
      008CF9                        819 00105$:
                                    820 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
      008CF9 A4 EF            [ 1]  821 	and	a, #0xef
      008CFB C7 52 49         [ 1]  822 	ld	0x5249, a
      008CFE                        823 00106$:
                                    824 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      008CFE C6 52 49         [ 1]  825 	ld	a, 0x5249
                                    826 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
      008D01 0D 05            [ 1]  827 	tnz	(0x05, sp)
      008D03 27 06            [ 1]  828 	jreq	00108$
                                    829 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
      008D05 AA 80            [ 1]  830 	or	a, #0x80
      008D07 C7 52 49         [ 1]  831 	ld	0x5249, a
      008D0A 81               [ 4]  832 	ret
      008D0B                        833 00108$:
                                    834 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
      008D0B A4 7F            [ 1]  835 	and	a, #0x7f
      008D0D C7 52 49         [ 1]  836 	ld	0x5249, a
                                    837 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 376: }
      008D10 81               [ 4]  838 	ret
                                    839 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
                                    840 ;	-----------------------------------------
                                    841 ;	 function UART2_LINCmd
                                    842 ;	-----------------------------------------
      008D11                        843 _UART2_LINCmd:
                                    844 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 386: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D11 0D 03            [ 1]  845 	tnz	(0x03, sp)
      008D13 27 14            [ 1]  846 	jreq	00107$
      008D15 7B 03            [ 1]  847 	ld	a, (0x03, sp)
      008D17 4A               [ 1]  848 	dec	a
      008D18 27 0F            [ 1]  849 	jreq	00107$
      008D1A 4B 82            [ 1]  850 	push	#0x82
      008D1C 4B 01            [ 1]  851 	push	#0x01
      008D1E 5F               [ 1]  852 	clrw	x
      008D1F 89               [ 2]  853 	pushw	x
      008D20 4B DC            [ 1]  854 	push	#<(___str_0+0)
      008D22 4B 80            [ 1]  855 	push	#((___str_0+0) >> 8)
      008D24 CD 83 84         [ 4]  856 	call	_assert_failed
      008D27 5B 06            [ 2]  857 	addw	sp, #6
      008D29                        858 00107$:
                                    859 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      008D29 C6 52 46         [ 1]  860 	ld	a, 0x5246
                                    861 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 388: if (NewState != DISABLE)
      008D2C 0D 03            [ 1]  862 	tnz	(0x03, sp)
      008D2E 27 06            [ 1]  863 	jreq	00102$
                                    864 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      008D30 AA 40            [ 1]  865 	or	a, #0x40
      008D32 C7 52 46         [ 1]  866 	ld	0x5246, a
      008D35 81               [ 4]  867 	ret
      008D36                        868 00102$:
                                    869 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
      008D36 A4 BF            [ 1]  870 	and	a, #0xbf
      008D38 C7 52 46         [ 1]  871 	ld	0x5246, a
                                    872 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 398: }
      008D3B 81               [ 4]  873 	ret
                                    874 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
                                    875 ;	-----------------------------------------
                                    876 ;	 function UART2_SmartCardCmd
                                    877 ;	-----------------------------------------
      008D3C                        878 _UART2_SmartCardCmd:
                                    879 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 409: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D3C 0D 03            [ 1]  880 	tnz	(0x03, sp)
      008D3E 27 14            [ 1]  881 	jreq	00107$
      008D40 7B 03            [ 1]  882 	ld	a, (0x03, sp)
      008D42 4A               [ 1]  883 	dec	a
      008D43 27 0F            [ 1]  884 	jreq	00107$
      008D45 4B 99            [ 1]  885 	push	#0x99
      008D47 4B 01            [ 1]  886 	push	#0x01
      008D49 5F               [ 1]  887 	clrw	x
      008D4A 89               [ 2]  888 	pushw	x
      008D4B 4B DC            [ 1]  889 	push	#<(___str_0+0)
      008D4D 4B 80            [ 1]  890 	push	#((___str_0+0) >> 8)
      008D4F CD 83 84         [ 4]  891 	call	_assert_failed
      008D52 5B 06            [ 2]  892 	addw	sp, #6
      008D54                        893 00107$:
                                    894 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      008D54 C6 52 48         [ 1]  895 	ld	a, 0x5248
                                    896 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 411: if (NewState != DISABLE)
      008D57 0D 03            [ 1]  897 	tnz	(0x03, sp)
      008D59 27 06            [ 1]  898 	jreq	00102$
                                    899 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      008D5B AA 20            [ 1]  900 	or	a, #0x20
      008D5D C7 52 48         [ 1]  901 	ld	0x5248, a
      008D60 81               [ 4]  902 	ret
      008D61                        903 00102$:
                                    904 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
      008D61 A4 DF            [ 1]  905 	and	a, #0xdf
      008D63 C7 52 48         [ 1]  906 	ld	0x5248, a
                                    907 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 421: }
      008D66 81               [ 4]  908 	ret
                                    909 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
                                    910 ;	-----------------------------------------
                                    911 ;	 function UART2_SmartCardNACKCmd
                                    912 ;	-----------------------------------------
      008D67                        913 _UART2_SmartCardNACKCmd:
                                    914 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 432: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008D67 0D 03            [ 1]  915 	tnz	(0x03, sp)
      008D69 27 14            [ 1]  916 	jreq	00107$
      008D6B 7B 03            [ 1]  917 	ld	a, (0x03, sp)
      008D6D 4A               [ 1]  918 	dec	a
      008D6E 27 0F            [ 1]  919 	jreq	00107$
      008D70 4B B0            [ 1]  920 	push	#0xb0
      008D72 4B 01            [ 1]  921 	push	#0x01
      008D74 5F               [ 1]  922 	clrw	x
      008D75 89               [ 2]  923 	pushw	x
      008D76 4B DC            [ 1]  924 	push	#<(___str_0+0)
      008D78 4B 80            [ 1]  925 	push	#((___str_0+0) >> 8)
      008D7A CD 83 84         [ 4]  926 	call	_assert_failed
      008D7D 5B 06            [ 2]  927 	addw	sp, #6
      008D7F                        928 00107$:
                                    929 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      008D7F C6 52 48         [ 1]  930 	ld	a, 0x5248
                                    931 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 434: if (NewState != DISABLE)
      008D82 0D 03            [ 1]  932 	tnz	(0x03, sp)
      008D84 27 06            [ 1]  933 	jreq	00102$
                                    934 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      008D86 AA 10            [ 1]  935 	or	a, #0x10
      008D88 C7 52 48         [ 1]  936 	ld	0x5248, a
      008D8B 81               [ 4]  937 	ret
      008D8C                        938 00102$:
                                    939 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
      008D8C A4 EF            [ 1]  940 	and	a, #0xef
      008D8E C7 52 48         [ 1]  941 	ld	0x5248, a
                                    942 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 444: }
      008D91 81               [ 4]  943 	ret
                                    944 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
                                    945 ;	-----------------------------------------
                                    946 ;	 function UART2_WakeUpConfig
                                    947 ;	-----------------------------------------
      008D92                        948 _UART2_WakeUpConfig:
                                    949 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 454: assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
      008D92 0D 03            [ 1]  950 	tnz	(0x03, sp)
      008D94 27 15            [ 1]  951 	jreq	00104$
      008D96 7B 03            [ 1]  952 	ld	a, (0x03, sp)
      008D98 A1 08            [ 1]  953 	cp	a, #0x08
      008D9A 27 0F            [ 1]  954 	jreq	00104$
      008D9C 4B C6            [ 1]  955 	push	#0xc6
      008D9E 4B 01            [ 1]  956 	push	#0x01
      008DA0 5F               [ 1]  957 	clrw	x
      008DA1 89               [ 2]  958 	pushw	x
      008DA2 4B DC            [ 1]  959 	push	#<(___str_0+0)
      008DA4 4B 80            [ 1]  960 	push	#((___str_0+0) >> 8)
      008DA6 CD 83 84         [ 4]  961 	call	_assert_failed
      008DA9 5B 06            [ 2]  962 	addw	sp, #6
      008DAB                        963 00104$:
                                    964 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
      008DAB 72 17 52 44      [ 1]  965 	bres	21060, #3
                                    966 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
      008DAF C6 52 44         [ 1]  967 	ld	a, 0x5244
      008DB2 1A 03            [ 1]  968 	or	a, (0x03, sp)
      008DB4 C7 52 44         [ 1]  969 	ld	0x5244, a
                                    970 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 458: }
      008DB7 81               [ 4]  971 	ret
                                    972 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
                                    973 ;	-----------------------------------------
                                    974 ;	 function UART2_ReceiverWakeUpCmd
                                    975 ;	-----------------------------------------
      008DB8                        976 _UART2_ReceiverWakeUpCmd:
                                    977 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 468: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008DB8 0D 03            [ 1]  978 	tnz	(0x03, sp)
      008DBA 27 14            [ 1]  979 	jreq	00107$
      008DBC 7B 03            [ 1]  980 	ld	a, (0x03, sp)
      008DBE 4A               [ 1]  981 	dec	a
      008DBF 27 0F            [ 1]  982 	jreq	00107$
      008DC1 4B D4            [ 1]  983 	push	#0xd4
      008DC3 4B 01            [ 1]  984 	push	#0x01
      008DC5 5F               [ 1]  985 	clrw	x
      008DC6 89               [ 2]  986 	pushw	x
      008DC7 4B DC            [ 1]  987 	push	#<(___str_0+0)
      008DC9 4B 80            [ 1]  988 	push	#((___str_0+0) >> 8)
      008DCB CD 83 84         [ 4]  989 	call	_assert_failed
      008DCE 5B 06            [ 2]  990 	addw	sp, #6
      008DD0                        991 00107$:
                                    992 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      008DD0 C6 52 45         [ 1]  993 	ld	a, 0x5245
                                    994 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 470: if (NewState != DISABLE)
      008DD3 0D 03            [ 1]  995 	tnz	(0x03, sp)
      008DD5 27 06            [ 1]  996 	jreq	00102$
                                    997 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      008DD7 AA 02            [ 1]  998 	or	a, #0x02
      008DD9 C7 52 45         [ 1]  999 	ld	0x5245, a
      008DDC 81               [ 4] 1000 	ret
      008DDD                       1001 00102$:
                                   1002 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
      008DDD A4 FD            [ 1] 1003 	and	a, #0xfd
      008DDF C7 52 45         [ 1] 1004 	ld	0x5245, a
                                   1005 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 480: }
      008DE2 81               [ 4] 1006 	ret
                                   1007 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function UART2_ReceiveData8
                                   1010 ;	-----------------------------------------
      008DE3                       1011 _UART2_ReceiveData8:
                                   1012 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
      008DE3 C6 52 41         [ 1] 1013 	ld	a, 0x5241
                                   1014 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 490: }
      008DE6 81               [ 4] 1015 	ret
                                   1016 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
                                   1017 ;	-----------------------------------------
                                   1018 ;	 function UART2_ReceiveData9
                                   1019 ;	-----------------------------------------
      008DE7                       1020 _UART2_ReceiveData9:
      008DE7 89               [ 2] 1021 	pushw	x
                                   1022 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
      008DE8 C6 52 44         [ 1] 1023 	ld	a, 0x5244
      008DEB A4 80            [ 1] 1024 	and	a, #0x80
      008DED 97               [ 1] 1025 	ld	xl, a
      008DEE 4F               [ 1] 1026 	clr	a
      008DEF 95               [ 1] 1027 	ld	xh, a
      008DF0 58               [ 2] 1028 	sllw	x
      008DF1 1F 01            [ 2] 1029 	ldw	(0x01, sp), x
                                   1030 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
      008DF3 C6 52 41         [ 1] 1031 	ld	a, 0x5241
      008DF6 5F               [ 1] 1032 	clrw	x
      008DF7 1A 02            [ 1] 1033 	or	a, (0x02, sp)
      008DF9 02               [ 1] 1034 	rlwa	x
      008DFA 1A 01            [ 1] 1035 	or	a, (0x01, sp)
      008DFC A4 01            [ 1] 1036 	and	a, #0x01
      008DFE 95               [ 1] 1037 	ld	xh, a
                                   1038 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 504: }
      008DFF 5B 02            [ 2] 1039 	addw	sp, #2
      008E01 81               [ 4] 1040 	ret
                                   1041 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function UART2_SendData8
                                   1044 ;	-----------------------------------------
      008E02                       1045 _UART2_SendData8:
                                   1046 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 514: UART2->DR = Data;
      008E02 AE 52 41         [ 2] 1047 	ldw	x, #0x5241
      008E05 7B 03            [ 1] 1048 	ld	a, (0x03, sp)
      008E07 F7               [ 1] 1049 	ld	(x), a
                                   1050 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 515: }
      008E08 81               [ 4] 1051 	ret
                                   1052 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
                                   1053 ;	-----------------------------------------
                                   1054 ;	 function UART2_SendData9
                                   1055 ;	-----------------------------------------
      008E09                       1056 _UART2_SendData9:
      008E09 88               [ 1] 1057 	push	a
                                   1058 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
      008E0A 72 1D 52 44      [ 1] 1059 	bres	21060, #6
                                   1060 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
      008E0E C6 52 44         [ 1] 1061 	ld	a, 0x5244
      008E11 6B 01            [ 1] 1062 	ld	(0x01, sp), a
      008E13 1E 04            [ 2] 1063 	ldw	x, (0x04, sp)
      008E15 54               [ 2] 1064 	srlw	x
      008E16 54               [ 2] 1065 	srlw	x
      008E17 9F               [ 1] 1066 	ld	a, xl
      008E18 A4 40            [ 1] 1067 	and	a, #0x40
      008E1A 1A 01            [ 1] 1068 	or	a, (0x01, sp)
      008E1C C7 52 44         [ 1] 1069 	ld	0x5244, a
                                   1070 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
      008E1F 7B 05            [ 1] 1071 	ld	a, (0x05, sp)
      008E21 C7 52 41         [ 1] 1072 	ld	0x5241, a
                                   1073 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 532: }
      008E24 84               [ 1] 1074 	pop	a
      008E25 81               [ 4] 1075 	ret
                                   1076 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 539: void UART2_SendBreak(void)
                                   1077 ;	-----------------------------------------
                                   1078 ;	 function UART2_SendBreak
                                   1079 ;	-----------------------------------------
      008E26                       1080 _UART2_SendBreak:
                                   1081 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
      008E26 72 10 52 45      [ 1] 1082 	bset	21061, #0
                                   1083 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 542: }
      008E2A 81               [ 4] 1084 	ret
                                   1085 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
                                   1086 ;	-----------------------------------------
                                   1087 ;	 function UART2_SetAddress
                                   1088 ;	-----------------------------------------
      008E2B                       1089 _UART2_SetAddress:
                                   1090 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 552: assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
      008E2B 7B 03            [ 1] 1091 	ld	a, (0x03, sp)
      008E2D A1 10            [ 1] 1092 	cp	a, #0x10
      008E2F 25 0F            [ 1] 1093 	jrc	00104$
      008E31 4B 28            [ 1] 1094 	push	#0x28
      008E33 4B 02            [ 1] 1095 	push	#0x02
      008E35 5F               [ 1] 1096 	clrw	x
      008E36 89               [ 2] 1097 	pushw	x
      008E37 4B DC            [ 1] 1098 	push	#<(___str_0+0)
      008E39 4B 80            [ 1] 1099 	push	#((___str_0+0) >> 8)
      008E3B CD 83 84         [ 4] 1100 	call	_assert_failed
      008E3E 5B 06            [ 2] 1101 	addw	sp, #6
      008E40                       1102 00104$:
                                   1103 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
      008E40 C6 52 47         [ 1] 1104 	ld	a, 0x5247
      008E43 A4 F0            [ 1] 1105 	and	a, #0xf0
      008E45 C7 52 47         [ 1] 1106 	ld	0x5247, a
                                   1107 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
      008E48 C6 52 47         [ 1] 1108 	ld	a, 0x5247
      008E4B 1A 03            [ 1] 1109 	or	a, (0x03, sp)
      008E4D C7 52 47         [ 1] 1110 	ld	0x5247, a
                                   1111 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 558: }
      008E50 81               [ 4] 1112 	ret
                                   1113 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
                                   1114 ;	-----------------------------------------
                                   1115 ;	 function UART2_SetGuardTime
                                   1116 ;	-----------------------------------------
      008E51                       1117 _UART2_SetGuardTime:
                                   1118 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
      008E51 AE 52 4A         [ 2] 1119 	ldw	x, #0x524a
      008E54 7B 03            [ 1] 1120 	ld	a, (0x03, sp)
      008E56 F7               [ 1] 1121 	ld	(x), a
                                   1122 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 570: }
      008E57 81               [ 4] 1123 	ret
                                   1124 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
                                   1125 ;	-----------------------------------------
                                   1126 ;	 function UART2_SetPrescaler
                                   1127 ;	-----------------------------------------
      008E58                       1128 _UART2_SetPrescaler:
                                   1129 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
      008E58 AE 52 4B         [ 2] 1130 	ldw	x, #0x524b
      008E5B 7B 03            [ 1] 1131 	ld	a, (0x03, sp)
      008E5D F7               [ 1] 1132 	ld	(x), a
                                   1133 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 598: }
      008E5E 81               [ 4] 1134 	ret
                                   1135 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
                                   1136 ;	-----------------------------------------
                                   1137 ;	 function UART2_GetFlagStatus
                                   1138 ;	-----------------------------------------
      008E5F                       1139 _UART2_GetFlagStatus:
      008E5F 52 04            [ 2] 1140 	sub	sp, #4
                                   1141 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 611: assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
      008E61 1E 07            [ 2] 1142 	ldw	x, (0x07, sp)
      008E63 A3 01 01         [ 2] 1143 	cpw	x, #0x0101
      008E66 26 05            [ 1] 1144 	jrne	00256$
      008E68 A6 01            [ 1] 1145 	ld	a, #0x01
      008E6A 6B 01            [ 1] 1146 	ld	(0x01, sp), a
      008E6C C5                    1147 	.byte 0xc5
      008E6D                       1148 00256$:
      008E6D 0F 01            [ 1] 1149 	clr	(0x01, sp)
      008E6F                       1150 00257$:
      008E6F A3 03 01         [ 2] 1151 	cpw	x, #0x0301
      008E72 26 05            [ 1] 1152 	jrne	00259$
      008E74 A6 01            [ 1] 1153 	ld	a, #0x01
      008E76 6B 02            [ 1] 1154 	ld	(0x02, sp), a
      008E78 C5                    1155 	.byte 0xc5
      008E79                       1156 00259$:
      008E79 0F 02            [ 1] 1157 	clr	(0x02, sp)
      008E7B                       1158 00260$:
      008E7B A3 03 02         [ 2] 1159 	cpw	x, #0x0302
      008E7E 26 05            [ 1] 1160 	jrne	00262$
      008E80 A6 01            [ 1] 1161 	ld	a, #0x01
      008E82 6B 03            [ 1] 1162 	ld	(0x03, sp), a
      008E84 C5                    1163 	.byte 0xc5
      008E85                       1164 00262$:
      008E85 0F 03            [ 1] 1165 	clr	(0x03, sp)
      008E87                       1166 00263$:
      008E87 A3 02 10         [ 2] 1167 	cpw	x, #0x0210
      008E8A 26 03            [ 1] 1168 	jrne	00265$
      008E8C A6 01            [ 1] 1169 	ld	a, #0x01
      008E8E 21                    1170 	.byte 0x21
      008E8F                       1171 00265$:
      008E8F 4F               [ 1] 1172 	clr	a
      008E90                       1173 00266$:
      008E90 A3 00 80         [ 2] 1174 	cpw	x, #0x0080
      008E93 27 41            [ 1] 1175 	jreq	00126$
      008E95 A3 00 40         [ 2] 1176 	cpw	x, #0x0040
      008E98 27 3C            [ 1] 1177 	jreq	00126$
      008E9A A3 00 20         [ 2] 1178 	cpw	x, #0x0020
      008E9D 27 37            [ 1] 1179 	jreq	00126$
      008E9F A3 00 10         [ 2] 1180 	cpw	x, #0x0010
      008EA2 27 32            [ 1] 1181 	jreq	00126$
      008EA4 A3 00 08         [ 2] 1182 	cpw	x, #0x0008
      008EA7 27 2D            [ 1] 1183 	jreq	00126$
      008EA9 A3 00 04         [ 2] 1184 	cpw	x, #0x0004
      008EAC 27 28            [ 1] 1185 	jreq	00126$
      008EAE A3 00 02         [ 2] 1186 	cpw	x, #0x0002
      008EB1 27 23            [ 1] 1187 	jreq	00126$
      008EB3 5A               [ 2] 1188 	decw	x
      008EB4 27 20            [ 1] 1189 	jreq	00126$
      008EB6 0D 01            [ 1] 1190 	tnz	(0x01, sp)
      008EB8 26 1C            [ 1] 1191 	jrne	00126$
      008EBA 0D 02            [ 1] 1192 	tnz	(0x02, sp)
      008EBC 26 18            [ 1] 1193 	jrne	00126$
      008EBE 0D 03            [ 1] 1194 	tnz	(0x03, sp)
      008EC0 26 14            [ 1] 1195 	jrne	00126$
      008EC2 4D               [ 1] 1196 	tnz	a
      008EC3 26 11            [ 1] 1197 	jrne	00126$
      008EC5 88               [ 1] 1198 	push	a
      008EC6 4B 63            [ 1] 1199 	push	#0x63
      008EC8 4B 02            [ 1] 1200 	push	#0x02
      008ECA 5F               [ 1] 1201 	clrw	x
      008ECB 89               [ 2] 1202 	pushw	x
      008ECC 4B DC            [ 1] 1203 	push	#<(___str_0+0)
      008ECE 4B 80            [ 1] 1204 	push	#((___str_0+0) >> 8)
      008ED0 CD 83 84         [ 4] 1205 	call	_assert_failed
      008ED3 5B 06            [ 2] 1206 	addw	sp, #6
      008ED5 84               [ 1] 1207 	pop	a
      008ED6                       1208 00126$:
                                   1209 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008ED6 88               [ 1] 1210 	push	a
      008ED7 7B 09            [ 1] 1211 	ld	a, (0x09, sp)
      008ED9 6B 05            [ 1] 1212 	ld	(0x05, sp), a
      008EDB 84               [ 1] 1213 	pop	a
                                   1214 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
      008EDC 4D               [ 1] 1215 	tnz	a
      008EDD 27 0E            [ 1] 1216 	jreq	00121$
                                   1217 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008EDF C6 52 47         [ 1] 1218 	ld	a, 0x5247
      008EE2 14 04            [ 1] 1219 	and	a, (0x04, sp)
      008EE4 27 04            [ 1] 1220 	jreq	00102$
                                   1221 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 619: status = SET;
      008EE6 A6 01            [ 1] 1222 	ld	a, #0x01
      008EE8 20 36            [ 2] 1223 	jra	00122$
      008EEA                       1224 00102$:
                                   1225 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 624: status = RESET;
      008EEA 4F               [ 1] 1226 	clr	a
      008EEB 20 33            [ 2] 1227 	jra	00122$
      008EED                       1228 00121$:
                                   1229 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
      008EED 7B 01            [ 1] 1230 	ld	a, (0x01, sp)
      008EEF 27 0E            [ 1] 1231 	jreq	00118$
                                   1232 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008EF1 C6 52 45         [ 1] 1233 	ld	a, 0x5245
      008EF4 14 04            [ 1] 1234 	and	a, (0x04, sp)
      008EF6 27 04            [ 1] 1235 	jreq	00105$
                                   1236 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 632: status = SET;
      008EF8 A6 01            [ 1] 1237 	ld	a, #0x01
      008EFA 20 24            [ 2] 1238 	jra	00122$
      008EFC                       1239 00105$:
                                   1240 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 637: status = RESET;
      008EFC 4F               [ 1] 1241 	clr	a
      008EFD 20 21            [ 2] 1242 	jra	00122$
      008EFF                       1243 00118$:
                                   1244 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
      008EFF 7B 03            [ 1] 1245 	ld	a, (0x03, sp)
      008F01 26 04            [ 1] 1246 	jrne	00113$
      008F03 7B 02            [ 1] 1247 	ld	a, (0x02, sp)
      008F05 27 0E            [ 1] 1248 	jreq	00114$
      008F07                       1249 00113$:
                                   1250 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008F07 C6 52 49         [ 1] 1251 	ld	a, 0x5249
      008F0A 14 04            [ 1] 1252 	and	a, (0x04, sp)
      008F0C 27 04            [ 1] 1253 	jreq	00108$
                                   1254 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 645: status = SET;
      008F0E A6 01            [ 1] 1255 	ld	a, #0x01
      008F10 20 0E            [ 2] 1256 	jra	00122$
      008F12                       1257 00108$:
                                   1258 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 650: status = RESET;
      008F12 4F               [ 1] 1259 	clr	a
      008F13 20 0B            [ 2] 1260 	jra	00122$
      008F15                       1261 00114$:
                                   1262 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008F15 C6 52 40         [ 1] 1263 	ld	a, 0x5240
      008F18 14 04            [ 1] 1264 	and	a, (0x04, sp)
      008F1A 27 03            [ 1] 1265 	jreq	00111$
                                   1266 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 658: status = SET;
      008F1C A6 01            [ 1] 1267 	ld	a, #0x01
                                   1268 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 663: status = RESET;
      008F1E 21                    1269 	.byte 0x21
      008F1F                       1270 00111$:
      008F1F 4F               [ 1] 1271 	clr	a
      008F20                       1272 00122$:
                                   1273 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 668: return  status;
                                   1274 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 669: }
      008F20 5B 04            [ 2] 1275 	addw	sp, #4
      008F22 81               [ 4] 1276 	ret
                                   1277 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
                                   1278 ;	-----------------------------------------
                                   1279 ;	 function UART2_ClearFlag
                                   1280 ;	-----------------------------------------
      008F23                       1281 _UART2_ClearFlag:
      008F23 52 03            [ 2] 1282 	sub	sp, #3
                                   1283 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 701: assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
      008F25 1E 06            [ 2] 1284 	ldw	x, (0x06, sp)
      008F27 A3 00 20         [ 2] 1285 	cpw	x, #0x0020
      008F2A 26 05            [ 1] 1286 	jrne	00159$
      008F2C A6 01            [ 1] 1287 	ld	a, #0x01
      008F2E 6B 01            [ 1] 1288 	ld	(0x01, sp), a
      008F30 C5                    1289 	.byte 0xc5
      008F31                       1290 00159$:
      008F31 0F 01            [ 1] 1291 	clr	(0x01, sp)
      008F33                       1292 00160$:
      008F33 A3 03 02         [ 2] 1293 	cpw	x, #0x0302
      008F36 26 05            [ 1] 1294 	jrne	00162$
      008F38 A6 01            [ 1] 1295 	ld	a, #0x01
      008F3A 6B 02            [ 1] 1296 	ld	(0x02, sp), a
      008F3C C5                    1297 	.byte 0xc5
      008F3D                       1298 00162$:
      008F3D 0F 02            [ 1] 1299 	clr	(0x02, sp)
      008F3F                       1300 00163$:
      008F3F A3 02 10         [ 2] 1301 	cpw	x, #0x0210
      008F42 26 05            [ 1] 1302 	jrne	00165$
      008F44 A6 01            [ 1] 1303 	ld	a, #0x01
      008F46 6B 03            [ 1] 1304 	ld	(0x03, sp), a
      008F48 C5                    1305 	.byte 0xc5
      008F49                       1306 00165$:
      008F49 0F 03            [ 1] 1307 	clr	(0x03, sp)
      008F4B                       1308 00166$:
      008F4B 0D 01            [ 1] 1309 	tnz	(0x01, sp)
      008F4D 26 1C            [ 1] 1310 	jrne	00113$
      008F4F 0D 02            [ 1] 1311 	tnz	(0x02, sp)
      008F51 26 18            [ 1] 1312 	jrne	00113$
      008F53 A3 03 01         [ 2] 1313 	cpw	x, #0x0301
      008F56 27 13            [ 1] 1314 	jreq	00113$
      008F58 0D 03            [ 1] 1315 	tnz	(0x03, sp)
      008F5A 26 0F            [ 1] 1316 	jrne	00113$
      008F5C 4B BD            [ 1] 1317 	push	#0xbd
      008F5E 4B 02            [ 1] 1318 	push	#0x02
      008F60 5F               [ 1] 1319 	clrw	x
      008F61 89               [ 2] 1320 	pushw	x
      008F62 4B DC            [ 1] 1321 	push	#<(___str_0+0)
      008F64 4B 80            [ 1] 1322 	push	#((___str_0+0) >> 8)
      008F66 CD 83 84         [ 4] 1323 	call	_assert_failed
      008F69 5B 06            [ 2] 1324 	addw	sp, #6
      008F6B                       1325 00113$:
                                   1326 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
      008F6B 7B 01            [ 1] 1327 	ld	a, (0x01, sp)
      008F6D 27 06            [ 1] 1328 	jreq	00108$
                                   1329 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      008F6F 35 DF 52 40      [ 1] 1330 	mov	0x5240+0, #0xdf
      008F73 20 20            [ 2] 1331 	jra	00110$
      008F75                       1332 00108$:
                                   1333 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
      008F75 7B 03            [ 1] 1334 	ld	a, (0x03, sp)
      008F77 27 06            [ 1] 1335 	jreq	00105$
                                   1336 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
      008F79 72 19 52 47      [ 1] 1337 	bres	21063, #4
      008F7D 20 16            [ 2] 1338 	jra	00110$
      008F7F                       1339 00105$:
                                   1340 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      008F7F C6 52 49         [ 1] 1341 	ld	a, 0x5249
      008F82 97               [ 1] 1342 	ld	xl, a
                                   1343 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
      008F83 7B 02            [ 1] 1344 	ld	a, (0x02, sp)
      008F85 27 08            [ 1] 1345 	jreq	00102$
                                   1346 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      008F87 9F               [ 1] 1347 	ld	a, xl
      008F88 A4 FD            [ 1] 1348 	and	a, #0xfd
      008F8A C7 52 49         [ 1] 1349 	ld	0x5249, a
      008F8D 20 06            [ 2] 1350 	jra	00110$
      008F8F                       1351 00102$:
                                   1352 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
      008F8F 9F               [ 1] 1353 	ld	a, xl
      008F90 A4 FE            [ 1] 1354 	and	a, #0xfe
      008F92 C7 52 49         [ 1] 1355 	ld	0x5249, a
      008F95                       1356 00110$:
                                   1357 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 723: }
      008F95 5B 03            [ 2] 1358 	addw	sp, #3
      008F97 81               [ 4] 1359 	ret
                                   1360 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
                                   1361 ;	-----------------------------------------
                                   1362 ;	 function UART2_GetITStatus
                                   1363 ;	-----------------------------------------
      008F98                       1364 _UART2_GetITStatus:
      008F98 52 05            [ 2] 1365 	sub	sp, #5
                                   1366 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 747: assert_param(IS_UART2_GET_IT_OK(UART2_IT));
      008F9A 1E 08            [ 2] 1367 	ldw	x, (0x08, sp)
      008F9C A3 03 46         [ 2] 1368 	cpw	x, #0x0346
      008F9F 26 05            [ 1] 1369 	jrne	00247$
      008FA1 A6 01            [ 1] 1370 	ld	a, #0x01
      008FA3 6B 01            [ 1] 1371 	ld	(0x01, sp), a
      008FA5 C5                    1372 	.byte 0xc5
      008FA6                       1373 00247$:
      008FA6 0F 01            [ 1] 1374 	clr	(0x01, sp)
      008FA8                       1375 00248$:
      008FA8 A3 04 12         [ 2] 1376 	cpw	x, #0x0412
      008FAB 26 05            [ 1] 1377 	jrne	00250$
      008FAD A6 01            [ 1] 1378 	ld	a, #0x01
      008FAF 6B 02            [ 1] 1379 	ld	(0x02, sp), a
      008FB1 C5                    1380 	.byte 0xc5
      008FB2                       1381 00250$:
      008FB2 0F 02            [ 1] 1382 	clr	(0x02, sp)
      008FB4                       1383 00251$:
      008FB4 A3 01 00         [ 2] 1384 	cpw	x, #0x0100
      008FB7 26 05            [ 1] 1385 	jrne	00253$
      008FB9 A6 01            [ 1] 1386 	ld	a, #0x01
      008FBB 6B 03            [ 1] 1387 	ld	(0x03, sp), a
      008FBD C5                    1388 	.byte 0xc5
      008FBE                       1389 00253$:
      008FBE 0F 03            [ 1] 1390 	clr	(0x03, sp)
      008FC0                       1391 00254$:
      008FC0 A3 02 77         [ 2] 1392 	cpw	x, #0x0277
      008FC3 27 2F            [ 1] 1393 	jreq	00129$
      008FC5 A3 02 66         [ 2] 1394 	cpw	x, #0x0266
      008FC8 27 2A            [ 1] 1395 	jreq	00129$
      008FCA A3 02 55         [ 2] 1396 	cpw	x, #0x0255
      008FCD 27 25            [ 1] 1397 	jreq	00129$
      008FCF A3 02 44         [ 2] 1398 	cpw	x, #0x0244
      008FD2 27 20            [ 1] 1399 	jreq	00129$
      008FD4 A3 02 35         [ 2] 1400 	cpw	x, #0x0235
      008FD7 27 1B            [ 1] 1401 	jreq	00129$
      008FD9 0D 01            [ 1] 1402 	tnz	(0x01, sp)
      008FDB 26 17            [ 1] 1403 	jrne	00129$
      008FDD 0D 02            [ 1] 1404 	tnz	(0x02, sp)
      008FDF 26 13            [ 1] 1405 	jrne	00129$
      008FE1 0D 03            [ 1] 1406 	tnz	(0x03, sp)
      008FE3 26 0F            [ 1] 1407 	jrne	00129$
      008FE5 4B EB            [ 1] 1408 	push	#0xeb
      008FE7 4B 02            [ 1] 1409 	push	#0x02
      008FE9 5F               [ 1] 1410 	clrw	x
      008FEA 89               [ 2] 1411 	pushw	x
      008FEB 4B DC            [ 1] 1412 	push	#<(___str_0+0)
      008FED 4B 80            [ 1] 1413 	push	#((___str_0+0) >> 8)
      008FEF CD 83 84         [ 4] 1414 	call	_assert_failed
      008FF2 5B 06            [ 2] 1415 	addw	sp, #6
      008FF4                       1416 00129$:
                                   1417 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      008FF4 7B 09            [ 1] 1418 	ld	a, (0x09, sp)
      008FF6 97               [ 1] 1419 	ld	xl, a
      008FF7 A4 0F            [ 1] 1420 	and	a, #0x0f
      008FF9 88               [ 1] 1421 	push	a
      008FFA A6 01            [ 1] 1422 	ld	a, #0x01
      008FFC 6B 05            [ 1] 1423 	ld	(0x05, sp), a
      008FFE 84               [ 1] 1424 	pop	a
      008FFF 4D               [ 1] 1425 	tnz	a
      009000 27 05            [ 1] 1426 	jreq	00274$
      009002                       1427 00273$:
      009002 08 04            [ 1] 1428 	sll	(0x04, sp)
      009004 4A               [ 1] 1429 	dec	a
      009005 26 FB            [ 1] 1430 	jrne	00273$
      009007                       1431 00274$:
                                   1432 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
      009007 9F               [ 1] 1433 	ld	a, xl
      009008 4E               [ 1] 1434 	swap	a
      009009 A4 0F            [ 1] 1435 	and	a, #0x0f
                                   1436 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      00900B 88               [ 1] 1437 	push	a
      00900C A6 01            [ 1] 1438 	ld	a, #0x01
      00900E 6B 06            [ 1] 1439 	ld	(0x06, sp), a
      009010 84               [ 1] 1440 	pop	a
      009011 4D               [ 1] 1441 	tnz	a
      009012 27 05            [ 1] 1442 	jreq	00276$
      009014                       1443 00275$:
      009014 08 05            [ 1] 1444 	sll	(0x05, sp)
      009016 4A               [ 1] 1445 	dec	a
      009017 26 FB            [ 1] 1446 	jrne	00275$
      009019                       1447 00276$:
                                   1448 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
      009019 7B 03            [ 1] 1449 	ld	a, (0x03, sp)
      00901B 27 18            [ 1] 1450 	jreq	00124$
                                   1451 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
      00901D C6 52 44         [ 1] 1452 	ld	a, 0x5244
      009020 14 05            [ 1] 1453 	and	a, (0x05, sp)
      009022 97               [ 1] 1454 	ld	xl, a
                                   1455 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      009023 C6 52 40         [ 1] 1456 	ld	a, 0x5240
      009026 14 04            [ 1] 1457 	and	a, (0x04, sp)
      009028 27 08            [ 1] 1458 	jreq	00102$
      00902A 9F               [ 1] 1459 	ld	a, xl
      00902B 4D               [ 1] 1460 	tnz	a
      00902C 27 04            [ 1] 1461 	jreq	00102$
                                   1462 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 766: pendingbitstatus = SET;
      00902E A6 01            [ 1] 1463 	ld	a, #0x01
      009030 20 50            [ 2] 1464 	jra	00125$
      009032                       1465 00102$:
                                   1466 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 771: pendingbitstatus = RESET;
      009032 4F               [ 1] 1467 	clr	a
      009033 20 4D            [ 2] 1468 	jra	00125$
      009035                       1469 00124$:
                                   1470 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
      009035 7B 01            [ 1] 1471 	ld	a, (0x01, sp)
      009037 27 18            [ 1] 1472 	jreq	00121$
                                   1473 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
      009039 C6 52 47         [ 1] 1474 	ld	a, 0x5247
      00903C 14 05            [ 1] 1475 	and	a, (0x05, sp)
      00903E 97               [ 1] 1476 	ld	xl, a
                                   1477 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      00903F C6 52 47         [ 1] 1478 	ld	a, 0x5247
      009042 14 04            [ 1] 1479 	and	a, (0x04, sp)
      009044 27 08            [ 1] 1480 	jreq	00106$
      009046 9F               [ 1] 1481 	ld	a, xl
      009047 4D               [ 1] 1482 	tnz	a
      009048 27 04            [ 1] 1483 	jreq	00106$
                                   1484 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 782: pendingbitstatus = SET;
      00904A A6 01            [ 1] 1485 	ld	a, #0x01
      00904C 20 34            [ 2] 1486 	jra	00125$
      00904E                       1487 00106$:
                                   1488 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 787: pendingbitstatus = RESET;
      00904E 4F               [ 1] 1489 	clr	a
      00904F 20 31            [ 2] 1490 	jra	00125$
      009051                       1491 00121$:
                                   1492 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
      009051 7B 02            [ 1] 1493 	ld	a, (0x02, sp)
      009053 27 18            [ 1] 1494 	jreq	00118$
                                   1495 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
      009055 C6 52 49         [ 1] 1496 	ld	a, 0x5249
      009058 14 05            [ 1] 1497 	and	a, (0x05, sp)
      00905A 97               [ 1] 1498 	ld	xl, a
                                   1499 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
      00905B C6 52 49         [ 1] 1500 	ld	a, 0x5249
      00905E 14 04            [ 1] 1501 	and	a, (0x04, sp)
      009060 27 08            [ 1] 1502 	jreq	00110$
      009062 9F               [ 1] 1503 	ld	a, xl
      009063 4D               [ 1] 1504 	tnz	a
      009064 27 04            [ 1] 1505 	jreq	00110$
                                   1506 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 798: pendingbitstatus = SET;
      009066 A6 01            [ 1] 1507 	ld	a, #0x01
      009068 20 18            [ 2] 1508 	jra	00125$
      00906A                       1509 00110$:
                                   1510 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 803: pendingbitstatus = RESET;
      00906A 4F               [ 1] 1511 	clr	a
      00906B 20 15            [ 2] 1512 	jra	00125$
      00906D                       1513 00118$:
                                   1514 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
      00906D C6 52 45         [ 1] 1515 	ld	a, 0x5245
      009070 14 05            [ 1] 1516 	and	a, (0x05, sp)
      009072 97               [ 1] 1517 	ld	xl, a
                                   1518 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      009073 C6 52 40         [ 1] 1519 	ld	a, 0x5240
      009076 14 04            [ 1] 1520 	and	a, (0x04, sp)
      009078 27 07            [ 1] 1521 	jreq	00114$
      00907A 9F               [ 1] 1522 	ld	a, xl
      00907B 4D               [ 1] 1523 	tnz	a
      00907C 27 03            [ 1] 1524 	jreq	00114$
                                   1525 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 814: pendingbitstatus = SET;
      00907E A6 01            [ 1] 1526 	ld	a, #0x01
                                   1527 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 819: pendingbitstatus = RESET;
      009080 21                    1528 	.byte 0x21
      009081                       1529 00114$:
      009081 4F               [ 1] 1530 	clr	a
      009082                       1531 00125$:
                                   1532 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 823: return  pendingbitstatus;
                                   1533 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 824: }
      009082 5B 05            [ 2] 1534 	addw	sp, #5
      009084 81               [ 4] 1535 	ret
                                   1536 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
                                   1537 ;	-----------------------------------------
                                   1538 ;	 function UART2_ClearITPendingBit
                                   1539 ;	-----------------------------------------
      009085                       1540 _UART2_ClearITPendingBit:
      009085 88               [ 1] 1541 	push	a
                                   1542 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 854: assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
      009086 1E 04            [ 2] 1543 	ldw	x, (0x04, sp)
      009088 A3 02 55         [ 2] 1544 	cpw	x, #0x0255
      00908B 26 03            [ 1] 1545 	jrne	00143$
      00908D A6 01            [ 1] 1546 	ld	a, #0x01
      00908F 21                    1547 	.byte 0x21
      009090                       1548 00143$:
      009090 4F               [ 1] 1549 	clr	a
      009091                       1550 00144$:
      009091 A3 03 46         [ 2] 1551 	cpw	x, #0x0346
      009094 26 07            [ 1] 1552 	jrne	00146$
      009096 88               [ 1] 1553 	push	a
      009097 A6 01            [ 1] 1554 	ld	a, #0x01
      009099 6B 02            [ 1] 1555 	ld	(0x02, sp), a
      00909B 84               [ 1] 1556 	pop	a
      00909C C5                    1557 	.byte 0xc5
      00909D                       1558 00146$:
      00909D 0F 01            [ 1] 1559 	clr	(0x01, sp)
      00909F                       1560 00147$:
      00909F 4D               [ 1] 1561 	tnz	a
      0090A0 26 1A            [ 1] 1562 	jrne	00110$
      0090A2 A3 04 12         [ 2] 1563 	cpw	x, #0x0412
      0090A5 27 15            [ 1] 1564 	jreq	00110$
      0090A7 0D 01            [ 1] 1565 	tnz	(0x01, sp)
      0090A9 26 11            [ 1] 1566 	jrne	00110$
      0090AB 88               [ 1] 1567 	push	a
      0090AC 4B 56            [ 1] 1568 	push	#0x56
      0090AE 4B 03            [ 1] 1569 	push	#0x03
      0090B0 5F               [ 1] 1570 	clrw	x
      0090B1 89               [ 2] 1571 	pushw	x
      0090B2 4B DC            [ 1] 1572 	push	#<(___str_0+0)
      0090B4 4B 80            [ 1] 1573 	push	#((___str_0+0) >> 8)
      0090B6 CD 83 84         [ 4] 1574 	call	_assert_failed
      0090B9 5B 06            [ 2] 1575 	addw	sp, #6
      0090BB 84               [ 1] 1576 	pop	a
      0090BC                       1577 00110$:
                                   1578 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
      0090BC 4D               [ 1] 1579 	tnz	a
      0090BD 27 06            [ 1] 1580 	jreq	00105$
                                   1581 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      0090BF 35 DF 52 40      [ 1] 1582 	mov	0x5240+0, #0xdf
      0090C3 20 0E            [ 2] 1583 	jra	00107$
      0090C5                       1584 00105$:
                                   1585 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
      0090C5 7B 01            [ 1] 1586 	ld	a, (0x01, sp)
      0090C7 27 06            [ 1] 1587 	jreq	00102$
                                   1588 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
      0090C9 72 19 52 47      [ 1] 1589 	bres	21063, #4
      0090CD 20 04            [ 2] 1590 	jra	00107$
      0090CF                       1591 00102$:
                                   1592 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      0090CF 72 13 52 49      [ 1] 1593 	bres	21065, #1
      0090D3                       1594 00107$:
                                   1595 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_uart2.c: 871: }
      0090D3 84               [ 1] 1596 	pop	a
      0090D4 81               [ 4] 1597 	ret
                                   1598 	.area CODE
                                   1599 	.area CONST
                                   1600 	.area CONST
      0080DC                       1601 ___str_0:
      0080DC 2E 2E 2F 2E 2E 2F 2F  1602 	.ascii "../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_ua"
             53 74 64 50 65 72 69
             70 68 5F 44 72 69 76
             65 72 2F 53 54 4D 38
             53 5F 53 74 64 50 65
             72 69 70 68 5F 44 72
             69 76 65 72 2F 2F 73
             72 63 2F 73 74 6D 38
             73 5F 75 61
      008118 72 74 32 2E 63        1603 	.ascii "rt2.c"
      00811D 00                    1604 	.db 0x00
                                   1605 	.area CODE
                                   1606 	.area INITIALIZER
                                   1607 	.area CABS (ABS)
