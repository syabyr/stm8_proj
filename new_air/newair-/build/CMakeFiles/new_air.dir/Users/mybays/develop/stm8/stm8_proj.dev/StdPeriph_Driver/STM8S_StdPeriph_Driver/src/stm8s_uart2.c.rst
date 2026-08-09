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
      00B6F2                         79 _UART2_DeInit:
                                     80 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 57: (void) UART2->SR;
      00B6F2 C6 52 40         [ 1]   81 	ld	a, 0x5240
                                     82 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 58: (void)UART2->DR;
      00B6F5 C6 52 41         [ 1]   83 	ld	a, 0x5241
                                     84 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
      00B6F8 35 00 52 43      [ 1]   85 	mov	0x5243+0, #0x00
                                     86 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
      00B6FC 35 00 52 42      [ 1]   87 	mov	0x5242+0, #0x00
                                     88 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
      00B700 35 00 52 44      [ 1]   89 	mov	0x5244+0, #0x00
                                     90 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
      00B704 35 00 52 45      [ 1]   91 	mov	0x5245+0, #0x00
                                     92 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
      00B708 35 00 52 46      [ 1]   93 	mov	0x5246+0, #0x00
                                     94 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
      00B70C 35 00 52 47      [ 1]   95 	mov	0x5247+0, #0x00
                                     96 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
      00B710 35 00 52 48      [ 1]   97 	mov	0x5248+0, #0x00
                                     98 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
      00B714 35 00 52 49      [ 1]   99 	mov	0x5249+0, #0x00
                                    100 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 69: }
      00B718 81               [ 4]  101 	ret
                                    102 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
                                    103 ;	-----------------------------------------
                                    104 ;	 function UART2_Init
                                    105 ;	-----------------------------------------
      00B719                        106 _UART2_Init:
      00B719 52 0C            [ 2]  107 	sub	sp, #12
                                    108 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 91: assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
      00B71B AE 89 68         [ 2]  109 	ldw	x, #0x8968
      00B71E 13 11            [ 2]  110 	cpw	x, (0x11, sp)
      00B720 A6 09            [ 1]  111 	ld	a, #0x09
      00B722 12 10            [ 1]  112 	sbc	a, (0x10, sp)
      00B724 4F               [ 1]  113 	clr	a
      00B725 12 0F            [ 1]  114 	sbc	a, (0x0f, sp)
      00B727 24 0F            [ 1]  115 	jrnc	00113$
      00B729 4B 5B            [ 1]  116 	push	#0x5b
      00B72B 5F               [ 1]  117 	clrw	x
      00B72C 89               [ 2]  118 	pushw	x
      00B72D 4B 00            [ 1]  119 	push	#0x00
      00B72F 4B 18            [ 1]  120 	push	#<(___str_0+0)
      00B731 4B 83            [ 1]  121 	push	#((___str_0+0) >> 8)
      00B733 CD 85 9D         [ 4]  122 	call	_assert_failed
      00B736 5B 06            [ 2]  123 	addw	sp, #6
      00B738                        124 00113$:
                                    125 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 92: assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
      00B738 0D 13            [ 1]  126 	tnz	(0x13, sp)
      00B73A 27 15            [ 1]  127 	jreq	00115$
      00B73C 7B 13            [ 1]  128 	ld	a, (0x13, sp)
      00B73E A1 10            [ 1]  129 	cp	a, #0x10
      00B740 27 0F            [ 1]  130 	jreq	00115$
      00B742 4B 5C            [ 1]  131 	push	#0x5c
      00B744 5F               [ 1]  132 	clrw	x
      00B745 89               [ 2]  133 	pushw	x
      00B746 4B 00            [ 1]  134 	push	#0x00
      00B748 4B 18            [ 1]  135 	push	#<(___str_0+0)
      00B74A 4B 83            [ 1]  136 	push	#((___str_0+0) >> 8)
      00B74C CD 85 9D         [ 4]  137 	call	_assert_failed
      00B74F 5B 06            [ 2]  138 	addw	sp, #6
      00B751                        139 00115$:
                                    140 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 93: assert_param(IS_UART2_STOPBITS_OK(StopBits));
      00B751 0D 14            [ 1]  141 	tnz	(0x14, sp)
      00B753 27 21            [ 1]  142 	jreq	00120$
      00B755 7B 14            [ 1]  143 	ld	a, (0x14, sp)
      00B757 A1 10            [ 1]  144 	cp	a, #0x10
      00B759 27 1B            [ 1]  145 	jreq	00120$
      00B75B 7B 14            [ 1]  146 	ld	a, (0x14, sp)
      00B75D A1 20            [ 1]  147 	cp	a, #0x20
      00B75F 27 15            [ 1]  148 	jreq	00120$
      00B761 7B 14            [ 1]  149 	ld	a, (0x14, sp)
      00B763 A1 30            [ 1]  150 	cp	a, #0x30
      00B765 27 0F            [ 1]  151 	jreq	00120$
      00B767 4B 5D            [ 1]  152 	push	#0x5d
      00B769 5F               [ 1]  153 	clrw	x
      00B76A 89               [ 2]  154 	pushw	x
      00B76B 4B 00            [ 1]  155 	push	#0x00
      00B76D 4B 18            [ 1]  156 	push	#<(___str_0+0)
      00B76F 4B 83            [ 1]  157 	push	#((___str_0+0) >> 8)
      00B771 CD 85 9D         [ 4]  158 	call	_assert_failed
      00B774 5B 06            [ 2]  159 	addw	sp, #6
      00B776                        160 00120$:
                                    161 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 94: assert_param(IS_UART2_PARITY_OK(Parity));
      00B776 0D 15            [ 1]  162 	tnz	(0x15, sp)
      00B778 27 1B            [ 1]  163 	jreq	00131$
      00B77A 7B 15            [ 1]  164 	ld	a, (0x15, sp)
      00B77C A1 04            [ 1]  165 	cp	a, #0x04
      00B77E 27 15            [ 1]  166 	jreq	00131$
      00B780 7B 15            [ 1]  167 	ld	a, (0x15, sp)
      00B782 A1 06            [ 1]  168 	cp	a, #0x06
      00B784 27 0F            [ 1]  169 	jreq	00131$
      00B786 4B 5E            [ 1]  170 	push	#0x5e
      00B788 5F               [ 1]  171 	clrw	x
      00B789 89               [ 2]  172 	pushw	x
      00B78A 4B 00            [ 1]  173 	push	#0x00
      00B78C 4B 18            [ 1]  174 	push	#<(___str_0+0)
      00B78E 4B 83            [ 1]  175 	push	#((___str_0+0) >> 8)
      00B790 CD 85 9D         [ 4]  176 	call	_assert_failed
      00B793 5B 06            [ 2]  177 	addw	sp, #6
      00B795                        178 00131$:
                                    179 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 95: assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
      00B795 7B 17            [ 1]  180 	ld	a, (0x17, sp)
      00B797 A1 08            [ 1]  181 	cp	a, #0x08
      00B799 27 42            [ 1]  182 	jreq	00139$
      00B79B 7B 17            [ 1]  183 	ld	a, (0x17, sp)
      00B79D A1 40            [ 1]  184 	cp	a, #0x40
      00B79F 27 3C            [ 1]  185 	jreq	00139$
      00B7A1 7B 17            [ 1]  186 	ld	a, (0x17, sp)
      00B7A3 A1 04            [ 1]  187 	cp	a, #0x04
      00B7A5 27 36            [ 1]  188 	jreq	00139$
      00B7A7 7B 17            [ 1]  189 	ld	a, (0x17, sp)
      00B7A9 A1 80            [ 1]  190 	cp	a, #0x80
      00B7AB 27 30            [ 1]  191 	jreq	00139$
      00B7AD 7B 17            [ 1]  192 	ld	a, (0x17, sp)
      00B7AF A0 0C            [ 1]  193 	sub	a, #0x0c
      00B7B1 26 02            [ 1]  194 	jrne	00339$
      00B7B3 4C               [ 1]  195 	inc	a
      00B7B4 21                     196 	.byte 0x21
      00B7B5                        197 00339$:
      00B7B5 4F               [ 1]  198 	clr	a
      00B7B6                        199 00340$:
      00B7B6 4D               [ 1]  200 	tnz	a
      00B7B7 26 24            [ 1]  201 	jrne	00139$
      00B7B9 4D               [ 1]  202 	tnz	a
      00B7BA 26 21            [ 1]  203 	jrne	00139$
      00B7BC 7B 17            [ 1]  204 	ld	a, (0x17, sp)
      00B7BE A1 44            [ 1]  205 	cp	a, #0x44
      00B7C0 27 1B            [ 1]  206 	jreq	00139$
      00B7C2 7B 17            [ 1]  207 	ld	a, (0x17, sp)
      00B7C4 A1 C0            [ 1]  208 	cp	a, #0xc0
      00B7C6 27 15            [ 1]  209 	jreq	00139$
      00B7C8 7B 17            [ 1]  210 	ld	a, (0x17, sp)
      00B7CA A1 88            [ 1]  211 	cp	a, #0x88
      00B7CC 27 0F            [ 1]  212 	jreq	00139$
      00B7CE 4B 5F            [ 1]  213 	push	#0x5f
      00B7D0 5F               [ 1]  214 	clrw	x
      00B7D1 89               [ 2]  215 	pushw	x
      00B7D2 4B 00            [ 1]  216 	push	#0x00
      00B7D4 4B 18            [ 1]  217 	push	#<(___str_0+0)
      00B7D6 4B 83            [ 1]  218 	push	#((___str_0+0) >> 8)
      00B7D8 CD 85 9D         [ 4]  219 	call	_assert_failed
      00B7DB 5B 06            [ 2]  220 	addw	sp, #6
      00B7DD                        221 00139$:
                                    222 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 96: assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
      00B7DD 7B 16            [ 1]  223 	ld	a, (0x16, sp)
      00B7DF A4 88            [ 1]  224 	and	a, #0x88
      00B7E1 A1 88            [ 1]  225 	cp	a, #0x88
      00B7E3 27 18            [ 1]  226 	jreq	00167$
      00B7E5 7B 16            [ 1]  227 	ld	a, (0x16, sp)
      00B7E7 A4 44            [ 1]  228 	and	a, #0x44
      00B7E9 A1 44            [ 1]  229 	cp	a, #0x44
      00B7EB 27 10            [ 1]  230 	jreq	00167$
      00B7ED 7B 16            [ 1]  231 	ld	a, (0x16, sp)
      00B7EF A4 22            [ 1]  232 	and	a, #0x22
      00B7F1 A1 22            [ 1]  233 	cp	a, #0x22
      00B7F3 27 08            [ 1]  234 	jreq	00167$
      00B7F5 7B 16            [ 1]  235 	ld	a, (0x16, sp)
      00B7F7 A4 11            [ 1]  236 	and	a, #0x11
      00B7F9 A1 11            [ 1]  237 	cp	a, #0x11
      00B7FB 26 0F            [ 1]  238 	jrne	00165$
      00B7FD                        239 00167$:
      00B7FD 4B 60            [ 1]  240 	push	#0x60
      00B7FF 5F               [ 1]  241 	clrw	x
      00B800 89               [ 2]  242 	pushw	x
      00B801 4B 00            [ 1]  243 	push	#0x00
      00B803 4B 18            [ 1]  244 	push	#<(___str_0+0)
      00B805 4B 83            [ 1]  245 	push	#((___str_0+0) >> 8)
      00B807 CD 85 9D         [ 4]  246 	call	_assert_failed
      00B80A 5B 06            [ 2]  247 	addw	sp, #6
      00B80C                        248 00165$:
                                    249 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
      00B80C 72 19 52 44      [ 1]  250 	bres	21060, #4
                                    251 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
      00B810 C6 52 44         [ 1]  252 	ld	a, 0x5244
      00B813 1A 13            [ 1]  253 	or	a, (0x13, sp)
      00B815 C7 52 44         [ 1]  254 	ld	0x5244, a
                                    255 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      00B818 C6 52 46         [ 1]  256 	ld	a, 0x5246
      00B81B A4 CF            [ 1]  257 	and	a, #0xcf
      00B81D C7 52 46         [ 1]  258 	ld	0x5246, a
                                    259 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
      00B820 C6 52 46         [ 1]  260 	ld	a, 0x5246
      00B823 1A 14            [ 1]  261 	or	a, (0x14, sp)
      00B825 C7 52 46         [ 1]  262 	ld	0x5246, a
                                    263 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
      00B828 C6 52 44         [ 1]  264 	ld	a, 0x5244
      00B82B A4 F9            [ 1]  265 	and	a, #0xf9
      00B82D C7 52 44         [ 1]  266 	ld	0x5244, a
                                    267 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
      00B830 C6 52 44         [ 1]  268 	ld	a, 0x5244
      00B833 1A 15            [ 1]  269 	or	a, (0x15, sp)
      00B835 C7 52 44         [ 1]  270 	ld	0x5244, a
                                    271 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
      00B838 C6 52 42         [ 1]  272 	ld	a, 0x5242
      00B83B 35 00 52 42      [ 1]  273 	mov	0x5242+0, #0x00
                                    274 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
      00B83F C6 52 43         [ 1]  275 	ld	a, 0x5243
      00B842 A4 0F            [ 1]  276 	and	a, #0x0f
      00B844 C7 52 43         [ 1]  277 	ld	0x5243, a
                                    278 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
      00B847 C6 52 43         [ 1]  279 	ld	a, 0x5243
      00B84A A4 F0            [ 1]  280 	and	a, #0xf0
      00B84C C7 52 43         [ 1]  281 	ld	0x5243, a
                                    282 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      00B84F CD C4 56         [ 4]  283 	call	_CLK_GetClockFreq
      00B852 1F 0B            [ 2]  284 	ldw	(0x0b, sp), x
      00B854 1E 0F            [ 2]  285 	ldw	x, (0x0f, sp)
      00B856 1F 05            [ 2]  286 	ldw	(0x05, sp), x
      00B858 1E 11            [ 2]  287 	ldw	x, (0x11, sp)
      00B85A A6 04            [ 1]  288 	ld	a, #0x04
      00B85C                        289 00364$:
      00B85C 58               [ 2]  290 	sllw	x
      00B85D 09 06            [ 1]  291 	rlc	(0x06, sp)
      00B85F 09 05            [ 1]  292 	rlc	(0x05, sp)
      00B861 4A               [ 1]  293 	dec	a
      00B862 26 F8            [ 1]  294 	jrne	00364$
      00B864 1F 07            [ 2]  295 	ldw	(0x07, sp), x
      00B866 89               [ 2]  296 	pushw	x
      00B867 1E 07            [ 2]  297 	ldw	x, (0x07, sp)
      00B869 89               [ 2]  298 	pushw	x
      00B86A 1E 0F            [ 2]  299 	ldw	x, (0x0f, sp)
      00B86C 89               [ 2]  300 	pushw	x
      00B86D 90 89            [ 2]  301 	pushw	y
      00B86F CD C6 53         [ 4]  302 	call	__divulong
      00B872 5B 08            [ 2]  303 	addw	sp, #8
      00B874 1F 03            [ 2]  304 	ldw	(0x03, sp), x
      00B876 17 01            [ 2]  305 	ldw	(0x01, sp), y
                                    306 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      00B878 CD C4 56         [ 4]  307 	call	_CLK_GetClockFreq
      00B87B 89               [ 2]  308 	pushw	x
      00B87C 90 89            [ 2]  309 	pushw	y
      00B87E 4B 64            [ 1]  310 	push	#0x64
      00B880 5F               [ 1]  311 	clrw	x
      00B881 89               [ 2]  312 	pushw	x
      00B882 4B 00            [ 1]  313 	push	#0x00
      00B884 CD C7 02         [ 4]  314 	call	__mullong
      00B887 5B 08            [ 2]  315 	addw	sp, #8
      00B889 1F 0B            [ 2]  316 	ldw	(0x0b, sp), x
      00B88B 1E 07            [ 2]  317 	ldw	x, (0x07, sp)
      00B88D 89               [ 2]  318 	pushw	x
      00B88E 1E 07            [ 2]  319 	ldw	x, (0x07, sp)
      00B890 89               [ 2]  320 	pushw	x
      00B891 1E 0F            [ 2]  321 	ldw	x, (0x0f, sp)
      00B893 89               [ 2]  322 	pushw	x
      00B894 90 89            [ 2]  323 	pushw	y
      00B896 CD C6 53         [ 4]  324 	call	__divulong
      00B899 5B 08            [ 2]  325 	addw	sp, #8
      00B89B 90 9E            [ 1]  326 	ld	a, yh
      00B89D 1F 07            [ 2]  327 	ldw	(0x07, sp), x
      00B89F 6B 05            [ 1]  328 	ld	(0x05, sp), a
      00B8A1 90 9F            [ 1]  329 	ld	a, yl
                                    330 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
      00B8A3 88               [ 1]  331 	push	a
      00B8A4 1E 04            [ 2]  332 	ldw	x, (0x04, sp)
      00B8A6 89               [ 2]  333 	pushw	x
      00B8A7 1E 04            [ 2]  334 	ldw	x, (0x04, sp)
      00B8A9 89               [ 2]  335 	pushw	x
      00B8AA 4B 64            [ 1]  336 	push	#0x64
      00B8AC 5F               [ 1]  337 	clrw	x
      00B8AD 89               [ 2]  338 	pushw	x
      00B8AE 4B 00            [ 1]  339 	push	#0x00
      00B8B0 CD C7 02         [ 4]  340 	call	__mullong
      00B8B3 5B 08            [ 2]  341 	addw	sp, #8
      00B8B5 1F 0C            [ 2]  342 	ldw	(0x0c, sp), x
      00B8B7 17 0A            [ 2]  343 	ldw	(0x0a, sp), y
      00B8B9 84               [ 1]  344 	pop	a
      00B8BA 16 07            [ 2]  345 	ldw	y, (0x07, sp)
      00B8BC 72 F2 0B         [ 2]  346 	subw	y, (0x0b, sp)
      00B8BF 12 0A            [ 1]  347 	sbc	a, (0x0a, sp)
      00B8C1 97               [ 1]  348 	ld	xl, a
      00B8C2 7B 05            [ 1]  349 	ld	a, (0x05, sp)
      00B8C4 12 09            [ 1]  350 	sbc	a, (0x09, sp)
      00B8C6 95               [ 1]  351 	ld	xh, a
      00B8C7 A6 04            [ 1]  352 	ld	a, #0x04
      00B8C9                        353 00366$:
      00B8C9 90 58            [ 2]  354 	sllw	y
      00B8CB 59               [ 2]  355 	rlcw	x
      00B8CC 4A               [ 1]  356 	dec	a
      00B8CD 26 FA            [ 1]  357 	jrne	00366$
      00B8CF 4B 64            [ 1]  358 	push	#0x64
      00B8D1 4B 00            [ 1]  359 	push	#0x00
      00B8D3 4B 00            [ 1]  360 	push	#0x00
      00B8D5 4B 00            [ 1]  361 	push	#0x00
      00B8D7 90 89            [ 2]  362 	pushw	y
      00B8D9 89               [ 2]  363 	pushw	x
      00B8DA CD C6 53         [ 4]  364 	call	__divulong
      00B8DD 5B 08            [ 2]  365 	addw	sp, #8
      00B8DF 9F               [ 1]  366 	ld	a, xl
      00B8E0 A4 0F            [ 1]  367 	and	a, #0x0f
      00B8E2 6B 0C            [ 1]  368 	ld	(0x0c, sp), a
                                    369 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
      00B8E4 1E 03            [ 2]  370 	ldw	x, (0x03, sp)
      00B8E6 A6 10            [ 1]  371 	ld	a, #0x10
      00B8E8 62               [ 2]  372 	div	x, a
      00B8E9 9F               [ 1]  373 	ld	a, xl
      00B8EA A4 F0            [ 1]  374 	and	a, #0xf0
                                    375 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
      00B8EC 1A 0C            [ 1]  376 	or	a, (0x0c, sp)
      00B8EE C7 52 43         [ 1]  377 	ld	0x5243, a
                                    378 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
      00B8F1 7B 04            [ 1]  379 	ld	a, (0x04, sp)
      00B8F3 C7 52 42         [ 1]  380 	ld	0x5242, a
                                    381 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      00B8F6 C6 52 45         [ 1]  382 	ld	a, 0x5245
      00B8F9 A4 F3            [ 1]  383 	and	a, #0xf3
      00B8FB C7 52 45         [ 1]  384 	ld	0x5245, a
                                    385 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
      00B8FE C6 52 46         [ 1]  386 	ld	a, 0x5246
      00B901 A4 F8            [ 1]  387 	and	a, #0xf8
      00B903 C7 52 46         [ 1]  388 	ld	0x5246, a
                                    389 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
      00B906 C6 52 46         [ 1]  390 	ld	a, 0x5246
      00B909 6B 0C            [ 1]  391 	ld	(0x0c, sp), a
      00B90B 7B 16            [ 1]  392 	ld	a, (0x16, sp)
      00B90D A4 07            [ 1]  393 	and	a, #0x07
      00B90F 1A 0C            [ 1]  394 	or	a, (0x0c, sp)
      00B911 C7 52 46         [ 1]  395 	ld	0x5246, a
                                    396 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      00B914 C6 52 45         [ 1]  397 	ld	a, 0x5245
                                    398 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
      00B917 88               [ 1]  399 	push	a
      00B918 7B 18            [ 1]  400 	ld	a, (0x18, sp)
      00B91A A5 04            [ 1]  401 	bcp	a, #0x04
      00B91C 84               [ 1]  402 	pop	a
      00B91D 27 07            [ 1]  403 	jreq	00102$
                                    404 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
      00B91F AA 08            [ 1]  405 	or	a, #0x08
      00B921 C7 52 45         [ 1]  406 	ld	0x5245, a
      00B924 20 05            [ 2]  407 	jra	00103$
      00B926                        408 00102$:
                                    409 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
      00B926 A4 F7            [ 1]  410 	and	a, #0xf7
      00B928 C7 52 45         [ 1]  411 	ld	0x5245, a
      00B92B                        412 00103$:
                                    413 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      00B92B C6 52 45         [ 1]  414 	ld	a, 0x5245
                                    415 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
      00B92E 88               [ 1]  416 	push	a
      00B92F 7B 18            [ 1]  417 	ld	a, (0x18, sp)
      00B931 A5 08            [ 1]  418 	bcp	a, #0x08
      00B933 84               [ 1]  419 	pop	a
      00B934 27 07            [ 1]  420 	jreq	00105$
                                    421 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
      00B936 AA 04            [ 1]  422 	or	a, #0x04
      00B938 C7 52 45         [ 1]  423 	ld	0x5245, a
      00B93B 20 05            [ 2]  424 	jra	00106$
      00B93D                        425 00105$:
                                    426 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
      00B93D A4 FB            [ 1]  427 	and	a, #0xfb
      00B93F C7 52 45         [ 1]  428 	ld	0x5245, a
      00B942                        429 00106$:
                                    430 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      00B942 C6 52 46         [ 1]  431 	ld	a, 0x5246
                                    432 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
      00B945 0D 16            [ 1]  433 	tnz	(0x16, sp)
      00B947 2A 07            [ 1]  434 	jrpl	00108$
                                    435 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
      00B949 A4 F7            [ 1]  436 	and	a, #0xf7
      00B94B C7 52 46         [ 1]  437 	ld	0x5246, a
      00B94E 20 0D            [ 2]  438 	jra	00110$
      00B950                        439 00108$:
                                    440 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
      00B950 88               [ 1]  441 	push	a
      00B951 7B 17            [ 1]  442 	ld	a, (0x17, sp)
      00B953 A4 08            [ 1]  443 	and	a, #0x08
      00B955 6B 0D            [ 1]  444 	ld	(0x0d, sp), a
      00B957 84               [ 1]  445 	pop	a
      00B958 1A 0C            [ 1]  446 	or	a, (0x0c, sp)
      00B95A C7 52 46         [ 1]  447 	ld	0x5246, a
      00B95D                        448 00110$:
                                    449 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 173: }
      00B95D 5B 0C            [ 2]  450 	addw	sp, #12
      00B95F 81               [ 4]  451 	ret
                                    452 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
                                    453 ;	-----------------------------------------
                                    454 ;	 function UART2_Cmd
                                    455 ;	-----------------------------------------
      00B960                        456 _UART2_Cmd:
                                    457 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      00B960 C6 52 44         [ 1]  458 	ld	a, 0x5244
                                    459 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 183: if (NewState != DISABLE)
      00B963 0D 03            [ 1]  460 	tnz	(0x03, sp)
      00B965 27 06            [ 1]  461 	jreq	00102$
                                    462 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      00B967 A4 DF            [ 1]  463 	and	a, #0xdf
      00B969 C7 52 44         [ 1]  464 	ld	0x5244, a
      00B96C 81               [ 4]  465 	ret
      00B96D                        466 00102$:
                                    467 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
      00B96D AA 20            [ 1]  468 	or	a, #0x20
      00B96F C7 52 44         [ 1]  469 	ld	0x5244, a
                                    470 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 193: }
      00B972 81               [ 4]  471 	ret
                                    472 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
                                    473 ;	-----------------------------------------
                                    474 ;	 function UART2_ITConfig
                                    475 ;	-----------------------------------------
      00B973                        476 _UART2_ITConfig:
      00B973 52 03            [ 2]  477 	sub	sp, #3
                                    478 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 215: assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
      00B975 1E 06            [ 2]  479 	ldw	x, (0x06, sp)
      00B977 A3 01 00         [ 2]  480 	cpw	x, #0x0100
      00B97A 27 31            [ 1]  481 	jreq	00125$
      00B97C A3 02 77         [ 2]  482 	cpw	x, #0x0277
      00B97F 27 2C            [ 1]  483 	jreq	00125$
      00B981 A3 02 66         [ 2]  484 	cpw	x, #0x0266
      00B984 27 27            [ 1]  485 	jreq	00125$
      00B986 A3 02 05         [ 2]  486 	cpw	x, #0x0205
      00B989 27 22            [ 1]  487 	jreq	00125$
      00B98B A3 02 44         [ 2]  488 	cpw	x, #0x0244
      00B98E 27 1D            [ 1]  489 	jreq	00125$
      00B990 A3 04 12         [ 2]  490 	cpw	x, #0x0412
      00B993 27 18            [ 1]  491 	jreq	00125$
      00B995 A3 03 46         [ 2]  492 	cpw	x, #0x0346
      00B998 27 13            [ 1]  493 	jreq	00125$
      00B99A 89               [ 2]  494 	pushw	x
      00B99B 4B D7            [ 1]  495 	push	#0xd7
      00B99D 4B 00            [ 1]  496 	push	#0x00
      00B99F 4B 00            [ 1]  497 	push	#0x00
      00B9A1 4B 00            [ 1]  498 	push	#0x00
      00B9A3 4B 18            [ 1]  499 	push	#<(___str_0+0)
      00B9A5 4B 83            [ 1]  500 	push	#((___str_0+0) >> 8)
      00B9A7 CD 85 9D         [ 4]  501 	call	_assert_failed
      00B9AA 5B 06            [ 2]  502 	addw	sp, #6
      00B9AC 85               [ 2]  503 	popw	x
      00B9AD                        504 00125$:
                                    505 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00B9AD 0D 08            [ 1]  506 	tnz	(0x08, sp)
      00B9AF 27 18            [ 1]  507 	jreq	00145$
      00B9B1 7B 08            [ 1]  508 	ld	a, (0x08, sp)
      00B9B3 4A               [ 1]  509 	dec	a
      00B9B4 27 13            [ 1]  510 	jreq	00145$
      00B9B6 89               [ 2]  511 	pushw	x
      00B9B7 4B D8            [ 1]  512 	push	#0xd8
      00B9B9 4B 00            [ 1]  513 	push	#0x00
      00B9BB 4B 00            [ 1]  514 	push	#0x00
      00B9BD 4B 00            [ 1]  515 	push	#0x00
      00B9BF 4B 18            [ 1]  516 	push	#<(___str_0+0)
      00B9C1 4B 83            [ 1]  517 	push	#((___str_0+0) >> 8)
      00B9C3 CD 85 9D         [ 4]  518 	call	_assert_failed
      00B9C6 5B 06            [ 2]  519 	addw	sp, #6
      00B9C8 85               [ 2]  520 	popw	x
      00B9C9                        521 00145$:
                                    522 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
                                    523 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      00B9C9 7B 07            [ 1]  524 	ld	a, (0x07, sp)
      00B9CB A4 0F            [ 1]  525 	and	a, #0x0f
      00B9CD 88               [ 1]  526 	push	a
      00B9CE A6 01            [ 1]  527 	ld	a, #0x01
      00B9D0 6B 04            [ 1]  528 	ld	(0x04, sp), a
      00B9D2 84               [ 1]  529 	pop	a
      00B9D3 4D               [ 1]  530 	tnz	a
      00B9D4 27 05            [ 1]  531 	jreq	00255$
      00B9D6                        532 00254$:
      00B9D6 08 03            [ 1]  533 	sll	(0x03, sp)
      00B9D8 4A               [ 1]  534 	dec	a
      00B9D9 26 FB            [ 1]  535 	jrne	00254$
      00B9DB                        536 00255$:
                                    537 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      00B9DB 9E               [ 1]  538 	ld	a, xh
      00B9DC 4A               [ 1]  539 	dec	a
      00B9DD 26 05            [ 1]  540 	jrne	00257$
      00B9DF A6 01            [ 1]  541 	ld	a, #0x01
      00B9E1 6B 01            [ 1]  542 	ld	(0x01, sp), a
      00B9E3 C5                     543 	.byte 0xc5
      00B9E4                        544 00257$:
      00B9E4 0F 01            [ 1]  545 	clr	(0x01, sp)
      00B9E6                        546 00258$:
                                    547 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      00B9E6 9E               [ 1]  548 	ld	a, xh
      00B9E7 A0 02            [ 1]  549 	sub	a, #0x02
      00B9E9 26 04            [ 1]  550 	jrne	00260$
      00B9EB 4C               [ 1]  551 	inc	a
      00B9EC 6B 02            [ 1]  552 	ld	(0x02, sp), a
      00B9EE C5                     553 	.byte 0xc5
      00B9EF                        554 00260$:
      00B9EF 0F 02            [ 1]  555 	clr	(0x02, sp)
      00B9F1                        556 00261$:
                                    557 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      00B9F1 9E               [ 1]  558 	ld	a, xh
      00B9F2 A0 03            [ 1]  559 	sub	a, #0x03
      00B9F4 26 02            [ 1]  560 	jrne	00263$
      00B9F6 4C               [ 1]  561 	inc	a
      00B9F7 21                     562 	.byte 0x21
      00B9F8                        563 00263$:
      00B9F8 4F               [ 1]  564 	clr	a
      00B9F9                        565 00264$:
                                    566 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 224: if (NewState != DISABLE)
      00B9F9 0D 08            [ 1]  567 	tnz	(0x08, sp)
      00B9FB 27 33            [ 1]  568 	jreq	00120$
                                    569 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      00B9FD 0D 01            [ 1]  570 	tnz	(0x01, sp)
      00B9FF 27 0A            [ 1]  571 	jreq	00108$
                                    572 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 229: UART2->CR1 |= itpos;
      00BA01 C6 52 44         [ 1]  573 	ld	a, 0x5244
      00BA04 1A 03            [ 1]  574 	or	a, (0x03, sp)
      00BA06 C7 52 44         [ 1]  575 	ld	0x5244, a
      00BA09 20 5A            [ 2]  576 	jra	00122$
      00BA0B                        577 00108$:
                                    578 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      00BA0B 0D 02            [ 1]  579 	tnz	(0x02, sp)
      00BA0D 27 0A            [ 1]  580 	jreq	00105$
                                    581 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 233: UART2->CR2 |= itpos;
      00BA0F C6 52 45         [ 1]  582 	ld	a, 0x5245
      00BA12 1A 03            [ 1]  583 	or	a, (0x03, sp)
      00BA14 C7 52 45         [ 1]  584 	ld	0x5245, a
      00BA17 20 4C            [ 2]  585 	jra	00122$
      00BA19                        586 00105$:
                                    587 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      00BA19 4D               [ 1]  588 	tnz	a
      00BA1A 27 0A            [ 1]  589 	jreq	00102$
                                    590 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 237: UART2->CR4 |= itpos;
      00BA1C C6 52 47         [ 1]  591 	ld	a, 0x5247
      00BA1F 1A 03            [ 1]  592 	or	a, (0x03, sp)
      00BA21 C7 52 47         [ 1]  593 	ld	0x5247, a
      00BA24 20 3F            [ 2]  594 	jra	00122$
      00BA26                        595 00102$:
                                    596 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 241: UART2->CR6 |= itpos;
      00BA26 C6 52 49         [ 1]  597 	ld	a, 0x5249
      00BA29 1A 03            [ 1]  598 	or	a, (0x03, sp)
      00BA2B C7 52 49         [ 1]  599 	ld	0x5249, a
      00BA2E 20 35            [ 2]  600 	jra	00122$
      00BA30                        601 00120$:
                                    602 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      00BA30 88               [ 1]  603 	push	a
      00BA31 03 04            [ 1]  604 	cpl	(0x04, sp)
      00BA33 84               [ 1]  605 	pop	a
                                    606 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 247: if (uartreg == 0x01)
      00BA34 0D 01            [ 1]  607 	tnz	(0x01, sp)
      00BA36 27 0A            [ 1]  608 	jreq	00117$
                                    609 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      00BA38 C6 52 44         [ 1]  610 	ld	a, 0x5244
      00BA3B 14 03            [ 1]  611 	and	a, (0x03, sp)
      00BA3D C7 52 44         [ 1]  612 	ld	0x5244, a
      00BA40 20 23            [ 2]  613 	jra	00122$
      00BA42                        614 00117$:
                                    615 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 251: else if (uartreg == 0x02)
      00BA42 0D 02            [ 1]  616 	tnz	(0x02, sp)
      00BA44 27 0A            [ 1]  617 	jreq	00114$
                                    618 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
      00BA46 C6 52 45         [ 1]  619 	ld	a, 0x5245
      00BA49 14 03            [ 1]  620 	and	a, (0x03, sp)
      00BA4B C7 52 45         [ 1]  621 	ld	0x5245, a
      00BA4E 20 15            [ 2]  622 	jra	00122$
      00BA50                        623 00114$:
                                    624 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 255: else if (uartreg == 0x03)
      00BA50 4D               [ 1]  625 	tnz	a
      00BA51 27 0A            [ 1]  626 	jreq	00111$
                                    627 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
      00BA53 C6 52 47         [ 1]  628 	ld	a, 0x5247
      00BA56 14 03            [ 1]  629 	and	a, (0x03, sp)
      00BA58 C7 52 47         [ 1]  630 	ld	0x5247, a
      00BA5B 20 08            [ 2]  631 	jra	00122$
      00BA5D                        632 00111$:
                                    633 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
      00BA5D C6 52 49         [ 1]  634 	ld	a, 0x5249
      00BA60 14 03            [ 1]  635 	and	a, (0x03, sp)
      00BA62 C7 52 49         [ 1]  636 	ld	0x5249, a
      00BA65                        637 00122$:
                                    638 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 264: }
      00BA65 5B 03            [ 2]  639 	addw	sp, #3
      00BA67 81               [ 4]  640 	ret
                                    641 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
                                    642 ;	-----------------------------------------
                                    643 ;	 function UART2_IrDAConfig
                                    644 ;	-----------------------------------------
      00BA68                        645 _UART2_IrDAConfig:
                                    646 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 274: assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
      00BA68 7B 03            [ 1]  647 	ld	a, (0x03, sp)
      00BA6A 4A               [ 1]  648 	dec	a
      00BA6B 27 13            [ 1]  649 	jreq	00107$
      00BA6D 0D 03            [ 1]  650 	tnz	(0x03, sp)
      00BA6F 27 0F            [ 1]  651 	jreq	00107$
      00BA71 4B 12            [ 1]  652 	push	#0x12
      00BA73 4B 01            [ 1]  653 	push	#0x01
      00BA75 5F               [ 1]  654 	clrw	x
      00BA76 89               [ 2]  655 	pushw	x
      00BA77 4B 18            [ 1]  656 	push	#<(___str_0+0)
      00BA79 4B 83            [ 1]  657 	push	#((___str_0+0) >> 8)
      00BA7B CD 85 9D         [ 4]  658 	call	_assert_failed
      00BA7E 5B 06            [ 2]  659 	addw	sp, #6
      00BA80                        660 00107$:
                                    661 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      00BA80 C6 52 48         [ 1]  662 	ld	a, 0x5248
                                    663 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
      00BA83 0D 03            [ 1]  664 	tnz	(0x03, sp)
      00BA85 27 06            [ 1]  665 	jreq	00102$
                                    666 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      00BA87 AA 04            [ 1]  667 	or	a, #0x04
      00BA89 C7 52 48         [ 1]  668 	ld	0x5248, a
      00BA8C 81               [ 4]  669 	ret
      00BA8D                        670 00102$:
                                    671 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
      00BA8D A4 FB            [ 1]  672 	and	a, #0xfb
      00BA8F C7 52 48         [ 1]  673 	ld	0x5248, a
                                    674 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 284: }
      00BA92 81               [ 4]  675 	ret
                                    676 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
                                    677 ;	-----------------------------------------
                                    678 ;	 function UART2_IrDACmd
                                    679 ;	-----------------------------------------
      00BA93                        680 _UART2_IrDACmd:
                                    681 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 295: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BA93 0D 03            [ 1]  682 	tnz	(0x03, sp)
      00BA95 27 14            [ 1]  683 	jreq	00107$
      00BA97 7B 03            [ 1]  684 	ld	a, (0x03, sp)
      00BA99 4A               [ 1]  685 	dec	a
      00BA9A 27 0F            [ 1]  686 	jreq	00107$
      00BA9C 4B 27            [ 1]  687 	push	#0x27
      00BA9E 4B 01            [ 1]  688 	push	#0x01
      00BAA0 5F               [ 1]  689 	clrw	x
      00BAA1 89               [ 2]  690 	pushw	x
      00BAA2 4B 18            [ 1]  691 	push	#<(___str_0+0)
      00BAA4 4B 83            [ 1]  692 	push	#((___str_0+0) >> 8)
      00BAA6 CD 85 9D         [ 4]  693 	call	_assert_failed
      00BAA9 5B 06            [ 2]  694 	addw	sp, #6
      00BAAB                        695 00107$:
                                    696 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      00BAAB C6 52 48         [ 1]  697 	ld	a, 0x5248
                                    698 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 297: if (NewState != DISABLE)
      00BAAE 0D 03            [ 1]  699 	tnz	(0x03, sp)
      00BAB0 27 06            [ 1]  700 	jreq	00102$
                                    701 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      00BAB2 AA 02            [ 1]  702 	or	a, #0x02
      00BAB4 C7 52 48         [ 1]  703 	ld	0x5248, a
      00BAB7 81               [ 4]  704 	ret
      00BAB8                        705 00102$:
                                    706 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
      00BAB8 A4 FD            [ 1]  707 	and	a, #0xfd
      00BABA C7 52 48         [ 1]  708 	ld	0x5248, a
                                    709 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 307: }
      00BABD 81               [ 4]  710 	ret
                                    711 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
                                    712 ;	-----------------------------------------
                                    713 ;	 function UART2_LINBreakDetectionConfig
                                    714 ;	-----------------------------------------
      00BABE                        715 _UART2_LINBreakDetectionConfig:
                                    716 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 319: assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
      00BABE 0D 03            [ 1]  717 	tnz	(0x03, sp)
      00BAC0 27 14            [ 1]  718 	jreq	00107$
      00BAC2 7B 03            [ 1]  719 	ld	a, (0x03, sp)
      00BAC4 4A               [ 1]  720 	dec	a
      00BAC5 27 0F            [ 1]  721 	jreq	00107$
      00BAC7 4B 3F            [ 1]  722 	push	#0x3f
      00BAC9 4B 01            [ 1]  723 	push	#0x01
      00BACB 5F               [ 1]  724 	clrw	x
      00BACC 89               [ 2]  725 	pushw	x
      00BACD 4B 18            [ 1]  726 	push	#<(___str_0+0)
      00BACF 4B 83            [ 1]  727 	push	#((___str_0+0) >> 8)
      00BAD1 CD 85 9D         [ 4]  728 	call	_assert_failed
      00BAD4 5B 06            [ 2]  729 	addw	sp, #6
      00BAD6                        730 00107$:
                                    731 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      00BAD6 C6 52 47         [ 1]  732 	ld	a, 0x5247
                                    733 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
      00BAD9 0D 03            [ 1]  734 	tnz	(0x03, sp)
      00BADB 27 06            [ 1]  735 	jreq	00102$
                                    736 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      00BADD AA 20            [ 1]  737 	or	a, #0x20
      00BADF C7 52 47         [ 1]  738 	ld	0x5247, a
      00BAE2 81               [ 4]  739 	ret
      00BAE3                        740 00102$:
                                    741 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
      00BAE3 A4 DF            [ 1]  742 	and	a, #0xdf
      00BAE5 C7 52 47         [ 1]  743 	ld	0x5247, a
                                    744 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 329: }
      00BAE8 81               [ 4]  745 	ret
                                    746 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
                                    747 ;	-----------------------------------------
                                    748 ;	 function UART2_LINConfig
                                    749 ;	-----------------------------------------
      00BAE9                        750 _UART2_LINConfig:
                                    751 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 346: assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
      00BAE9 0D 03            [ 1]  752 	tnz	(0x03, sp)
      00BAEB 27 14            [ 1]  753 	jreq	00113$
      00BAED 7B 03            [ 1]  754 	ld	a, (0x03, sp)
      00BAEF 4A               [ 1]  755 	dec	a
      00BAF0 27 0F            [ 1]  756 	jreq	00113$
      00BAF2 4B 5A            [ 1]  757 	push	#0x5a
      00BAF4 4B 01            [ 1]  758 	push	#0x01
      00BAF6 5F               [ 1]  759 	clrw	x
      00BAF7 89               [ 2]  760 	pushw	x
      00BAF8 4B 18            [ 1]  761 	push	#<(___str_0+0)
      00BAFA 4B 83            [ 1]  762 	push	#((___str_0+0) >> 8)
      00BAFC CD 85 9D         [ 4]  763 	call	_assert_failed
      00BAFF 5B 06            [ 2]  764 	addw	sp, #6
      00BB01                        765 00113$:
                                    766 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 347: assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
      00BB01 7B 04            [ 1]  767 	ld	a, (0x04, sp)
      00BB03 4A               [ 1]  768 	dec	a
      00BB04 27 13            [ 1]  769 	jreq	00118$
      00BB06 0D 04            [ 1]  770 	tnz	(0x04, sp)
      00BB08 27 0F            [ 1]  771 	jreq	00118$
      00BB0A 4B 5B            [ 1]  772 	push	#0x5b
      00BB0C 4B 01            [ 1]  773 	push	#0x01
      00BB0E 5F               [ 1]  774 	clrw	x
      00BB0F 89               [ 2]  775 	pushw	x
      00BB10 4B 18            [ 1]  776 	push	#<(___str_0+0)
      00BB12 4B 83            [ 1]  777 	push	#((___str_0+0) >> 8)
      00BB14 CD 85 9D         [ 4]  778 	call	_assert_failed
      00BB17 5B 06            [ 2]  779 	addw	sp, #6
      00BB19                        780 00118$:
                                    781 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 348: assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
      00BB19 0D 05            [ 1]  782 	tnz	(0x05, sp)
      00BB1B 27 14            [ 1]  783 	jreq	00123$
      00BB1D 7B 05            [ 1]  784 	ld	a, (0x05, sp)
      00BB1F 4A               [ 1]  785 	dec	a
      00BB20 27 0F            [ 1]  786 	jreq	00123$
      00BB22 4B 5C            [ 1]  787 	push	#0x5c
      00BB24 4B 01            [ 1]  788 	push	#0x01
      00BB26 5F               [ 1]  789 	clrw	x
      00BB27 89               [ 2]  790 	pushw	x
      00BB28 4B 18            [ 1]  791 	push	#<(___str_0+0)
      00BB2A 4B 83            [ 1]  792 	push	#((___str_0+0) >> 8)
      00BB2C CD 85 9D         [ 4]  793 	call	_assert_failed
      00BB2F 5B 06            [ 2]  794 	addw	sp, #6
      00BB31                        795 00123$:
                                    796 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      00BB31 C6 52 49         [ 1]  797 	ld	a, 0x5249
                                    798 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
      00BB34 0D 03            [ 1]  799 	tnz	(0x03, sp)
      00BB36 27 07            [ 1]  800 	jreq	00102$
                                    801 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      00BB38 AA 20            [ 1]  802 	or	a, #0x20
      00BB3A C7 52 49         [ 1]  803 	ld	0x5249, a
      00BB3D 20 05            [ 2]  804 	jra	00103$
      00BB3F                        805 00102$:
                                    806 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
      00BB3F A4 DF            [ 1]  807 	and	a, #0xdf
      00BB41 C7 52 49         [ 1]  808 	ld	0x5249, a
      00BB44                        809 00103$:
                                    810 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      00BB44 C6 52 49         [ 1]  811 	ld	a, 0x5249
                                    812 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
      00BB47 0D 04            [ 1]  813 	tnz	(0x04, sp)
      00BB49 27 07            [ 1]  814 	jreq	00105$
                                    815 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
      00BB4B AA 10            [ 1]  816 	or	a, #0x10
      00BB4D C7 52 49         [ 1]  817 	ld	0x5249, a
      00BB50 20 05            [ 2]  818 	jra	00106$
      00BB52                        819 00105$:
                                    820 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
      00BB52 A4 EF            [ 1]  821 	and	a, #0xef
      00BB54 C7 52 49         [ 1]  822 	ld	0x5249, a
      00BB57                        823 00106$:
                                    824 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      00BB57 C6 52 49         [ 1]  825 	ld	a, 0x5249
                                    826 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
      00BB5A 0D 05            [ 1]  827 	tnz	(0x05, sp)
      00BB5C 27 06            [ 1]  828 	jreq	00108$
                                    829 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
      00BB5E AA 80            [ 1]  830 	or	a, #0x80
      00BB60 C7 52 49         [ 1]  831 	ld	0x5249, a
      00BB63 81               [ 4]  832 	ret
      00BB64                        833 00108$:
                                    834 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
      00BB64 A4 7F            [ 1]  835 	and	a, #0x7f
      00BB66 C7 52 49         [ 1]  836 	ld	0x5249, a
                                    837 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 376: }
      00BB69 81               [ 4]  838 	ret
                                    839 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
                                    840 ;	-----------------------------------------
                                    841 ;	 function UART2_LINCmd
                                    842 ;	-----------------------------------------
      00BB6A                        843 _UART2_LINCmd:
                                    844 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 386: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BB6A 0D 03            [ 1]  845 	tnz	(0x03, sp)
      00BB6C 27 14            [ 1]  846 	jreq	00107$
      00BB6E 7B 03            [ 1]  847 	ld	a, (0x03, sp)
      00BB70 4A               [ 1]  848 	dec	a
      00BB71 27 0F            [ 1]  849 	jreq	00107$
      00BB73 4B 82            [ 1]  850 	push	#0x82
      00BB75 4B 01            [ 1]  851 	push	#0x01
      00BB77 5F               [ 1]  852 	clrw	x
      00BB78 89               [ 2]  853 	pushw	x
      00BB79 4B 18            [ 1]  854 	push	#<(___str_0+0)
      00BB7B 4B 83            [ 1]  855 	push	#((___str_0+0) >> 8)
      00BB7D CD 85 9D         [ 4]  856 	call	_assert_failed
      00BB80 5B 06            [ 2]  857 	addw	sp, #6
      00BB82                        858 00107$:
                                    859 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      00BB82 C6 52 46         [ 1]  860 	ld	a, 0x5246
                                    861 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 388: if (NewState != DISABLE)
      00BB85 0D 03            [ 1]  862 	tnz	(0x03, sp)
      00BB87 27 06            [ 1]  863 	jreq	00102$
                                    864 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      00BB89 AA 40            [ 1]  865 	or	a, #0x40
      00BB8B C7 52 46         [ 1]  866 	ld	0x5246, a
      00BB8E 81               [ 4]  867 	ret
      00BB8F                        868 00102$:
                                    869 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
      00BB8F A4 BF            [ 1]  870 	and	a, #0xbf
      00BB91 C7 52 46         [ 1]  871 	ld	0x5246, a
                                    872 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 398: }
      00BB94 81               [ 4]  873 	ret
                                    874 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
                                    875 ;	-----------------------------------------
                                    876 ;	 function UART2_SmartCardCmd
                                    877 ;	-----------------------------------------
      00BB95                        878 _UART2_SmartCardCmd:
                                    879 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 409: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BB95 0D 03            [ 1]  880 	tnz	(0x03, sp)
      00BB97 27 14            [ 1]  881 	jreq	00107$
      00BB99 7B 03            [ 1]  882 	ld	a, (0x03, sp)
      00BB9B 4A               [ 1]  883 	dec	a
      00BB9C 27 0F            [ 1]  884 	jreq	00107$
      00BB9E 4B 99            [ 1]  885 	push	#0x99
      00BBA0 4B 01            [ 1]  886 	push	#0x01
      00BBA2 5F               [ 1]  887 	clrw	x
      00BBA3 89               [ 2]  888 	pushw	x
      00BBA4 4B 18            [ 1]  889 	push	#<(___str_0+0)
      00BBA6 4B 83            [ 1]  890 	push	#((___str_0+0) >> 8)
      00BBA8 CD 85 9D         [ 4]  891 	call	_assert_failed
      00BBAB 5B 06            [ 2]  892 	addw	sp, #6
      00BBAD                        893 00107$:
                                    894 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      00BBAD C6 52 48         [ 1]  895 	ld	a, 0x5248
                                    896 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 411: if (NewState != DISABLE)
      00BBB0 0D 03            [ 1]  897 	tnz	(0x03, sp)
      00BBB2 27 06            [ 1]  898 	jreq	00102$
                                    899 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      00BBB4 AA 20            [ 1]  900 	or	a, #0x20
      00BBB6 C7 52 48         [ 1]  901 	ld	0x5248, a
      00BBB9 81               [ 4]  902 	ret
      00BBBA                        903 00102$:
                                    904 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
      00BBBA A4 DF            [ 1]  905 	and	a, #0xdf
      00BBBC C7 52 48         [ 1]  906 	ld	0x5248, a
                                    907 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 421: }
      00BBBF 81               [ 4]  908 	ret
                                    909 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
                                    910 ;	-----------------------------------------
                                    911 ;	 function UART2_SmartCardNACKCmd
                                    912 ;	-----------------------------------------
      00BBC0                        913 _UART2_SmartCardNACKCmd:
                                    914 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 432: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BBC0 0D 03            [ 1]  915 	tnz	(0x03, sp)
      00BBC2 27 14            [ 1]  916 	jreq	00107$
      00BBC4 7B 03            [ 1]  917 	ld	a, (0x03, sp)
      00BBC6 4A               [ 1]  918 	dec	a
      00BBC7 27 0F            [ 1]  919 	jreq	00107$
      00BBC9 4B B0            [ 1]  920 	push	#0xb0
      00BBCB 4B 01            [ 1]  921 	push	#0x01
      00BBCD 5F               [ 1]  922 	clrw	x
      00BBCE 89               [ 2]  923 	pushw	x
      00BBCF 4B 18            [ 1]  924 	push	#<(___str_0+0)
      00BBD1 4B 83            [ 1]  925 	push	#((___str_0+0) >> 8)
      00BBD3 CD 85 9D         [ 4]  926 	call	_assert_failed
      00BBD6 5B 06            [ 2]  927 	addw	sp, #6
      00BBD8                        928 00107$:
                                    929 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      00BBD8 C6 52 48         [ 1]  930 	ld	a, 0x5248
                                    931 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 434: if (NewState != DISABLE)
      00BBDB 0D 03            [ 1]  932 	tnz	(0x03, sp)
      00BBDD 27 06            [ 1]  933 	jreq	00102$
                                    934 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      00BBDF AA 10            [ 1]  935 	or	a, #0x10
      00BBE1 C7 52 48         [ 1]  936 	ld	0x5248, a
      00BBE4 81               [ 4]  937 	ret
      00BBE5                        938 00102$:
                                    939 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
      00BBE5 A4 EF            [ 1]  940 	and	a, #0xef
      00BBE7 C7 52 48         [ 1]  941 	ld	0x5248, a
                                    942 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 444: }
      00BBEA 81               [ 4]  943 	ret
                                    944 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
                                    945 ;	-----------------------------------------
                                    946 ;	 function UART2_WakeUpConfig
                                    947 ;	-----------------------------------------
      00BBEB                        948 _UART2_WakeUpConfig:
                                    949 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 454: assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
      00BBEB 0D 03            [ 1]  950 	tnz	(0x03, sp)
      00BBED 27 15            [ 1]  951 	jreq	00104$
      00BBEF 7B 03            [ 1]  952 	ld	a, (0x03, sp)
      00BBF1 A1 08            [ 1]  953 	cp	a, #0x08
      00BBF3 27 0F            [ 1]  954 	jreq	00104$
      00BBF5 4B C6            [ 1]  955 	push	#0xc6
      00BBF7 4B 01            [ 1]  956 	push	#0x01
      00BBF9 5F               [ 1]  957 	clrw	x
      00BBFA 89               [ 2]  958 	pushw	x
      00BBFB 4B 18            [ 1]  959 	push	#<(___str_0+0)
      00BBFD 4B 83            [ 1]  960 	push	#((___str_0+0) >> 8)
      00BBFF CD 85 9D         [ 4]  961 	call	_assert_failed
      00BC02 5B 06            [ 2]  962 	addw	sp, #6
      00BC04                        963 00104$:
                                    964 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
      00BC04 72 17 52 44      [ 1]  965 	bres	21060, #3
                                    966 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
      00BC08 C6 52 44         [ 1]  967 	ld	a, 0x5244
      00BC0B 1A 03            [ 1]  968 	or	a, (0x03, sp)
      00BC0D C7 52 44         [ 1]  969 	ld	0x5244, a
                                    970 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 458: }
      00BC10 81               [ 4]  971 	ret
                                    972 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
                                    973 ;	-----------------------------------------
                                    974 ;	 function UART2_ReceiverWakeUpCmd
                                    975 ;	-----------------------------------------
      00BC11                        976 _UART2_ReceiverWakeUpCmd:
                                    977 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 468: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00BC11 0D 03            [ 1]  978 	tnz	(0x03, sp)
      00BC13 27 14            [ 1]  979 	jreq	00107$
      00BC15 7B 03            [ 1]  980 	ld	a, (0x03, sp)
      00BC17 4A               [ 1]  981 	dec	a
      00BC18 27 0F            [ 1]  982 	jreq	00107$
      00BC1A 4B D4            [ 1]  983 	push	#0xd4
      00BC1C 4B 01            [ 1]  984 	push	#0x01
      00BC1E 5F               [ 1]  985 	clrw	x
      00BC1F 89               [ 2]  986 	pushw	x
      00BC20 4B 18            [ 1]  987 	push	#<(___str_0+0)
      00BC22 4B 83            [ 1]  988 	push	#((___str_0+0) >> 8)
      00BC24 CD 85 9D         [ 4]  989 	call	_assert_failed
      00BC27 5B 06            [ 2]  990 	addw	sp, #6
      00BC29                        991 00107$:
                                    992 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      00BC29 C6 52 45         [ 1]  993 	ld	a, 0x5245
                                    994 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 470: if (NewState != DISABLE)
      00BC2C 0D 03            [ 1]  995 	tnz	(0x03, sp)
      00BC2E 27 06            [ 1]  996 	jreq	00102$
                                    997 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      00BC30 AA 02            [ 1]  998 	or	a, #0x02
      00BC32 C7 52 45         [ 1]  999 	ld	0x5245, a
      00BC35 81               [ 4] 1000 	ret
      00BC36                       1001 00102$:
                                   1002 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
      00BC36 A4 FD            [ 1] 1003 	and	a, #0xfd
      00BC38 C7 52 45         [ 1] 1004 	ld	0x5245, a
                                   1005 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 480: }
      00BC3B 81               [ 4] 1006 	ret
                                   1007 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function UART2_ReceiveData8
                                   1010 ;	-----------------------------------------
      00BC3C                       1011 _UART2_ReceiveData8:
                                   1012 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
      00BC3C C6 52 41         [ 1] 1013 	ld	a, 0x5241
                                   1014 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 490: }
      00BC3F 81               [ 4] 1015 	ret
                                   1016 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
                                   1017 ;	-----------------------------------------
                                   1018 ;	 function UART2_ReceiveData9
                                   1019 ;	-----------------------------------------
      00BC40                       1020 _UART2_ReceiveData9:
      00BC40 89               [ 2] 1021 	pushw	x
                                   1022 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
      00BC41 C6 52 44         [ 1] 1023 	ld	a, 0x5244
      00BC44 A4 80            [ 1] 1024 	and	a, #0x80
      00BC46 97               [ 1] 1025 	ld	xl, a
      00BC47 4F               [ 1] 1026 	clr	a
      00BC48 95               [ 1] 1027 	ld	xh, a
      00BC49 58               [ 2] 1028 	sllw	x
      00BC4A 1F 01            [ 2] 1029 	ldw	(0x01, sp), x
                                   1030 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
      00BC4C C6 52 41         [ 1] 1031 	ld	a, 0x5241
      00BC4F 5F               [ 1] 1032 	clrw	x
      00BC50 1A 02            [ 1] 1033 	or	a, (0x02, sp)
      00BC52 02               [ 1] 1034 	rlwa	x
      00BC53 1A 01            [ 1] 1035 	or	a, (0x01, sp)
      00BC55 A4 01            [ 1] 1036 	and	a, #0x01
      00BC57 95               [ 1] 1037 	ld	xh, a
                                   1038 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 504: }
      00BC58 5B 02            [ 2] 1039 	addw	sp, #2
      00BC5A 81               [ 4] 1040 	ret
                                   1041 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function UART2_SendData8
                                   1044 ;	-----------------------------------------
      00BC5B                       1045 _UART2_SendData8:
                                   1046 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 514: UART2->DR = Data;
      00BC5B AE 52 41         [ 2] 1047 	ldw	x, #0x5241
      00BC5E 7B 03            [ 1] 1048 	ld	a, (0x03, sp)
      00BC60 F7               [ 1] 1049 	ld	(x), a
                                   1050 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 515: }
      00BC61 81               [ 4] 1051 	ret
                                   1052 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
                                   1053 ;	-----------------------------------------
                                   1054 ;	 function UART2_SendData9
                                   1055 ;	-----------------------------------------
      00BC62                       1056 _UART2_SendData9:
      00BC62 88               [ 1] 1057 	push	a
                                   1058 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
      00BC63 72 1D 52 44      [ 1] 1059 	bres	21060, #6
                                   1060 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
      00BC67 C6 52 44         [ 1] 1061 	ld	a, 0x5244
      00BC6A 6B 01            [ 1] 1062 	ld	(0x01, sp), a
      00BC6C 1E 04            [ 2] 1063 	ldw	x, (0x04, sp)
      00BC6E 54               [ 2] 1064 	srlw	x
      00BC6F 54               [ 2] 1065 	srlw	x
      00BC70 9F               [ 1] 1066 	ld	a, xl
      00BC71 A4 40            [ 1] 1067 	and	a, #0x40
      00BC73 1A 01            [ 1] 1068 	or	a, (0x01, sp)
      00BC75 C7 52 44         [ 1] 1069 	ld	0x5244, a
                                   1070 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
      00BC78 7B 05            [ 1] 1071 	ld	a, (0x05, sp)
      00BC7A C7 52 41         [ 1] 1072 	ld	0x5241, a
                                   1073 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 532: }
      00BC7D 84               [ 1] 1074 	pop	a
      00BC7E 81               [ 4] 1075 	ret
                                   1076 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 539: void UART2_SendBreak(void)
                                   1077 ;	-----------------------------------------
                                   1078 ;	 function UART2_SendBreak
                                   1079 ;	-----------------------------------------
      00BC7F                       1080 _UART2_SendBreak:
                                   1081 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
      00BC7F 72 10 52 45      [ 1] 1082 	bset	21061, #0
                                   1083 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 542: }
      00BC83 81               [ 4] 1084 	ret
                                   1085 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
                                   1086 ;	-----------------------------------------
                                   1087 ;	 function UART2_SetAddress
                                   1088 ;	-----------------------------------------
      00BC84                       1089 _UART2_SetAddress:
                                   1090 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 552: assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
      00BC84 7B 03            [ 1] 1091 	ld	a, (0x03, sp)
      00BC86 A1 10            [ 1] 1092 	cp	a, #0x10
      00BC88 25 0F            [ 1] 1093 	jrc	00104$
      00BC8A 4B 28            [ 1] 1094 	push	#0x28
      00BC8C 4B 02            [ 1] 1095 	push	#0x02
      00BC8E 5F               [ 1] 1096 	clrw	x
      00BC8F 89               [ 2] 1097 	pushw	x
      00BC90 4B 18            [ 1] 1098 	push	#<(___str_0+0)
      00BC92 4B 83            [ 1] 1099 	push	#((___str_0+0) >> 8)
      00BC94 CD 85 9D         [ 4] 1100 	call	_assert_failed
      00BC97 5B 06            [ 2] 1101 	addw	sp, #6
      00BC99                       1102 00104$:
                                   1103 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
      00BC99 C6 52 47         [ 1] 1104 	ld	a, 0x5247
      00BC9C A4 F0            [ 1] 1105 	and	a, #0xf0
      00BC9E C7 52 47         [ 1] 1106 	ld	0x5247, a
                                   1107 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
      00BCA1 C6 52 47         [ 1] 1108 	ld	a, 0x5247
      00BCA4 1A 03            [ 1] 1109 	or	a, (0x03, sp)
      00BCA6 C7 52 47         [ 1] 1110 	ld	0x5247, a
                                   1111 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 558: }
      00BCA9 81               [ 4] 1112 	ret
                                   1113 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
                                   1114 ;	-----------------------------------------
                                   1115 ;	 function UART2_SetGuardTime
                                   1116 ;	-----------------------------------------
      00BCAA                       1117 _UART2_SetGuardTime:
                                   1118 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
      00BCAA AE 52 4A         [ 2] 1119 	ldw	x, #0x524a
      00BCAD 7B 03            [ 1] 1120 	ld	a, (0x03, sp)
      00BCAF F7               [ 1] 1121 	ld	(x), a
                                   1122 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 570: }
      00BCB0 81               [ 4] 1123 	ret
                                   1124 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
                                   1125 ;	-----------------------------------------
                                   1126 ;	 function UART2_SetPrescaler
                                   1127 ;	-----------------------------------------
      00BCB1                       1128 _UART2_SetPrescaler:
                                   1129 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
      00BCB1 AE 52 4B         [ 2] 1130 	ldw	x, #0x524b
      00BCB4 7B 03            [ 1] 1131 	ld	a, (0x03, sp)
      00BCB6 F7               [ 1] 1132 	ld	(x), a
                                   1133 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 598: }
      00BCB7 81               [ 4] 1134 	ret
                                   1135 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
                                   1136 ;	-----------------------------------------
                                   1137 ;	 function UART2_GetFlagStatus
                                   1138 ;	-----------------------------------------
      00BCB8                       1139 _UART2_GetFlagStatus:
      00BCB8 52 04            [ 2] 1140 	sub	sp, #4
                                   1141 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 611: assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
      00BCBA 1E 07            [ 2] 1142 	ldw	x, (0x07, sp)
      00BCBC A3 01 01         [ 2] 1143 	cpw	x, #0x0101
      00BCBF 26 05            [ 1] 1144 	jrne	00256$
      00BCC1 A6 01            [ 1] 1145 	ld	a, #0x01
      00BCC3 6B 01            [ 1] 1146 	ld	(0x01, sp), a
      00BCC5 C5                    1147 	.byte 0xc5
      00BCC6                       1148 00256$:
      00BCC6 0F 01            [ 1] 1149 	clr	(0x01, sp)
      00BCC8                       1150 00257$:
      00BCC8 A3 03 01         [ 2] 1151 	cpw	x, #0x0301
      00BCCB 26 05            [ 1] 1152 	jrne	00259$
      00BCCD A6 01            [ 1] 1153 	ld	a, #0x01
      00BCCF 6B 02            [ 1] 1154 	ld	(0x02, sp), a
      00BCD1 C5                    1155 	.byte 0xc5
      00BCD2                       1156 00259$:
      00BCD2 0F 02            [ 1] 1157 	clr	(0x02, sp)
      00BCD4                       1158 00260$:
      00BCD4 A3 03 02         [ 2] 1159 	cpw	x, #0x0302
      00BCD7 26 05            [ 1] 1160 	jrne	00262$
      00BCD9 A6 01            [ 1] 1161 	ld	a, #0x01
      00BCDB 6B 03            [ 1] 1162 	ld	(0x03, sp), a
      00BCDD C5                    1163 	.byte 0xc5
      00BCDE                       1164 00262$:
      00BCDE 0F 03            [ 1] 1165 	clr	(0x03, sp)
      00BCE0                       1166 00263$:
      00BCE0 A3 02 10         [ 2] 1167 	cpw	x, #0x0210
      00BCE3 26 03            [ 1] 1168 	jrne	00265$
      00BCE5 A6 01            [ 1] 1169 	ld	a, #0x01
      00BCE7 21                    1170 	.byte 0x21
      00BCE8                       1171 00265$:
      00BCE8 4F               [ 1] 1172 	clr	a
      00BCE9                       1173 00266$:
      00BCE9 A3 00 80         [ 2] 1174 	cpw	x, #0x0080
      00BCEC 27 41            [ 1] 1175 	jreq	00126$
      00BCEE A3 00 40         [ 2] 1176 	cpw	x, #0x0040
      00BCF1 27 3C            [ 1] 1177 	jreq	00126$
      00BCF3 A3 00 20         [ 2] 1178 	cpw	x, #0x0020
      00BCF6 27 37            [ 1] 1179 	jreq	00126$
      00BCF8 A3 00 10         [ 2] 1180 	cpw	x, #0x0010
      00BCFB 27 32            [ 1] 1181 	jreq	00126$
      00BCFD A3 00 08         [ 2] 1182 	cpw	x, #0x0008
      00BD00 27 2D            [ 1] 1183 	jreq	00126$
      00BD02 A3 00 04         [ 2] 1184 	cpw	x, #0x0004
      00BD05 27 28            [ 1] 1185 	jreq	00126$
      00BD07 A3 00 02         [ 2] 1186 	cpw	x, #0x0002
      00BD0A 27 23            [ 1] 1187 	jreq	00126$
      00BD0C 5A               [ 2] 1188 	decw	x
      00BD0D 27 20            [ 1] 1189 	jreq	00126$
      00BD0F 0D 01            [ 1] 1190 	tnz	(0x01, sp)
      00BD11 26 1C            [ 1] 1191 	jrne	00126$
      00BD13 0D 02            [ 1] 1192 	tnz	(0x02, sp)
      00BD15 26 18            [ 1] 1193 	jrne	00126$
      00BD17 0D 03            [ 1] 1194 	tnz	(0x03, sp)
      00BD19 26 14            [ 1] 1195 	jrne	00126$
      00BD1B 4D               [ 1] 1196 	tnz	a
      00BD1C 26 11            [ 1] 1197 	jrne	00126$
      00BD1E 88               [ 1] 1198 	push	a
      00BD1F 4B 63            [ 1] 1199 	push	#0x63
      00BD21 4B 02            [ 1] 1200 	push	#0x02
      00BD23 5F               [ 1] 1201 	clrw	x
      00BD24 89               [ 2] 1202 	pushw	x
      00BD25 4B 18            [ 1] 1203 	push	#<(___str_0+0)
      00BD27 4B 83            [ 1] 1204 	push	#((___str_0+0) >> 8)
      00BD29 CD 85 9D         [ 4] 1205 	call	_assert_failed
      00BD2C 5B 06            [ 2] 1206 	addw	sp, #6
      00BD2E 84               [ 1] 1207 	pop	a
      00BD2F                       1208 00126$:
                                   1209 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00BD2F 88               [ 1] 1210 	push	a
      00BD30 7B 09            [ 1] 1211 	ld	a, (0x09, sp)
      00BD32 6B 05            [ 1] 1212 	ld	(0x05, sp), a
      00BD34 84               [ 1] 1213 	pop	a
                                   1214 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
      00BD35 4D               [ 1] 1215 	tnz	a
      00BD36 27 0E            [ 1] 1216 	jreq	00121$
                                   1217 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00BD38 C6 52 47         [ 1] 1218 	ld	a, 0x5247
      00BD3B 14 04            [ 1] 1219 	and	a, (0x04, sp)
      00BD3D 27 04            [ 1] 1220 	jreq	00102$
                                   1221 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 619: status = SET;
      00BD3F A6 01            [ 1] 1222 	ld	a, #0x01
      00BD41 20 36            [ 2] 1223 	jra	00122$
      00BD43                       1224 00102$:
                                   1225 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 624: status = RESET;
      00BD43 4F               [ 1] 1226 	clr	a
      00BD44 20 33            [ 2] 1227 	jra	00122$
      00BD46                       1228 00121$:
                                   1229 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
      00BD46 7B 01            [ 1] 1230 	ld	a, (0x01, sp)
      00BD48 27 0E            [ 1] 1231 	jreq	00118$
                                   1232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00BD4A C6 52 45         [ 1] 1233 	ld	a, 0x5245
      00BD4D 14 04            [ 1] 1234 	and	a, (0x04, sp)
      00BD4F 27 04            [ 1] 1235 	jreq	00105$
                                   1236 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 632: status = SET;
      00BD51 A6 01            [ 1] 1237 	ld	a, #0x01
      00BD53 20 24            [ 2] 1238 	jra	00122$
      00BD55                       1239 00105$:
                                   1240 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 637: status = RESET;
      00BD55 4F               [ 1] 1241 	clr	a
      00BD56 20 21            [ 2] 1242 	jra	00122$
      00BD58                       1243 00118$:
                                   1244 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
      00BD58 7B 03            [ 1] 1245 	ld	a, (0x03, sp)
      00BD5A 26 04            [ 1] 1246 	jrne	00113$
      00BD5C 7B 02            [ 1] 1247 	ld	a, (0x02, sp)
      00BD5E 27 0E            [ 1] 1248 	jreq	00114$
      00BD60                       1249 00113$:
                                   1250 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00BD60 C6 52 49         [ 1] 1251 	ld	a, 0x5249
      00BD63 14 04            [ 1] 1252 	and	a, (0x04, sp)
      00BD65 27 04            [ 1] 1253 	jreq	00108$
                                   1254 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 645: status = SET;
      00BD67 A6 01            [ 1] 1255 	ld	a, #0x01
      00BD69 20 0E            [ 2] 1256 	jra	00122$
      00BD6B                       1257 00108$:
                                   1258 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 650: status = RESET;
      00BD6B 4F               [ 1] 1259 	clr	a
      00BD6C 20 0B            [ 2] 1260 	jra	00122$
      00BD6E                       1261 00114$:
                                   1262 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00BD6E C6 52 40         [ 1] 1263 	ld	a, 0x5240
      00BD71 14 04            [ 1] 1264 	and	a, (0x04, sp)
      00BD73 27 03            [ 1] 1265 	jreq	00111$
                                   1266 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 658: status = SET;
      00BD75 A6 01            [ 1] 1267 	ld	a, #0x01
                                   1268 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 663: status = RESET;
      00BD77 21                    1269 	.byte 0x21
      00BD78                       1270 00111$:
      00BD78 4F               [ 1] 1271 	clr	a
      00BD79                       1272 00122$:
                                   1273 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 668: return  status;
                                   1274 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 669: }
      00BD79 5B 04            [ 2] 1275 	addw	sp, #4
      00BD7B 81               [ 4] 1276 	ret
                                   1277 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
                                   1278 ;	-----------------------------------------
                                   1279 ;	 function UART2_ClearFlag
                                   1280 ;	-----------------------------------------
      00BD7C                       1281 _UART2_ClearFlag:
      00BD7C 52 03            [ 2] 1282 	sub	sp, #3
                                   1283 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 701: assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
      00BD7E 1E 06            [ 2] 1284 	ldw	x, (0x06, sp)
      00BD80 A3 00 20         [ 2] 1285 	cpw	x, #0x0020
      00BD83 26 05            [ 1] 1286 	jrne	00159$
      00BD85 A6 01            [ 1] 1287 	ld	a, #0x01
      00BD87 6B 01            [ 1] 1288 	ld	(0x01, sp), a
      00BD89 C5                    1289 	.byte 0xc5
      00BD8A                       1290 00159$:
      00BD8A 0F 01            [ 1] 1291 	clr	(0x01, sp)
      00BD8C                       1292 00160$:
      00BD8C A3 03 02         [ 2] 1293 	cpw	x, #0x0302
      00BD8F 26 05            [ 1] 1294 	jrne	00162$
      00BD91 A6 01            [ 1] 1295 	ld	a, #0x01
      00BD93 6B 02            [ 1] 1296 	ld	(0x02, sp), a
      00BD95 C5                    1297 	.byte 0xc5
      00BD96                       1298 00162$:
      00BD96 0F 02            [ 1] 1299 	clr	(0x02, sp)
      00BD98                       1300 00163$:
      00BD98 A3 02 10         [ 2] 1301 	cpw	x, #0x0210
      00BD9B 26 05            [ 1] 1302 	jrne	00165$
      00BD9D A6 01            [ 1] 1303 	ld	a, #0x01
      00BD9F 6B 03            [ 1] 1304 	ld	(0x03, sp), a
      00BDA1 C5                    1305 	.byte 0xc5
      00BDA2                       1306 00165$:
      00BDA2 0F 03            [ 1] 1307 	clr	(0x03, sp)
      00BDA4                       1308 00166$:
      00BDA4 0D 01            [ 1] 1309 	tnz	(0x01, sp)
      00BDA6 26 1C            [ 1] 1310 	jrne	00113$
      00BDA8 0D 02            [ 1] 1311 	tnz	(0x02, sp)
      00BDAA 26 18            [ 1] 1312 	jrne	00113$
      00BDAC A3 03 01         [ 2] 1313 	cpw	x, #0x0301
      00BDAF 27 13            [ 1] 1314 	jreq	00113$
      00BDB1 0D 03            [ 1] 1315 	tnz	(0x03, sp)
      00BDB3 26 0F            [ 1] 1316 	jrne	00113$
      00BDB5 4B BD            [ 1] 1317 	push	#0xbd
      00BDB7 4B 02            [ 1] 1318 	push	#0x02
      00BDB9 5F               [ 1] 1319 	clrw	x
      00BDBA 89               [ 2] 1320 	pushw	x
      00BDBB 4B 18            [ 1] 1321 	push	#<(___str_0+0)
      00BDBD 4B 83            [ 1] 1322 	push	#((___str_0+0) >> 8)
      00BDBF CD 85 9D         [ 4] 1323 	call	_assert_failed
      00BDC2 5B 06            [ 2] 1324 	addw	sp, #6
      00BDC4                       1325 00113$:
                                   1326 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
      00BDC4 7B 01            [ 1] 1327 	ld	a, (0x01, sp)
      00BDC6 27 06            [ 1] 1328 	jreq	00108$
                                   1329 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      00BDC8 35 DF 52 40      [ 1] 1330 	mov	0x5240+0, #0xdf
      00BDCC 20 20            [ 2] 1331 	jra	00110$
      00BDCE                       1332 00108$:
                                   1333 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
      00BDCE 7B 03            [ 1] 1334 	ld	a, (0x03, sp)
      00BDD0 27 06            [ 1] 1335 	jreq	00105$
                                   1336 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
      00BDD2 72 19 52 47      [ 1] 1337 	bres	21063, #4
      00BDD6 20 16            [ 2] 1338 	jra	00110$
      00BDD8                       1339 00105$:
                                   1340 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      00BDD8 C6 52 49         [ 1] 1341 	ld	a, 0x5249
      00BDDB 97               [ 1] 1342 	ld	xl, a
                                   1343 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
      00BDDC 7B 02            [ 1] 1344 	ld	a, (0x02, sp)
      00BDDE 27 08            [ 1] 1345 	jreq	00102$
                                   1346 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      00BDE0 9F               [ 1] 1347 	ld	a, xl
      00BDE1 A4 FD            [ 1] 1348 	and	a, #0xfd
      00BDE3 C7 52 49         [ 1] 1349 	ld	0x5249, a
      00BDE6 20 06            [ 2] 1350 	jra	00110$
      00BDE8                       1351 00102$:
                                   1352 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
      00BDE8 9F               [ 1] 1353 	ld	a, xl
      00BDE9 A4 FE            [ 1] 1354 	and	a, #0xfe
      00BDEB C7 52 49         [ 1] 1355 	ld	0x5249, a
      00BDEE                       1356 00110$:
                                   1357 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 723: }
      00BDEE 5B 03            [ 2] 1358 	addw	sp, #3
      00BDF0 81               [ 4] 1359 	ret
                                   1360 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
                                   1361 ;	-----------------------------------------
                                   1362 ;	 function UART2_GetITStatus
                                   1363 ;	-----------------------------------------
      00BDF1                       1364 _UART2_GetITStatus:
      00BDF1 52 05            [ 2] 1365 	sub	sp, #5
                                   1366 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 747: assert_param(IS_UART2_GET_IT_OK(UART2_IT));
      00BDF3 1E 08            [ 2] 1367 	ldw	x, (0x08, sp)
      00BDF5 A3 03 46         [ 2] 1368 	cpw	x, #0x0346
      00BDF8 26 05            [ 1] 1369 	jrne	00247$
      00BDFA A6 01            [ 1] 1370 	ld	a, #0x01
      00BDFC 6B 01            [ 1] 1371 	ld	(0x01, sp), a
      00BDFE C5                    1372 	.byte 0xc5
      00BDFF                       1373 00247$:
      00BDFF 0F 01            [ 1] 1374 	clr	(0x01, sp)
      00BE01                       1375 00248$:
      00BE01 A3 04 12         [ 2] 1376 	cpw	x, #0x0412
      00BE04 26 05            [ 1] 1377 	jrne	00250$
      00BE06 A6 01            [ 1] 1378 	ld	a, #0x01
      00BE08 6B 02            [ 1] 1379 	ld	(0x02, sp), a
      00BE0A C5                    1380 	.byte 0xc5
      00BE0B                       1381 00250$:
      00BE0B 0F 02            [ 1] 1382 	clr	(0x02, sp)
      00BE0D                       1383 00251$:
      00BE0D A3 01 00         [ 2] 1384 	cpw	x, #0x0100
      00BE10 26 05            [ 1] 1385 	jrne	00253$
      00BE12 A6 01            [ 1] 1386 	ld	a, #0x01
      00BE14 6B 03            [ 1] 1387 	ld	(0x03, sp), a
      00BE16 C5                    1388 	.byte 0xc5
      00BE17                       1389 00253$:
      00BE17 0F 03            [ 1] 1390 	clr	(0x03, sp)
      00BE19                       1391 00254$:
      00BE19 A3 02 77         [ 2] 1392 	cpw	x, #0x0277
      00BE1C 27 2F            [ 1] 1393 	jreq	00129$
      00BE1E A3 02 66         [ 2] 1394 	cpw	x, #0x0266
      00BE21 27 2A            [ 1] 1395 	jreq	00129$
      00BE23 A3 02 55         [ 2] 1396 	cpw	x, #0x0255
      00BE26 27 25            [ 1] 1397 	jreq	00129$
      00BE28 A3 02 44         [ 2] 1398 	cpw	x, #0x0244
      00BE2B 27 20            [ 1] 1399 	jreq	00129$
      00BE2D A3 02 35         [ 2] 1400 	cpw	x, #0x0235
      00BE30 27 1B            [ 1] 1401 	jreq	00129$
      00BE32 0D 01            [ 1] 1402 	tnz	(0x01, sp)
      00BE34 26 17            [ 1] 1403 	jrne	00129$
      00BE36 0D 02            [ 1] 1404 	tnz	(0x02, sp)
      00BE38 26 13            [ 1] 1405 	jrne	00129$
      00BE3A 0D 03            [ 1] 1406 	tnz	(0x03, sp)
      00BE3C 26 0F            [ 1] 1407 	jrne	00129$
      00BE3E 4B EB            [ 1] 1408 	push	#0xeb
      00BE40 4B 02            [ 1] 1409 	push	#0x02
      00BE42 5F               [ 1] 1410 	clrw	x
      00BE43 89               [ 2] 1411 	pushw	x
      00BE44 4B 18            [ 1] 1412 	push	#<(___str_0+0)
      00BE46 4B 83            [ 1] 1413 	push	#((___str_0+0) >> 8)
      00BE48 CD 85 9D         [ 4] 1414 	call	_assert_failed
      00BE4B 5B 06            [ 2] 1415 	addw	sp, #6
      00BE4D                       1416 00129$:
                                   1417 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      00BE4D 7B 09            [ 1] 1418 	ld	a, (0x09, sp)
      00BE4F 97               [ 1] 1419 	ld	xl, a
      00BE50 A4 0F            [ 1] 1420 	and	a, #0x0f
      00BE52 88               [ 1] 1421 	push	a
      00BE53 A6 01            [ 1] 1422 	ld	a, #0x01
      00BE55 6B 05            [ 1] 1423 	ld	(0x05, sp), a
      00BE57 84               [ 1] 1424 	pop	a
      00BE58 4D               [ 1] 1425 	tnz	a
      00BE59 27 05            [ 1] 1426 	jreq	00274$
      00BE5B                       1427 00273$:
      00BE5B 08 04            [ 1] 1428 	sll	(0x04, sp)
      00BE5D 4A               [ 1] 1429 	dec	a
      00BE5E 26 FB            [ 1] 1430 	jrne	00273$
      00BE60                       1431 00274$:
                                   1432 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
      00BE60 9F               [ 1] 1433 	ld	a, xl
      00BE61 4E               [ 1] 1434 	swap	a
      00BE62 A4 0F            [ 1] 1435 	and	a, #0x0f
                                   1436 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      00BE64 88               [ 1] 1437 	push	a
      00BE65 A6 01            [ 1] 1438 	ld	a, #0x01
      00BE67 6B 06            [ 1] 1439 	ld	(0x06, sp), a
      00BE69 84               [ 1] 1440 	pop	a
      00BE6A 4D               [ 1] 1441 	tnz	a
      00BE6B 27 05            [ 1] 1442 	jreq	00276$
      00BE6D                       1443 00275$:
      00BE6D 08 05            [ 1] 1444 	sll	(0x05, sp)
      00BE6F 4A               [ 1] 1445 	dec	a
      00BE70 26 FB            [ 1] 1446 	jrne	00275$
      00BE72                       1447 00276$:
                                   1448 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
      00BE72 7B 03            [ 1] 1449 	ld	a, (0x03, sp)
      00BE74 27 18            [ 1] 1450 	jreq	00124$
                                   1451 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
      00BE76 C6 52 44         [ 1] 1452 	ld	a, 0x5244
      00BE79 14 05            [ 1] 1453 	and	a, (0x05, sp)
      00BE7B 97               [ 1] 1454 	ld	xl, a
                                   1455 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00BE7C C6 52 40         [ 1] 1456 	ld	a, 0x5240
      00BE7F 14 04            [ 1] 1457 	and	a, (0x04, sp)
      00BE81 27 08            [ 1] 1458 	jreq	00102$
      00BE83 9F               [ 1] 1459 	ld	a, xl
      00BE84 4D               [ 1] 1460 	tnz	a
      00BE85 27 04            [ 1] 1461 	jreq	00102$
                                   1462 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 766: pendingbitstatus = SET;
      00BE87 A6 01            [ 1] 1463 	ld	a, #0x01
      00BE89 20 50            [ 2] 1464 	jra	00125$
      00BE8B                       1465 00102$:
                                   1466 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 771: pendingbitstatus = RESET;
      00BE8B 4F               [ 1] 1467 	clr	a
      00BE8C 20 4D            [ 2] 1468 	jra	00125$
      00BE8E                       1469 00124$:
                                   1470 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
      00BE8E 7B 01            [ 1] 1471 	ld	a, (0x01, sp)
      00BE90 27 18            [ 1] 1472 	jreq	00121$
                                   1473 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
      00BE92 C6 52 47         [ 1] 1474 	ld	a, 0x5247
      00BE95 14 05            [ 1] 1475 	and	a, (0x05, sp)
      00BE97 97               [ 1] 1476 	ld	xl, a
                                   1477 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      00BE98 C6 52 47         [ 1] 1478 	ld	a, 0x5247
      00BE9B 14 04            [ 1] 1479 	and	a, (0x04, sp)
      00BE9D 27 08            [ 1] 1480 	jreq	00106$
      00BE9F 9F               [ 1] 1481 	ld	a, xl
      00BEA0 4D               [ 1] 1482 	tnz	a
      00BEA1 27 04            [ 1] 1483 	jreq	00106$
                                   1484 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 782: pendingbitstatus = SET;
      00BEA3 A6 01            [ 1] 1485 	ld	a, #0x01
      00BEA5 20 34            [ 2] 1486 	jra	00125$
      00BEA7                       1487 00106$:
                                   1488 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 787: pendingbitstatus = RESET;
      00BEA7 4F               [ 1] 1489 	clr	a
      00BEA8 20 31            [ 2] 1490 	jra	00125$
      00BEAA                       1491 00121$:
                                   1492 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
      00BEAA 7B 02            [ 1] 1493 	ld	a, (0x02, sp)
      00BEAC 27 18            [ 1] 1494 	jreq	00118$
                                   1495 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
      00BEAE C6 52 49         [ 1] 1496 	ld	a, 0x5249
      00BEB1 14 05            [ 1] 1497 	and	a, (0x05, sp)
      00BEB3 97               [ 1] 1498 	ld	xl, a
                                   1499 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
      00BEB4 C6 52 49         [ 1] 1500 	ld	a, 0x5249
      00BEB7 14 04            [ 1] 1501 	and	a, (0x04, sp)
      00BEB9 27 08            [ 1] 1502 	jreq	00110$
      00BEBB 9F               [ 1] 1503 	ld	a, xl
      00BEBC 4D               [ 1] 1504 	tnz	a
      00BEBD 27 04            [ 1] 1505 	jreq	00110$
                                   1506 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 798: pendingbitstatus = SET;
      00BEBF A6 01            [ 1] 1507 	ld	a, #0x01
      00BEC1 20 18            [ 2] 1508 	jra	00125$
      00BEC3                       1509 00110$:
                                   1510 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 803: pendingbitstatus = RESET;
      00BEC3 4F               [ 1] 1511 	clr	a
      00BEC4 20 15            [ 2] 1512 	jra	00125$
      00BEC6                       1513 00118$:
                                   1514 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
      00BEC6 C6 52 45         [ 1] 1515 	ld	a, 0x5245
      00BEC9 14 05            [ 1] 1516 	and	a, (0x05, sp)
      00BECB 97               [ 1] 1517 	ld	xl, a
                                   1518 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00BECC C6 52 40         [ 1] 1519 	ld	a, 0x5240
      00BECF 14 04            [ 1] 1520 	and	a, (0x04, sp)
      00BED1 27 07            [ 1] 1521 	jreq	00114$
      00BED3 9F               [ 1] 1522 	ld	a, xl
      00BED4 4D               [ 1] 1523 	tnz	a
      00BED5 27 03            [ 1] 1524 	jreq	00114$
                                   1525 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 814: pendingbitstatus = SET;
      00BED7 A6 01            [ 1] 1526 	ld	a, #0x01
                                   1527 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 819: pendingbitstatus = RESET;
      00BED9 21                    1528 	.byte 0x21
      00BEDA                       1529 00114$:
      00BEDA 4F               [ 1] 1530 	clr	a
      00BEDB                       1531 00125$:
                                   1532 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 823: return  pendingbitstatus;
                                   1533 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 824: }
      00BEDB 5B 05            [ 2] 1534 	addw	sp, #5
      00BEDD 81               [ 4] 1535 	ret
                                   1536 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
                                   1537 ;	-----------------------------------------
                                   1538 ;	 function UART2_ClearITPendingBit
                                   1539 ;	-----------------------------------------
      00BEDE                       1540 _UART2_ClearITPendingBit:
      00BEDE 88               [ 1] 1541 	push	a
                                   1542 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 854: assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
      00BEDF 1E 04            [ 2] 1543 	ldw	x, (0x04, sp)
      00BEE1 A3 02 55         [ 2] 1544 	cpw	x, #0x0255
      00BEE4 26 03            [ 1] 1545 	jrne	00143$
      00BEE6 A6 01            [ 1] 1546 	ld	a, #0x01
      00BEE8 21                    1547 	.byte 0x21
      00BEE9                       1548 00143$:
      00BEE9 4F               [ 1] 1549 	clr	a
      00BEEA                       1550 00144$:
      00BEEA A3 03 46         [ 2] 1551 	cpw	x, #0x0346
      00BEED 26 07            [ 1] 1552 	jrne	00146$
      00BEEF 88               [ 1] 1553 	push	a
      00BEF0 A6 01            [ 1] 1554 	ld	a, #0x01
      00BEF2 6B 02            [ 1] 1555 	ld	(0x02, sp), a
      00BEF4 84               [ 1] 1556 	pop	a
      00BEF5 C5                    1557 	.byte 0xc5
      00BEF6                       1558 00146$:
      00BEF6 0F 01            [ 1] 1559 	clr	(0x01, sp)
      00BEF8                       1560 00147$:
      00BEF8 4D               [ 1] 1561 	tnz	a
      00BEF9 26 1A            [ 1] 1562 	jrne	00110$
      00BEFB A3 04 12         [ 2] 1563 	cpw	x, #0x0412
      00BEFE 27 15            [ 1] 1564 	jreq	00110$
      00BF00 0D 01            [ 1] 1565 	tnz	(0x01, sp)
      00BF02 26 11            [ 1] 1566 	jrne	00110$
      00BF04 88               [ 1] 1567 	push	a
      00BF05 4B 56            [ 1] 1568 	push	#0x56
      00BF07 4B 03            [ 1] 1569 	push	#0x03
      00BF09 5F               [ 1] 1570 	clrw	x
      00BF0A 89               [ 2] 1571 	pushw	x
      00BF0B 4B 18            [ 1] 1572 	push	#<(___str_0+0)
      00BF0D 4B 83            [ 1] 1573 	push	#((___str_0+0) >> 8)
      00BF0F CD 85 9D         [ 4] 1574 	call	_assert_failed
      00BF12 5B 06            [ 2] 1575 	addw	sp, #6
      00BF14 84               [ 1] 1576 	pop	a
      00BF15                       1577 00110$:
                                   1578 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
      00BF15 4D               [ 1] 1579 	tnz	a
      00BF16 27 06            [ 1] 1580 	jreq	00105$
                                   1581 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      00BF18 35 DF 52 40      [ 1] 1582 	mov	0x5240+0, #0xdf
      00BF1C 20 0E            [ 2] 1583 	jra	00107$
      00BF1E                       1584 00105$:
                                   1585 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
      00BF1E 7B 01            [ 1] 1586 	ld	a, (0x01, sp)
      00BF20 27 06            [ 1] 1587 	jreq	00102$
                                   1588 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
      00BF22 72 19 52 47      [ 1] 1589 	bres	21063, #4
      00BF26 20 04            [ 2] 1590 	jra	00107$
      00BF28                       1591 00102$:
                                   1592 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      00BF28 72 13 52 49      [ 1] 1593 	bres	21065, #1
      00BF2C                       1594 00107$:
                                   1595 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_uart2.c: 871: }
      00BF2C 84               [ 1] 1596 	pop	a
      00BF2D 81               [ 4] 1597 	ret
                                   1598 	.area CODE
                                   1599 	.area CONST
                                   1600 	.area CONST
      008318                       1601 ___str_0:
      008318 2F 55 73 65 72 73 2F  1602 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      008354 4D 38 53 5F 53 74 64  1603 	.ascii "M8S_StdPeriph_Driver/src/stm8s_uart2.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 75 61 72 74
             32 2E 63
      00837A 00                    1604 	.db 0x00
                                   1605 	.area CODE
                                   1606 	.area INITIALIZER
                                   1607 	.area CABS (ABS)
