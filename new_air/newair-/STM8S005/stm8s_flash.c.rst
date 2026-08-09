                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_flash
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _FLASH_Unlock
                                     13 	.globl _FLASH_Lock
                                     14 	.globl _FLASH_DeInit
                                     15 	.globl _FLASH_ITConfig
                                     16 	.globl _FLASH_EraseByte
                                     17 	.globl _FLASH_ProgramByte
                                     18 	.globl _FLASH_ReadByte
                                     19 	.globl _FLASH_ProgramWord
                                     20 	.globl _FLASH_ProgramOptionByte
                                     21 	.globl _FLASH_EraseOptionByte
                                     22 	.globl _FLASH_ReadOptionByte
                                     23 	.globl _FLASH_SetLowPowerMode
                                     24 	.globl _FLASH_SetProgrammingTime
                                     25 	.globl _FLASH_GetLowPowerMode
                                     26 	.globl _FLASH_GetProgrammingTime
                                     27 	.globl _FLASH_GetBootSize
                                     28 	.globl _FLASH_GetFlagStatus
                                     29 	.globl _FLASH_WaitForLastOperation
                                     30 	.globl _FLASH_EraseBlock
                                     31 	.globl _FLASH_ProgramBlock
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DATA
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area INITIALIZED
                                     40 ;--------------------------------------------------------
                                     41 ; absolute external ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area DABS (ABS)
                                     44 
                                     45 ; default segment ordering for linker
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area CONST
                                     50 	.area INITIALIZER
                                     51 	.area CODE
                                     52 
                                     53 ;--------------------------------------------------------
                                     54 ; global & static initialisations
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area GSINIT
                                     58 	.area GSFINAL
                                     59 	.area GSINIT
                                     60 ;--------------------------------------------------------
                                     61 ; Home
                                     62 ;--------------------------------------------------------
                                     63 	.area HOME
                                     64 	.area HOME
                                     65 ;--------------------------------------------------------
                                     66 ; code
                                     67 ;--------------------------------------------------------
                                     68 	.area CODE
                                     69 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 168: void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
                                     70 ;	-----------------------------------------
                                     71 ;	 function FLASH_Unlock
                                     72 ;	-----------------------------------------
      00C75B                         73 _FLASH_Unlock:
                                     74 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 171: assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
      00C75B 7B 03            [ 1]   75 	ld	a, (0x03, sp)
      00C75D A0 FD            [ 1]   76 	sub	a, #0xfd
      00C75F 26 02            [ 1]   77 	jrne	00127$
      00C761 4C               [ 1]   78 	inc	a
      00C762 21                      79 	.byte 0x21
      00C763                         80 00127$:
      00C763 4F               [ 1]   81 	clr	a
      00C764                         82 00128$:
      00C764 4D               [ 1]   83 	tnz	a
      00C765 26 19            [ 1]   84 	jrne	00107$
      00C767 88               [ 1]   85 	push	a
      00C768 7B 04            [ 1]   86 	ld	a, (0x04, sp)
      00C76A A1 F7            [ 1]   87 	cp	a, #0xf7
      00C76C 84               [ 1]   88 	pop	a
      00C76D 27 11            [ 1]   89 	jreq	00107$
      00C76F 88               [ 1]   90 	push	a
      00C770 4B AB            [ 1]   91 	push	#0xab
      00C772 5F               [ 1]   92 	clrw	x
      00C773 89               [ 2]   93 	pushw	x
      00C774 4B 00            [ 1]   94 	push	#0x00
      00C776 4B 31            [ 1]   95 	push	#<(___str_0+0)
      00C778 4B 83            [ 1]   96 	push	#((___str_0+0) >> 8)
      00C77A CD 83 84         [ 4]   97 	call	_assert_failed
      00C77D 5B 06            [ 2]   98 	addw	sp, #6
      00C77F 84               [ 1]   99 	pop	a
      00C780                        100 00107$:
                                    101 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 174: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00C780 4D               [ 1]  102 	tnz	a
      00C781 27 09            [ 1]  103 	jreq	00102$
                                    104 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 176: FLASH->PUKR = FLASH_RASS_KEY1;
      00C783 35 56 50 62      [ 1]  105 	mov	0x5062+0, #0x56
                                    106 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 177: FLASH->PUKR = FLASH_RASS_KEY2;
      00C787 35 AE 50 62      [ 1]  107 	mov	0x5062+0, #0xae
      00C78B 81               [ 4]  108 	ret
      00C78C                        109 00102$:
                                    110 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 182: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
      00C78C 35 AE 50 64      [ 1]  111 	mov	0x5064+0, #0xae
                                    112 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 183: FLASH->DUKR = FLASH_RASS_KEY1;
      00C790 35 56 50 64      [ 1]  113 	mov	0x5064+0, #0x56
                                    114 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 185: }
      00C794 81               [ 4]  115 	ret
                                    116 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 193: void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
                                    117 ;	-----------------------------------------
                                    118 ;	 function FLASH_Lock
                                    119 ;	-----------------------------------------
      00C795                        120 _FLASH_Lock:
                                    121 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 196: assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
      00C795 7B 03            [ 1]  122 	ld	a, (0x03, sp)
      00C797 A1 FD            [ 1]  123 	cp	a, #0xfd
      00C799 27 15            [ 1]  124 	jreq	00104$
      00C79B 7B 03            [ 1]  125 	ld	a, (0x03, sp)
      00C79D A1 F7            [ 1]  126 	cp	a, #0xf7
      00C79F 27 0F            [ 1]  127 	jreq	00104$
      00C7A1 4B C4            [ 1]  128 	push	#0xc4
      00C7A3 5F               [ 1]  129 	clrw	x
      00C7A4 89               [ 2]  130 	pushw	x
      00C7A5 4B 00            [ 1]  131 	push	#0x00
      00C7A7 4B 31            [ 1]  132 	push	#<(___str_0+0)
      00C7A9 4B 83            [ 1]  133 	push	#((___str_0+0) >> 8)
      00C7AB CD 83 84         [ 4]  134 	call	_assert_failed
      00C7AE 5B 06            [ 2]  135 	addw	sp, #6
      00C7B0                        136 00104$:
                                    137 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 199: FLASH->IAPSR &= (uint8_t)FLASH_MemType;
      00C7B0 C6 50 5F         [ 1]  138 	ld	a, 0x505f
      00C7B3 14 03            [ 1]  139 	and	a, (0x03, sp)
      00C7B5 C7 50 5F         [ 1]  140 	ld	0x505f, a
                                    141 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 200: }
      00C7B8 81               [ 4]  142 	ret
                                    143 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 207: void FLASH_DeInit(void)
                                    144 ;	-----------------------------------------
                                    145 ;	 function FLASH_DeInit
                                    146 ;	-----------------------------------------
      00C7B9                        147 _FLASH_DeInit:
                                    148 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 209: FLASH->CR1 = FLASH_CR1_RESET_VALUE;
      00C7B9 35 00 50 5A      [ 1]  149 	mov	0x505a+0, #0x00
                                    150 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 210: FLASH->CR2 = FLASH_CR2_RESET_VALUE;
      00C7BD 35 00 50 5B      [ 1]  151 	mov	0x505b+0, #0x00
                                    152 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 211: FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
      00C7C1 35 FF 50 5C      [ 1]  153 	mov	0x505c+0, #0xff
                                    154 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 212: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
      00C7C5 72 17 50 5F      [ 1]  155 	bres	20575, #3
                                    156 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 213: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
      00C7C9 72 13 50 5F      [ 1]  157 	bres	20575, #1
                                    158 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 214: (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
      00C7CD C6 50 5F         [ 1]  159 	ld	a, 0x505f
                                    160 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 215: }
      00C7D0 81               [ 4]  161 	ret
                                    162 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 223: void FLASH_ITConfig(FunctionalState NewState)
                                    163 ;	-----------------------------------------
                                    164 ;	 function FLASH_ITConfig
                                    165 ;	-----------------------------------------
      00C7D1                        166 _FLASH_ITConfig:
                                    167 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 226: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00C7D1 0D 03            [ 1]  168 	tnz	(0x03, sp)
      00C7D3 27 14            [ 1]  169 	jreq	00107$
      00C7D5 7B 03            [ 1]  170 	ld	a, (0x03, sp)
      00C7D7 4A               [ 1]  171 	dec	a
      00C7D8 27 0F            [ 1]  172 	jreq	00107$
      00C7DA 4B E2            [ 1]  173 	push	#0xe2
      00C7DC 5F               [ 1]  174 	clrw	x
      00C7DD 89               [ 2]  175 	pushw	x
      00C7DE 4B 00            [ 1]  176 	push	#0x00
      00C7E0 4B 31            [ 1]  177 	push	#<(___str_0+0)
      00C7E2 4B 83            [ 1]  178 	push	#((___str_0+0) >> 8)
      00C7E4 CD 83 84         [ 4]  179 	call	_assert_failed
      00C7E7 5B 06            [ 2]  180 	addw	sp, #6
      00C7E9                        181 00107$:
                                    182 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 230: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
      00C7E9 C6 50 5A         [ 1]  183 	ld	a, 0x505a
                                    184 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 228: if(NewState != DISABLE)
      00C7EC 0D 03            [ 1]  185 	tnz	(0x03, sp)
      00C7EE 27 06            [ 1]  186 	jreq	00102$
                                    187 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 230: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
      00C7F0 AA 02            [ 1]  188 	or	a, #0x02
      00C7F2 C7 50 5A         [ 1]  189 	ld	0x505a, a
      00C7F5 81               [ 4]  190 	ret
      00C7F6                        191 00102$:
                                    192 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 234: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
      00C7F6 A4 FD            [ 1]  193 	and	a, #0xfd
      00C7F8 C7 50 5A         [ 1]  194 	ld	0x505a, a
                                    195 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 236: }
      00C7FB 81               [ 4]  196 	ret
                                    197 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 245: void FLASH_EraseByte(uint32_t Address)
                                    198 ;	-----------------------------------------
                                    199 ;	 function FLASH_EraseByte
                                    200 ;	-----------------------------------------
      00C7FC                        201 _FLASH_EraseByte:
                                    202 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 248: assert_param(IS_FLASH_ADDRESS_OK(Address));
      00C7FC 1E 05            [ 2]  203 	ldw	x, (0x05, sp)
      00C7FE A3 80 00         [ 2]  204 	cpw	x, #0x8000
      00C801 7B 04            [ 1]  205 	ld	a, (0x04, sp)
      00C803 A2 00            [ 1]  206 	sbc	a, #0x00
      00C805 7B 03            [ 1]  207 	ld	a, (0x03, sp)
      00C807 A2 00            [ 1]  208 	sbc	a, #0x00
      00C809 25 04            [ 1]  209 	jrc	00110$
      00C80B 1E 03            [ 2]  210 	ldw	x, (0x03, sp)
      00C80D 27 2B            [ 1]  211 	jreq	00104$
      00C80F                        212 00110$:
      00C80F 1E 05            [ 2]  213 	ldw	x, (0x05, sp)
      00C811 A3 40 00         [ 2]  214 	cpw	x, #0x4000
      00C814 7B 04            [ 1]  215 	ld	a, (0x04, sp)
      00C816 A2 00            [ 1]  216 	sbc	a, #0x00
      00C818 7B 03            [ 1]  217 	ld	a, (0x03, sp)
      00C81A A2 00            [ 1]  218 	sbc	a, #0x00
      00C81C 25 0D            [ 1]  219 	jrc	00103$
      00C81E AE 43 FF         [ 2]  220 	ldw	x, #0x43ff
      00C821 13 05            [ 2]  221 	cpw	x, (0x05, sp)
      00C823 4F               [ 1]  222 	clr	a
      00C824 12 04            [ 1]  223 	sbc	a, (0x04, sp)
      00C826 4F               [ 1]  224 	clr	a
      00C827 12 03            [ 1]  225 	sbc	a, (0x03, sp)
      00C829 24 0F            [ 1]  226 	jrnc	00104$
      00C82B                        227 00103$:
      00C82B 4B F8            [ 1]  228 	push	#0xf8
      00C82D 5F               [ 1]  229 	clrw	x
      00C82E 89               [ 2]  230 	pushw	x
      00C82F 4B 00            [ 1]  231 	push	#0x00
      00C831 4B 31            [ 1]  232 	push	#<(___str_0+0)
      00C833 4B 83            [ 1]  233 	push	#((___str_0+0) >> 8)
      00C835 CD 83 84         [ 4]  234 	call	_assert_failed
      00C838 5B 06            [ 2]  235 	addw	sp, #6
      00C83A                        236 00104$:
                                    237 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 253: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE;
      00C83A 1E 05            [ 2]  238 	ldw	x, (0x05, sp)
      00C83C 7F               [ 1]  239 	clr	(x)
                                    240 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 257: }
      00C83D 81               [ 4]  241 	ret
                                    242 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 267: void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
                                    243 ;	-----------------------------------------
                                    244 ;	 function FLASH_ProgramByte
                                    245 ;	-----------------------------------------
      00C83E                        246 _FLASH_ProgramByte:
                                    247 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 270: assert_param(IS_FLASH_ADDRESS_OK(Address));
      00C83E 1E 05            [ 2]  248 	ldw	x, (0x05, sp)
      00C840 A3 80 00         [ 2]  249 	cpw	x, #0x8000
      00C843 7B 04            [ 1]  250 	ld	a, (0x04, sp)
      00C845 A2 00            [ 1]  251 	sbc	a, #0x00
      00C847 7B 03            [ 1]  252 	ld	a, (0x03, sp)
      00C849 A2 00            [ 1]  253 	sbc	a, #0x00
      00C84B 25 04            [ 1]  254 	jrc	00110$
      00C84D 1E 03            [ 2]  255 	ldw	x, (0x03, sp)
      00C84F 27 2B            [ 1]  256 	jreq	00104$
      00C851                        257 00110$:
      00C851 1E 05            [ 2]  258 	ldw	x, (0x05, sp)
      00C853 A3 40 00         [ 2]  259 	cpw	x, #0x4000
      00C856 7B 04            [ 1]  260 	ld	a, (0x04, sp)
      00C858 A2 00            [ 1]  261 	sbc	a, #0x00
      00C85A 7B 03            [ 1]  262 	ld	a, (0x03, sp)
      00C85C A2 00            [ 1]  263 	sbc	a, #0x00
      00C85E 25 0D            [ 1]  264 	jrc	00103$
      00C860 AE 43 FF         [ 2]  265 	ldw	x, #0x43ff
      00C863 13 05            [ 2]  266 	cpw	x, (0x05, sp)
      00C865 4F               [ 1]  267 	clr	a
      00C866 12 04            [ 1]  268 	sbc	a, (0x04, sp)
      00C868 4F               [ 1]  269 	clr	a
      00C869 12 03            [ 1]  270 	sbc	a, (0x03, sp)
      00C86B 24 0F            [ 1]  271 	jrnc	00104$
      00C86D                        272 00103$:
      00C86D 4B 0E            [ 1]  273 	push	#0x0e
      00C86F 4B 01            [ 1]  274 	push	#0x01
      00C871 5F               [ 1]  275 	clrw	x
      00C872 89               [ 2]  276 	pushw	x
      00C873 4B 31            [ 1]  277 	push	#<(___str_0+0)
      00C875 4B 83            [ 1]  278 	push	#((___str_0+0) >> 8)
      00C877 CD 83 84         [ 4]  279 	call	_assert_failed
      00C87A 5B 06            [ 2]  280 	addw	sp, #6
      00C87C                        281 00104$:
                                    282 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 275: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
      00C87C 1E 05            [ 2]  283 	ldw	x, (0x05, sp)
      00C87E 7B 07            [ 1]  284 	ld	a, (0x07, sp)
      00C880 F7               [ 1]  285 	ld	(x), a
                                    286 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 279: }
      00C881 81               [ 4]  287 	ret
                                    288 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 288: uint8_t FLASH_ReadByte(uint32_t Address)
                                    289 ;	-----------------------------------------
                                    290 ;	 function FLASH_ReadByte
                                    291 ;	-----------------------------------------
      00C882                        292 _FLASH_ReadByte:
                                    293 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 291: assert_param(IS_FLASH_ADDRESS_OK(Address));
      00C882 1E 05            [ 2]  294 	ldw	x, (0x05, sp)
      00C884 A3 80 00         [ 2]  295 	cpw	x, #0x8000
      00C887 7B 04            [ 1]  296 	ld	a, (0x04, sp)
      00C889 A2 00            [ 1]  297 	sbc	a, #0x00
      00C88B 7B 03            [ 1]  298 	ld	a, (0x03, sp)
      00C88D A2 00            [ 1]  299 	sbc	a, #0x00
      00C88F 25 04            [ 1]  300 	jrc	00110$
      00C891 1E 03            [ 2]  301 	ldw	x, (0x03, sp)
      00C893 27 2B            [ 1]  302 	jreq	00104$
      00C895                        303 00110$:
      00C895 1E 05            [ 2]  304 	ldw	x, (0x05, sp)
      00C897 A3 40 00         [ 2]  305 	cpw	x, #0x4000
      00C89A 7B 04            [ 1]  306 	ld	a, (0x04, sp)
      00C89C A2 00            [ 1]  307 	sbc	a, #0x00
      00C89E 7B 03            [ 1]  308 	ld	a, (0x03, sp)
      00C8A0 A2 00            [ 1]  309 	sbc	a, #0x00
      00C8A2 25 0D            [ 1]  310 	jrc	00103$
      00C8A4 AE 43 FF         [ 2]  311 	ldw	x, #0x43ff
      00C8A7 13 05            [ 2]  312 	cpw	x, (0x05, sp)
      00C8A9 4F               [ 1]  313 	clr	a
      00C8AA 12 04            [ 1]  314 	sbc	a, (0x04, sp)
      00C8AC 4F               [ 1]  315 	clr	a
      00C8AD 12 03            [ 1]  316 	sbc	a, (0x03, sp)
      00C8AF 24 0F            [ 1]  317 	jrnc	00104$
      00C8B1                        318 00103$:
      00C8B1 4B 23            [ 1]  319 	push	#0x23
      00C8B3 4B 01            [ 1]  320 	push	#0x01
      00C8B5 5F               [ 1]  321 	clrw	x
      00C8B6 89               [ 2]  322 	pushw	x
      00C8B7 4B 31            [ 1]  323 	push	#<(___str_0+0)
      00C8B9 4B 83            [ 1]  324 	push	#((___str_0+0) >> 8)
      00C8BB CD 83 84         [ 4]  325 	call	_assert_failed
      00C8BE 5B 06            [ 2]  326 	addw	sp, #6
      00C8C0                        327 00104$:
                                    328 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 296: return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
      00C8C0 1E 05            [ 2]  329 	ldw	x, (0x05, sp)
      00C8C2 F6               [ 1]  330 	ld	a, (x)
                                    331 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 300: }
      00C8C3 81               [ 4]  332 	ret
                                    333 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 310: void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
                                    334 ;	-----------------------------------------
                                    335 ;	 function FLASH_ProgramWord
                                    336 ;	-----------------------------------------
      00C8C4                        337 _FLASH_ProgramWord:
      00C8C4 89               [ 2]  338 	pushw	x
                                    339 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 313: assert_param(IS_FLASH_ADDRESS_OK(Address));
      00C8C5 1E 07            [ 2]  340 	ldw	x, (0x07, sp)
      00C8C7 A3 80 00         [ 2]  341 	cpw	x, #0x8000
      00C8CA 7B 06            [ 1]  342 	ld	a, (0x06, sp)
      00C8CC A2 00            [ 1]  343 	sbc	a, #0x00
      00C8CE 7B 05            [ 1]  344 	ld	a, (0x05, sp)
      00C8D0 A2 00            [ 1]  345 	sbc	a, #0x00
      00C8D2 25 04            [ 1]  346 	jrc	00110$
      00C8D4 1E 05            [ 2]  347 	ldw	x, (0x05, sp)
      00C8D6 27 2B            [ 1]  348 	jreq	00104$
      00C8D8                        349 00110$:
      00C8D8 1E 07            [ 2]  350 	ldw	x, (0x07, sp)
      00C8DA A3 40 00         [ 2]  351 	cpw	x, #0x4000
      00C8DD 7B 06            [ 1]  352 	ld	a, (0x06, sp)
      00C8DF A2 00            [ 1]  353 	sbc	a, #0x00
      00C8E1 7B 05            [ 1]  354 	ld	a, (0x05, sp)
      00C8E3 A2 00            [ 1]  355 	sbc	a, #0x00
      00C8E5 25 0D            [ 1]  356 	jrc	00103$
      00C8E7 AE 43 FF         [ 2]  357 	ldw	x, #0x43ff
      00C8EA 13 07            [ 2]  358 	cpw	x, (0x07, sp)
      00C8EC 4F               [ 1]  359 	clr	a
      00C8ED 12 06            [ 1]  360 	sbc	a, (0x06, sp)
      00C8EF 4F               [ 1]  361 	clr	a
      00C8F0 12 05            [ 1]  362 	sbc	a, (0x05, sp)
      00C8F2 24 0F            [ 1]  363 	jrnc	00104$
      00C8F4                        364 00103$:
      00C8F4 4B 39            [ 1]  365 	push	#0x39
      00C8F6 4B 01            [ 1]  366 	push	#0x01
      00C8F8 5F               [ 1]  367 	clrw	x
      00C8F9 89               [ 2]  368 	pushw	x
      00C8FA 4B 31            [ 1]  369 	push	#<(___str_0+0)
      00C8FC 4B 83            [ 1]  370 	push	#((___str_0+0) >> 8)
      00C8FE CD 83 84         [ 4]  371 	call	_assert_failed
      00C901 5B 06            [ 2]  372 	addw	sp, #6
      00C903                        373 00104$:
                                    374 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 316: FLASH->CR2 |= FLASH_CR2_WPRG;
      00C903 72 1C 50 5B      [ 1]  375 	bset	20571, #6
                                    376 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 317: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
      00C907 C6 50 5C         [ 1]  377 	ld	a, 0x505c
      00C90A A4 BF            [ 1]  378 	and	a, #0xbf
      00C90C C7 50 5C         [ 1]  379 	ld	0x505c, a
                                    380 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 322: *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
      00C90F 16 07            [ 2]  381 	ldw	y, (0x07, sp)
      00C911 7B 09            [ 1]  382 	ld  a, (9, sp)
      00C913 90 F7            [ 1]  383 	ld	(y), a
                                    384 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 324: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
      00C915 93               [ 1]  385 	ldw	x, y
      00C916 5C               [ 1]  386 	incw	x
      00C917 1F 01            [ 2]  387 	ldw	(0x01, sp), x
      00C919 96               [ 1]  388 	ldw	x, sp
      00C91A 1C 00 09         [ 2]  389 	addw	x, #9
      00C91D E6 01            [ 1]  390 	ld	a, (0x1, x)
      00C91F 1E 01            [ 2]  391 	ldw	x, (0x01, sp)
      00C921 F7               [ 1]  392 	ld	(x), a
                                    393 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 326: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
      00C922 93               [ 1]  394 	ldw	x, y
      00C923 5C               [ 1]  395 	incw	x
      00C924 5C               [ 1]  396 	incw	x
      00C925 1F 01            [ 2]  397 	ldw	(0x01, sp), x
      00C927 96               [ 1]  398 	ldw	x, sp
      00C928 1C 00 09         [ 2]  399 	addw	x, #9
      00C92B E6 02            [ 1]  400 	ld	a, (0x2, x)
      00C92D 1E 01            [ 2]  401 	ldw	x, (0x01, sp)
      00C92F F7               [ 1]  402 	ld	(x), a
                                    403 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 328: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
      00C930 72 A9 00 03      [ 2]  404 	addw	y, #0x0003
      00C934 96               [ 1]  405 	ldw	x, sp
      00C935 1C 00 09         [ 2]  406 	addw	x, #9
      00C938 E6 03            [ 1]  407 	ld	a, (0x3, x)
      00C93A 90 F7            [ 1]  408 	ld	(y), a
                                    409 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 335: }
      00C93C 85               [ 2]  410 	popw	x
      00C93D 81               [ 4]  411 	ret
                                    412 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 343: void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
                                    413 ;	-----------------------------------------
                                    414 ;	 function FLASH_ProgramOptionByte
                                    415 ;	-----------------------------------------
      00C93E                        416 _FLASH_ProgramOptionByte:
      00C93E 89               [ 2]  417 	pushw	x
                                    418 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 346: assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
      00C93F 1E 05            [ 2]  419 	ldw	x, (0x05, sp)
      00C941 A3 48 00         [ 2]  420 	cpw	x, #0x4800
      00C944 25 07            [ 1]  421 	jrc	00106$
      00C946 1E 05            [ 2]  422 	ldw	x, (0x05, sp)
      00C948 A3 48 7F         [ 2]  423 	cpw	x, #0x487f
      00C94B 23 0F            [ 2]  424 	jrule	00107$
      00C94D                        425 00106$:
      00C94D 4B 5A            [ 1]  426 	push	#0x5a
      00C94F 4B 01            [ 1]  427 	push	#0x01
      00C951 5F               [ 1]  428 	clrw	x
      00C952 89               [ 2]  429 	pushw	x
      00C953 4B 31            [ 1]  430 	push	#<(___str_0+0)
      00C955 4B 83            [ 1]  431 	push	#((___str_0+0) >> 8)
      00C957 CD 83 84         [ 4]  432 	call	_assert_failed
      00C95A 5B 06            [ 2]  433 	addw	sp, #6
      00C95C                        434 00107$:
                                    435 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 349: FLASH->CR2 |= FLASH_CR2_OPT;
      00C95C 72 1E 50 5B      [ 1]  436 	bset	20571, #7
                                    437 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 350: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
      00C960 72 1F 50 5C      [ 1]  438 	bres	20572, #7
                                    439 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 353: if(Address == 0x4800)
      00C964 1E 05            [ 2]  440 	ldw	x, (0x05, sp)
                                    441 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 356: *((NEAR uint8_t*)Address) = Data;
      00C966 16 05            [ 2]  442 	ldw	y, (0x05, sp)
      00C968 17 01            [ 2]  443 	ldw	(0x01, sp), y
                                    444 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 353: if(Address == 0x4800)
      00C96A A3 48 00         [ 2]  445 	cpw	x, #0x4800
      00C96D 26 07            [ 1]  446 	jrne	00102$
                                    447 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 356: *((NEAR uint8_t*)Address) = Data;
      00C96F 1E 01            [ 2]  448 	ldw	x, (0x01, sp)
      00C971 7B 07            [ 1]  449 	ld	a, (0x07, sp)
      00C973 F7               [ 1]  450 	ld	(x), a
      00C974 20 0F            [ 2]  451 	jra	00103$
      00C976                        452 00102$:
                                    453 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 361: *((NEAR uint8_t*)Address) = Data;
      00C976 16 01            [ 2]  454 	ldw	y, (0x01, sp)
      00C978 7B 07            [ 1]  455 	ld	a, (0x07, sp)
      00C97A 90 F7            [ 1]  456 	ld	(y), a
                                    457 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 362: *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
      00C97C 5C               [ 1]  458 	incw	x
      00C97D 1F 01            [ 2]  459 	ldw	(0x01, sp), x
      00C97F 7B 07            [ 1]  460 	ld	a, (0x07, sp)
      00C981 43               [ 1]  461 	cpl	a
      00C982 1E 01            [ 2]  462 	ldw	x, (0x01, sp)
      00C984 F7               [ 1]  463 	ld	(x), a
      00C985                        464 00103$:
                                    465 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 364: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
      00C985 4B FD            [ 1]  466 	push	#0xfd
      00C987 CD CA F2         [ 4]  467 	call	_FLASH_WaitForLastOperation
      00C98A 84               [ 1]  468 	pop	a
                                    469 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 367: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
      00C98B 72 1F 50 5B      [ 1]  470 	bres	20571, #7
                                    471 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 368: FLASH->NCR2 |= FLASH_NCR2_NOPT;
      00C98F 72 1E 50 5C      [ 1]  472 	bset	20572, #7
                                    473 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 369: }
      00C993 85               [ 2]  474 	popw	x
      00C994 81               [ 4]  475 	ret
                                    476 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 376: void FLASH_EraseOptionByte(uint16_t Address)
                                    477 ;	-----------------------------------------
                                    478 ;	 function FLASH_EraseOptionByte
                                    479 ;	-----------------------------------------
      00C995                        480 _FLASH_EraseOptionByte:
                                    481 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 379: assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
      00C995 1E 03            [ 2]  482 	ldw	x, (0x03, sp)
      00C997 A3 48 00         [ 2]  483 	cpw	x, #0x4800
      00C99A 25 07            [ 1]  484 	jrc	00106$
      00C99C 1E 03            [ 2]  485 	ldw	x, (0x03, sp)
      00C99E A3 48 7F         [ 2]  486 	cpw	x, #0x487f
      00C9A1 23 0F            [ 2]  487 	jrule	00107$
      00C9A3                        488 00106$:
      00C9A3 4B 7B            [ 1]  489 	push	#0x7b
      00C9A5 4B 01            [ 1]  490 	push	#0x01
      00C9A7 5F               [ 1]  491 	clrw	x
      00C9A8 89               [ 2]  492 	pushw	x
      00C9A9 4B 31            [ 1]  493 	push	#<(___str_0+0)
      00C9AB 4B 83            [ 1]  494 	push	#((___str_0+0) >> 8)
      00C9AD CD 83 84         [ 4]  495 	call	_assert_failed
      00C9B0 5B 06            [ 2]  496 	addw	sp, #6
      00C9B2                        497 00107$:
                                    498 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 382: FLASH->CR2 |= FLASH_CR2_OPT;
      00C9B2 72 1E 50 5B      [ 1]  499 	bset	20571, #7
                                    500 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 383: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
      00C9B6 72 1F 50 5C      [ 1]  501 	bres	20572, #7
                                    502 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 386: if(Address == 0x4800)
      00C9BA 16 03            [ 2]  503 	ldw	y, (0x03, sp)
                                    504 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 389: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      00C9BC 1E 03            [ 2]  505 	ldw	x, (0x03, sp)
                                    506 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 386: if(Address == 0x4800)
      00C9BE 90 A3 48 00      [ 2]  507 	cpw	y, #0x4800
      00C9C2 26 03            [ 1]  508 	jrne	00102$
                                    509 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 389: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      00C9C4 7F               [ 1]  510 	clr	(x)
      00C9C5 20 07            [ 2]  511 	jra	00103$
      00C9C7                        512 00102$:
                                    513 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 394: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      00C9C7 7F               [ 1]  514 	clr	(x)
                                    515 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 395: *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
      00C9C8 1E 03            [ 2]  516 	ldw	x, (0x03, sp)
      00C9CA 5C               [ 1]  517 	incw	x
      00C9CB A6 FF            [ 1]  518 	ld	a, #0xff
      00C9CD F7               [ 1]  519 	ld	(x), a
      00C9CE                        520 00103$:
                                    521 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 397: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
      00C9CE 4B FD            [ 1]  522 	push	#0xfd
      00C9D0 CD CA F2         [ 4]  523 	call	_FLASH_WaitForLastOperation
      00C9D3 84               [ 1]  524 	pop	a
                                    525 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 400: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
      00C9D4 72 1F 50 5B      [ 1]  526 	bres	20571, #7
                                    527 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 401: FLASH->NCR2 |= FLASH_NCR2_NOPT;
      00C9D8 72 1E 50 5C      [ 1]  528 	bset	20572, #7
                                    529 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 402: }
      00C9DC 81               [ 4]  530 	ret
                                    531 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 409: uint16_t FLASH_ReadOptionByte(uint16_t Address)
                                    532 ;	-----------------------------------------
                                    533 ;	 function FLASH_ReadOptionByte
                                    534 ;	-----------------------------------------
      00C9DD                        535 _FLASH_ReadOptionByte:
      00C9DD 52 03            [ 2]  536 	sub	sp, #3
                                    537 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 415: assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
      00C9DF 1E 06            [ 2]  538 	ldw	x, (0x06, sp)
      00C9E1 A3 48 00         [ 2]  539 	cpw	x, #0x4800
      00C9E4 25 05            [ 1]  540 	jrc	00109$
      00C9E6 A3 48 7F         [ 2]  541 	cpw	x, #0x487f
      00C9E9 23 0F            [ 2]  542 	jrule	00110$
      00C9EB                        543 00109$:
      00C9EB 4B 9F            [ 1]  544 	push	#0x9f
      00C9ED 4B 01            [ 1]  545 	push	#0x01
      00C9EF 5F               [ 1]  546 	clrw	x
      00C9F0 89               [ 2]  547 	pushw	x
      00C9F1 4B 31            [ 1]  548 	push	#<(___str_0+0)
      00C9F3 4B 83            [ 1]  549 	push	#((___str_0+0) >> 8)
      00C9F5 CD 83 84         [ 4]  550 	call	_assert_failed
      00C9F8 5B 06            [ 2]  551 	addw	sp, #6
      00C9FA                        552 00110$:
                                    553 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 417: value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
      00C9FA 1E 06            [ 2]  554 	ldw	x, (0x06, sp)
      00C9FC F6               [ 1]  555 	ld	a, (x)
      00C9FD 6B 03            [ 1]  556 	ld	(0x03, sp), a
                                    557 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 418: value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
      00C9FF E6 01            [ 1]  558 	ld	a, (0x1, x)
      00CA01 6B 01            [ 1]  559 	ld	(0x01, sp), a
                                    560 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 421: if(Address == 0x4800)	 
      00CA03 16 06            [ 2]  561 	ldw	y, (0x06, sp)
                                    562 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 423: res_value =	 value_optbyte;
      00CA05 5F               [ 1]  563 	clrw	x
      00CA06 7B 03            [ 1]  564 	ld	a, (0x03, sp)
      00CA08 97               [ 1]  565 	ld	xl, a
                                    566 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 421: if(Address == 0x4800)	 
      00CA09 90 A3 48 00      [ 2]  567 	cpw	y, #0x4800
      00CA0D 27 18            [ 1]  568 	jreq	00106$
                                    569 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 423: res_value =	 value_optbyte;
                                    570 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 427: if(value_optbyte == (uint8_t)(~value_optbyte_complement))
      00CA0F 7B 01            [ 1]  571 	ld	a, (0x01, sp)
      00CA11 43               [ 1]  572 	cpl	a
      00CA12 11 03            [ 1]  573 	cp	a, (0x03, sp)
      00CA14 26 0E            [ 1]  574 	jrne	00102$
                                    575 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 429: res_value = (uint16_t)((uint16_t)value_optbyte << 8);
      00CA16 4F               [ 1]  576 	clr	a
      00CA17 02               [ 1]  577 	rlwa	x
      00CA18 1F 02            [ 2]  578 	ldw	(0x02, sp), x
                                    579 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 430: res_value = res_value | (uint16_t)value_optbyte_complement;
      00CA1A 7B 01            [ 1]  580 	ld	a, (0x01, sp)
      00CA1C 5F               [ 1]  581 	clrw	x
      00CA1D 1A 03            [ 1]  582 	or	a, (0x03, sp)
      00CA1F 02               [ 1]  583 	rlwa	x
      00CA20 1A 02            [ 1]  584 	or	a, (0x02, sp)
      00CA22 95               [ 1]  585 	ld	xh, a
                                    586 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 434: res_value = FLASH_OPTIONBYTE_ERROR;
      00CA23 BC                     587 	.byte 0xbc
      00CA24                        588 00102$:
      00CA24 AE 55 55         [ 2]  589 	ldw	x, #0x5555
      00CA27                        590 00106$:
                                    591 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 437: return(res_value);
                                    592 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 438: }
      00CA27 5B 03            [ 2]  593 	addw	sp, #3
      00CA29 81               [ 4]  594 	ret
                                    595 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 446: void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
                                    596 ;	-----------------------------------------
                                    597 ;	 function FLASH_SetLowPowerMode
                                    598 ;	-----------------------------------------
      00CA2A                        599 _FLASH_SetLowPowerMode:
                                    600 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 449: assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
      00CA2A 7B 03            [ 1]  601 	ld	a, (0x03, sp)
      00CA2C A1 04            [ 1]  602 	cp	a, #0x04
      00CA2E 27 1F            [ 1]  603 	jreq	00104$
      00CA30 7B 03            [ 1]  604 	ld	a, (0x03, sp)
      00CA32 A1 08            [ 1]  605 	cp	a, #0x08
      00CA34 27 19            [ 1]  606 	jreq	00104$
      00CA36 0D 03            [ 1]  607 	tnz	(0x03, sp)
      00CA38 27 15            [ 1]  608 	jreq	00104$
      00CA3A 7B 03            [ 1]  609 	ld	a, (0x03, sp)
      00CA3C A1 0C            [ 1]  610 	cp	a, #0x0c
      00CA3E 27 0F            [ 1]  611 	jreq	00104$
      00CA40 4B C1            [ 1]  612 	push	#0xc1
      00CA42 4B 01            [ 1]  613 	push	#0x01
      00CA44 5F               [ 1]  614 	clrw	x
      00CA45 89               [ 2]  615 	pushw	x
      00CA46 4B 31            [ 1]  616 	push	#<(___str_0+0)
      00CA48 4B 83            [ 1]  617 	push	#((___str_0+0) >> 8)
      00CA4A CD 83 84         [ 4]  618 	call	_assert_failed
      00CA4D 5B 06            [ 2]  619 	addw	sp, #6
      00CA4F                        620 00104$:
                                    621 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 452: FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
      00CA4F C6 50 5A         [ 1]  622 	ld	a, 0x505a
      00CA52 A4 F3            [ 1]  623 	and	a, #0xf3
      00CA54 C7 50 5A         [ 1]  624 	ld	0x505a, a
                                    625 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 455: FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
      00CA57 C6 50 5A         [ 1]  626 	ld	a, 0x505a
      00CA5A 1A 03            [ 1]  627 	or	a, (0x03, sp)
      00CA5C C7 50 5A         [ 1]  628 	ld	0x505a, a
                                    629 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 456: }
      00CA5F 81               [ 4]  630 	ret
                                    631 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 464: void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
                                    632 ;	-----------------------------------------
                                    633 ;	 function FLASH_SetProgrammingTime
                                    634 ;	-----------------------------------------
      00CA60                        635 _FLASH_SetProgrammingTime:
                                    636 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 467: assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
      00CA60 0D 03            [ 1]  637 	tnz	(0x03, sp)
      00CA62 27 14            [ 1]  638 	jreq	00104$
      00CA64 7B 03            [ 1]  639 	ld	a, (0x03, sp)
      00CA66 4A               [ 1]  640 	dec	a
      00CA67 27 0F            [ 1]  641 	jreq	00104$
      00CA69 4B D3            [ 1]  642 	push	#0xd3
      00CA6B 4B 01            [ 1]  643 	push	#0x01
      00CA6D 5F               [ 1]  644 	clrw	x
      00CA6E 89               [ 2]  645 	pushw	x
      00CA6F 4B 31            [ 1]  646 	push	#<(___str_0+0)
      00CA71 4B 83            [ 1]  647 	push	#((___str_0+0) >> 8)
      00CA73 CD 83 84         [ 4]  648 	call	_assert_failed
      00CA76 5B 06            [ 2]  649 	addw	sp, #6
      00CA78                        650 00104$:
                                    651 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 469: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
      00CA78 C6 50 5A         [ 1]  652 	ld	a, 0x505a
      00CA7B A4 FE            [ 1]  653 	and	a, #0xfe
      00CA7D C7 50 5A         [ 1]  654 	ld	0x505a, a
                                    655 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 470: FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
      00CA80 C6 50 5A         [ 1]  656 	ld	a, 0x505a
      00CA83 1A 03            [ 1]  657 	or	a, (0x03, sp)
      00CA85 C7 50 5A         [ 1]  658 	ld	0x505a, a
                                    659 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 471: }
      00CA88 81               [ 4]  660 	ret
                                    661 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 478: FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
                                    662 ;	-----------------------------------------
                                    663 ;	 function FLASH_GetLowPowerMode
                                    664 ;	-----------------------------------------
      00CA89                        665 _FLASH_GetLowPowerMode:
                                    666 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 480: return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
      00CA89 C6 50 5A         [ 1]  667 	ld	a, 0x505a
      00CA8C A4 0C            [ 1]  668 	and	a, #0x0c
                                    669 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 481: }
      00CA8E 81               [ 4]  670 	ret
                                    671 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 488: FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
                                    672 ;	-----------------------------------------
                                    673 ;	 function FLASH_GetProgrammingTime
                                    674 ;	-----------------------------------------
      00CA8F                        675 _FLASH_GetProgrammingTime:
                                    676 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 490: return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
      00CA8F C6 50 5A         [ 1]  677 	ld	a, 0x505a
      00CA92 A4 01            [ 1]  678 	and	a, #0x01
                                    679 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 491: }
      00CA94 81               [ 4]  680 	ret
                                    681 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 498: uint32_t FLASH_GetBootSize(void)
                                    682 ;	-----------------------------------------
                                    683 ;	 function FLASH_GetBootSize
                                    684 ;	-----------------------------------------
      00CA95                        685 _FLASH_GetBootSize:
      00CA95 52 04            [ 2]  686 	sub	sp, #4
                                    687 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 503: temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
      00CA97 C6 50 5D         [ 1]  688 	ld	a, 0x505d
      00CA9A 5F               [ 1]  689 	clrw	x
      00CA9B 0F 01            [ 1]  690 	clr	(0x01, sp)
      00CA9D 51               [ 1]  691 	exgw	x, y
      00CA9E 95               [ 1]  692 	ld	xh, a
      00CA9F 4F               [ 1]  693 	clr	a
      00CAA0 97               [ 1]  694 	ld	xl, a
      00CAA1 58               [ 2]  695 	sllw	x
      00CAA2 90 59            [ 2]  696 	rlcw	y
      00CAA4 51               [ 1]  697 	exgw	x, y
                                    698 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 506: if(FLASH->FPR == 0xFF)
      00CAA5 C6 50 5D         [ 1]  699 	ld	a, 0x505d
      00CAA8 4C               [ 1]  700 	inc	a
      00CAA9 26 0B            [ 1]  701 	jrne	00102$
                                    702 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 508: temp += 512;
      00CAAB 72 A9 02 00      [ 2]  703 	addw	y, #0x0200
      00CAAF 9F               [ 1]  704 	ld	a, xl
      00CAB0 A9 00            [ 1]  705 	adc	a, #0x00
      00CAB2 02               [ 1]  706 	rlwa	x
      00CAB3 A9 00            [ 1]  707 	adc	a, #0x00
      00CAB5 95               [ 1]  708 	ld	xh, a
      00CAB6                        709 00102$:
                                    710 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 512: return(temp);
      00CAB6 51               [ 1]  711 	exgw	x, y
                                    712 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 513: }
      00CAB7 5B 04            [ 2]  713 	addw	sp, #4
      00CAB9 81               [ 4]  714 	ret
                                    715 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 523: FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
                                    716 ;	-----------------------------------------
                                    717 ;	 function FLASH_GetFlagStatus
                                    718 ;	-----------------------------------------
      00CABA                        719 _FLASH_GetFlagStatus:
                                    720 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 527: assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
      00CABA 7B 03            [ 1]  721 	ld	a, (0x03, sp)
      00CABC A1 40            [ 1]  722 	cp	a, #0x40
      00CABE 27 26            [ 1]  723 	jreq	00107$
      00CAC0 7B 03            [ 1]  724 	ld	a, (0x03, sp)
      00CAC2 A1 08            [ 1]  725 	cp	a, #0x08
      00CAC4 27 20            [ 1]  726 	jreq	00107$
      00CAC6 7B 03            [ 1]  727 	ld	a, (0x03, sp)
      00CAC8 A1 04            [ 1]  728 	cp	a, #0x04
      00CACA 27 1A            [ 1]  729 	jreq	00107$
      00CACC 7B 03            [ 1]  730 	ld	a, (0x03, sp)
      00CACE A1 02            [ 1]  731 	cp	a, #0x02
      00CAD0 27 14            [ 1]  732 	jreq	00107$
      00CAD2 7B 03            [ 1]  733 	ld	a, (0x03, sp)
      00CAD4 4A               [ 1]  734 	dec	a
      00CAD5 27 0F            [ 1]  735 	jreq	00107$
      00CAD7 4B 0F            [ 1]  736 	push	#0x0f
      00CAD9 4B 02            [ 1]  737 	push	#0x02
      00CADB 5F               [ 1]  738 	clrw	x
      00CADC 89               [ 2]  739 	pushw	x
      00CADD 4B 31            [ 1]  740 	push	#<(___str_0+0)
      00CADF 4B 83            [ 1]  741 	push	#((___str_0+0) >> 8)
      00CAE1 CD 83 84         [ 4]  742 	call	_assert_failed
      00CAE4 5B 06            [ 2]  743 	addw	sp, #6
      00CAE6                        744 00107$:
                                    745 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 530: if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
      00CAE6 C6 50 5F         [ 1]  746 	ld	a, 0x505f
      00CAE9 14 03            [ 1]  747 	and	a, (0x03, sp)
      00CAEB 27 03            [ 1]  748 	jreq	00102$
                                    749 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 532: status = SET; /* FLASH_FLAG is set */
      00CAED A6 01            [ 1]  750 	ld	a, #0x01
      00CAEF 81               [ 4]  751 	ret
      00CAF0                        752 00102$:
                                    753 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 536: status = RESET; /* FLASH_FLAG is reset*/
      00CAF0 4F               [ 1]  754 	clr	a
                                    755 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 540: return status;
                                    756 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 541: }
      00CAF1 81               [ 4]  757 	ret
                                    758 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 660: IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
                                    759 ;	-----------------------------------------
                                    760 ;	 function FLASH_WaitForLastOperation
                                    761 ;	-----------------------------------------
      00CAF2                        762 _FLASH_WaitForLastOperation:
                                    763 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 662: uint8_t flagstatus = 0x00;
      00CAF2 4F               [ 1]  764 	clr	a
                                    765 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 668: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00CAF3 88               [ 1]  766 	push	a
      00CAF4 7B 04            [ 1]  767 	ld	a, (0x04, sp)
      00CAF6 A1 FD            [ 1]  768 	cp	a, #0xfd
      00CAF8 84               [ 1]  769 	pop	a
      00CAF9 26 10            [ 1]  770 	jrne	00121$
                                    771 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 670: while((flagstatus == 0x00) && (timeout != 0x00))
      00CAFB 5F               [ 1]  772 	clrw	x
      00CAFC 5A               [ 2]  773 	decw	x
      00CAFD                        774 00102$:
      00CAFD 4D               [ 1]  775 	tnz	a
      00CAFE 26 1B            [ 1]  776 	jrne	00111$
      00CB00 5D               [ 2]  777 	tnzw	x
      00CB01 27 18            [ 1]  778 	jreq	00111$
                                    779 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 672: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
      00CB03 C6 50 5F         [ 1]  780 	ld	a, 0x505f
      00CB06 A4 05            [ 1]  781 	and	a, #0x05
                                    782 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 674: timeout--;
      00CB08 5A               [ 2]  783 	decw	x
      00CB09 20 F2            [ 2]  784 	jra	00102$
                                    785 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 679: while((flagstatus == 0x00) && (timeout != 0x00))
      00CB0B                        786 00121$:
      00CB0B 5F               [ 1]  787 	clrw	x
      00CB0C 5A               [ 2]  788 	decw	x
      00CB0D                        789 00106$:
      00CB0D 4D               [ 1]  790 	tnz	a
      00CB0E 26 0B            [ 1]  791 	jrne	00124$
      00CB10 5D               [ 2]  792 	tnzw	x
      00CB11 27 08            [ 1]  793 	jreq	00124$
                                    794 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 681: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
      00CB13 C6 50 5F         [ 1]  795 	ld	a, 0x505f
      00CB16 A4 41            [ 1]  796 	and	a, #0x41
                                    797 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 683: timeout--;
      00CB18 5A               [ 2]  798 	decw	x
      00CB19 20 F2            [ 2]  799 	jra	00106$
                                    800 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 700: return((FLASH_Status_TypeDef)flagstatus);
                                    801 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 683: timeout--;
      00CB1B                        802 00124$:
      00CB1B                        803 00111$:
                                    804 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 695: if(timeout == 0x00 )
      00CB1B 5D               [ 2]  805 	tnzw	x
      00CB1C 27 01            [ 1]  806 	jreq	00164$
      00CB1E 81               [ 4]  807 	ret
      00CB1F                        808 00164$:
                                    809 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 697: flagstatus = FLASH_STATUS_TIMEOUT;
      00CB1F A6 02            [ 1]  810 	ld	a, #0x02
                                    811 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 700: return((FLASH_Status_TypeDef)flagstatus);
                                    812 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 701: }
      00CB21 81               [ 4]  813 	ret
                                    814 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 710: IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
                                    815 ;	-----------------------------------------
                                    816 ;	 function FLASH_EraseBlock
                                    817 ;	-----------------------------------------
      00CB22                        818 _FLASH_EraseBlock:
      00CB22 52 06            [ 2]  819 	sub	sp, #6
                                    820 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 722: assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
      00CB24 7B 0B            [ 1]  821 	ld	a, (0x0b, sp)
      00CB26 A0 FD            [ 1]  822 	sub	a, #0xfd
      00CB28 26 02            [ 1]  823 	jrne	00141$
      00CB2A 4C               [ 1]  824 	inc	a
      00CB2B 21                     825 	.byte 0x21
      00CB2C                        826 00141$:
      00CB2C 4F               [ 1]  827 	clr	a
      00CB2D                        828 00142$:
      00CB2D 4D               [ 1]  829 	tnz	a
      00CB2E 26 19            [ 1]  830 	jrne	00107$
      00CB30 88               [ 1]  831 	push	a
      00CB31 7B 0C            [ 1]  832 	ld	a, (0x0c, sp)
      00CB33 A1 F7            [ 1]  833 	cp	a, #0xf7
      00CB35 84               [ 1]  834 	pop	a
      00CB36 27 11            [ 1]  835 	jreq	00107$
      00CB38 88               [ 1]  836 	push	a
      00CB39 4B D2            [ 1]  837 	push	#0xd2
      00CB3B 4B 02            [ 1]  838 	push	#0x02
      00CB3D 5F               [ 1]  839 	clrw	x
      00CB3E 89               [ 2]  840 	pushw	x
      00CB3F 4B 31            [ 1]  841 	push	#<(___str_0+0)
      00CB41 4B 83            [ 1]  842 	push	#((___str_0+0) >> 8)
      00CB43 CD 83 84         [ 4]  843 	call	_assert_failed
      00CB46 5B 06            [ 2]  844 	addw	sp, #6
      00CB48 84               [ 1]  845 	pop	a
      00CB49                        846 00107$:
                                    847 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 723: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00CB49 4D               [ 1]  848 	tnz	a
      00CB4A 27 1F            [ 1]  849 	jreq	00102$
                                    850 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 725: assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
      00CB4C 1E 09            [ 2]  851 	ldw	x, (0x09, sp)
      00CB4E A3 01 00         [ 2]  852 	cpw	x, #0x0100
      00CB51 25 0F            [ 1]  853 	jrc	00112$
      00CB53 4B D5            [ 1]  854 	push	#0xd5
      00CB55 4B 02            [ 1]  855 	push	#0x02
      00CB57 5F               [ 1]  856 	clrw	x
      00CB58 89               [ 2]  857 	pushw	x
      00CB59 4B 31            [ 1]  858 	push	#<(___str_0+0)
      00CB5B 4B 83            [ 1]  859 	push	#((___str_0+0) >> 8)
      00CB5D CD 83 84         [ 4]  860 	call	_assert_failed
      00CB60 5B 06            [ 2]  861 	addw	sp, #6
      00CB62                        862 00112$:
                                    863 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 726: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
      00CB62 0F 04            [ 1]  864 	clr	(0x04, sp)
      00CB64 A6 80            [ 1]  865 	ld	a, #0x80
      00CB66 5F               [ 1]  866 	clrw	x
      00CB67 1F 01            [ 2]  867 	ldw	(0x01, sp), x
      00CB69 20 1D            [ 2]  868 	jra	00103$
      00CB6B                        869 00102$:
                                    870 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 730: assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
      00CB6B 1E 09            [ 2]  871 	ldw	x, (0x09, sp)
      00CB6D A3 00 08         [ 2]  872 	cpw	x, #0x0008
      00CB70 25 0F            [ 1]  873 	jrc	00114$
      00CB72 4B DA            [ 1]  874 	push	#0xda
      00CB74 4B 02            [ 1]  875 	push	#0x02
      00CB76 5F               [ 1]  876 	clrw	x
      00CB77 89               [ 2]  877 	pushw	x
      00CB78 4B 31            [ 1]  878 	push	#<(___str_0+0)
      00CB7A 4B 83            [ 1]  879 	push	#((___str_0+0) >> 8)
      00CB7C CD 83 84         [ 4]  880 	call	_assert_failed
      00CB7F 5B 06            [ 2]  881 	addw	sp, #6
      00CB81                        882 00114$:
                                    883 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 731: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
      00CB81 0F 04            [ 1]  884 	clr	(0x04, sp)
      00CB83 A6 40            [ 1]  885 	ld	a, #0x40
      00CB85 5F               [ 1]  886 	clrw	x
      00CB86 1F 01            [ 2]  887 	ldw	(0x01, sp), x
      00CB88                        888 00103$:
                                    889 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 739: pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
      00CB88 1E 09            [ 2]  890 	ldw	x, (0x09, sp)
      00CB8A 58               [ 2]  891 	sllw	x
      00CB8B 58               [ 2]  892 	sllw	x
      00CB8C 58               [ 2]  893 	sllw	x
      00CB8D 58               [ 2]  894 	sllw	x
      00CB8E 58               [ 2]  895 	sllw	x
      00CB8F 58               [ 2]  896 	sllw	x
      00CB90 58               [ 2]  897 	sllw	x
      00CB91 1F 05            [ 2]  898 	ldw	(0x05, sp), x
      00CB93 95               [ 1]  899 	ld	xh, a
      00CB94 7B 04            [ 1]  900 	ld	a, (0x04, sp)
      00CB96 97               [ 1]  901 	ld	xl, a
      00CB97 72 FB 05         [ 2]  902 	addw	x, (0x05, sp)
                                    903 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 743: FLASH->CR2 |= FLASH_CR2_ERASE;
      00CB9A 72 1A 50 5B      [ 1]  904 	bset	20571, #5
                                    905 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 744: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
      00CB9E 72 1B 50 5C      [ 1]  906 	bres	20572, #5
                                    907 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 748: *pwFlash = (uint32_t)0;
      00CBA2 90 5F            [ 1]  908 	clrw	y
      00CBA4 EF 02            [ 2]  909 	ldw	(0x2, x), y
      00CBA6 FF               [ 2]  910 	ldw	(x), y
                                    911 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 756: }
      00CBA7 5B 06            [ 2]  912 	addw	sp, #6
      00CBA9 81               [ 4]  913 	ret
                                    914 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 767: IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
                                    915 ;	-----------------------------------------
                                    916 ;	 function FLASH_ProgramBlock
                                    917 ;	-----------------------------------------
      00CBAA                        918 _FLASH_ProgramBlock:
      00CBAA 52 08            [ 2]  919 	sub	sp, #8
                                    920 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 774: assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
      00CBAC 7B 0D            [ 1]  921 	ld	a, (0x0d, sp)
      00CBAE A0 FD            [ 1]  922 	sub	a, #0xfd
      00CBB0 26 04            [ 1]  923 	jrne	00173$
      00CBB2 4C               [ 1]  924 	inc	a
      00CBB3 6B 08            [ 1]  925 	ld	(0x08, sp), a
      00CBB5 C5                     926 	.byte 0xc5
      00CBB6                        927 00173$:
      00CBB6 0F 08            [ 1]  928 	clr	(0x08, sp)
      00CBB8                        929 00174$:
      00CBB8 0D 08            [ 1]  930 	tnz	(0x08, sp)
      00CBBA 26 15            [ 1]  931 	jrne	00113$
      00CBBC 7B 0D            [ 1]  932 	ld	a, (0x0d, sp)
      00CBBE A1 F7            [ 1]  933 	cp	a, #0xf7
      00CBC0 27 0F            [ 1]  934 	jreq	00113$
      00CBC2 4B 06            [ 1]  935 	push	#0x06
      00CBC4 4B 03            [ 1]  936 	push	#0x03
      00CBC6 5F               [ 1]  937 	clrw	x
      00CBC7 89               [ 2]  938 	pushw	x
      00CBC8 4B 31            [ 1]  939 	push	#<(___str_0+0)
      00CBCA 4B 83            [ 1]  940 	push	#((___str_0+0) >> 8)
      00CBCC CD 83 84         [ 4]  941 	call	_assert_failed
      00CBCF 5B 06            [ 2]  942 	addw	sp, #6
      00CBD1                        943 00113$:
                                    944 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 775: assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
      00CBD1 0D 0E            [ 1]  945 	tnz	(0x0e, sp)
      00CBD3 27 15            [ 1]  946 	jreq	00118$
      00CBD5 7B 0E            [ 1]  947 	ld	a, (0x0e, sp)
      00CBD7 A1 10            [ 1]  948 	cp	a, #0x10
      00CBD9 27 0F            [ 1]  949 	jreq	00118$
      00CBDB 4B 07            [ 1]  950 	push	#0x07
      00CBDD 4B 03            [ 1]  951 	push	#0x03
      00CBDF 5F               [ 1]  952 	clrw	x
      00CBE0 89               [ 2]  953 	pushw	x
      00CBE1 4B 31            [ 1]  954 	push	#<(___str_0+0)
      00CBE3 4B 83            [ 1]  955 	push	#((___str_0+0) >> 8)
      00CBE5 CD 83 84         [ 4]  956 	call	_assert_failed
      00CBE8 5B 06            [ 2]  957 	addw	sp, #6
      00CBEA                        958 00118$:
                                    959 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 776: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00CBEA 7B 08            [ 1]  960 	ld	a, (0x08, sp)
      00CBEC 27 1E            [ 1]  961 	jreq	00102$
                                    962 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 778: assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
      00CBEE 1E 0B            [ 2]  963 	ldw	x, (0x0b, sp)
      00CBF0 A3 01 00         [ 2]  964 	cpw	x, #0x0100
      00CBF3 25 0F            [ 1]  965 	jrc	00123$
      00CBF5 4B 0A            [ 1]  966 	push	#0x0a
      00CBF7 4B 03            [ 1]  967 	push	#0x03
      00CBF9 5F               [ 1]  968 	clrw	x
      00CBFA 89               [ 2]  969 	pushw	x
      00CBFB 4B 31            [ 1]  970 	push	#<(___str_0+0)
      00CBFD 4B 83            [ 1]  971 	push	#((___str_0+0) >> 8)
      00CBFF CD 83 84         [ 4]  972 	call	_assert_failed
      00CC02 5B 06            [ 2]  973 	addw	sp, #6
      00CC04                        974 00123$:
                                    975 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 779: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
      00CC04 AE 80 00         [ 2]  976 	ldw	x, #0x8000
      00CC07 1F 03            [ 2]  977 	ldw	(0x03, sp), x
      00CC09 5F               [ 1]  978 	clrw	x
      00CC0A 20 1C            [ 2]  979 	jra	00103$
      00CC0C                        980 00102$:
                                    981 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 783: assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
      00CC0C 1E 0B            [ 2]  982 	ldw	x, (0x0b, sp)
      00CC0E A3 00 08         [ 2]  983 	cpw	x, #0x0008
      00CC11 25 0F            [ 1]  984 	jrc	00125$
      00CC13 4B 0F            [ 1]  985 	push	#0x0f
      00CC15 4B 03            [ 1]  986 	push	#0x03
      00CC17 5F               [ 1]  987 	clrw	x
      00CC18 89               [ 2]  988 	pushw	x
      00CC19 4B 31            [ 1]  989 	push	#<(___str_0+0)
      00CC1B 4B 83            [ 1]  990 	push	#((___str_0+0) >> 8)
      00CC1D CD 83 84         [ 4]  991 	call	_assert_failed
      00CC20 5B 06            [ 2]  992 	addw	sp, #6
      00CC22                        993 00125$:
                                    994 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 784: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
      00CC22 AE 40 00         [ 2]  995 	ldw	x, #0x4000
      00CC25 1F 03            [ 2]  996 	ldw	(0x03, sp), x
      00CC27 5F               [ 1]  997 	clrw	x
      00CC28                        998 00103$:
                                    999 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 788: startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
      00CC28 16 0B            [ 2] 1000 	ldw	y, (0x0b, sp)
      00CC2A 17 07            [ 2] 1001 	ldw	(0x07, sp), y
      00CC2C 90 5F            [ 1] 1002 	clrw	y
      00CC2E 17 05            [ 2] 1003 	ldw	(0x05, sp), y
      00CC30 16 07            [ 2] 1004 	ldw	y, (0x07, sp)
      00CC32 A6 07            [ 1] 1005 	ld	a, #0x07
      00CC34                       1006 00186$:
      00CC34 90 58            [ 2] 1007 	sllw	y
      00CC36 09 06            [ 1] 1008 	rlc	(0x06, sp)
      00CC38 09 05            [ 1] 1009 	rlc	(0x05, sp)
      00CC3A 4A               [ 1] 1010 	dec	a
      00CC3B 26 F7            [ 1] 1011 	jrne	00186$
      00CC3D 72 F9 03         [ 2] 1012 	addw	y, (0x03, sp)
      00CC40 9F               [ 1] 1013 	ld	a, xl
      00CC41 19 06            [ 1] 1014 	adc	a, (0x06, sp)
      00CC43 02               [ 1] 1015 	rlwa	x
      00CC44 19 05            [ 1] 1016 	adc	a, (0x05, sp)
      00CC46 95               [ 1] 1017 	ld	xh, a
      00CC47 17 03            [ 2] 1018 	ldw	(0x03, sp), y
      00CC49 1F 01            [ 2] 1019 	ldw	(0x01, sp), x
                                   1020 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 794: FLASH->CR2 |= FLASH_CR2_PRG;
      00CC4B C6 50 5B         [ 1] 1021 	ld	a, 0x505b
                                   1022 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 791: if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
      00CC4E 0D 0E            [ 1] 1023 	tnz	(0x0e, sp)
      00CC50 26 0B            [ 1] 1024 	jrne	00105$
                                   1025 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 794: FLASH->CR2 |= FLASH_CR2_PRG;
      00CC52 AA 01            [ 1] 1026 	or	a, #0x01
      00CC54 C7 50 5B         [ 1] 1027 	ld	0x505b, a
                                   1028 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 795: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
      00CC57 72 11 50 5C      [ 1] 1029 	bres	20572, #0
      00CC5B 20 09            [ 2] 1030 	jra	00134$
      00CC5D                       1031 00105$:
                                   1032 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 800: FLASH->CR2 |= FLASH_CR2_FPRG;
      00CC5D AA 10            [ 1] 1033 	or	a, #0x10
      00CC5F C7 50 5B         [ 1] 1034 	ld	0x505b, a
                                   1035 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 801: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
      00CC62 72 19 50 5C      [ 1] 1036 	bres	20572, #4
                                   1037 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 805: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
      00CC66                       1038 00134$:
      00CC66 90 5F            [ 1] 1039 	clrw	y
      00CC68                       1040 00108$:
                                   1041 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 807: *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
      00CC68 1E 03            [ 2] 1042 	ldw	x, (0x03, sp)
      00CC6A 1F 05            [ 2] 1043 	ldw	(0x05, sp), x
      00CC6C 93               [ 1] 1044 	ldw	x, y
      00CC6D 72 FB 05         [ 2] 1045 	addw	x, (0x05, sp)
      00CC70 1F 07            [ 2] 1046 	ldw	(0x07, sp), x
      00CC72 93               [ 1] 1047 	ldw	x, y
      00CC73 72 FB 0F         [ 2] 1048 	addw	x, (0x0f, sp)
      00CC76 F6               [ 1] 1049 	ld	a, (x)
      00CC77 1E 07            [ 2] 1050 	ldw	x, (0x07, sp)
      00CC79 F7               [ 1] 1051 	ld	(x), a
                                   1052 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 805: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
      00CC7A 90 5C            [ 1] 1053 	incw	y
      00CC7C 90 A3 00 80      [ 2] 1054 	cpw	y, #0x0080
      00CC80 25 E6            [ 1] 1055 	jrc	00108$
                                   1056 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_flash.c: 809: }
      00CC82 5B 08            [ 2] 1057 	addw	sp, #8
      00CC84 81               [ 4] 1058 	ret
                                   1059 	.area CODE
                                   1060 	.area CONST
                                   1061 	.area CONST
      008331                       1062 ___str_0:
      008331 2E 2E 2F 2E 2E 2F 2F  1063 	.ascii "../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_fl"
             53 74 64 50 65 72 69
             70 68 5F 44 72 69 76
             65 72 2F 53 54 4D 38
             53 5F 53 74 64 50 65
             72 69 70 68 5F 44 72
             69 76 65 72 2F 2F 73
             72 63 2F 73 74 6D 38
             73 5F 66 6C
      00836D 61 73 68 2E 63        1064 	.ascii "ash.c"
      008372 00                    1065 	.db 0x00
                                   1066 	.area CODE
                                   1067 	.area INITIALIZER
                                   1068 	.area CABS (ABS)
