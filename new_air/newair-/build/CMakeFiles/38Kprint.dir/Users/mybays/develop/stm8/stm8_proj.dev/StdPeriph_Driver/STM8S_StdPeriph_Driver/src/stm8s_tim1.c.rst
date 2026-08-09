                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _TIM1_DeInit
                                     13 	.globl _TIM1_TimeBaseInit
                                     14 	.globl _TIM1_OC1Init
                                     15 	.globl _TIM1_OC2Init
                                     16 	.globl _TIM1_OC3Init
                                     17 	.globl _TIM1_OC4Init
                                     18 	.globl _TIM1_BDTRConfig
                                     19 	.globl _TIM1_ICInit
                                     20 	.globl _TIM1_PWMIConfig
                                     21 	.globl _TIM1_Cmd
                                     22 	.globl _TIM1_CtrlPWMOutputs
                                     23 	.globl _TIM1_ITConfig
                                     24 	.globl _TIM1_InternalClockConfig
                                     25 	.globl _TIM1_ETRClockMode1Config
                                     26 	.globl _TIM1_ETRClockMode2Config
                                     27 	.globl _TIM1_ETRConfig
                                     28 	.globl _TIM1_TIxExternalClockConfig
                                     29 	.globl _TIM1_SelectInputTrigger
                                     30 	.globl _TIM1_UpdateDisableConfig
                                     31 	.globl _TIM1_UpdateRequestConfig
                                     32 	.globl _TIM1_SelectHallSensor
                                     33 	.globl _TIM1_SelectOnePulseMode
                                     34 	.globl _TIM1_SelectOutputTrigger
                                     35 	.globl _TIM1_SelectSlaveMode
                                     36 	.globl _TIM1_SelectMasterSlaveMode
                                     37 	.globl _TIM1_EncoderInterfaceConfig
                                     38 	.globl _TIM1_PrescalerConfig
                                     39 	.globl _TIM1_CounterModeConfig
                                     40 	.globl _TIM1_ForcedOC1Config
                                     41 	.globl _TIM1_ForcedOC2Config
                                     42 	.globl _TIM1_ForcedOC3Config
                                     43 	.globl _TIM1_ForcedOC4Config
                                     44 	.globl _TIM1_ARRPreloadConfig
                                     45 	.globl _TIM1_SelectCOM
                                     46 	.globl _TIM1_CCPreloadControl
                                     47 	.globl _TIM1_OC1PreloadConfig
                                     48 	.globl _TIM1_OC2PreloadConfig
                                     49 	.globl _TIM1_OC3PreloadConfig
                                     50 	.globl _TIM1_OC4PreloadConfig
                                     51 	.globl _TIM1_OC1FastConfig
                                     52 	.globl _TIM1_OC2FastConfig
                                     53 	.globl _TIM1_OC3FastConfig
                                     54 	.globl _TIM1_OC4FastConfig
                                     55 	.globl _TIM1_GenerateEvent
                                     56 	.globl _TIM1_OC1PolarityConfig
                                     57 	.globl _TIM1_OC1NPolarityConfig
                                     58 	.globl _TIM1_OC2PolarityConfig
                                     59 	.globl _TIM1_OC2NPolarityConfig
                                     60 	.globl _TIM1_OC3PolarityConfig
                                     61 	.globl _TIM1_OC3NPolarityConfig
                                     62 	.globl _TIM1_OC4PolarityConfig
                                     63 	.globl _TIM1_CCxCmd
                                     64 	.globl _TIM1_CCxNCmd
                                     65 	.globl _TIM1_SelectOCxM
                                     66 	.globl _TIM1_SetCounter
                                     67 	.globl _TIM1_SetAutoreload
                                     68 	.globl _TIM1_SetCompare1
                                     69 	.globl _TIM1_SetCompare2
                                     70 	.globl _TIM1_SetCompare3
                                     71 	.globl _TIM1_SetCompare4
                                     72 	.globl _TIM1_SetIC1Prescaler
                                     73 	.globl _TIM1_SetIC2Prescaler
                                     74 	.globl _TIM1_SetIC3Prescaler
                                     75 	.globl _TIM1_SetIC4Prescaler
                                     76 	.globl _TIM1_GetCapture1
                                     77 	.globl _TIM1_GetCapture2
                                     78 	.globl _TIM1_GetCapture3
                                     79 	.globl _TIM1_GetCapture4
                                     80 	.globl _TIM1_GetCounter
                                     81 	.globl _TIM1_GetPrescaler
                                     82 	.globl _TIM1_GetFlagStatus
                                     83 	.globl _TIM1_ClearFlag
                                     84 	.globl _TIM1_GetITStatus
                                     85 	.globl _TIM1_ClearITPendingBit
                                     86 ;--------------------------------------------------------
                                     87 ; ram data
                                     88 ;--------------------------------------------------------
                                     89 	.area DATA
                                     90 ;--------------------------------------------------------
                                     91 ; ram data
                                     92 ;--------------------------------------------------------
                                     93 	.area INITIALIZED
                                     94 ;--------------------------------------------------------
                                     95 ; absolute external ram data
                                     96 ;--------------------------------------------------------
                                     97 	.area DABS (ABS)
                                     98 
                                     99 ; default segment ordering for linker
                                    100 	.area HOME
                                    101 	.area GSINIT
                                    102 	.area GSFINAL
                                    103 	.area CONST
                                    104 	.area INITIALIZER
                                    105 	.area CODE
                                    106 
                                    107 ;--------------------------------------------------------
                                    108 ; global & static initialisations
                                    109 ;--------------------------------------------------------
                                    110 	.area HOME
                                    111 	.area GSINIT
                                    112 	.area GSFINAL
                                    113 	.area GSINIT
                                    114 ;--------------------------------------------------------
                                    115 ; Home
                                    116 ;--------------------------------------------------------
                                    117 	.area HOME
                                    118 	.area HOME
                                    119 ;--------------------------------------------------------
                                    120 ; code
                                    121 ;--------------------------------------------------------
                                    122 	.area CODE
                                    123 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 58: void TIM1_DeInit(void)
                                    124 ;	-----------------------------------------
                                    125 ;	 function TIM1_DeInit
                                    126 ;	-----------------------------------------
      0086E6                        127 _TIM1_DeInit:
                                    128 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 60: TIM1->CR1  = TIM1_CR1_RESET_VALUE;
      0086E6 35 00 52 50      [ 1]  129 	mov	0x5250+0, #0x00
                                    130 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 61: TIM1->CR2  = TIM1_CR2_RESET_VALUE;
      0086EA 35 00 52 51      [ 1]  131 	mov	0x5251+0, #0x00
                                    132 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 62: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
      0086EE 35 00 52 52      [ 1]  133 	mov	0x5252+0, #0x00
                                    134 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 63: TIM1->ETR  = TIM1_ETR_RESET_VALUE;
      0086F2 35 00 52 53      [ 1]  135 	mov	0x5253+0, #0x00
                                    136 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 64: TIM1->IER  = TIM1_IER_RESET_VALUE;
      0086F6 35 00 52 54      [ 1]  137 	mov	0x5254+0, #0x00
                                    138 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 65: TIM1->SR2  = TIM1_SR2_RESET_VALUE;
      0086FA 35 00 52 56      [ 1]  139 	mov	0x5256+0, #0x00
                                    140 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 67: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      0086FE 35 00 52 5C      [ 1]  141 	mov	0x525c+0, #0x00
                                    142 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 68: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      008702 35 00 52 5D      [ 1]  143 	mov	0x525d+0, #0x00
                                    144 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 70: TIM1->CCMR1 = 0x01;
      008706 35 01 52 58      [ 1]  145 	mov	0x5258+0, #0x01
                                    146 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 71: TIM1->CCMR2 = 0x01;
      00870A 35 01 52 59      [ 1]  147 	mov	0x5259+0, #0x01
                                    148 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 72: TIM1->CCMR3 = 0x01;
      00870E 35 01 52 5A      [ 1]  149 	mov	0x525a+0, #0x01
                                    150 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 73: TIM1->CCMR4 = 0x01;
      008712 35 01 52 5B      [ 1]  151 	mov	0x525b+0, #0x01
                                    152 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 75: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      008716 35 00 52 5C      [ 1]  153 	mov	0x525c+0, #0x00
                                    154 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 76: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      00871A 35 00 52 5D      [ 1]  155 	mov	0x525d+0, #0x00
                                    156 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 77: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
      00871E 35 00 52 58      [ 1]  157 	mov	0x5258+0, #0x00
                                    158 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 78: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
      008722 35 00 52 59      [ 1]  159 	mov	0x5259+0, #0x00
                                    160 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 79: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
      008726 35 00 52 5A      [ 1]  161 	mov	0x525a+0, #0x00
                                    162 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 80: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
      00872A 35 00 52 5B      [ 1]  163 	mov	0x525b+0, #0x00
                                    164 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 81: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
      00872E 35 00 52 5E      [ 1]  165 	mov	0x525e+0, #0x00
                                    166 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 82: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
      008732 35 00 52 5F      [ 1]  167 	mov	0x525f+0, #0x00
                                    168 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 83: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
      008736 35 00 52 60      [ 1]  169 	mov	0x5260+0, #0x00
                                    170 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 84: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
      00873A 35 00 52 61      [ 1]  171 	mov	0x5261+0, #0x00
                                    172 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 85: TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
      00873E 35 FF 52 62      [ 1]  173 	mov	0x5262+0, #0xff
                                    174 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 86: TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
      008742 35 FF 52 63      [ 1]  175 	mov	0x5263+0, #0xff
                                    176 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 87: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
      008746 35 00 52 65      [ 1]  177 	mov	0x5265+0, #0x00
                                    178 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 88: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
      00874A 35 00 52 66      [ 1]  179 	mov	0x5266+0, #0x00
                                    180 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 89: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
      00874E 35 00 52 67      [ 1]  181 	mov	0x5267+0, #0x00
                                    182 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 90: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
      008752 35 00 52 68      [ 1]  183 	mov	0x5268+0, #0x00
                                    184 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 91: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
      008756 35 00 52 69      [ 1]  185 	mov	0x5269+0, #0x00
                                    186 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 92: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
      00875A 35 00 52 6A      [ 1]  187 	mov	0x526a+0, #0x00
                                    188 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 93: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
      00875E 35 00 52 6B      [ 1]  189 	mov	0x526b+0, #0x00
                                    190 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 94: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
      008762 35 00 52 6C      [ 1]  191 	mov	0x526c+0, #0x00
                                    192 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 95: TIM1->OISR  = TIM1_OISR_RESET_VALUE;
      008766 35 00 52 6F      [ 1]  193 	mov	0x526f+0, #0x00
                                    194 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 96: TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
      00876A 35 01 52 57      [ 1]  195 	mov	0x5257+0, #0x01
                                    196 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 97: TIM1->DTR   = TIM1_DTR_RESET_VALUE;
      00876E 35 00 52 6E      [ 1]  197 	mov	0x526e+0, #0x00
                                    198 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 98: TIM1->BKR   = TIM1_BKR_RESET_VALUE;
      008772 35 00 52 6D      [ 1]  199 	mov	0x526d+0, #0x00
                                    200 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 99: TIM1->RCR   = TIM1_RCR_RESET_VALUE;
      008776 35 00 52 64      [ 1]  201 	mov	0x5264+0, #0x00
                                    202 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 100: TIM1->SR1   = TIM1_SR1_RESET_VALUE;
      00877A 35 00 52 55      [ 1]  203 	mov	0x5255+0, #0x00
                                    204 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 101: }
      00877E 81               [ 4]  205 	ret
                                    206 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 111: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                                    207 ;	-----------------------------------------
                                    208 ;	 function TIM1_TimeBaseInit
                                    209 ;	-----------------------------------------
      00877F                        210 _TIM1_TimeBaseInit:
                                    211 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 117: assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
      00877F 0D 05            [ 1]  212 	tnz	(0x05, sp)
      008781 27 27            [ 1]  213 	jreq	00104$
      008783 7B 05            [ 1]  214 	ld	a, (0x05, sp)
      008785 A1 10            [ 1]  215 	cp	a, #0x10
      008787 27 21            [ 1]  216 	jreq	00104$
      008789 7B 05            [ 1]  217 	ld	a, (0x05, sp)
      00878B A1 20            [ 1]  218 	cp	a, #0x20
      00878D 27 1B            [ 1]  219 	jreq	00104$
      00878F 7B 05            [ 1]  220 	ld	a, (0x05, sp)
      008791 A1 40            [ 1]  221 	cp	a, #0x40
      008793 27 15            [ 1]  222 	jreq	00104$
      008795 7B 05            [ 1]  223 	ld	a, (0x05, sp)
      008797 A1 60            [ 1]  224 	cp	a, #0x60
      008799 27 0F            [ 1]  225 	jreq	00104$
      00879B 4B 75            [ 1]  226 	push	#0x75
      00879D 5F               [ 1]  227 	clrw	x
      00879E 89               [ 2]  228 	pushw	x
      00879F 4B 00            [ 1]  229 	push	#0x00
      0087A1 4B 66            [ 1]  230 	push	#<(___str_0+0)
      0087A3 4B 81            [ 1]  231 	push	#((___str_0+0) >> 8)
      0087A5 CD 85 5C         [ 4]  232 	call	_assert_failed
      0087A8 5B 06            [ 2]  233 	addw	sp, #6
      0087AA                        234 00104$:
                                    235 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 120: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
      0087AA 7B 06            [ 1]  236 	ld	a, (0x06, sp)
      0087AC C7 52 62         [ 1]  237 	ld	0x5262, a
                                    238 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 121: TIM1->ARRL = (uint8_t)(TIM1_Period);
      0087AF 7B 07            [ 1]  239 	ld	a, (0x07, sp)
      0087B1 C7 52 63         [ 1]  240 	ld	0x5263, a
                                    241 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 124: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
      0087B4 7B 03            [ 1]  242 	ld	a, (0x03, sp)
      0087B6 5F               [ 1]  243 	clrw	x
      0087B7 C7 52 60         [ 1]  244 	ld	0x5260, a
                                    245 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 125: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
      0087BA 7B 04            [ 1]  246 	ld	a, (0x04, sp)
      0087BC C7 52 61         [ 1]  247 	ld	0x5261, a
                                    248 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 128: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
      0087BF C6 52 50         [ 1]  249 	ld	a, 0x5250
      0087C2 A4 8F            [ 1]  250 	and	a, #0x8f
                                    251 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 129: | (uint8_t)(TIM1_CounterMode));
      0087C4 1A 05            [ 1]  252 	or	a, (0x05, sp)
      0087C6 C7 52 50         [ 1]  253 	ld	0x5250, a
                                    254 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 132: TIM1->RCR = TIM1_RepetitionCounter;
      0087C9 AE 52 64         [ 2]  255 	ldw	x, #0x5264
      0087CC 7B 08            [ 1]  256 	ld	a, (0x08, sp)
      0087CE F7               [ 1]  257 	ld	(x), a
                                    258 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 133: }
      0087CF 81               [ 4]  259 	ret
                                    260 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 154: void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    261 ;	-----------------------------------------
                                    262 ;	 function TIM1_OC1Init
                                    263 ;	-----------------------------------------
      0087D0                        264 _TIM1_OC1Init:
      0087D0 52 03            [ 2]  265 	sub	sp, #3
                                    266 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 164: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
      0087D2 0D 06            [ 1]  267 	tnz	(0x06, sp)
      0087D4 27 2D            [ 1]  268 	jreq	00104$
      0087D6 7B 06            [ 1]  269 	ld	a, (0x06, sp)
      0087D8 A1 10            [ 1]  270 	cp	a, #0x10
      0087DA 27 27            [ 1]  271 	jreq	00104$
      0087DC 7B 06            [ 1]  272 	ld	a, (0x06, sp)
      0087DE A1 20            [ 1]  273 	cp	a, #0x20
      0087E0 27 21            [ 1]  274 	jreq	00104$
      0087E2 7B 06            [ 1]  275 	ld	a, (0x06, sp)
      0087E4 A1 30            [ 1]  276 	cp	a, #0x30
      0087E6 27 1B            [ 1]  277 	jreq	00104$
      0087E8 7B 06            [ 1]  278 	ld	a, (0x06, sp)
      0087EA A1 60            [ 1]  279 	cp	a, #0x60
      0087EC 27 15            [ 1]  280 	jreq	00104$
      0087EE 7B 06            [ 1]  281 	ld	a, (0x06, sp)
      0087F0 A1 70            [ 1]  282 	cp	a, #0x70
      0087F2 27 0F            [ 1]  283 	jreq	00104$
      0087F4 4B A4            [ 1]  284 	push	#0xa4
      0087F6 5F               [ 1]  285 	clrw	x
      0087F7 89               [ 2]  286 	pushw	x
      0087F8 4B 00            [ 1]  287 	push	#0x00
      0087FA 4B 66            [ 1]  288 	push	#<(___str_0+0)
      0087FC 4B 81            [ 1]  289 	push	#((___str_0+0) >> 8)
      0087FE CD 85 5C         [ 4]  290 	call	_assert_failed
      008801 5B 06            [ 2]  291 	addw	sp, #6
      008803                        292 00104$:
                                    293 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 165: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
      008803 0D 07            [ 1]  294 	tnz	(0x07, sp)
      008805 27 15            [ 1]  295 	jreq	00121$
      008807 7B 07            [ 1]  296 	ld	a, (0x07, sp)
      008809 A1 11            [ 1]  297 	cp	a, #0x11
      00880B 27 0F            [ 1]  298 	jreq	00121$
      00880D 4B A5            [ 1]  299 	push	#0xa5
      00880F 5F               [ 1]  300 	clrw	x
      008810 89               [ 2]  301 	pushw	x
      008811 4B 00            [ 1]  302 	push	#0x00
      008813 4B 66            [ 1]  303 	push	#<(___str_0+0)
      008815 4B 81            [ 1]  304 	push	#((___str_0+0) >> 8)
      008817 CD 85 5C         [ 4]  305 	call	_assert_failed
      00881A 5B 06            [ 2]  306 	addw	sp, #6
      00881C                        307 00121$:
                                    308 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 166: assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
      00881C 0D 08            [ 1]  309 	tnz	(0x08, sp)
      00881E 27 15            [ 1]  310 	jreq	00126$
      008820 7B 08            [ 1]  311 	ld	a, (0x08, sp)
      008822 A1 44            [ 1]  312 	cp	a, #0x44
      008824 27 0F            [ 1]  313 	jreq	00126$
      008826 4B A6            [ 1]  314 	push	#0xa6
      008828 5F               [ 1]  315 	clrw	x
      008829 89               [ 2]  316 	pushw	x
      00882A 4B 00            [ 1]  317 	push	#0x00
      00882C 4B 66            [ 1]  318 	push	#<(___str_0+0)
      00882E 4B 81            [ 1]  319 	push	#((___str_0+0) >> 8)
      008830 CD 85 5C         [ 4]  320 	call	_assert_failed
      008833 5B 06            [ 2]  321 	addw	sp, #6
      008835                        322 00126$:
                                    323 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 167: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      008835 0D 0B            [ 1]  324 	tnz	(0x0b, sp)
      008837 27 15            [ 1]  325 	jreq	00131$
      008839 7B 0B            [ 1]  326 	ld	a, (0x0b, sp)
      00883B A1 22            [ 1]  327 	cp	a, #0x22
      00883D 27 0F            [ 1]  328 	jreq	00131$
      00883F 4B A7            [ 1]  329 	push	#0xa7
      008841 5F               [ 1]  330 	clrw	x
      008842 89               [ 2]  331 	pushw	x
      008843 4B 00            [ 1]  332 	push	#0x00
      008845 4B 66            [ 1]  333 	push	#<(___str_0+0)
      008847 4B 81            [ 1]  334 	push	#((___str_0+0) >> 8)
      008849 CD 85 5C         [ 4]  335 	call	_assert_failed
      00884C 5B 06            [ 2]  336 	addw	sp, #6
      00884E                        337 00131$:
                                    338 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 168: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      00884E 0D 0C            [ 1]  339 	tnz	(0x0c, sp)
      008850 27 15            [ 1]  340 	jreq	00136$
      008852 7B 0C            [ 1]  341 	ld	a, (0x0c, sp)
      008854 A1 88            [ 1]  342 	cp	a, #0x88
      008856 27 0F            [ 1]  343 	jreq	00136$
      008858 4B A8            [ 1]  344 	push	#0xa8
      00885A 5F               [ 1]  345 	clrw	x
      00885B 89               [ 2]  346 	pushw	x
      00885C 4B 00            [ 1]  347 	push	#0x00
      00885E 4B 66            [ 1]  348 	push	#<(___str_0+0)
      008860 4B 81            [ 1]  349 	push	#((___str_0+0) >> 8)
      008862 CD 85 5C         [ 4]  350 	call	_assert_failed
      008865 5B 06            [ 2]  351 	addw	sp, #6
      008867                        352 00136$:
                                    353 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 169: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
      008867 7B 0D            [ 1]  354 	ld	a, (0x0d, sp)
      008869 A1 55            [ 1]  355 	cp	a, #0x55
      00886B 27 13            [ 1]  356 	jreq	00141$
      00886D 0D 0D            [ 1]  357 	tnz	(0x0d, sp)
      00886F 27 0F            [ 1]  358 	jreq	00141$
      008871 4B A9            [ 1]  359 	push	#0xa9
      008873 5F               [ 1]  360 	clrw	x
      008874 89               [ 2]  361 	pushw	x
      008875 4B 00            [ 1]  362 	push	#0x00
      008877 4B 66            [ 1]  363 	push	#<(___str_0+0)
      008879 4B 81            [ 1]  364 	push	#((___str_0+0) >> 8)
      00887B CD 85 5C         [ 4]  365 	call	_assert_failed
      00887E 5B 06            [ 2]  366 	addw	sp, #6
      008880                        367 00141$:
                                    368 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 170: assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
      008880 7B 0E            [ 1]  369 	ld	a, (0x0e, sp)
      008882 A1 2A            [ 1]  370 	cp	a, #0x2a
      008884 27 13            [ 1]  371 	jreq	00146$
      008886 0D 0E            [ 1]  372 	tnz	(0x0e, sp)
      008888 27 0F            [ 1]  373 	jreq	00146$
      00888A 4B AA            [ 1]  374 	push	#0xaa
      00888C 5F               [ 1]  375 	clrw	x
      00888D 89               [ 2]  376 	pushw	x
      00888E 4B 00            [ 1]  377 	push	#0x00
      008890 4B 66            [ 1]  378 	push	#<(___str_0+0)
      008892 4B 81            [ 1]  379 	push	#((___str_0+0) >> 8)
      008894 CD 85 5C         [ 4]  380 	call	_assert_failed
      008897 5B 06            [ 2]  381 	addw	sp, #6
      008899                        382 00146$:
                                    383 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 174: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
      008899 C6 52 5C         [ 1]  384 	ld	a, 0x525c
      00889C A4 F0            [ 1]  385 	and	a, #0xf0
      00889E C7 52 5C         [ 1]  386 	ld	0x525c, a
                                    387 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 178: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
      0088A1 C6 52 5C         [ 1]  388 	ld	a, 0x525c
      0088A4 6B 01            [ 1]  389 	ld	(0x01, sp), a
      0088A6 7B 07            [ 1]  390 	ld	a, (0x07, sp)
      0088A8 A4 01            [ 1]  391 	and	a, #0x01
      0088AA 6B 03            [ 1]  392 	ld	(0x03, sp), a
                                    393 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 179: | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
      0088AC 7B 08            [ 1]  394 	ld	a, (0x08, sp)
      0088AE A4 04            [ 1]  395 	and	a, #0x04
      0088B0 1A 03            [ 1]  396 	or	a, (0x03, sp)
      0088B2 6B 02            [ 1]  397 	ld	(0x02, sp), a
                                    398 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 180: | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
      0088B4 7B 0B            [ 1]  399 	ld	a, (0x0b, sp)
      0088B6 A4 02            [ 1]  400 	and	a, #0x02
      0088B8 6B 03            [ 1]  401 	ld	(0x03, sp), a
                                    402 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 181: | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
      0088BA 7B 0C            [ 1]  403 	ld	a, (0x0c, sp)
      0088BC A4 08            [ 1]  404 	and	a, #0x08
      0088BE 1A 03            [ 1]  405 	or	a, (0x03, sp)
      0088C0 1A 02            [ 1]  406 	or	a, (0x02, sp)
      0088C2 1A 01            [ 1]  407 	or	a, (0x01, sp)
      0088C4 C7 52 5C         [ 1]  408 	ld	0x525c, a
                                    409 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 184: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      0088C7 C6 52 58         [ 1]  410 	ld	a, 0x5258
      0088CA A4 8F            [ 1]  411 	and	a, #0x8f
                                    412 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 185: (uint8_t)TIM1_OCMode);
      0088CC 1A 06            [ 1]  413 	or	a, (0x06, sp)
      0088CE C7 52 58         [ 1]  414 	ld	0x5258, a
                                    415 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 188: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
      0088D1 C6 52 6F         [ 1]  416 	ld	a, 0x526f
      0088D4 A4 FC            [ 1]  417 	and	a, #0xfc
      0088D6 C7 52 6F         [ 1]  418 	ld	0x526f, a
                                    419 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 190: TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
      0088D9 C6 52 6F         [ 1]  420 	ld	a, 0x526f
      0088DC 6B 02            [ 1]  421 	ld	(0x02, sp), a
      0088DE 7B 0D            [ 1]  422 	ld	a, (0x0d, sp)
      0088E0 A4 01            [ 1]  423 	and	a, #0x01
      0088E2 6B 03            [ 1]  424 	ld	(0x03, sp), a
                                    425 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 191: (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
      0088E4 7B 0E            [ 1]  426 	ld	a, (0x0e, sp)
      0088E6 A4 02            [ 1]  427 	and	a, #0x02
      0088E8 1A 03            [ 1]  428 	or	a, (0x03, sp)
      0088EA 1A 02            [ 1]  429 	or	a, (0x02, sp)
      0088EC C7 52 6F         [ 1]  430 	ld	0x526f, a
                                    431 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 194: TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
      0088EF 7B 09            [ 1]  432 	ld	a, (0x09, sp)
      0088F1 C7 52 65         [ 1]  433 	ld	0x5265, a
                                    434 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 195: TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
      0088F4 7B 0A            [ 1]  435 	ld	a, (0x0a, sp)
      0088F6 C7 52 66         [ 1]  436 	ld	0x5266, a
                                    437 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 196: }
      0088F9 5B 03            [ 2]  438 	addw	sp, #3
      0088FB 81               [ 4]  439 	ret
                                    440 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 217: void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    441 ;	-----------------------------------------
                                    442 ;	 function TIM1_OC2Init
                                    443 ;	-----------------------------------------
      0088FC                        444 _TIM1_OC2Init:
      0088FC 52 03            [ 2]  445 	sub	sp, #3
                                    446 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 227: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
      0088FE 0D 06            [ 1]  447 	tnz	(0x06, sp)
      008900 27 2D            [ 1]  448 	jreq	00104$
      008902 7B 06            [ 1]  449 	ld	a, (0x06, sp)
      008904 A1 10            [ 1]  450 	cp	a, #0x10
      008906 27 27            [ 1]  451 	jreq	00104$
      008908 7B 06            [ 1]  452 	ld	a, (0x06, sp)
      00890A A1 20            [ 1]  453 	cp	a, #0x20
      00890C 27 21            [ 1]  454 	jreq	00104$
      00890E 7B 06            [ 1]  455 	ld	a, (0x06, sp)
      008910 A1 30            [ 1]  456 	cp	a, #0x30
      008912 27 1B            [ 1]  457 	jreq	00104$
      008914 7B 06            [ 1]  458 	ld	a, (0x06, sp)
      008916 A1 60            [ 1]  459 	cp	a, #0x60
      008918 27 15            [ 1]  460 	jreq	00104$
      00891A 7B 06            [ 1]  461 	ld	a, (0x06, sp)
      00891C A1 70            [ 1]  462 	cp	a, #0x70
      00891E 27 0F            [ 1]  463 	jreq	00104$
      008920 4B E3            [ 1]  464 	push	#0xe3
      008922 5F               [ 1]  465 	clrw	x
      008923 89               [ 2]  466 	pushw	x
      008924 4B 00            [ 1]  467 	push	#0x00
      008926 4B 66            [ 1]  468 	push	#<(___str_0+0)
      008928 4B 81            [ 1]  469 	push	#((___str_0+0) >> 8)
      00892A CD 85 5C         [ 4]  470 	call	_assert_failed
      00892D 5B 06            [ 2]  471 	addw	sp, #6
      00892F                        472 00104$:
                                    473 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 228: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
      00892F 0D 07            [ 1]  474 	tnz	(0x07, sp)
      008931 27 15            [ 1]  475 	jreq	00121$
      008933 7B 07            [ 1]  476 	ld	a, (0x07, sp)
      008935 A1 11            [ 1]  477 	cp	a, #0x11
      008937 27 0F            [ 1]  478 	jreq	00121$
      008939 4B E4            [ 1]  479 	push	#0xe4
      00893B 5F               [ 1]  480 	clrw	x
      00893C 89               [ 2]  481 	pushw	x
      00893D 4B 00            [ 1]  482 	push	#0x00
      00893F 4B 66            [ 1]  483 	push	#<(___str_0+0)
      008941 4B 81            [ 1]  484 	push	#((___str_0+0) >> 8)
      008943 CD 85 5C         [ 4]  485 	call	_assert_failed
      008946 5B 06            [ 2]  486 	addw	sp, #6
      008948                        487 00121$:
                                    488 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 229: assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
      008948 0D 08            [ 1]  489 	tnz	(0x08, sp)
      00894A 27 15            [ 1]  490 	jreq	00126$
      00894C 7B 08            [ 1]  491 	ld	a, (0x08, sp)
      00894E A1 44            [ 1]  492 	cp	a, #0x44
      008950 27 0F            [ 1]  493 	jreq	00126$
      008952 4B E5            [ 1]  494 	push	#0xe5
      008954 5F               [ 1]  495 	clrw	x
      008955 89               [ 2]  496 	pushw	x
      008956 4B 00            [ 1]  497 	push	#0x00
      008958 4B 66            [ 1]  498 	push	#<(___str_0+0)
      00895A 4B 81            [ 1]  499 	push	#((___str_0+0) >> 8)
      00895C CD 85 5C         [ 4]  500 	call	_assert_failed
      00895F 5B 06            [ 2]  501 	addw	sp, #6
      008961                        502 00126$:
                                    503 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 230: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      008961 0D 0B            [ 1]  504 	tnz	(0x0b, sp)
      008963 27 15            [ 1]  505 	jreq	00131$
      008965 7B 0B            [ 1]  506 	ld	a, (0x0b, sp)
      008967 A1 22            [ 1]  507 	cp	a, #0x22
      008969 27 0F            [ 1]  508 	jreq	00131$
      00896B 4B E6            [ 1]  509 	push	#0xe6
      00896D 5F               [ 1]  510 	clrw	x
      00896E 89               [ 2]  511 	pushw	x
      00896F 4B 00            [ 1]  512 	push	#0x00
      008971 4B 66            [ 1]  513 	push	#<(___str_0+0)
      008973 4B 81            [ 1]  514 	push	#((___str_0+0) >> 8)
      008975 CD 85 5C         [ 4]  515 	call	_assert_failed
      008978 5B 06            [ 2]  516 	addw	sp, #6
      00897A                        517 00131$:
                                    518 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 231: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      00897A 0D 0C            [ 1]  519 	tnz	(0x0c, sp)
      00897C 27 15            [ 1]  520 	jreq	00136$
      00897E 7B 0C            [ 1]  521 	ld	a, (0x0c, sp)
      008980 A1 88            [ 1]  522 	cp	a, #0x88
      008982 27 0F            [ 1]  523 	jreq	00136$
      008984 4B E7            [ 1]  524 	push	#0xe7
      008986 5F               [ 1]  525 	clrw	x
      008987 89               [ 2]  526 	pushw	x
      008988 4B 00            [ 1]  527 	push	#0x00
      00898A 4B 66            [ 1]  528 	push	#<(___str_0+0)
      00898C 4B 81            [ 1]  529 	push	#((___str_0+0) >> 8)
      00898E CD 85 5C         [ 4]  530 	call	_assert_failed
      008991 5B 06            [ 2]  531 	addw	sp, #6
      008993                        532 00136$:
                                    533 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 232: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
      008993 7B 0D            [ 1]  534 	ld	a, (0x0d, sp)
      008995 A1 55            [ 1]  535 	cp	a, #0x55
      008997 27 13            [ 1]  536 	jreq	00141$
      008999 0D 0D            [ 1]  537 	tnz	(0x0d, sp)
      00899B 27 0F            [ 1]  538 	jreq	00141$
      00899D 4B E8            [ 1]  539 	push	#0xe8
      00899F 5F               [ 1]  540 	clrw	x
      0089A0 89               [ 2]  541 	pushw	x
      0089A1 4B 00            [ 1]  542 	push	#0x00
      0089A3 4B 66            [ 1]  543 	push	#<(___str_0+0)
      0089A5 4B 81            [ 1]  544 	push	#((___str_0+0) >> 8)
      0089A7 CD 85 5C         [ 4]  545 	call	_assert_failed
      0089AA 5B 06            [ 2]  546 	addw	sp, #6
      0089AC                        547 00141$:
                                    548 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 233: assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
      0089AC 7B 0E            [ 1]  549 	ld	a, (0x0e, sp)
      0089AE A1 2A            [ 1]  550 	cp	a, #0x2a
      0089B0 27 13            [ 1]  551 	jreq	00146$
      0089B2 0D 0E            [ 1]  552 	tnz	(0x0e, sp)
      0089B4 27 0F            [ 1]  553 	jreq	00146$
      0089B6 4B E9            [ 1]  554 	push	#0xe9
      0089B8 5F               [ 1]  555 	clrw	x
      0089B9 89               [ 2]  556 	pushw	x
      0089BA 4B 00            [ 1]  557 	push	#0x00
      0089BC 4B 66            [ 1]  558 	push	#<(___str_0+0)
      0089BE 4B 81            [ 1]  559 	push	#((___str_0+0) >> 8)
      0089C0 CD 85 5C         [ 4]  560 	call	_assert_failed
      0089C3 5B 06            [ 2]  561 	addw	sp, #6
      0089C5                        562 00146$:
                                    563 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 237: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
      0089C5 C6 52 5C         [ 1]  564 	ld	a, 0x525c
      0089C8 A4 0F            [ 1]  565 	and	a, #0x0f
      0089CA C7 52 5C         [ 1]  566 	ld	0x525c, a
                                    567 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 242: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
      0089CD C6 52 5C         [ 1]  568 	ld	a, 0x525c
      0089D0 6B 01            [ 1]  569 	ld	(0x01, sp), a
      0089D2 7B 07            [ 1]  570 	ld	a, (0x07, sp)
      0089D4 A4 10            [ 1]  571 	and	a, #0x10
      0089D6 6B 03            [ 1]  572 	ld	(0x03, sp), a
                                    573 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 243: (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
      0089D8 7B 08            [ 1]  574 	ld	a, (0x08, sp)
      0089DA A4 40            [ 1]  575 	and	a, #0x40
      0089DC 1A 03            [ 1]  576 	or	a, (0x03, sp)
      0089DE 6B 02            [ 1]  577 	ld	(0x02, sp), a
                                    578 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 244: (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
      0089E0 7B 0B            [ 1]  579 	ld	a, (0x0b, sp)
      0089E2 A4 20            [ 1]  580 	and	a, #0x20
      0089E4 6B 03            [ 1]  581 	ld	(0x03, sp), a
                                    582 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 245: (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
      0089E6 7B 0C            [ 1]  583 	ld	a, (0x0c, sp)
      0089E8 A4 80            [ 1]  584 	and	a, #0x80
      0089EA 1A 03            [ 1]  585 	or	a, (0x03, sp)
      0089EC 1A 02            [ 1]  586 	or	a, (0x02, sp)
      0089EE 1A 01            [ 1]  587 	or	a, (0x01, sp)
      0089F0 C7 52 5C         [ 1]  588 	ld	0x525c, a
                                    589 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 248: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      0089F3 C6 52 59         [ 1]  590 	ld	a, 0x5259
      0089F6 A4 8F            [ 1]  591 	and	a, #0x8f
                                    592 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 249: (uint8_t)TIM1_OCMode);
      0089F8 1A 06            [ 1]  593 	or	a, (0x06, sp)
      0089FA C7 52 59         [ 1]  594 	ld	0x5259, a
                                    595 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 252: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
      0089FD C6 52 6F         [ 1]  596 	ld	a, 0x526f
      008A00 A4 F3            [ 1]  597 	and	a, #0xf3
      008A02 C7 52 6F         [ 1]  598 	ld	0x526f, a
                                    599 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 254: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
      008A05 C6 52 6F         [ 1]  600 	ld	a, 0x526f
      008A08 6B 02            [ 1]  601 	ld	(0x02, sp), a
      008A0A 7B 0D            [ 1]  602 	ld	a, (0x0d, sp)
      008A0C A4 04            [ 1]  603 	and	a, #0x04
      008A0E 6B 03            [ 1]  604 	ld	(0x03, sp), a
                                    605 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 255: (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
      008A10 7B 0E            [ 1]  606 	ld	a, (0x0e, sp)
      008A12 A4 08            [ 1]  607 	and	a, #0x08
      008A14 1A 03            [ 1]  608 	or	a, (0x03, sp)
      008A16 1A 02            [ 1]  609 	or	a, (0x02, sp)
      008A18 C7 52 6F         [ 1]  610 	ld	0x526f, a
                                    611 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 258: TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
      008A1B 7B 09            [ 1]  612 	ld	a, (0x09, sp)
      008A1D C7 52 67         [ 1]  613 	ld	0x5267, a
                                    614 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 259: TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
      008A20 7B 0A            [ 1]  615 	ld	a, (0x0a, sp)
      008A22 C7 52 68         [ 1]  616 	ld	0x5268, a
                                    617 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 260: }
      008A25 5B 03            [ 2]  618 	addw	sp, #3
      008A27 81               [ 4]  619 	ret
                                    620 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 281: void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    621 ;	-----------------------------------------
                                    622 ;	 function TIM1_OC3Init
                                    623 ;	-----------------------------------------
      008A28                        624 _TIM1_OC3Init:
      008A28 52 03            [ 2]  625 	sub	sp, #3
                                    626 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 291: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
      008A2A 0D 06            [ 1]  627 	tnz	(0x06, sp)
      008A2C 27 2D            [ 1]  628 	jreq	00104$
      008A2E 7B 06            [ 1]  629 	ld	a, (0x06, sp)
      008A30 A1 10            [ 1]  630 	cp	a, #0x10
      008A32 27 27            [ 1]  631 	jreq	00104$
      008A34 7B 06            [ 1]  632 	ld	a, (0x06, sp)
      008A36 A1 20            [ 1]  633 	cp	a, #0x20
      008A38 27 21            [ 1]  634 	jreq	00104$
      008A3A 7B 06            [ 1]  635 	ld	a, (0x06, sp)
      008A3C A1 30            [ 1]  636 	cp	a, #0x30
      008A3E 27 1B            [ 1]  637 	jreq	00104$
      008A40 7B 06            [ 1]  638 	ld	a, (0x06, sp)
      008A42 A1 60            [ 1]  639 	cp	a, #0x60
      008A44 27 15            [ 1]  640 	jreq	00104$
      008A46 7B 06            [ 1]  641 	ld	a, (0x06, sp)
      008A48 A1 70            [ 1]  642 	cp	a, #0x70
      008A4A 27 0F            [ 1]  643 	jreq	00104$
      008A4C 4B 23            [ 1]  644 	push	#0x23
      008A4E 4B 01            [ 1]  645 	push	#0x01
      008A50 5F               [ 1]  646 	clrw	x
      008A51 89               [ 2]  647 	pushw	x
      008A52 4B 66            [ 1]  648 	push	#<(___str_0+0)
      008A54 4B 81            [ 1]  649 	push	#((___str_0+0) >> 8)
      008A56 CD 85 5C         [ 4]  650 	call	_assert_failed
      008A59 5B 06            [ 2]  651 	addw	sp, #6
      008A5B                        652 00104$:
                                    653 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 292: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
      008A5B 0D 07            [ 1]  654 	tnz	(0x07, sp)
      008A5D 27 15            [ 1]  655 	jreq	00121$
      008A5F 7B 07            [ 1]  656 	ld	a, (0x07, sp)
      008A61 A1 11            [ 1]  657 	cp	a, #0x11
      008A63 27 0F            [ 1]  658 	jreq	00121$
      008A65 4B 24            [ 1]  659 	push	#0x24
      008A67 4B 01            [ 1]  660 	push	#0x01
      008A69 5F               [ 1]  661 	clrw	x
      008A6A 89               [ 2]  662 	pushw	x
      008A6B 4B 66            [ 1]  663 	push	#<(___str_0+0)
      008A6D 4B 81            [ 1]  664 	push	#((___str_0+0) >> 8)
      008A6F CD 85 5C         [ 4]  665 	call	_assert_failed
      008A72 5B 06            [ 2]  666 	addw	sp, #6
      008A74                        667 00121$:
                                    668 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 293: assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
      008A74 0D 08            [ 1]  669 	tnz	(0x08, sp)
      008A76 27 15            [ 1]  670 	jreq	00126$
      008A78 7B 08            [ 1]  671 	ld	a, (0x08, sp)
      008A7A A1 44            [ 1]  672 	cp	a, #0x44
      008A7C 27 0F            [ 1]  673 	jreq	00126$
      008A7E 4B 25            [ 1]  674 	push	#0x25
      008A80 4B 01            [ 1]  675 	push	#0x01
      008A82 5F               [ 1]  676 	clrw	x
      008A83 89               [ 2]  677 	pushw	x
      008A84 4B 66            [ 1]  678 	push	#<(___str_0+0)
      008A86 4B 81            [ 1]  679 	push	#((___str_0+0) >> 8)
      008A88 CD 85 5C         [ 4]  680 	call	_assert_failed
      008A8B 5B 06            [ 2]  681 	addw	sp, #6
      008A8D                        682 00126$:
                                    683 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 294: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      008A8D 0D 0B            [ 1]  684 	tnz	(0x0b, sp)
      008A8F 27 15            [ 1]  685 	jreq	00131$
      008A91 7B 0B            [ 1]  686 	ld	a, (0x0b, sp)
      008A93 A1 22            [ 1]  687 	cp	a, #0x22
      008A95 27 0F            [ 1]  688 	jreq	00131$
      008A97 4B 26            [ 1]  689 	push	#0x26
      008A99 4B 01            [ 1]  690 	push	#0x01
      008A9B 5F               [ 1]  691 	clrw	x
      008A9C 89               [ 2]  692 	pushw	x
      008A9D 4B 66            [ 1]  693 	push	#<(___str_0+0)
      008A9F 4B 81            [ 1]  694 	push	#((___str_0+0) >> 8)
      008AA1 CD 85 5C         [ 4]  695 	call	_assert_failed
      008AA4 5B 06            [ 2]  696 	addw	sp, #6
      008AA6                        697 00131$:
                                    698 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 295: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      008AA6 0D 0C            [ 1]  699 	tnz	(0x0c, sp)
      008AA8 27 15            [ 1]  700 	jreq	00136$
      008AAA 7B 0C            [ 1]  701 	ld	a, (0x0c, sp)
      008AAC A1 88            [ 1]  702 	cp	a, #0x88
      008AAE 27 0F            [ 1]  703 	jreq	00136$
      008AB0 4B 27            [ 1]  704 	push	#0x27
      008AB2 4B 01            [ 1]  705 	push	#0x01
      008AB4 5F               [ 1]  706 	clrw	x
      008AB5 89               [ 2]  707 	pushw	x
      008AB6 4B 66            [ 1]  708 	push	#<(___str_0+0)
      008AB8 4B 81            [ 1]  709 	push	#((___str_0+0) >> 8)
      008ABA CD 85 5C         [ 4]  710 	call	_assert_failed
      008ABD 5B 06            [ 2]  711 	addw	sp, #6
      008ABF                        712 00136$:
                                    713 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 296: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
      008ABF 7B 0D            [ 1]  714 	ld	a, (0x0d, sp)
      008AC1 A1 55            [ 1]  715 	cp	a, #0x55
      008AC3 27 13            [ 1]  716 	jreq	00141$
      008AC5 0D 0D            [ 1]  717 	tnz	(0x0d, sp)
      008AC7 27 0F            [ 1]  718 	jreq	00141$
      008AC9 4B 28            [ 1]  719 	push	#0x28
      008ACB 4B 01            [ 1]  720 	push	#0x01
      008ACD 5F               [ 1]  721 	clrw	x
      008ACE 89               [ 2]  722 	pushw	x
      008ACF 4B 66            [ 1]  723 	push	#<(___str_0+0)
      008AD1 4B 81            [ 1]  724 	push	#((___str_0+0) >> 8)
      008AD3 CD 85 5C         [ 4]  725 	call	_assert_failed
      008AD6 5B 06            [ 2]  726 	addw	sp, #6
      008AD8                        727 00141$:
                                    728 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 297: assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
      008AD8 7B 0E            [ 1]  729 	ld	a, (0x0e, sp)
      008ADA A1 2A            [ 1]  730 	cp	a, #0x2a
      008ADC 27 13            [ 1]  731 	jreq	00146$
      008ADE 0D 0E            [ 1]  732 	tnz	(0x0e, sp)
      008AE0 27 0F            [ 1]  733 	jreq	00146$
      008AE2 4B 29            [ 1]  734 	push	#0x29
      008AE4 4B 01            [ 1]  735 	push	#0x01
      008AE6 5F               [ 1]  736 	clrw	x
      008AE7 89               [ 2]  737 	pushw	x
      008AE8 4B 66            [ 1]  738 	push	#<(___str_0+0)
      008AEA 4B 81            [ 1]  739 	push	#((___str_0+0) >> 8)
      008AEC CD 85 5C         [ 4]  740 	call	_assert_failed
      008AEF 5B 06            [ 2]  741 	addw	sp, #6
      008AF1                        742 00146$:
                                    743 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 301: TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
      008AF1 C6 52 5D         [ 1]  744 	ld	a, 0x525d
      008AF4 A4 F0            [ 1]  745 	and	a, #0xf0
      008AF6 C7 52 5D         [ 1]  746 	ld	0x525d, a
                                    747 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 305: TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
      008AF9 C6 52 5D         [ 1]  748 	ld	a, 0x525d
      008AFC 6B 01            [ 1]  749 	ld	(0x01, sp), a
      008AFE 7B 07            [ 1]  750 	ld	a, (0x07, sp)
      008B00 A4 01            [ 1]  751 	and	a, #0x01
      008B02 6B 03            [ 1]  752 	ld	(0x03, sp), a
                                    753 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 306: (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
      008B04 7B 08            [ 1]  754 	ld	a, (0x08, sp)
      008B06 A4 04            [ 1]  755 	and	a, #0x04
      008B08 1A 03            [ 1]  756 	or	a, (0x03, sp)
      008B0A 6B 02            [ 1]  757 	ld	(0x02, sp), a
                                    758 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 307: (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
      008B0C 7B 0B            [ 1]  759 	ld	a, (0x0b, sp)
      008B0E A4 02            [ 1]  760 	and	a, #0x02
      008B10 6B 03            [ 1]  761 	ld	(0x03, sp), a
                                    762 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 308: (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
      008B12 7B 0C            [ 1]  763 	ld	a, (0x0c, sp)
      008B14 A4 08            [ 1]  764 	and	a, #0x08
      008B16 1A 03            [ 1]  765 	or	a, (0x03, sp)
      008B18 1A 02            [ 1]  766 	or	a, (0x02, sp)
      008B1A 1A 01            [ 1]  767 	or	a, (0x01, sp)
      008B1C C7 52 5D         [ 1]  768 	ld	0x525d, a
                                    769 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 311: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      008B1F C6 52 5A         [ 1]  770 	ld	a, 0x525a
      008B22 A4 8F            [ 1]  771 	and	a, #0x8f
                                    772 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 312: (uint8_t)TIM1_OCMode);
      008B24 1A 06            [ 1]  773 	or	a, (0x06, sp)
      008B26 C7 52 5A         [ 1]  774 	ld	0x525a, a
                                    775 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 315: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
      008B29 C6 52 6F         [ 1]  776 	ld	a, 0x526f
      008B2C A4 CF            [ 1]  777 	and	a, #0xcf
      008B2E C7 52 6F         [ 1]  778 	ld	0x526f, a
                                    779 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 317: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
      008B31 C6 52 6F         [ 1]  780 	ld	a, 0x526f
      008B34 6B 02            [ 1]  781 	ld	(0x02, sp), a
      008B36 7B 0D            [ 1]  782 	ld	a, (0x0d, sp)
      008B38 A4 10            [ 1]  783 	and	a, #0x10
      008B3A 6B 03            [ 1]  784 	ld	(0x03, sp), a
                                    785 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 318: (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
      008B3C 7B 0E            [ 1]  786 	ld	a, (0x0e, sp)
      008B3E A4 20            [ 1]  787 	and	a, #0x20
      008B40 1A 03            [ 1]  788 	or	a, (0x03, sp)
      008B42 1A 02            [ 1]  789 	or	a, (0x02, sp)
      008B44 C7 52 6F         [ 1]  790 	ld	0x526f, a
                                    791 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 321: TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
      008B47 7B 09            [ 1]  792 	ld	a, (0x09, sp)
      008B49 C7 52 69         [ 1]  793 	ld	0x5269, a
                                    794 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 322: TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
      008B4C 7B 0A            [ 1]  795 	ld	a, (0x0a, sp)
      008B4E C7 52 6A         [ 1]  796 	ld	0x526a, a
                                    797 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 323: }
      008B51 5B 03            [ 2]  798 	addw	sp, #3
      008B53 81               [ 4]  799 	ret
                                    800 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 338: void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    801 ;	-----------------------------------------
                                    802 ;	 function TIM1_OC4Init
                                    803 ;	-----------------------------------------
      008B54                        804 _TIM1_OC4Init:
      008B54 89               [ 2]  805 	pushw	x
                                    806 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 345: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
      008B55 0D 05            [ 1]  807 	tnz	(0x05, sp)
      008B57 27 2D            [ 1]  808 	jreq	00107$
      008B59 7B 05            [ 1]  809 	ld	a, (0x05, sp)
      008B5B A1 10            [ 1]  810 	cp	a, #0x10
      008B5D 27 27            [ 1]  811 	jreq	00107$
      008B5F 7B 05            [ 1]  812 	ld	a, (0x05, sp)
      008B61 A1 20            [ 1]  813 	cp	a, #0x20
      008B63 27 21            [ 1]  814 	jreq	00107$
      008B65 7B 05            [ 1]  815 	ld	a, (0x05, sp)
      008B67 A1 30            [ 1]  816 	cp	a, #0x30
      008B69 27 1B            [ 1]  817 	jreq	00107$
      008B6B 7B 05            [ 1]  818 	ld	a, (0x05, sp)
      008B6D A1 60            [ 1]  819 	cp	a, #0x60
      008B6F 27 15            [ 1]  820 	jreq	00107$
      008B71 7B 05            [ 1]  821 	ld	a, (0x05, sp)
      008B73 A1 70            [ 1]  822 	cp	a, #0x70
      008B75 27 0F            [ 1]  823 	jreq	00107$
      008B77 4B 59            [ 1]  824 	push	#0x59
      008B79 4B 01            [ 1]  825 	push	#0x01
      008B7B 5F               [ 1]  826 	clrw	x
      008B7C 89               [ 2]  827 	pushw	x
      008B7D 4B 66            [ 1]  828 	push	#<(___str_0+0)
      008B7F 4B 81            [ 1]  829 	push	#((___str_0+0) >> 8)
      008B81 CD 85 5C         [ 4]  830 	call	_assert_failed
      008B84 5B 06            [ 2]  831 	addw	sp, #6
      008B86                        832 00107$:
                                    833 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 346: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
      008B86 0D 06            [ 1]  834 	tnz	(0x06, sp)
      008B88 27 15            [ 1]  835 	jreq	00124$
      008B8A 7B 06            [ 1]  836 	ld	a, (0x06, sp)
      008B8C A1 11            [ 1]  837 	cp	a, #0x11
      008B8E 27 0F            [ 1]  838 	jreq	00124$
      008B90 4B 5A            [ 1]  839 	push	#0x5a
      008B92 4B 01            [ 1]  840 	push	#0x01
      008B94 5F               [ 1]  841 	clrw	x
      008B95 89               [ 2]  842 	pushw	x
      008B96 4B 66            [ 1]  843 	push	#<(___str_0+0)
      008B98 4B 81            [ 1]  844 	push	#((___str_0+0) >> 8)
      008B9A CD 85 5C         [ 4]  845 	call	_assert_failed
      008B9D 5B 06            [ 2]  846 	addw	sp, #6
      008B9F                        847 00124$:
                                    848 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 347: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      008B9F 0D 09            [ 1]  849 	tnz	(0x09, sp)
      008BA1 27 15            [ 1]  850 	jreq	00129$
      008BA3 7B 09            [ 1]  851 	ld	a, (0x09, sp)
      008BA5 A1 22            [ 1]  852 	cp	a, #0x22
      008BA7 27 0F            [ 1]  853 	jreq	00129$
      008BA9 4B 5B            [ 1]  854 	push	#0x5b
      008BAB 4B 01            [ 1]  855 	push	#0x01
      008BAD 5F               [ 1]  856 	clrw	x
      008BAE 89               [ 2]  857 	pushw	x
      008BAF 4B 66            [ 1]  858 	push	#<(___str_0+0)
      008BB1 4B 81            [ 1]  859 	push	#((___str_0+0) >> 8)
      008BB3 CD 85 5C         [ 4]  860 	call	_assert_failed
      008BB6 5B 06            [ 2]  861 	addw	sp, #6
      008BB8                        862 00129$:
                                    863 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 348: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
      008BB8 7B 0A            [ 1]  864 	ld	a, (0x0a, sp)
      008BBA A1 55            [ 1]  865 	cp	a, #0x55
      008BBC 27 13            [ 1]  866 	jreq	00134$
      008BBE 0D 0A            [ 1]  867 	tnz	(0x0a, sp)
      008BC0 27 0F            [ 1]  868 	jreq	00134$
      008BC2 4B 5C            [ 1]  869 	push	#0x5c
      008BC4 4B 01            [ 1]  870 	push	#0x01
      008BC6 5F               [ 1]  871 	clrw	x
      008BC7 89               [ 2]  872 	pushw	x
      008BC8 4B 66            [ 1]  873 	push	#<(___str_0+0)
      008BCA 4B 81            [ 1]  874 	push	#((___str_0+0) >> 8)
      008BCC CD 85 5C         [ 4]  875 	call	_assert_failed
      008BCF 5B 06            [ 2]  876 	addw	sp, #6
      008BD1                        877 00134$:
                                    878 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 351: TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
      008BD1 C6 52 5D         [ 1]  879 	ld	a, 0x525d
      008BD4 A4 CF            [ 1]  880 	and	a, #0xcf
      008BD6 C7 52 5D         [ 1]  881 	ld	0x525d, a
                                    882 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 353: TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
      008BD9 C6 52 5D         [ 1]  883 	ld	a, 0x525d
      008BDC 6B 01            [ 1]  884 	ld	(0x01, sp), a
      008BDE 7B 06            [ 1]  885 	ld	a, (0x06, sp)
      008BE0 A4 10            [ 1]  886 	and	a, #0x10
      008BE2 6B 02            [ 1]  887 	ld	(0x02, sp), a
                                    888 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 354: (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
      008BE4 7B 09            [ 1]  889 	ld	a, (0x09, sp)
      008BE6 A4 20            [ 1]  890 	and	a, #0x20
      008BE8 1A 02            [ 1]  891 	or	a, (0x02, sp)
      008BEA 1A 01            [ 1]  892 	or	a, (0x01, sp)
      008BEC C7 52 5D         [ 1]  893 	ld	0x525d, a
                                    894 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 357: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      008BEF C6 52 5B         [ 1]  895 	ld	a, 0x525b
      008BF2 A4 8F            [ 1]  896 	and	a, #0x8f
      008BF4 1A 05            [ 1]  897 	or	a, (0x05, sp)
      008BF6 C7 52 5B         [ 1]  898 	ld	0x525b, a
                                    899 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 363: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
      008BF9 C6 52 6F         [ 1]  900 	ld	a, 0x526f
                                    901 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 361: if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
      008BFC 0D 0A            [ 1]  902 	tnz	(0x0a, sp)
      008BFE 27 07            [ 1]  903 	jreq	00102$
                                    904 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 363: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
      008C00 AA DF            [ 1]  905 	or	a, #0xdf
      008C02 C7 52 6F         [ 1]  906 	ld	0x526f, a
      008C05 20 05            [ 2]  907 	jra	00103$
      008C07                        908 00102$:
                                    909 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 367: TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
      008C07 A4 BF            [ 1]  910 	and	a, #0xbf
      008C09 C7 52 6F         [ 1]  911 	ld	0x526f, a
      008C0C                        912 00103$:
                                    913 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 371: TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
      008C0C 7B 07            [ 1]  914 	ld	a, (0x07, sp)
      008C0E C7 52 6B         [ 1]  915 	ld	0x526b, a
                                    916 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 372: TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
      008C11 7B 08            [ 1]  917 	ld	a, (0x08, sp)
      008C13 C7 52 6C         [ 1]  918 	ld	0x526c, a
                                    919 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 373: }
      008C16 85               [ 2]  920 	popw	x
      008C17 81               [ 4]  921 	ret
                                    922 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 388: void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
                                    923 ;	-----------------------------------------
                                    924 ;	 function TIM1_BDTRConfig
                                    925 ;	-----------------------------------------
      008C18                        926 _TIM1_BDTRConfig:
      008C18 88               [ 1]  927 	push	a
                                    928 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 396: assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
      008C19 7B 04            [ 1]  929 	ld	a, (0x04, sp)
      008C1B A1 04            [ 1]  930 	cp	a, #0x04
      008C1D 27 13            [ 1]  931 	jreq	00104$
      008C1F 0D 04            [ 1]  932 	tnz	(0x04, sp)
      008C21 27 0F            [ 1]  933 	jreq	00104$
      008C23 4B 8C            [ 1]  934 	push	#0x8c
      008C25 4B 01            [ 1]  935 	push	#0x01
      008C27 5F               [ 1]  936 	clrw	x
      008C28 89               [ 2]  937 	pushw	x
      008C29 4B 66            [ 1]  938 	push	#<(___str_0+0)
      008C2B 4B 81            [ 1]  939 	push	#((___str_0+0) >> 8)
      008C2D CD 85 5C         [ 4]  940 	call	_assert_failed
      008C30 5B 06            [ 2]  941 	addw	sp, #6
      008C32                        942 00104$:
                                    943 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 397: assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
      008C32 0D 05            [ 1]  944 	tnz	(0x05, sp)
      008C34 27 20            [ 1]  945 	jreq	00109$
      008C36 7B 05            [ 1]  946 	ld	a, (0x05, sp)
      008C38 4A               [ 1]  947 	dec	a
      008C39 27 1B            [ 1]  948 	jreq	00109$
      008C3B 7B 05            [ 1]  949 	ld	a, (0x05, sp)
      008C3D A1 02            [ 1]  950 	cp	a, #0x02
      008C3F 27 15            [ 1]  951 	jreq	00109$
      008C41 7B 05            [ 1]  952 	ld	a, (0x05, sp)
      008C43 A1 03            [ 1]  953 	cp	a, #0x03
      008C45 27 0F            [ 1]  954 	jreq	00109$
      008C47 4B 8D            [ 1]  955 	push	#0x8d
      008C49 4B 01            [ 1]  956 	push	#0x01
      008C4B 5F               [ 1]  957 	clrw	x
      008C4C 89               [ 2]  958 	pushw	x
      008C4D 4B 66            [ 1]  959 	push	#<(___str_0+0)
      008C4F 4B 81            [ 1]  960 	push	#((___str_0+0) >> 8)
      008C51 CD 85 5C         [ 4]  961 	call	_assert_failed
      008C54 5B 06            [ 2]  962 	addw	sp, #6
      008C56                        963 00109$:
                                    964 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 398: assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
      008C56 7B 07            [ 1]  965 	ld	a, (0x07, sp)
      008C58 A1 10            [ 1]  966 	cp	a, #0x10
      008C5A 27 13            [ 1]  967 	jreq	00120$
      008C5C 0D 07            [ 1]  968 	tnz	(0x07, sp)
      008C5E 27 0F            [ 1]  969 	jreq	00120$
      008C60 4B 8E            [ 1]  970 	push	#0x8e
      008C62 4B 01            [ 1]  971 	push	#0x01
      008C64 5F               [ 1]  972 	clrw	x
      008C65 89               [ 2]  973 	pushw	x
      008C66 4B 66            [ 1]  974 	push	#<(___str_0+0)
      008C68 4B 81            [ 1]  975 	push	#((___str_0+0) >> 8)
      008C6A CD 85 5C         [ 4]  976 	call	_assert_failed
      008C6D 5B 06            [ 2]  977 	addw	sp, #6
      008C6F                        978 00120$:
                                    979 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 399: assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
      008C6F 0D 08            [ 1]  980 	tnz	(0x08, sp)
      008C71 27 15            [ 1]  981 	jreq	00125$
      008C73 7B 08            [ 1]  982 	ld	a, (0x08, sp)
      008C75 A1 20            [ 1]  983 	cp	a, #0x20
      008C77 27 0F            [ 1]  984 	jreq	00125$
      008C79 4B 8F            [ 1]  985 	push	#0x8f
      008C7B 4B 01            [ 1]  986 	push	#0x01
      008C7D 5F               [ 1]  987 	clrw	x
      008C7E 89               [ 2]  988 	pushw	x
      008C7F 4B 66            [ 1]  989 	push	#<(___str_0+0)
      008C81 4B 81            [ 1]  990 	push	#((___str_0+0) >> 8)
      008C83 CD 85 5C         [ 4]  991 	call	_assert_failed
      008C86 5B 06            [ 2]  992 	addw	sp, #6
      008C88                        993 00125$:
                                    994 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 400: assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
      008C88 7B 09            [ 1]  995 	ld	a, (0x09, sp)
      008C8A A1 40            [ 1]  996 	cp	a, #0x40
      008C8C 27 13            [ 1]  997 	jreq	00130$
      008C8E 0D 09            [ 1]  998 	tnz	(0x09, sp)
      008C90 27 0F            [ 1]  999 	jreq	00130$
      008C92 4B 90            [ 1] 1000 	push	#0x90
      008C94 4B 01            [ 1] 1001 	push	#0x01
      008C96 5F               [ 1] 1002 	clrw	x
      008C97 89               [ 2] 1003 	pushw	x
      008C98 4B 66            [ 1] 1004 	push	#<(___str_0+0)
      008C9A 4B 81            [ 1] 1005 	push	#((___str_0+0) >> 8)
      008C9C CD 85 5C         [ 4] 1006 	call	_assert_failed
      008C9F 5B 06            [ 2] 1007 	addw	sp, #6
      008CA1                       1008 00130$:
                                   1009 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 402: TIM1->DTR = (uint8_t)(TIM1_DeadTime);
      008CA1 AE 52 6E         [ 2] 1010 	ldw	x, #0x526e
      008CA4 7B 06            [ 1] 1011 	ld	a, (0x06, sp)
      008CA6 F7               [ 1] 1012 	ld	(x), a
                                   1013 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 406: TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
      008CA7 7B 04            [ 1] 1014 	ld	a, (0x04, sp)
      008CA9 1A 05            [ 1] 1015 	or	a, (0x05, sp)
      008CAB 6B 01            [ 1] 1016 	ld	(0x01, sp), a
                                   1017 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 407: (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
      008CAD 7B 07            [ 1] 1018 	ld	a, (0x07, sp)
      008CAF 1A 08            [ 1] 1019 	or	a, (0x08, sp)
                                   1020 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 408: (uint8_t)TIM1_AutomaticOutput));
      008CB1 1A 09            [ 1] 1021 	or	a, (0x09, sp)
      008CB3 1A 01            [ 1] 1022 	or	a, (0x01, sp)
      008CB5 C7 52 6D         [ 1] 1023 	ld	0x526d, a
                                   1024 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 409: }
      008CB8 84               [ 1] 1025 	pop	a
      008CB9 81               [ 4] 1026 	ret
                                   1027 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 423: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
                                   1028 ;	-----------------------------------------
                                   1029 ;	 function TIM1_ICInit
                                   1030 ;	-----------------------------------------
      008CBA                       1031 _TIM1_ICInit:
      008CBA 89               [ 2] 1032 	pushw	x
                                   1033 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 430: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      008CBB 7B 05            [ 1] 1034 	ld	a, (0x05, sp)
      008CBD 4A               [ 1] 1035 	dec	a
      008CBE 26 05            [ 1] 1036 	jrne	00235$
      008CC0 A6 01            [ 1] 1037 	ld	a, #0x01
      008CC2 6B 01            [ 1] 1038 	ld	(0x01, sp), a
      008CC4 C5                    1039 	.byte 0xc5
      008CC5                       1040 00235$:
      008CC5 0F 01            [ 1] 1041 	clr	(0x01, sp)
      008CC7                       1042 00236$:
      008CC7 7B 05            [ 1] 1043 	ld	a, (0x05, sp)
      008CC9 A0 02            [ 1] 1044 	sub	a, #0x02
      008CCB 26 04            [ 1] 1045 	jrne	00238$
      008CCD 4C               [ 1] 1046 	inc	a
      008CCE 6B 02            [ 1] 1047 	ld	(0x02, sp), a
      008CD0 C5                    1048 	.byte 0xc5
      008CD1                       1049 00238$:
      008CD1 0F 02            [ 1] 1050 	clr	(0x02, sp)
      008CD3                       1051 00239$:
      008CD3 0D 05            [ 1] 1052 	tnz	(0x05, sp)
      008CD5 27 1D            [ 1] 1053 	jreq	00113$
      008CD7 0D 01            [ 1] 1054 	tnz	(0x01, sp)
      008CD9 26 19            [ 1] 1055 	jrne	00113$
      008CDB 0D 02            [ 1] 1056 	tnz	(0x02, sp)
      008CDD 26 15            [ 1] 1057 	jrne	00113$
      008CDF 7B 05            [ 1] 1058 	ld	a, (0x05, sp)
      008CE1 A1 03            [ 1] 1059 	cp	a, #0x03
      008CE3 27 0F            [ 1] 1060 	jreq	00113$
      008CE5 4B AE            [ 1] 1061 	push	#0xae
      008CE7 4B 01            [ 1] 1062 	push	#0x01
      008CE9 5F               [ 1] 1063 	clrw	x
      008CEA 89               [ 2] 1064 	pushw	x
      008CEB 4B 66            [ 1] 1065 	push	#<(___str_0+0)
      008CED 4B 81            [ 1] 1066 	push	#((___str_0+0) >> 8)
      008CEF CD 85 5C         [ 4] 1067 	call	_assert_failed
      008CF2 5B 06            [ 2] 1068 	addw	sp, #6
      008CF4                       1069 00113$:
                                   1070 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 431: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      008CF4 0D 06            [ 1] 1071 	tnz	(0x06, sp)
      008CF6 27 14            [ 1] 1072 	jreq	00124$
      008CF8 7B 06            [ 1] 1073 	ld	a, (0x06, sp)
      008CFA 4A               [ 1] 1074 	dec	a
      008CFB 27 0F            [ 1] 1075 	jreq	00124$
      008CFD 4B AF            [ 1] 1076 	push	#0xaf
      008CFF 4B 01            [ 1] 1077 	push	#0x01
      008D01 5F               [ 1] 1078 	clrw	x
      008D02 89               [ 2] 1079 	pushw	x
      008D03 4B 66            [ 1] 1080 	push	#<(___str_0+0)
      008D05 4B 81            [ 1] 1081 	push	#((___str_0+0) >> 8)
      008D07 CD 85 5C         [ 4] 1082 	call	_assert_failed
      008D0A 5B 06            [ 2] 1083 	addw	sp, #6
      008D0C                       1084 00124$:
                                   1085 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 432: assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
      008D0C 7B 07            [ 1] 1086 	ld	a, (0x07, sp)
      008D0E 4A               [ 1] 1087 	dec	a
      008D0F 27 1B            [ 1] 1088 	jreq	00129$
      008D11 7B 07            [ 1] 1089 	ld	a, (0x07, sp)
      008D13 A1 02            [ 1] 1090 	cp	a, #0x02
      008D15 27 15            [ 1] 1091 	jreq	00129$
      008D17 7B 07            [ 1] 1092 	ld	a, (0x07, sp)
      008D19 A1 03            [ 1] 1093 	cp	a, #0x03
      008D1B 27 0F            [ 1] 1094 	jreq	00129$
      008D1D 4B B0            [ 1] 1095 	push	#0xb0
      008D1F 4B 01            [ 1] 1096 	push	#0x01
      008D21 5F               [ 1] 1097 	clrw	x
      008D22 89               [ 2] 1098 	pushw	x
      008D23 4B 66            [ 1] 1099 	push	#<(___str_0+0)
      008D25 4B 81            [ 1] 1100 	push	#((___str_0+0) >> 8)
      008D27 CD 85 5C         [ 4] 1101 	call	_assert_failed
      008D2A 5B 06            [ 2] 1102 	addw	sp, #6
      008D2C                       1103 00129$:
                                   1104 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 433: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
      008D2C 0D 08            [ 1] 1105 	tnz	(0x08, sp)
      008D2E 27 21            [ 1] 1106 	jreq	00137$
      008D30 7B 08            [ 1] 1107 	ld	a, (0x08, sp)
      008D32 A1 04            [ 1] 1108 	cp	a, #0x04
      008D34 27 1B            [ 1] 1109 	jreq	00137$
      008D36 7B 08            [ 1] 1110 	ld	a, (0x08, sp)
      008D38 A1 08            [ 1] 1111 	cp	a, #0x08
      008D3A 27 15            [ 1] 1112 	jreq	00137$
      008D3C 7B 08            [ 1] 1113 	ld	a, (0x08, sp)
      008D3E A1 0C            [ 1] 1114 	cp	a, #0x0c
      008D40 27 0F            [ 1] 1115 	jreq	00137$
      008D42 4B B1            [ 1] 1116 	push	#0xb1
      008D44 4B 01            [ 1] 1117 	push	#0x01
      008D46 5F               [ 1] 1118 	clrw	x
      008D47 89               [ 2] 1119 	pushw	x
      008D48 4B 66            [ 1] 1120 	push	#<(___str_0+0)
      008D4A 4B 81            [ 1] 1121 	push	#((___str_0+0) >> 8)
      008D4C CD 85 5C         [ 4] 1122 	call	_assert_failed
      008D4F 5B 06            [ 2] 1123 	addw	sp, #6
      008D51                       1124 00137$:
                                   1125 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 434: assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
      008D51 7B 09            [ 1] 1126 	ld	a, (0x09, sp)
      008D53 A1 0F            [ 1] 1127 	cp	a, #0x0f
      008D55 23 0F            [ 2] 1128 	jrule	00148$
      008D57 4B B2            [ 1] 1129 	push	#0xb2
      008D59 4B 01            [ 1] 1130 	push	#0x01
      008D5B 5F               [ 1] 1131 	clrw	x
      008D5C 89               [ 2] 1132 	pushw	x
      008D5D 4B 66            [ 1] 1133 	push	#<(___str_0+0)
      008D5F 4B 81            [ 1] 1134 	push	#((___str_0+0) >> 8)
      008D61 CD 85 5C         [ 4] 1135 	call	_assert_failed
      008D64 5B 06            [ 2] 1136 	addw	sp, #6
      008D66                       1137 00148$:
                                   1138 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 436: if (TIM1_Channel == TIM1_CHANNEL_1)
      008D66 0D 05            [ 1] 1139 	tnz	(0x05, sp)
      008D68 26 17            [ 1] 1140 	jrne	00108$
                                   1141 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 439: TI1_Config((uint8_t)TIM1_ICPolarity,
      008D6A 7B 09            [ 1] 1142 	ld	a, (0x09, sp)
      008D6C 88               [ 1] 1143 	push	a
      008D6D 7B 08            [ 1] 1144 	ld	a, (0x08, sp)
      008D6F 88               [ 1] 1145 	push	a
      008D70 7B 08            [ 1] 1146 	ld	a, (0x08, sp)
      008D72 88               [ 1] 1147 	push	a
      008D73 CD 9B B0         [ 4] 1148 	call	_TI1_Config
      008D76 5B 03            [ 2] 1149 	addw	sp, #3
                                   1150 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 443: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      008D78 7B 08            [ 1] 1151 	ld	a, (0x08, sp)
      008D7A 88               [ 1] 1152 	push	a
      008D7B CD 99 54         [ 4] 1153 	call	_TIM1_SetIC1Prescaler
      008D7E 84               [ 1] 1154 	pop	a
      008D7F 20 4B            [ 2] 1155 	jra	00110$
      008D81                       1156 00108$:
                                   1157 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 445: else if (TIM1_Channel == TIM1_CHANNEL_2)
      008D81 7B 01            [ 1] 1158 	ld	a, (0x01, sp)
      008D83 27 17            [ 1] 1159 	jreq	00105$
                                   1160 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 448: TI2_Config((uint8_t)TIM1_ICPolarity,
      008D85 7B 09            [ 1] 1161 	ld	a, (0x09, sp)
      008D87 88               [ 1] 1162 	push	a
      008D88 7B 08            [ 1] 1163 	ld	a, (0x08, sp)
      008D8A 88               [ 1] 1164 	push	a
      008D8B 7B 08            [ 1] 1165 	ld	a, (0x08, sp)
      008D8D 88               [ 1] 1166 	push	a
      008D8E CD 9B E1         [ 4] 1167 	call	_TI2_Config
      008D91 5B 03            [ 2] 1168 	addw	sp, #3
                                   1169 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 452: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      008D93 7B 08            [ 1] 1170 	ld	a, (0x08, sp)
      008D95 88               [ 1] 1171 	push	a
      008D96 CD 99 84         [ 4] 1172 	call	_TIM1_SetIC2Prescaler
      008D99 84               [ 1] 1173 	pop	a
      008D9A 20 30            [ 2] 1174 	jra	00110$
      008D9C                       1175 00105$:
                                   1176 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 454: else if (TIM1_Channel == TIM1_CHANNEL_3)
      008D9C 7B 02            [ 1] 1177 	ld	a, (0x02, sp)
      008D9E 27 17            [ 1] 1178 	jreq	00102$
                                   1179 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 457: TI3_Config((uint8_t)TIM1_ICPolarity,
      008DA0 7B 09            [ 1] 1180 	ld	a, (0x09, sp)
      008DA2 88               [ 1] 1181 	push	a
      008DA3 7B 08            [ 1] 1182 	ld	a, (0x08, sp)
      008DA5 88               [ 1] 1183 	push	a
      008DA6 7B 08            [ 1] 1184 	ld	a, (0x08, sp)
      008DA8 88               [ 1] 1185 	push	a
      008DA9 CD 9C 12         [ 4] 1186 	call	_TI3_Config
      008DAC 5B 03            [ 2] 1187 	addw	sp, #3
                                   1188 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 461: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
      008DAE 7B 08            [ 1] 1189 	ld	a, (0x08, sp)
      008DB0 88               [ 1] 1190 	push	a
      008DB1 CD 99 B4         [ 4] 1191 	call	_TIM1_SetIC3Prescaler
      008DB4 84               [ 1] 1192 	pop	a
      008DB5 20 15            [ 2] 1193 	jra	00110$
      008DB7                       1194 00102$:
                                   1195 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 466: TI4_Config((uint8_t)TIM1_ICPolarity,
      008DB7 7B 09            [ 1] 1196 	ld	a, (0x09, sp)
      008DB9 88               [ 1] 1197 	push	a
      008DBA 7B 08            [ 1] 1198 	ld	a, (0x08, sp)
      008DBC 88               [ 1] 1199 	push	a
      008DBD 7B 08            [ 1] 1200 	ld	a, (0x08, sp)
      008DBF 88               [ 1] 1201 	push	a
      008DC0 CD 9C 47         [ 4] 1202 	call	_TI4_Config
      008DC3 5B 03            [ 2] 1203 	addw	sp, #3
                                   1204 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 470: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
      008DC5 7B 08            [ 1] 1205 	ld	a, (0x08, sp)
      008DC7 88               [ 1] 1206 	push	a
      008DC8 CD 99 E4         [ 4] 1207 	call	_TIM1_SetIC4Prescaler
      008DCB 84               [ 1] 1208 	pop	a
      008DCC                       1209 00110$:
                                   1210 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 472: }
      008DCC 85               [ 2] 1211 	popw	x
      008DCD 81               [ 4] 1212 	ret
                                   1213 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 488: void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
                                   1214 ;	-----------------------------------------
                                   1215 ;	 function TIM1_PWMIConfig
                                   1216 ;	-----------------------------------------
      008DCE                       1217 _TIM1_PWMIConfig:
      008DCE 89               [ 2] 1218 	pushw	x
                                   1219 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 498: assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
      008DCF 0D 05            [ 1] 1220 	tnz	(0x05, sp)
      008DD1 27 14            [ 1] 1221 	jreq	00113$
      008DD3 7B 05            [ 1] 1222 	ld	a, (0x05, sp)
      008DD5 4A               [ 1] 1223 	dec	a
      008DD6 27 0F            [ 1] 1224 	jreq	00113$
      008DD8 4B F2            [ 1] 1225 	push	#0xf2
      008DDA 4B 01            [ 1] 1226 	push	#0x01
      008DDC 5F               [ 1] 1227 	clrw	x
      008DDD 89               [ 2] 1228 	pushw	x
      008DDE 4B 66            [ 1] 1229 	push	#<(___str_0+0)
      008DE0 4B 81            [ 1] 1230 	push	#((___str_0+0) >> 8)
      008DE2 CD 85 5C         [ 4] 1231 	call	_assert_failed
      008DE5 5B 06            [ 2] 1232 	addw	sp, #6
      008DE7                       1233 00113$:
                                   1234 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 499: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      008DE7 7B 06            [ 1] 1235 	ld	a, (0x06, sp)
      008DE9 4A               [ 1] 1236 	dec	a
      008DEA 26 05            [ 1] 1237 	jrne	00216$
      008DEC A6 01            [ 1] 1238 	ld	a, #0x01
      008DEE 6B 01            [ 1] 1239 	ld	(0x01, sp), a
      008DF0 C5                    1240 	.byte 0xc5
      008DF1                       1241 00216$:
      008DF1 0F 01            [ 1] 1242 	clr	(0x01, sp)
      008DF3                       1243 00217$:
      008DF3 0D 06            [ 1] 1244 	tnz	(0x06, sp)
      008DF5 27 13            [ 1] 1245 	jreq	00118$
      008DF7 0D 01            [ 1] 1246 	tnz	(0x01, sp)
      008DF9 26 0F            [ 1] 1247 	jrne	00118$
      008DFB 4B F3            [ 1] 1248 	push	#0xf3
      008DFD 4B 01            [ 1] 1249 	push	#0x01
      008DFF 5F               [ 1] 1250 	clrw	x
      008E00 89               [ 2] 1251 	pushw	x
      008E01 4B 66            [ 1] 1252 	push	#<(___str_0+0)
      008E03 4B 81            [ 1] 1253 	push	#((___str_0+0) >> 8)
      008E05 CD 85 5C         [ 4] 1254 	call	_assert_failed
      008E08 5B 06            [ 2] 1255 	addw	sp, #6
      008E0A                       1256 00118$:
                                   1257 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 500: assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
      008E0A 7B 07            [ 1] 1258 	ld	a, (0x07, sp)
      008E0C 4A               [ 1] 1259 	dec	a
      008E0D 26 05            [ 1] 1260 	jrne	00221$
      008E0F A6 01            [ 1] 1261 	ld	a, #0x01
      008E11 6B 02            [ 1] 1262 	ld	(0x02, sp), a
      008E13 C5                    1263 	.byte 0xc5
      008E14                       1264 00221$:
      008E14 0F 02            [ 1] 1265 	clr	(0x02, sp)
      008E16                       1266 00222$:
      008E16 0D 02            [ 1] 1267 	tnz	(0x02, sp)
      008E18 26 1B            [ 1] 1268 	jrne	00123$
      008E1A 7B 07            [ 1] 1269 	ld	a, (0x07, sp)
      008E1C A1 02            [ 1] 1270 	cp	a, #0x02
      008E1E 27 15            [ 1] 1271 	jreq	00123$
      008E20 7B 07            [ 1] 1272 	ld	a, (0x07, sp)
      008E22 A1 03            [ 1] 1273 	cp	a, #0x03
      008E24 27 0F            [ 1] 1274 	jreq	00123$
      008E26 4B F4            [ 1] 1275 	push	#0xf4
      008E28 4B 01            [ 1] 1276 	push	#0x01
      008E2A 5F               [ 1] 1277 	clrw	x
      008E2B 89               [ 2] 1278 	pushw	x
      008E2C 4B 66            [ 1] 1279 	push	#<(___str_0+0)
      008E2E 4B 81            [ 1] 1280 	push	#((___str_0+0) >> 8)
      008E30 CD 85 5C         [ 4] 1281 	call	_assert_failed
      008E33 5B 06            [ 2] 1282 	addw	sp, #6
      008E35                       1283 00123$:
                                   1284 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 501: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
      008E35 0D 08            [ 1] 1285 	tnz	(0x08, sp)
      008E37 27 21            [ 1] 1286 	jreq	00131$
      008E39 7B 08            [ 1] 1287 	ld	a, (0x08, sp)
      008E3B A1 04            [ 1] 1288 	cp	a, #0x04
      008E3D 27 1B            [ 1] 1289 	jreq	00131$
      008E3F 7B 08            [ 1] 1290 	ld	a, (0x08, sp)
      008E41 A1 08            [ 1] 1291 	cp	a, #0x08
      008E43 27 15            [ 1] 1292 	jreq	00131$
      008E45 7B 08            [ 1] 1293 	ld	a, (0x08, sp)
      008E47 A1 0C            [ 1] 1294 	cp	a, #0x0c
      008E49 27 0F            [ 1] 1295 	jreq	00131$
      008E4B 4B F5            [ 1] 1296 	push	#0xf5
      008E4D 4B 01            [ 1] 1297 	push	#0x01
      008E4F 5F               [ 1] 1298 	clrw	x
      008E50 89               [ 2] 1299 	pushw	x
      008E51 4B 66            [ 1] 1300 	push	#<(___str_0+0)
      008E53 4B 81            [ 1] 1301 	push	#((___str_0+0) >> 8)
      008E55 CD 85 5C         [ 4] 1302 	call	_assert_failed
      008E58 5B 06            [ 2] 1303 	addw	sp, #6
      008E5A                       1304 00131$:
                                   1305 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 504: if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
      008E5A 0D 01            [ 1] 1306 	tnz	(0x01, sp)
      008E5C 26 05            [ 1] 1307 	jrne	00102$
                                   1308 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 506: icpolarity = TIM1_ICPOLARITY_FALLING;
      008E5E A6 01            [ 1] 1309 	ld	a, #0x01
      008E60 6B 01            [ 1] 1310 	ld	(0x01, sp), a
                                   1311 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 510: icpolarity = TIM1_ICPOLARITY_RISING;
      008E62 C5                    1312 	.byte 0xc5
      008E63                       1313 00102$:
      008E63 0F 01            [ 1] 1314 	clr	(0x01, sp)
      008E65                       1315 00103$:
                                   1316 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 514: if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
      008E65 7B 02            [ 1] 1317 	ld	a, (0x02, sp)
      008E67 27 06            [ 1] 1318 	jreq	00105$
                                   1319 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 516: icselection = TIM1_ICSELECTION_INDIRECTTI;
      008E69 A6 02            [ 1] 1320 	ld	a, #0x02
      008E6B 6B 02            [ 1] 1321 	ld	(0x02, sp), a
      008E6D 20 04            [ 2] 1322 	jra	00106$
      008E6F                       1323 00105$:
                                   1324 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 520: icselection = TIM1_ICSELECTION_DIRECTTI;
      008E6F A6 01            [ 1] 1325 	ld	a, #0x01
      008E71 6B 02            [ 1] 1326 	ld	(0x02, sp), a
      008E73                       1327 00106$:
                                   1328 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 523: if (TIM1_Channel == TIM1_CHANNEL_1)
      008E73 0D 05            [ 1] 1329 	tnz	(0x05, sp)
      008E75 26 2C            [ 1] 1330 	jrne	00108$
                                   1331 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 526: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
      008E77 7B 09            [ 1] 1332 	ld	a, (0x09, sp)
      008E79 88               [ 1] 1333 	push	a
      008E7A 7B 08            [ 1] 1334 	ld	a, (0x08, sp)
      008E7C 88               [ 1] 1335 	push	a
      008E7D 7B 08            [ 1] 1336 	ld	a, (0x08, sp)
      008E7F 88               [ 1] 1337 	push	a
      008E80 CD 9B B0         [ 4] 1338 	call	_TI1_Config
      008E83 5B 03            [ 2] 1339 	addw	sp, #3
                                   1340 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 530: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      008E85 7B 08            [ 1] 1341 	ld	a, (0x08, sp)
      008E87 88               [ 1] 1342 	push	a
      008E88 CD 99 54         [ 4] 1343 	call	_TIM1_SetIC1Prescaler
      008E8B 84               [ 1] 1344 	pop	a
                                   1345 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 533: TI2_Config(icpolarity, icselection, TIM1_ICFilter);
      008E8C 7B 09            [ 1] 1346 	ld	a, (0x09, sp)
      008E8E 88               [ 1] 1347 	push	a
      008E8F 7B 03            [ 1] 1348 	ld	a, (0x03, sp)
      008E91 88               [ 1] 1349 	push	a
      008E92 7B 03            [ 1] 1350 	ld	a, (0x03, sp)
      008E94 88               [ 1] 1351 	push	a
      008E95 CD 9B E1         [ 4] 1352 	call	_TI2_Config
      008E98 5B 03            [ 2] 1353 	addw	sp, #3
                                   1354 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 536: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      008E9A 7B 08            [ 1] 1355 	ld	a, (0x08, sp)
      008E9C 88               [ 1] 1356 	push	a
      008E9D CD 99 84         [ 4] 1357 	call	_TIM1_SetIC2Prescaler
      008EA0 84               [ 1] 1358 	pop	a
      008EA1 20 2A            [ 2] 1359 	jra	00110$
      008EA3                       1360 00108$:
                                   1361 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 541: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
      008EA3 7B 09            [ 1] 1362 	ld	a, (0x09, sp)
      008EA5 88               [ 1] 1363 	push	a
      008EA6 7B 08            [ 1] 1364 	ld	a, (0x08, sp)
      008EA8 88               [ 1] 1365 	push	a
      008EA9 7B 08            [ 1] 1366 	ld	a, (0x08, sp)
      008EAB 88               [ 1] 1367 	push	a
      008EAC CD 9B E1         [ 4] 1368 	call	_TI2_Config
      008EAF 5B 03            [ 2] 1369 	addw	sp, #3
                                   1370 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 545: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      008EB1 7B 08            [ 1] 1371 	ld	a, (0x08, sp)
      008EB3 88               [ 1] 1372 	push	a
      008EB4 CD 99 84         [ 4] 1373 	call	_TIM1_SetIC2Prescaler
      008EB7 84               [ 1] 1374 	pop	a
                                   1375 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 548: TI1_Config(icpolarity, icselection, TIM1_ICFilter);
      008EB8 7B 09            [ 1] 1376 	ld	a, (0x09, sp)
      008EBA 88               [ 1] 1377 	push	a
      008EBB 7B 03            [ 1] 1378 	ld	a, (0x03, sp)
      008EBD 88               [ 1] 1379 	push	a
      008EBE 7B 03            [ 1] 1380 	ld	a, (0x03, sp)
      008EC0 88               [ 1] 1381 	push	a
      008EC1 CD 9B B0         [ 4] 1382 	call	_TI1_Config
      008EC4 5B 03            [ 2] 1383 	addw	sp, #3
                                   1384 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 551: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      008EC6 7B 08            [ 1] 1385 	ld	a, (0x08, sp)
      008EC8 88               [ 1] 1386 	push	a
      008EC9 CD 99 54         [ 4] 1387 	call	_TIM1_SetIC1Prescaler
      008ECC 84               [ 1] 1388 	pop	a
      008ECD                       1389 00110$:
                                   1390 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 553: }
      008ECD 85               [ 2] 1391 	popw	x
      008ECE 81               [ 4] 1392 	ret
                                   1393 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 561: void TIM1_Cmd(FunctionalState NewState)
                                   1394 ;	-----------------------------------------
                                   1395 ;	 function TIM1_Cmd
                                   1396 ;	-----------------------------------------
      008ECF                       1397 _TIM1_Cmd:
                                   1398 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 564: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008ECF 0D 03            [ 1] 1399 	tnz	(0x03, sp)
      008ED1 27 14            [ 1] 1400 	jreq	00107$
      008ED3 7B 03            [ 1] 1401 	ld	a, (0x03, sp)
      008ED5 4A               [ 1] 1402 	dec	a
      008ED6 27 0F            [ 1] 1403 	jreq	00107$
      008ED8 4B 34            [ 1] 1404 	push	#0x34
      008EDA 4B 02            [ 1] 1405 	push	#0x02
      008EDC 5F               [ 1] 1406 	clrw	x
      008EDD 89               [ 2] 1407 	pushw	x
      008EDE 4B 66            [ 1] 1408 	push	#<(___str_0+0)
      008EE0 4B 81            [ 1] 1409 	push	#((___str_0+0) >> 8)
      008EE2 CD 85 5C         [ 4] 1410 	call	_assert_failed
      008EE5 5B 06            [ 2] 1411 	addw	sp, #6
      008EE7                       1412 00107$:
                                   1413 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 569: TIM1->CR1 |= TIM1_CR1_CEN;
      008EE7 C6 52 50         [ 1] 1414 	ld	a, 0x5250
                                   1415 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 567: if (NewState != DISABLE)
      008EEA 0D 03            [ 1] 1416 	tnz	(0x03, sp)
      008EEC 27 06            [ 1] 1417 	jreq	00102$
                                   1418 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 569: TIM1->CR1 |= TIM1_CR1_CEN;
      008EEE AA 01            [ 1] 1419 	or	a, #0x01
      008EF0 C7 52 50         [ 1] 1420 	ld	0x5250, a
      008EF3 81               [ 4] 1421 	ret
      008EF4                       1422 00102$:
                                   1423 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 573: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
      008EF4 A4 FE            [ 1] 1424 	and	a, #0xfe
      008EF6 C7 52 50         [ 1] 1425 	ld	0x5250, a
                                   1426 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 575: }
      008EF9 81               [ 4] 1427 	ret
                                   1428 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 583: void TIM1_CtrlPWMOutputs(FunctionalState NewState)
                                   1429 ;	-----------------------------------------
                                   1430 ;	 function TIM1_CtrlPWMOutputs
                                   1431 ;	-----------------------------------------
      008EFA                       1432 _TIM1_CtrlPWMOutputs:
                                   1433 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 586: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008EFA 0D 03            [ 1] 1434 	tnz	(0x03, sp)
      008EFC 27 14            [ 1] 1435 	jreq	00107$
      008EFE 7B 03            [ 1] 1436 	ld	a, (0x03, sp)
      008F00 4A               [ 1] 1437 	dec	a
      008F01 27 0F            [ 1] 1438 	jreq	00107$
      008F03 4B 4A            [ 1] 1439 	push	#0x4a
      008F05 4B 02            [ 1] 1440 	push	#0x02
      008F07 5F               [ 1] 1441 	clrw	x
      008F08 89               [ 2] 1442 	pushw	x
      008F09 4B 66            [ 1] 1443 	push	#<(___str_0+0)
      008F0B 4B 81            [ 1] 1444 	push	#((___str_0+0) >> 8)
      008F0D CD 85 5C         [ 4] 1445 	call	_assert_failed
      008F10 5B 06            [ 2] 1446 	addw	sp, #6
      008F12                       1447 00107$:
                                   1448 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 592: TIM1->BKR |= TIM1_BKR_MOE;
      008F12 C6 52 6D         [ 1] 1449 	ld	a, 0x526d
                                   1450 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 590: if (NewState != DISABLE)
      008F15 0D 03            [ 1] 1451 	tnz	(0x03, sp)
      008F17 27 06            [ 1] 1452 	jreq	00102$
                                   1453 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 592: TIM1->BKR |= TIM1_BKR_MOE;
      008F19 AA 80            [ 1] 1454 	or	a, #0x80
      008F1B C7 52 6D         [ 1] 1455 	ld	0x526d, a
      008F1E 81               [ 4] 1456 	ret
      008F1F                       1457 00102$:
                                   1458 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 596: TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
      008F1F A4 7F            [ 1] 1459 	and	a, #0x7f
      008F21 C7 52 6D         [ 1] 1460 	ld	0x526d, a
                                   1461 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 598: }
      008F24 81               [ 4] 1462 	ret
                                   1463 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 617: void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
                                   1464 ;	-----------------------------------------
                                   1465 ;	 function TIM1_ITConfig
                                   1466 ;	-----------------------------------------
      008F25                       1467 _TIM1_ITConfig:
      008F25 88               [ 1] 1468 	push	a
                                   1469 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 620: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      008F26 0D 04            [ 1] 1470 	tnz	(0x04, sp)
      008F28 26 0F            [ 1] 1471 	jrne	00107$
      008F2A 4B 6C            [ 1] 1472 	push	#0x6c
      008F2C 4B 02            [ 1] 1473 	push	#0x02
      008F2E 5F               [ 1] 1474 	clrw	x
      008F2F 89               [ 2] 1475 	pushw	x
      008F30 4B 66            [ 1] 1476 	push	#<(___str_0+0)
      008F32 4B 81            [ 1] 1477 	push	#((___str_0+0) >> 8)
      008F34 CD 85 5C         [ 4] 1478 	call	_assert_failed
      008F37 5B 06            [ 2] 1479 	addw	sp, #6
      008F39                       1480 00107$:
                                   1481 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 621: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      008F39 0D 05            [ 1] 1482 	tnz	(0x05, sp)
      008F3B 27 14            [ 1] 1483 	jreq	00109$
      008F3D 7B 05            [ 1] 1484 	ld	a, (0x05, sp)
      008F3F 4A               [ 1] 1485 	dec	a
      008F40 27 0F            [ 1] 1486 	jreq	00109$
      008F42 4B 6D            [ 1] 1487 	push	#0x6d
      008F44 4B 02            [ 1] 1488 	push	#0x02
      008F46 5F               [ 1] 1489 	clrw	x
      008F47 89               [ 2] 1490 	pushw	x
      008F48 4B 66            [ 1] 1491 	push	#<(___str_0+0)
      008F4A 4B 81            [ 1] 1492 	push	#((___str_0+0) >> 8)
      008F4C CD 85 5C         [ 4] 1493 	call	_assert_failed
      008F4F 5B 06            [ 2] 1494 	addw	sp, #6
      008F51                       1495 00109$:
                                   1496 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 626: TIM1->IER |= (uint8_t)TIM1_IT;
      008F51 C6 52 54         [ 1] 1497 	ld	a, 0x5254
                                   1498 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 623: if (NewState != DISABLE)
      008F54 0D 05            [ 1] 1499 	tnz	(0x05, sp)
      008F56 27 07            [ 1] 1500 	jreq	00102$
                                   1501 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 626: TIM1->IER |= (uint8_t)TIM1_IT;
      008F58 1A 04            [ 1] 1502 	or	a, (0x04, sp)
      008F5A C7 52 54         [ 1] 1503 	ld	0x5254, a
      008F5D 20 0C            [ 2] 1504 	jra	00104$
      008F5F                       1505 00102$:
                                   1506 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 631: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
      008F5F 88               [ 1] 1507 	push	a
      008F60 7B 05            [ 1] 1508 	ld	a, (0x05, sp)
      008F62 43               [ 1] 1509 	cpl	a
      008F63 6B 02            [ 1] 1510 	ld	(0x02, sp), a
      008F65 84               [ 1] 1511 	pop	a
      008F66 14 01            [ 1] 1512 	and	a, (0x01, sp)
      008F68 C7 52 54         [ 1] 1513 	ld	0x5254, a
      008F6B                       1514 00104$:
                                   1515 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 633: }
      008F6B 84               [ 1] 1516 	pop	a
      008F6C 81               [ 4] 1517 	ret
                                   1518 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 640: void TIM1_InternalClockConfig(void)
                                   1519 ;	-----------------------------------------
                                   1520 ;	 function TIM1_InternalClockConfig
                                   1521 ;	-----------------------------------------
      008F6D                       1522 _TIM1_InternalClockConfig:
                                   1523 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 643: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
      008F6D C6 52 52         [ 1] 1524 	ld	a, 0x5252
      008F70 A4 F8            [ 1] 1525 	and	a, #0xf8
      008F72 C7 52 52         [ 1] 1526 	ld	0x5252, a
                                   1527 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 644: }
      008F75 81               [ 4] 1528 	ret
                                   1529 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 662: void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                   1530 ;	-----------------------------------------
                                   1531 ;	 function TIM1_ETRClockMode1Config
                                   1532 ;	-----------------------------------------
      008F76                       1533 _TIM1_ETRClockMode1Config:
                                   1534 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 667: assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
      008F76 0D 03            [ 1] 1535 	tnz	(0x03, sp)
      008F78 27 21            [ 1] 1536 	jreq	00104$
      008F7A 7B 03            [ 1] 1537 	ld	a, (0x03, sp)
      008F7C A1 10            [ 1] 1538 	cp	a, #0x10
      008F7E 27 1B            [ 1] 1539 	jreq	00104$
      008F80 7B 03            [ 1] 1540 	ld	a, (0x03, sp)
      008F82 A1 20            [ 1] 1541 	cp	a, #0x20
      008F84 27 15            [ 1] 1542 	jreq	00104$
      008F86 7B 03            [ 1] 1543 	ld	a, (0x03, sp)
      008F88 A1 30            [ 1] 1544 	cp	a, #0x30
      008F8A 27 0F            [ 1] 1545 	jreq	00104$
      008F8C 4B 9B            [ 1] 1546 	push	#0x9b
      008F8E 4B 02            [ 1] 1547 	push	#0x02
      008F90 5F               [ 1] 1548 	clrw	x
      008F91 89               [ 2] 1549 	pushw	x
      008F92 4B 66            [ 1] 1550 	push	#<(___str_0+0)
      008F94 4B 81            [ 1] 1551 	push	#((___str_0+0) >> 8)
      008F96 CD 85 5C         [ 4] 1552 	call	_assert_failed
      008F99 5B 06            [ 2] 1553 	addw	sp, #6
      008F9B                       1554 00104$:
                                   1555 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 668: assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
      008F9B 7B 04            [ 1] 1556 	ld	a, (0x04, sp)
      008F9D A1 80            [ 1] 1557 	cp	a, #0x80
      008F9F 27 13            [ 1] 1558 	jreq	00115$
      008FA1 0D 04            [ 1] 1559 	tnz	(0x04, sp)
      008FA3 27 0F            [ 1] 1560 	jreq	00115$
      008FA5 4B 9C            [ 1] 1561 	push	#0x9c
      008FA7 4B 02            [ 1] 1562 	push	#0x02
      008FA9 5F               [ 1] 1563 	clrw	x
      008FAA 89               [ 2] 1564 	pushw	x
      008FAB 4B 66            [ 1] 1565 	push	#<(___str_0+0)
      008FAD 4B 81            [ 1] 1566 	push	#((___str_0+0) >> 8)
      008FAF CD 85 5C         [ 4] 1567 	call	_assert_failed
      008FB2 5B 06            [ 2] 1568 	addw	sp, #6
      008FB4                       1569 00115$:
                                   1570 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 671: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
      008FB4 7B 05            [ 1] 1571 	ld	a, (0x05, sp)
      008FB6 88               [ 1] 1572 	push	a
      008FB7 7B 05            [ 1] 1573 	ld	a, (0x05, sp)
      008FB9 88               [ 1] 1574 	push	a
      008FBA 7B 05            [ 1] 1575 	ld	a, (0x05, sp)
      008FBC 88               [ 1] 1576 	push	a
      008FBD CD 90 1E         [ 4] 1577 	call	_TIM1_ETRConfig
      008FC0 5B 03            [ 2] 1578 	addw	sp, #3
                                   1579 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 674: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
      008FC2 C6 52 52         [ 1] 1580 	ld	a, 0x5252
      008FC5 A4 88            [ 1] 1581 	and	a, #0x88
      008FC7 AA 77            [ 1] 1582 	or	a, #0x77
      008FC9 C7 52 52         [ 1] 1583 	ld	0x5252, a
                                   1584 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 676: }
      008FCC 81               [ 4] 1585 	ret
                                   1586 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 694: void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                   1587 ;	-----------------------------------------
                                   1588 ;	 function TIM1_ETRClockMode2Config
                                   1589 ;	-----------------------------------------
      008FCD                       1590 _TIM1_ETRClockMode2Config:
                                   1591 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 699: assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
      008FCD 0D 03            [ 1] 1592 	tnz	(0x03, sp)
      008FCF 27 21            [ 1] 1593 	jreq	00104$
      008FD1 7B 03            [ 1] 1594 	ld	a, (0x03, sp)
      008FD3 A1 10            [ 1] 1595 	cp	a, #0x10
      008FD5 27 1B            [ 1] 1596 	jreq	00104$
      008FD7 7B 03            [ 1] 1597 	ld	a, (0x03, sp)
      008FD9 A1 20            [ 1] 1598 	cp	a, #0x20
      008FDB 27 15            [ 1] 1599 	jreq	00104$
      008FDD 7B 03            [ 1] 1600 	ld	a, (0x03, sp)
      008FDF A1 30            [ 1] 1601 	cp	a, #0x30
      008FE1 27 0F            [ 1] 1602 	jreq	00104$
      008FE3 4B BB            [ 1] 1603 	push	#0xbb
      008FE5 4B 02            [ 1] 1604 	push	#0x02
      008FE7 5F               [ 1] 1605 	clrw	x
      008FE8 89               [ 2] 1606 	pushw	x
      008FE9 4B 66            [ 1] 1607 	push	#<(___str_0+0)
      008FEB 4B 81            [ 1] 1608 	push	#((___str_0+0) >> 8)
      008FED CD 85 5C         [ 4] 1609 	call	_assert_failed
      008FF0 5B 06            [ 2] 1610 	addw	sp, #6
      008FF2                       1611 00104$:
                                   1612 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 700: assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
      008FF2 7B 04            [ 1] 1613 	ld	a, (0x04, sp)
      008FF4 A1 80            [ 1] 1614 	cp	a, #0x80
      008FF6 27 13            [ 1] 1615 	jreq	00115$
      008FF8 0D 04            [ 1] 1616 	tnz	(0x04, sp)
      008FFA 27 0F            [ 1] 1617 	jreq	00115$
      008FFC 4B BC            [ 1] 1618 	push	#0xbc
      008FFE 4B 02            [ 1] 1619 	push	#0x02
      009000 5F               [ 1] 1620 	clrw	x
      009001 89               [ 2] 1621 	pushw	x
      009002 4B 66            [ 1] 1622 	push	#<(___str_0+0)
      009004 4B 81            [ 1] 1623 	push	#((___str_0+0) >> 8)
      009006 CD 85 5C         [ 4] 1624 	call	_assert_failed
      009009 5B 06            [ 2] 1625 	addw	sp, #6
      00900B                       1626 00115$:
                                   1627 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 703: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
      00900B 7B 05            [ 1] 1628 	ld	a, (0x05, sp)
      00900D 88               [ 1] 1629 	push	a
      00900E 7B 05            [ 1] 1630 	ld	a, (0x05, sp)
      009010 88               [ 1] 1631 	push	a
      009011 7B 05            [ 1] 1632 	ld	a, (0x05, sp)
      009013 88               [ 1] 1633 	push	a
      009014 CD 90 1E         [ 4] 1634 	call	_TIM1_ETRConfig
      009017 5B 03            [ 2] 1635 	addw	sp, #3
                                   1636 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 706: TIM1->ETR |= TIM1_ETR_ECE;
      009019 72 1C 52 53      [ 1] 1637 	bset	21075, #6
                                   1638 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 707: }
      00901D 81               [ 4] 1639 	ret
                                   1640 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 725: void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                   1641 ;	-----------------------------------------
                                   1642 ;	 function TIM1_ETRConfig
                                   1643 ;	-----------------------------------------
      00901E                       1644 _TIM1_ETRConfig:
      00901E 88               [ 1] 1645 	push	a
                                   1646 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 730: assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
      00901F 7B 06            [ 1] 1647 	ld	a, (0x06, sp)
      009021 A1 0F            [ 1] 1648 	cp	a, #0x0f
      009023 23 0F            [ 2] 1649 	jrule	00104$
      009025 4B DA            [ 1] 1650 	push	#0xda
      009027 4B 02            [ 1] 1651 	push	#0x02
      009029 5F               [ 1] 1652 	clrw	x
      00902A 89               [ 2] 1653 	pushw	x
      00902B 4B 66            [ 1] 1654 	push	#<(___str_0+0)
      00902D 4B 81            [ 1] 1655 	push	#((___str_0+0) >> 8)
      00902F CD 85 5C         [ 4] 1656 	call	_assert_failed
      009032 5B 06            [ 2] 1657 	addw	sp, #6
      009034                       1658 00104$:
                                   1659 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 732: TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
      009034 C6 52 53         [ 1] 1660 	ld	a, 0x5253
      009037 6B 01            [ 1] 1661 	ld	(0x01, sp), a
      009039 7B 04            [ 1] 1662 	ld	a, (0x04, sp)
      00903B 1A 05            [ 1] 1663 	or	a, (0x05, sp)
                                   1664 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 733: (uint8_t)ExtTRGFilter );
      00903D 1A 06            [ 1] 1665 	or	a, (0x06, sp)
      00903F 1A 01            [ 1] 1666 	or	a, (0x01, sp)
      009041 C7 52 53         [ 1] 1667 	ld	0x5253, a
                                   1668 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 734: }
      009044 84               [ 1] 1669 	pop	a
      009045 81               [ 4] 1670 	ret
                                   1671 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 751: void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
                                   1672 ;	-----------------------------------------
                                   1673 ;	 function TIM1_TIxExternalClockConfig
                                   1674 ;	-----------------------------------------
      009046                       1675 _TIM1_TIxExternalClockConfig:
      009046 88               [ 1] 1676 	push	a
                                   1677 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 756: assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
      009047 7B 04            [ 1] 1678 	ld	a, (0x04, sp)
      009049 A0 60            [ 1] 1679 	sub	a, #0x60
      00904B 26 04            [ 1] 1680 	jrne	00157$
      00904D 4C               [ 1] 1681 	inc	a
      00904E 6B 01            [ 1] 1682 	ld	(0x01, sp), a
      009050 C5                    1683 	.byte 0xc5
      009051                       1684 00157$:
      009051 0F 01            [ 1] 1685 	clr	(0x01, sp)
      009053                       1686 00158$:
      009053 7B 04            [ 1] 1687 	ld	a, (0x04, sp)
      009055 A1 40            [ 1] 1688 	cp	a, #0x40
      009057 27 19            [ 1] 1689 	jreq	00107$
      009059 0D 01            [ 1] 1690 	tnz	(0x01, sp)
      00905B 26 15            [ 1] 1691 	jrne	00107$
      00905D 7B 04            [ 1] 1692 	ld	a, (0x04, sp)
      00905F A1 50            [ 1] 1693 	cp	a, #0x50
      009061 27 0F            [ 1] 1694 	jreq	00107$
      009063 4B F4            [ 1] 1695 	push	#0xf4
      009065 4B 02            [ 1] 1696 	push	#0x02
      009067 5F               [ 1] 1697 	clrw	x
      009068 89               [ 2] 1698 	pushw	x
      009069 4B 66            [ 1] 1699 	push	#<(___str_0+0)
      00906B 4B 81            [ 1] 1700 	push	#((___str_0+0) >> 8)
      00906D CD 85 5C         [ 4] 1701 	call	_assert_failed
      009070 5B 06            [ 2] 1702 	addw	sp, #6
      009072                       1703 00107$:
                                   1704 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 757: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      009072 0D 05            [ 1] 1705 	tnz	(0x05, sp)
      009074 27 14            [ 1] 1706 	jreq	00115$
      009076 7B 05            [ 1] 1707 	ld	a, (0x05, sp)
      009078 4A               [ 1] 1708 	dec	a
      009079 27 0F            [ 1] 1709 	jreq	00115$
      00907B 4B F5            [ 1] 1710 	push	#0xf5
      00907D 4B 02            [ 1] 1711 	push	#0x02
      00907F 5F               [ 1] 1712 	clrw	x
      009080 89               [ 2] 1713 	pushw	x
      009081 4B 66            [ 1] 1714 	push	#<(___str_0+0)
      009083 4B 81            [ 1] 1715 	push	#((___str_0+0) >> 8)
      009085 CD 85 5C         [ 4] 1716 	call	_assert_failed
      009088 5B 06            [ 2] 1717 	addw	sp, #6
      00908A                       1718 00115$:
                                   1719 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 758: assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
      00908A 7B 06            [ 1] 1720 	ld	a, (0x06, sp)
      00908C A1 0F            [ 1] 1721 	cp	a, #0x0f
      00908E 23 0F            [ 2] 1722 	jrule	00120$
      009090 4B F6            [ 1] 1723 	push	#0xf6
      009092 4B 02            [ 1] 1724 	push	#0x02
      009094 5F               [ 1] 1725 	clrw	x
      009095 89               [ 2] 1726 	pushw	x
      009096 4B 66            [ 1] 1727 	push	#<(___str_0+0)
      009098 4B 81            [ 1] 1728 	push	#((___str_0+0) >> 8)
      00909A CD 85 5C         [ 4] 1729 	call	_assert_failed
      00909D 5B 06            [ 2] 1730 	addw	sp, #6
      00909F                       1731 00120$:
                                   1732 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 761: if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
      00909F 7B 01            [ 1] 1733 	ld	a, (0x01, sp)
      0090A1 27 0F            [ 1] 1734 	jreq	00102$
                                   1735 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 763: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
      0090A3 7B 06            [ 1] 1736 	ld	a, (0x06, sp)
      0090A5 88               [ 1] 1737 	push	a
      0090A6 4B 01            [ 1] 1738 	push	#0x01
      0090A8 7B 07            [ 1] 1739 	ld	a, (0x07, sp)
      0090AA 88               [ 1] 1740 	push	a
      0090AB CD 9B E1         [ 4] 1741 	call	_TI2_Config
      0090AE 5B 03            [ 2] 1742 	addw	sp, #3
      0090B0 20 0D            [ 2] 1743 	jra	00103$
      0090B2                       1744 00102$:
                                   1745 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 767: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
      0090B2 7B 06            [ 1] 1746 	ld	a, (0x06, sp)
      0090B4 88               [ 1] 1747 	push	a
      0090B5 4B 01            [ 1] 1748 	push	#0x01
      0090B7 7B 07            [ 1] 1749 	ld	a, (0x07, sp)
      0090B9 88               [ 1] 1750 	push	a
      0090BA CD 9B B0         [ 4] 1751 	call	_TI1_Config
      0090BD 5B 03            [ 2] 1752 	addw	sp, #3
      0090BF                       1753 00103$:
                                   1754 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 771: TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
      0090BF 7B 04            [ 1] 1755 	ld	a, (0x04, sp)
      0090C1 88               [ 1] 1756 	push	a
      0090C2 CD 90 D0         [ 4] 1757 	call	_TIM1_SelectInputTrigger
      0090C5 84               [ 1] 1758 	pop	a
                                   1759 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 774: TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
      0090C6 C6 52 52         [ 1] 1760 	ld	a, 0x5252
      0090C9 AA 07            [ 1] 1761 	or	a, #0x07
      0090CB C7 52 52         [ 1] 1762 	ld	0x5252, a
                                   1763 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 775: }
      0090CE 84               [ 1] 1764 	pop	a
      0090CF 81               [ 4] 1765 	ret
                                   1766 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 787: void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
                                   1767 ;	-----------------------------------------
                                   1768 ;	 function TIM1_SelectInputTrigger
                                   1769 ;	-----------------------------------------
      0090D0                       1770 _TIM1_SelectInputTrigger:
                                   1771 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 790: assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
      0090D0 7B 03            [ 1] 1772 	ld	a, (0x03, sp)
      0090D2 A1 40            [ 1] 1773 	cp	a, #0x40
      0090D4 27 2B            [ 1] 1774 	jreq	00104$
      0090D6 7B 03            [ 1] 1775 	ld	a, (0x03, sp)
      0090D8 A1 50            [ 1] 1776 	cp	a, #0x50
      0090DA 27 25            [ 1] 1777 	jreq	00104$
      0090DC 7B 03            [ 1] 1778 	ld	a, (0x03, sp)
      0090DE A1 60            [ 1] 1779 	cp	a, #0x60
      0090E0 27 1F            [ 1] 1780 	jreq	00104$
      0090E2 7B 03            [ 1] 1781 	ld	a, (0x03, sp)
      0090E4 A1 70            [ 1] 1782 	cp	a, #0x70
      0090E6 27 19            [ 1] 1783 	jreq	00104$
      0090E8 7B 03            [ 1] 1784 	ld	a, (0x03, sp)
      0090EA A1 30            [ 1] 1785 	cp	a, #0x30
      0090EC 27 13            [ 1] 1786 	jreq	00104$
      0090EE 0D 03            [ 1] 1787 	tnz	(0x03, sp)
      0090F0 27 0F            [ 1] 1788 	jreq	00104$
      0090F2 4B 16            [ 1] 1789 	push	#0x16
      0090F4 4B 03            [ 1] 1790 	push	#0x03
      0090F6 5F               [ 1] 1791 	clrw	x
      0090F7 89               [ 2] 1792 	pushw	x
      0090F8 4B 66            [ 1] 1793 	push	#<(___str_0+0)
      0090FA 4B 81            [ 1] 1794 	push	#((___str_0+0) >> 8)
      0090FC CD 85 5C         [ 4] 1795 	call	_assert_failed
      0090FF 5B 06            [ 2] 1796 	addw	sp, #6
      009101                       1797 00104$:
                                   1798 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 793: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
      009101 C6 52 52         [ 1] 1799 	ld	a, 0x5252
      009104 A4 8F            [ 1] 1800 	and	a, #0x8f
      009106 1A 03            [ 1] 1801 	or	a, (0x03, sp)
      009108 C7 52 52         [ 1] 1802 	ld	0x5252, a
                                   1803 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 794: }
      00910B 81               [ 4] 1804 	ret
                                   1805 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 803: void TIM1_UpdateDisableConfig(FunctionalState NewState)
                                   1806 ;	-----------------------------------------
                                   1807 ;	 function TIM1_UpdateDisableConfig
                                   1808 ;	-----------------------------------------
      00910C                       1809 _TIM1_UpdateDisableConfig:
                                   1810 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 806: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00910C 0D 03            [ 1] 1811 	tnz	(0x03, sp)
      00910E 27 14            [ 1] 1812 	jreq	00107$
      009110 7B 03            [ 1] 1813 	ld	a, (0x03, sp)
      009112 4A               [ 1] 1814 	dec	a
      009113 27 0F            [ 1] 1815 	jreq	00107$
      009115 4B 26            [ 1] 1816 	push	#0x26
      009117 4B 03            [ 1] 1817 	push	#0x03
      009119 5F               [ 1] 1818 	clrw	x
      00911A 89               [ 2] 1819 	pushw	x
      00911B 4B 66            [ 1] 1820 	push	#<(___str_0+0)
      00911D 4B 81            [ 1] 1821 	push	#((___str_0+0) >> 8)
      00911F CD 85 5C         [ 4] 1822 	call	_assert_failed
      009122 5B 06            [ 2] 1823 	addw	sp, #6
      009124                       1824 00107$:
                                   1825 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 811: TIM1->CR1 |= TIM1_CR1_UDIS;
      009124 C6 52 50         [ 1] 1826 	ld	a, 0x5250
                                   1827 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 809: if (NewState != DISABLE)
      009127 0D 03            [ 1] 1828 	tnz	(0x03, sp)
      009129 27 06            [ 1] 1829 	jreq	00102$
                                   1830 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 811: TIM1->CR1 |= TIM1_CR1_UDIS;
      00912B AA 02            [ 1] 1831 	or	a, #0x02
      00912D C7 52 50         [ 1] 1832 	ld	0x5250, a
      009130 81               [ 4] 1833 	ret
      009131                       1834 00102$:
                                   1835 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 815: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
      009131 A4 FD            [ 1] 1836 	and	a, #0xfd
      009133 C7 52 50         [ 1] 1837 	ld	0x5250, a
                                   1838 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 817: }
      009136 81               [ 4] 1839 	ret
                                   1840 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 827: void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
                                   1841 ;	-----------------------------------------
                                   1842 ;	 function TIM1_UpdateRequestConfig
                                   1843 ;	-----------------------------------------
      009137                       1844 _TIM1_UpdateRequestConfig:
                                   1845 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 830: assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
      009137 0D 03            [ 1] 1846 	tnz	(0x03, sp)
      009139 27 14            [ 1] 1847 	jreq	00107$
      00913B 7B 03            [ 1] 1848 	ld	a, (0x03, sp)
      00913D 4A               [ 1] 1849 	dec	a
      00913E 27 0F            [ 1] 1850 	jreq	00107$
      009140 4B 3E            [ 1] 1851 	push	#0x3e
      009142 4B 03            [ 1] 1852 	push	#0x03
      009144 5F               [ 1] 1853 	clrw	x
      009145 89               [ 2] 1854 	pushw	x
      009146 4B 66            [ 1] 1855 	push	#<(___str_0+0)
      009148 4B 81            [ 1] 1856 	push	#((___str_0+0) >> 8)
      00914A CD 85 5C         [ 4] 1857 	call	_assert_failed
      00914D 5B 06            [ 2] 1858 	addw	sp, #6
      00914F                       1859 00107$:
                                   1860 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 835: TIM1->CR1 |= TIM1_CR1_URS;
      00914F C6 52 50         [ 1] 1861 	ld	a, 0x5250
                                   1862 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 833: if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
      009152 0D 03            [ 1] 1863 	tnz	(0x03, sp)
      009154 27 06            [ 1] 1864 	jreq	00102$
                                   1865 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 835: TIM1->CR1 |= TIM1_CR1_URS;
      009156 AA 04            [ 1] 1866 	or	a, #0x04
      009158 C7 52 50         [ 1] 1867 	ld	0x5250, a
      00915B 81               [ 4] 1868 	ret
      00915C                       1869 00102$:
                                   1870 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 839: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
      00915C A4 FB            [ 1] 1871 	and	a, #0xfb
      00915E C7 52 50         [ 1] 1872 	ld	0x5250, a
                                   1873 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 841: }
      009161 81               [ 4] 1874 	ret
                                   1875 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 849: void TIM1_SelectHallSensor(FunctionalState NewState)
                                   1876 ;	-----------------------------------------
                                   1877 ;	 function TIM1_SelectHallSensor
                                   1878 ;	-----------------------------------------
      009162                       1879 _TIM1_SelectHallSensor:
                                   1880 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 852: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009162 0D 03            [ 1] 1881 	tnz	(0x03, sp)
      009164 27 14            [ 1] 1882 	jreq	00107$
      009166 7B 03            [ 1] 1883 	ld	a, (0x03, sp)
      009168 4A               [ 1] 1884 	dec	a
      009169 27 0F            [ 1] 1885 	jreq	00107$
      00916B 4B 54            [ 1] 1886 	push	#0x54
      00916D 4B 03            [ 1] 1887 	push	#0x03
      00916F 5F               [ 1] 1888 	clrw	x
      009170 89               [ 2] 1889 	pushw	x
      009171 4B 66            [ 1] 1890 	push	#<(___str_0+0)
      009173 4B 81            [ 1] 1891 	push	#((___str_0+0) >> 8)
      009175 CD 85 5C         [ 4] 1892 	call	_assert_failed
      009178 5B 06            [ 2] 1893 	addw	sp, #6
      00917A                       1894 00107$:
                                   1895 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 857: TIM1->CR2 |= TIM1_CR2_TI1S;
      00917A C6 52 51         [ 1] 1896 	ld	a, 0x5251
                                   1897 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 855: if (NewState != DISABLE)
      00917D 0D 03            [ 1] 1898 	tnz	(0x03, sp)
      00917F 27 06            [ 1] 1899 	jreq	00102$
                                   1900 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 857: TIM1->CR2 |= TIM1_CR2_TI1S;
      009181 AA 80            [ 1] 1901 	or	a, #0x80
      009183 C7 52 51         [ 1] 1902 	ld	0x5251, a
      009186 81               [ 4] 1903 	ret
      009187                       1904 00102$:
                                   1905 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 861: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
      009187 A4 7F            [ 1] 1906 	and	a, #0x7f
      009189 C7 52 51         [ 1] 1907 	ld	0x5251, a
                                   1908 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 863: }
      00918C 81               [ 4] 1909 	ret
                                   1910 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 873: void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
                                   1911 ;	-----------------------------------------
                                   1912 ;	 function TIM1_SelectOnePulseMode
                                   1913 ;	-----------------------------------------
      00918D                       1914 _TIM1_SelectOnePulseMode:
                                   1915 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 876: assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
      00918D 7B 03            [ 1] 1916 	ld	a, (0x03, sp)
      00918F 4A               [ 1] 1917 	dec	a
      009190 27 13            [ 1] 1918 	jreq	00107$
      009192 0D 03            [ 1] 1919 	tnz	(0x03, sp)
      009194 27 0F            [ 1] 1920 	jreq	00107$
      009196 4B 6C            [ 1] 1921 	push	#0x6c
      009198 4B 03            [ 1] 1922 	push	#0x03
      00919A 5F               [ 1] 1923 	clrw	x
      00919B 89               [ 2] 1924 	pushw	x
      00919C 4B 66            [ 1] 1925 	push	#<(___str_0+0)
      00919E 4B 81            [ 1] 1926 	push	#((___str_0+0) >> 8)
      0091A0 CD 85 5C         [ 4] 1927 	call	_assert_failed
      0091A3 5B 06            [ 2] 1928 	addw	sp, #6
      0091A5                       1929 00107$:
                                   1930 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 881: TIM1->CR1 |= TIM1_CR1_OPM;
      0091A5 C6 52 50         [ 1] 1931 	ld	a, 0x5250
                                   1932 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 879: if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
      0091A8 0D 03            [ 1] 1933 	tnz	(0x03, sp)
      0091AA 27 06            [ 1] 1934 	jreq	00102$
                                   1935 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 881: TIM1->CR1 |= TIM1_CR1_OPM;
      0091AC AA 08            [ 1] 1936 	or	a, #0x08
      0091AE C7 52 50         [ 1] 1937 	ld	0x5250, a
      0091B1 81               [ 4] 1938 	ret
      0091B2                       1939 00102$:
                                   1940 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 885: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
      0091B2 A4 F7            [ 1] 1941 	and	a, #0xf7
      0091B4 C7 52 50         [ 1] 1942 	ld	0x5250, a
                                   1943 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 888: }
      0091B7 81               [ 4] 1944 	ret
                                   1945 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 903: void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
                                   1946 ;	-----------------------------------------
                                   1947 ;	 function TIM1_SelectOutputTrigger
                                   1948 ;	-----------------------------------------
      0091B8                       1949 _TIM1_SelectOutputTrigger:
                                   1950 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 906: assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
      0091B8 0D 03            [ 1] 1951 	tnz	(0x03, sp)
      0091BA 27 33            [ 1] 1952 	jreq	00104$
      0091BC 7B 03            [ 1] 1953 	ld	a, (0x03, sp)
      0091BE A1 10            [ 1] 1954 	cp	a, #0x10
      0091C0 27 2D            [ 1] 1955 	jreq	00104$
      0091C2 7B 03            [ 1] 1956 	ld	a, (0x03, sp)
      0091C4 A1 20            [ 1] 1957 	cp	a, #0x20
      0091C6 27 27            [ 1] 1958 	jreq	00104$
      0091C8 7B 03            [ 1] 1959 	ld	a, (0x03, sp)
      0091CA A1 30            [ 1] 1960 	cp	a, #0x30
      0091CC 27 21            [ 1] 1961 	jreq	00104$
      0091CE 7B 03            [ 1] 1962 	ld	a, (0x03, sp)
      0091D0 A1 40            [ 1] 1963 	cp	a, #0x40
      0091D2 27 1B            [ 1] 1964 	jreq	00104$
      0091D4 7B 03            [ 1] 1965 	ld	a, (0x03, sp)
      0091D6 A1 50            [ 1] 1966 	cp	a, #0x50
      0091D8 27 15            [ 1] 1967 	jreq	00104$
      0091DA 7B 03            [ 1] 1968 	ld	a, (0x03, sp)
      0091DC A1 60            [ 1] 1969 	cp	a, #0x60
      0091DE 27 0F            [ 1] 1970 	jreq	00104$
      0091E0 4B 8A            [ 1] 1971 	push	#0x8a
      0091E2 4B 03            [ 1] 1972 	push	#0x03
      0091E4 5F               [ 1] 1973 	clrw	x
      0091E5 89               [ 2] 1974 	pushw	x
      0091E6 4B 66            [ 1] 1975 	push	#<(___str_0+0)
      0091E8 4B 81            [ 1] 1976 	push	#((___str_0+0) >> 8)
      0091EA CD 85 5C         [ 4] 1977 	call	_assert_failed
      0091ED 5B 06            [ 2] 1978 	addw	sp, #6
      0091EF                       1979 00104$:
                                   1980 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 909: TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
      0091EF C6 52 51         [ 1] 1981 	ld	a, 0x5251
      0091F2 A4 8F            [ 1] 1982 	and	a, #0x8f
                                   1983 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 910: (uint8_t) TIM1_TRGOSource);
      0091F4 1A 03            [ 1] 1984 	or	a, (0x03, sp)
      0091F6 C7 52 51         [ 1] 1985 	ld	0x5251, a
                                   1986 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 911: }
      0091F9 81               [ 4] 1987 	ret
                                   1988 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 923: void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
                                   1989 ;	-----------------------------------------
                                   1990 ;	 function TIM1_SelectSlaveMode
                                   1991 ;	-----------------------------------------
      0091FA                       1992 _TIM1_SelectSlaveMode:
                                   1993 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 926: assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
      0091FA 7B 03            [ 1] 1994 	ld	a, (0x03, sp)
      0091FC A1 04            [ 1] 1995 	cp	a, #0x04
      0091FE 27 21            [ 1] 1996 	jreq	00104$
      009200 7B 03            [ 1] 1997 	ld	a, (0x03, sp)
      009202 A1 05            [ 1] 1998 	cp	a, #0x05
      009204 27 1B            [ 1] 1999 	jreq	00104$
      009206 7B 03            [ 1] 2000 	ld	a, (0x03, sp)
      009208 A1 06            [ 1] 2001 	cp	a, #0x06
      00920A 27 15            [ 1] 2002 	jreq	00104$
      00920C 7B 03            [ 1] 2003 	ld	a, (0x03, sp)
      00920E A1 07            [ 1] 2004 	cp	a, #0x07
      009210 27 0F            [ 1] 2005 	jreq	00104$
      009212 4B 9E            [ 1] 2006 	push	#0x9e
      009214 4B 03            [ 1] 2007 	push	#0x03
      009216 5F               [ 1] 2008 	clrw	x
      009217 89               [ 2] 2009 	pushw	x
      009218 4B 66            [ 1] 2010 	push	#<(___str_0+0)
      00921A 4B 81            [ 1] 2011 	push	#((___str_0+0) >> 8)
      00921C CD 85 5C         [ 4] 2012 	call	_assert_failed
      00921F 5B 06            [ 2] 2013 	addw	sp, #6
      009221                       2014 00104$:
                                   2015 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 929: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
      009221 C6 52 52         [ 1] 2016 	ld	a, 0x5252
      009224 A4 F8            [ 1] 2017 	and	a, #0xf8
                                   2018 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 930: (uint8_t)TIM1_SlaveMode);
      009226 1A 03            [ 1] 2019 	or	a, (0x03, sp)
      009228 C7 52 52         [ 1] 2020 	ld	0x5252, a
                                   2021 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 931: }
      00922B 81               [ 4] 2022 	ret
                                   2023 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 939: void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
                                   2024 ;	-----------------------------------------
                                   2025 ;	 function TIM1_SelectMasterSlaveMode
                                   2026 ;	-----------------------------------------
      00922C                       2027 _TIM1_SelectMasterSlaveMode:
                                   2028 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 942: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00922C 0D 03            [ 1] 2029 	tnz	(0x03, sp)
      00922E 27 14            [ 1] 2030 	jreq	00107$
      009230 7B 03            [ 1] 2031 	ld	a, (0x03, sp)
      009232 4A               [ 1] 2032 	dec	a
      009233 27 0F            [ 1] 2033 	jreq	00107$
      009235 4B AE            [ 1] 2034 	push	#0xae
      009237 4B 03            [ 1] 2035 	push	#0x03
      009239 5F               [ 1] 2036 	clrw	x
      00923A 89               [ 2] 2037 	pushw	x
      00923B 4B 66            [ 1] 2038 	push	#<(___str_0+0)
      00923D 4B 81            [ 1] 2039 	push	#((___str_0+0) >> 8)
      00923F CD 85 5C         [ 4] 2040 	call	_assert_failed
      009242 5B 06            [ 2] 2041 	addw	sp, #6
      009244                       2042 00107$:
                                   2043 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 947: TIM1->SMCR |= TIM1_SMCR_MSM;
      009244 C6 52 52         [ 1] 2044 	ld	a, 0x5252
                                   2045 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 945: if (NewState != DISABLE)
      009247 0D 03            [ 1] 2046 	tnz	(0x03, sp)
      009249 27 06            [ 1] 2047 	jreq	00102$
                                   2048 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 947: TIM1->SMCR |= TIM1_SMCR_MSM;
      00924B AA 80            [ 1] 2049 	or	a, #0x80
      00924D C7 52 52         [ 1] 2050 	ld	0x5252, a
      009250 81               [ 4] 2051 	ret
      009251                       2052 00102$:
                                   2053 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 951: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
      009251 A4 7F            [ 1] 2054 	and	a, #0x7f
      009253 C7 52 52         [ 1] 2055 	ld	0x5252, a
                                   2056 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 953: }
      009256 81               [ 4] 2057 	ret
                                   2058 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 975: void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
                                   2059 ;	-----------------------------------------
                                   2060 ;	 function TIM1_EncoderInterfaceConfig
                                   2061 ;	-----------------------------------------
      009257                       2062 _TIM1_EncoderInterfaceConfig:
                                   2063 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 980: assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
      009257 7B 03            [ 1] 2064 	ld	a, (0x03, sp)
      009259 4A               [ 1] 2065 	dec	a
      00925A 27 1B            [ 1] 2066 	jreq	00110$
      00925C 7B 03            [ 1] 2067 	ld	a, (0x03, sp)
      00925E A1 02            [ 1] 2068 	cp	a, #0x02
      009260 27 15            [ 1] 2069 	jreq	00110$
      009262 7B 03            [ 1] 2070 	ld	a, (0x03, sp)
      009264 A1 03            [ 1] 2071 	cp	a, #0x03
      009266 27 0F            [ 1] 2072 	jreq	00110$
      009268 4B D4            [ 1] 2073 	push	#0xd4
      00926A 4B 03            [ 1] 2074 	push	#0x03
      00926C 5F               [ 1] 2075 	clrw	x
      00926D 89               [ 2] 2076 	pushw	x
      00926E 4B 66            [ 1] 2077 	push	#<(___str_0+0)
      009270 4B 81            [ 1] 2078 	push	#((___str_0+0) >> 8)
      009272 CD 85 5C         [ 4] 2079 	call	_assert_failed
      009275 5B 06            [ 2] 2080 	addw	sp, #6
      009277                       2081 00110$:
                                   2082 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 981: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
      009277 0D 04            [ 1] 2083 	tnz	(0x04, sp)
      009279 27 14            [ 1] 2084 	jreq	00118$
      00927B 7B 04            [ 1] 2085 	ld	a, (0x04, sp)
      00927D 4A               [ 1] 2086 	dec	a
      00927E 27 0F            [ 1] 2087 	jreq	00118$
      009280 4B D5            [ 1] 2088 	push	#0xd5
      009282 4B 03            [ 1] 2089 	push	#0x03
      009284 5F               [ 1] 2090 	clrw	x
      009285 89               [ 2] 2091 	pushw	x
      009286 4B 66            [ 1] 2092 	push	#<(___str_0+0)
      009288 4B 81            [ 1] 2093 	push	#((___str_0+0) >> 8)
      00928A CD 85 5C         [ 4] 2094 	call	_assert_failed
      00928D 5B 06            [ 2] 2095 	addw	sp, #6
      00928F                       2096 00118$:
                                   2097 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 982: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
      00928F 0D 05            [ 1] 2098 	tnz	(0x05, sp)
      009291 27 14            [ 1] 2099 	jreq	00123$
      009293 7B 05            [ 1] 2100 	ld	a, (0x05, sp)
      009295 4A               [ 1] 2101 	dec	a
      009296 27 0F            [ 1] 2102 	jreq	00123$
      009298 4B D6            [ 1] 2103 	push	#0xd6
      00929A 4B 03            [ 1] 2104 	push	#0x03
      00929C 5F               [ 1] 2105 	clrw	x
      00929D 89               [ 2] 2106 	pushw	x
      00929E 4B 66            [ 1] 2107 	push	#<(___str_0+0)
      0092A0 4B 81            [ 1] 2108 	push	#((___str_0+0) >> 8)
      0092A2 CD 85 5C         [ 4] 2109 	call	_assert_failed
      0092A5 5B 06            [ 2] 2110 	addw	sp, #6
      0092A7                       2111 00123$:
                                   2112 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      0092A7 C6 52 5C         [ 1] 2113 	ld	a, 0x525c
                                   2114 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 985: if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
      0092AA 0D 04            [ 1] 2115 	tnz	(0x04, sp)
      0092AC 27 07            [ 1] 2116 	jreq	00102$
                                   2117 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      0092AE AA 02            [ 1] 2118 	or	a, #0x02
      0092B0 C7 52 5C         [ 1] 2119 	ld	0x525c, a
      0092B3 20 05            [ 2] 2120 	jra	00103$
      0092B5                       2121 00102$:
                                   2122 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 991: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      0092B5 A4 FD            [ 1] 2123 	and	a, #0xfd
      0092B7 C7 52 5C         [ 1] 2124 	ld	0x525c, a
      0092BA                       2125 00103$:
                                   2126 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      0092BA C6 52 5C         [ 1] 2127 	ld	a, 0x525c
                                   2128 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 994: if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
      0092BD 0D 05            [ 1] 2129 	tnz	(0x05, sp)
      0092BF 27 07            [ 1] 2130 	jreq	00105$
                                   2131 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 996: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      0092C1 AA 20            [ 1] 2132 	or	a, #0x20
      0092C3 C7 52 5C         [ 1] 2133 	ld	0x525c, a
      0092C6 20 05            [ 2] 2134 	jra	00106$
      0092C8                       2135 00105$:
                                   2136 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1000: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      0092C8 A4 DF            [ 1] 2137 	and	a, #0xdf
      0092CA C7 52 5C         [ 1] 2138 	ld	0x525c, a
      0092CD                       2139 00106$:
                                   2140 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1003: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
      0092CD C6 52 52         [ 1] 2141 	ld	a, 0x5252
      0092D0 A4 F0            [ 1] 2142 	and	a, #0xf0
                                   2143 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1004: | (uint8_t) TIM1_EncoderMode);
      0092D2 1A 03            [ 1] 2144 	or	a, (0x03, sp)
      0092D4 C7 52 52         [ 1] 2145 	ld	0x5252, a
                                   2146 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1007: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
      0092D7 C6 52 58         [ 1] 2147 	ld	a, 0x5258
      0092DA A4 FC            [ 1] 2148 	and	a, #0xfc
      0092DC AA 01            [ 1] 2149 	or	a, #0x01
      0092DE C7 52 58         [ 1] 2150 	ld	0x5258, a
                                   2151 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1009: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
      0092E1 C6 52 59         [ 1] 2152 	ld	a, 0x5259
      0092E4 A4 FC            [ 1] 2153 	and	a, #0xfc
      0092E6 AA 01            [ 1] 2154 	or	a, #0x01
      0092E8 C7 52 59         [ 1] 2155 	ld	0x5259, a
                                   2156 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1011: }
      0092EB 81               [ 4] 2157 	ret
                                   2158 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1023: void TIM1_PrescalerConfig(uint16_t Prescaler,
                                   2159 ;	-----------------------------------------
                                   2160 ;	 function TIM1_PrescalerConfig
                                   2161 ;	-----------------------------------------
      0092EC                       2162 _TIM1_PrescalerConfig:
                                   2163 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1027: assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
      0092EC 0D 05            [ 1] 2164 	tnz	(0x05, sp)
      0092EE 27 14            [ 1] 2165 	jreq	00104$
      0092F0 7B 05            [ 1] 2166 	ld	a, (0x05, sp)
      0092F2 4A               [ 1] 2167 	dec	a
      0092F3 27 0F            [ 1] 2168 	jreq	00104$
      0092F5 4B 03            [ 1] 2169 	push	#0x03
      0092F7 4B 04            [ 1] 2170 	push	#0x04
      0092F9 5F               [ 1] 2171 	clrw	x
      0092FA 89               [ 2] 2172 	pushw	x
      0092FB 4B 66            [ 1] 2173 	push	#<(___str_0+0)
      0092FD 4B 81            [ 1] 2174 	push	#((___str_0+0) >> 8)
      0092FF CD 85 5C         [ 4] 2175 	call	_assert_failed
      009302 5B 06            [ 2] 2176 	addw	sp, #6
      009304                       2177 00104$:
                                   2178 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1030: TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
      009304 7B 03            [ 1] 2179 	ld	a, (0x03, sp)
      009306 C7 52 60         [ 1] 2180 	ld	0x5260, a
                                   2181 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1031: TIM1->PSCRL = (uint8_t)(Prescaler);
      009309 7B 04            [ 1] 2182 	ld	a, (0x04, sp)
      00930B C7 52 61         [ 1] 2183 	ld	0x5261, a
                                   2184 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1034: TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
      00930E AE 52 57         [ 2] 2185 	ldw	x, #0x5257
      009311 7B 05            [ 1] 2186 	ld	a, (0x05, sp)
      009313 F7               [ 1] 2187 	ld	(x), a
                                   2188 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1035: }
      009314 81               [ 4] 2189 	ret
                                   2190 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1048: void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
                                   2191 ;	-----------------------------------------
                                   2192 ;	 function TIM1_CounterModeConfig
                                   2193 ;	-----------------------------------------
      009315                       2194 _TIM1_CounterModeConfig:
                                   2195 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1051: assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
      009315 0D 03            [ 1] 2196 	tnz	(0x03, sp)
      009317 27 27            [ 1] 2197 	jreq	00104$
      009319 7B 03            [ 1] 2198 	ld	a, (0x03, sp)
      00931B A1 10            [ 1] 2199 	cp	a, #0x10
      00931D 27 21            [ 1] 2200 	jreq	00104$
      00931F 7B 03            [ 1] 2201 	ld	a, (0x03, sp)
      009321 A1 20            [ 1] 2202 	cp	a, #0x20
      009323 27 1B            [ 1] 2203 	jreq	00104$
      009325 7B 03            [ 1] 2204 	ld	a, (0x03, sp)
      009327 A1 40            [ 1] 2205 	cp	a, #0x40
      009329 27 15            [ 1] 2206 	jreq	00104$
      00932B 7B 03            [ 1] 2207 	ld	a, (0x03, sp)
      00932D A1 60            [ 1] 2208 	cp	a, #0x60
      00932F 27 0F            [ 1] 2209 	jreq	00104$
      009331 4B 1B            [ 1] 2210 	push	#0x1b
      009333 4B 04            [ 1] 2211 	push	#0x04
      009335 5F               [ 1] 2212 	clrw	x
      009336 89               [ 2] 2213 	pushw	x
      009337 4B 66            [ 1] 2214 	push	#<(___str_0+0)
      009339 4B 81            [ 1] 2215 	push	#((___str_0+0) >> 8)
      00933B CD 85 5C         [ 4] 2216 	call	_assert_failed
      00933E 5B 06            [ 2] 2217 	addw	sp, #6
      009340                       2218 00104$:
                                   2219 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1055: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
      009340 C6 52 50         [ 1] 2220 	ld	a, 0x5250
      009343 A4 8F            [ 1] 2221 	and	a, #0x8f
                                   2222 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1056: | (uint8_t)TIM1_CounterMode);
      009345 1A 03            [ 1] 2223 	or	a, (0x03, sp)
      009347 C7 52 50         [ 1] 2224 	ld	0x5250, a
                                   2225 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1057: }
      00934A 81               [ 4] 2226 	ret
                                   2227 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1067: void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   2228 ;	-----------------------------------------
                                   2229 ;	 function TIM1_ForcedOC1Config
                                   2230 ;	-----------------------------------------
      00934B                       2231 _TIM1_ForcedOC1Config:
                                   2232 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1070: assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
      00934B 7B 03            [ 1] 2233 	ld	a, (0x03, sp)
      00934D A1 50            [ 1] 2234 	cp	a, #0x50
      00934F 27 15            [ 1] 2235 	jreq	00104$
      009351 7B 03            [ 1] 2236 	ld	a, (0x03, sp)
      009353 A1 40            [ 1] 2237 	cp	a, #0x40
      009355 27 0F            [ 1] 2238 	jreq	00104$
      009357 4B 2E            [ 1] 2239 	push	#0x2e
      009359 4B 04            [ 1] 2240 	push	#0x04
      00935B 5F               [ 1] 2241 	clrw	x
      00935C 89               [ 2] 2242 	pushw	x
      00935D 4B 66            [ 1] 2243 	push	#<(___str_0+0)
      00935F 4B 81            [ 1] 2244 	push	#((___str_0+0) >> 8)
      009361 CD 85 5C         [ 4] 2245 	call	_assert_failed
      009364 5B 06            [ 2] 2246 	addw	sp, #6
      009366                       2247 00104$:
                                   2248 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1073: TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
      009366 C6 52 58         [ 1] 2249 	ld	a, 0x5258
      009369 A4 8F            [ 1] 2250 	and	a, #0x8f
                                   2251 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1074: (uint8_t)TIM1_ForcedAction);
      00936B 1A 03            [ 1] 2252 	or	a, (0x03, sp)
      00936D C7 52 58         [ 1] 2253 	ld	0x5258, a
                                   2254 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1075: }
      009370 81               [ 4] 2255 	ret
                                   2256 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1085: void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   2257 ;	-----------------------------------------
                                   2258 ;	 function TIM1_ForcedOC2Config
                                   2259 ;	-----------------------------------------
      009371                       2260 _TIM1_ForcedOC2Config:
                                   2261 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1088: assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
      009371 7B 03            [ 1] 2262 	ld	a, (0x03, sp)
      009373 A1 50            [ 1] 2263 	cp	a, #0x50
      009375 27 15            [ 1] 2264 	jreq	00104$
      009377 7B 03            [ 1] 2265 	ld	a, (0x03, sp)
      009379 A1 40            [ 1] 2266 	cp	a, #0x40
      00937B 27 0F            [ 1] 2267 	jreq	00104$
      00937D 4B 40            [ 1] 2268 	push	#0x40
      00937F 4B 04            [ 1] 2269 	push	#0x04
      009381 5F               [ 1] 2270 	clrw	x
      009382 89               [ 2] 2271 	pushw	x
      009383 4B 66            [ 1] 2272 	push	#<(___str_0+0)
      009385 4B 81            [ 1] 2273 	push	#((___str_0+0) >> 8)
      009387 CD 85 5C         [ 4] 2274 	call	_assert_failed
      00938A 5B 06            [ 2] 2275 	addw	sp, #6
      00938C                       2276 00104$:
                                   2277 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1091: TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
      00938C C6 52 59         [ 1] 2278 	ld	a, 0x5259
      00938F A4 8F            [ 1] 2279 	and	a, #0x8f
                                   2280 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1092: | (uint8_t)TIM1_ForcedAction);
      009391 1A 03            [ 1] 2281 	or	a, (0x03, sp)
      009393 C7 52 59         [ 1] 2282 	ld	0x5259, a
                                   2283 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1093: }
      009396 81               [ 4] 2284 	ret
                                   2285 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1104: void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   2286 ;	-----------------------------------------
                                   2287 ;	 function TIM1_ForcedOC3Config
                                   2288 ;	-----------------------------------------
      009397                       2289 _TIM1_ForcedOC3Config:
                                   2290 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1107: assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
      009397 7B 03            [ 1] 2291 	ld	a, (0x03, sp)
      009399 A1 50            [ 1] 2292 	cp	a, #0x50
      00939B 27 15            [ 1] 2293 	jreq	00104$
      00939D 7B 03            [ 1] 2294 	ld	a, (0x03, sp)
      00939F A1 40            [ 1] 2295 	cp	a, #0x40
      0093A1 27 0F            [ 1] 2296 	jreq	00104$
      0093A3 4B 53            [ 1] 2297 	push	#0x53
      0093A5 4B 04            [ 1] 2298 	push	#0x04
      0093A7 5F               [ 1] 2299 	clrw	x
      0093A8 89               [ 2] 2300 	pushw	x
      0093A9 4B 66            [ 1] 2301 	push	#<(___str_0+0)
      0093AB 4B 81            [ 1] 2302 	push	#((___str_0+0) >> 8)
      0093AD CD 85 5C         [ 4] 2303 	call	_assert_failed
      0093B0 5B 06            [ 2] 2304 	addw	sp, #6
      0093B2                       2305 00104$:
                                   2306 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1110: TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
      0093B2 C6 52 5A         [ 1] 2307 	ld	a, 0x525a
      0093B5 A4 8F            [ 1] 2308 	and	a, #0x8f
                                   2309 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1111: | (uint8_t)TIM1_ForcedAction);
      0093B7 1A 03            [ 1] 2310 	or	a, (0x03, sp)
      0093B9 C7 52 5A         [ 1] 2311 	ld	0x525a, a
                                   2312 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1112: }
      0093BC 81               [ 4] 2313 	ret
                                   2314 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1123: void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   2315 ;	-----------------------------------------
                                   2316 ;	 function TIM1_ForcedOC4Config
                                   2317 ;	-----------------------------------------
      0093BD                       2318 _TIM1_ForcedOC4Config:
                                   2319 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1126: assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
      0093BD 7B 03            [ 1] 2320 	ld	a, (0x03, sp)
      0093BF A1 50            [ 1] 2321 	cp	a, #0x50
      0093C1 27 15            [ 1] 2322 	jreq	00104$
      0093C3 7B 03            [ 1] 2323 	ld	a, (0x03, sp)
      0093C5 A1 40            [ 1] 2324 	cp	a, #0x40
      0093C7 27 0F            [ 1] 2325 	jreq	00104$
      0093C9 4B 66            [ 1] 2326 	push	#0x66
      0093CB 4B 04            [ 1] 2327 	push	#0x04
      0093CD 5F               [ 1] 2328 	clrw	x
      0093CE 89               [ 2] 2329 	pushw	x
      0093CF 4B 66            [ 1] 2330 	push	#<(___str_0+0)
      0093D1 4B 81            [ 1] 2331 	push	#((___str_0+0) >> 8)
      0093D3 CD 85 5C         [ 4] 2332 	call	_assert_failed
      0093D6 5B 06            [ 2] 2333 	addw	sp, #6
      0093D8                       2334 00104$:
                                   2335 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1129: TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
      0093D8 C6 52 5B         [ 1] 2336 	ld	a, 0x525b
      0093DB A4 8F            [ 1] 2337 	and	a, #0x8f
                                   2338 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1130: | (uint8_t)TIM1_ForcedAction);
      0093DD 1A 03            [ 1] 2339 	or	a, (0x03, sp)
      0093DF C7 52 5B         [ 1] 2340 	ld	0x525b, a
                                   2341 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1131: }
      0093E2 81               [ 4] 2342 	ret
                                   2343 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1139: void TIM1_ARRPreloadConfig(FunctionalState NewState)
                                   2344 ;	-----------------------------------------
                                   2345 ;	 function TIM1_ARRPreloadConfig
                                   2346 ;	-----------------------------------------
      0093E3                       2347 _TIM1_ARRPreloadConfig:
                                   2348 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1142: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0093E3 0D 03            [ 1] 2349 	tnz	(0x03, sp)
      0093E5 27 14            [ 1] 2350 	jreq	00107$
      0093E7 7B 03            [ 1] 2351 	ld	a, (0x03, sp)
      0093E9 4A               [ 1] 2352 	dec	a
      0093EA 27 0F            [ 1] 2353 	jreq	00107$
      0093EC 4B 76            [ 1] 2354 	push	#0x76
      0093EE 4B 04            [ 1] 2355 	push	#0x04
      0093F0 5F               [ 1] 2356 	clrw	x
      0093F1 89               [ 2] 2357 	pushw	x
      0093F2 4B 66            [ 1] 2358 	push	#<(___str_0+0)
      0093F4 4B 81            [ 1] 2359 	push	#((___str_0+0) >> 8)
      0093F6 CD 85 5C         [ 4] 2360 	call	_assert_failed
      0093F9 5B 06            [ 2] 2361 	addw	sp, #6
      0093FB                       2362 00107$:
                                   2363 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1147: TIM1->CR1 |= TIM1_CR1_ARPE;
      0093FB C6 52 50         [ 1] 2364 	ld	a, 0x5250
                                   2365 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1145: if (NewState != DISABLE)
      0093FE 0D 03            [ 1] 2366 	tnz	(0x03, sp)
      009400 27 06            [ 1] 2367 	jreq	00102$
                                   2368 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1147: TIM1->CR1 |= TIM1_CR1_ARPE;
      009402 AA 80            [ 1] 2369 	or	a, #0x80
      009404 C7 52 50         [ 1] 2370 	ld	0x5250, a
      009407 81               [ 4] 2371 	ret
      009408                       2372 00102$:
                                   2373 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1151: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
      009408 A4 7F            [ 1] 2374 	and	a, #0x7f
      00940A C7 52 50         [ 1] 2375 	ld	0x5250, a
                                   2376 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1153: }
      00940D 81               [ 4] 2377 	ret
                                   2378 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1161: void TIM1_SelectCOM(FunctionalState NewState)
                                   2379 ;	-----------------------------------------
                                   2380 ;	 function TIM1_SelectCOM
                                   2381 ;	-----------------------------------------
      00940E                       2382 _TIM1_SelectCOM:
                                   2383 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1164: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00940E 0D 03            [ 1] 2384 	tnz	(0x03, sp)
      009410 27 14            [ 1] 2385 	jreq	00107$
      009412 7B 03            [ 1] 2386 	ld	a, (0x03, sp)
      009414 4A               [ 1] 2387 	dec	a
      009415 27 0F            [ 1] 2388 	jreq	00107$
      009417 4B 8C            [ 1] 2389 	push	#0x8c
      009419 4B 04            [ 1] 2390 	push	#0x04
      00941B 5F               [ 1] 2391 	clrw	x
      00941C 89               [ 2] 2392 	pushw	x
      00941D 4B 66            [ 1] 2393 	push	#<(___str_0+0)
      00941F 4B 81            [ 1] 2394 	push	#((___str_0+0) >> 8)
      009421 CD 85 5C         [ 4] 2395 	call	_assert_failed
      009424 5B 06            [ 2] 2396 	addw	sp, #6
      009426                       2397 00107$:
                                   2398 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1169: TIM1->CR2 |= TIM1_CR2_COMS;
      009426 C6 52 51         [ 1] 2399 	ld	a, 0x5251
                                   2400 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1167: if (NewState != DISABLE)
      009429 0D 03            [ 1] 2401 	tnz	(0x03, sp)
      00942B 27 06            [ 1] 2402 	jreq	00102$
                                   2403 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1169: TIM1->CR2 |= TIM1_CR2_COMS;
      00942D AA 04            [ 1] 2404 	or	a, #0x04
      00942F C7 52 51         [ 1] 2405 	ld	0x5251, a
      009432 81               [ 4] 2406 	ret
      009433                       2407 00102$:
                                   2408 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1173: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
      009433 A4 FB            [ 1] 2409 	and	a, #0xfb
      009435 C7 52 51         [ 1] 2410 	ld	0x5251, a
                                   2411 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1175: }
      009438 81               [ 4] 2412 	ret
                                   2413 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1183: void TIM1_CCPreloadControl(FunctionalState NewState)
                                   2414 ;	-----------------------------------------
                                   2415 ;	 function TIM1_CCPreloadControl
                                   2416 ;	-----------------------------------------
      009439                       2417 _TIM1_CCPreloadControl:
                                   2418 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1186: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009439 0D 03            [ 1] 2419 	tnz	(0x03, sp)
      00943B 27 14            [ 1] 2420 	jreq	00107$
      00943D 7B 03            [ 1] 2421 	ld	a, (0x03, sp)
      00943F 4A               [ 1] 2422 	dec	a
      009440 27 0F            [ 1] 2423 	jreq	00107$
      009442 4B A2            [ 1] 2424 	push	#0xa2
      009444 4B 04            [ 1] 2425 	push	#0x04
      009446 5F               [ 1] 2426 	clrw	x
      009447 89               [ 2] 2427 	pushw	x
      009448 4B 66            [ 1] 2428 	push	#<(___str_0+0)
      00944A 4B 81            [ 1] 2429 	push	#((___str_0+0) >> 8)
      00944C CD 85 5C         [ 4] 2430 	call	_assert_failed
      00944F 5B 06            [ 2] 2431 	addw	sp, #6
      009451                       2432 00107$:
                                   2433 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1191: TIM1->CR2 |= TIM1_CR2_CCPC;
      009451 C6 52 51         [ 1] 2434 	ld	a, 0x5251
                                   2435 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1189: if (NewState != DISABLE)
      009454 0D 03            [ 1] 2436 	tnz	(0x03, sp)
      009456 27 06            [ 1] 2437 	jreq	00102$
                                   2438 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1191: TIM1->CR2 |= TIM1_CR2_CCPC;
      009458 AA 01            [ 1] 2439 	or	a, #0x01
      00945A C7 52 51         [ 1] 2440 	ld	0x5251, a
      00945D 81               [ 4] 2441 	ret
      00945E                       2442 00102$:
                                   2443 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1195: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
      00945E A4 FE            [ 1] 2444 	and	a, #0xfe
      009460 C7 52 51         [ 1] 2445 	ld	0x5251, a
                                   2446 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1197: }
      009463 81               [ 4] 2447 	ret
                                   2448 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1205: void TIM1_OC1PreloadConfig(FunctionalState NewState)
                                   2449 ;	-----------------------------------------
                                   2450 ;	 function TIM1_OC1PreloadConfig
                                   2451 ;	-----------------------------------------
      009464                       2452 _TIM1_OC1PreloadConfig:
                                   2453 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1208: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009464 0D 03            [ 1] 2454 	tnz	(0x03, sp)
      009466 27 14            [ 1] 2455 	jreq	00107$
      009468 7B 03            [ 1] 2456 	ld	a, (0x03, sp)
      00946A 4A               [ 1] 2457 	dec	a
      00946B 27 0F            [ 1] 2458 	jreq	00107$
      00946D 4B B8            [ 1] 2459 	push	#0xb8
      00946F 4B 04            [ 1] 2460 	push	#0x04
      009471 5F               [ 1] 2461 	clrw	x
      009472 89               [ 2] 2462 	pushw	x
      009473 4B 66            [ 1] 2463 	push	#<(___str_0+0)
      009475 4B 81            [ 1] 2464 	push	#((___str_0+0) >> 8)
      009477 CD 85 5C         [ 4] 2465 	call	_assert_failed
      00947A 5B 06            [ 2] 2466 	addw	sp, #6
      00947C                       2467 00107$:
                                   2468 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1213: TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
      00947C C6 52 58         [ 1] 2469 	ld	a, 0x5258
                                   2470 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1211: if (NewState != DISABLE)
      00947F 0D 03            [ 1] 2471 	tnz	(0x03, sp)
      009481 27 06            [ 1] 2472 	jreq	00102$
                                   2473 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1213: TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
      009483 AA 08            [ 1] 2474 	or	a, #0x08
      009485 C7 52 58         [ 1] 2475 	ld	0x5258, a
      009488 81               [ 4] 2476 	ret
      009489                       2477 00102$:
                                   2478 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1217: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      009489 A4 F7            [ 1] 2479 	and	a, #0xf7
      00948B C7 52 58         [ 1] 2480 	ld	0x5258, a
                                   2481 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1219: }
      00948E 81               [ 4] 2482 	ret
                                   2483 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1227: void TIM1_OC2PreloadConfig(FunctionalState NewState)
                                   2484 ;	-----------------------------------------
                                   2485 ;	 function TIM1_OC2PreloadConfig
                                   2486 ;	-----------------------------------------
      00948F                       2487 _TIM1_OC2PreloadConfig:
                                   2488 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1230: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00948F 0D 03            [ 1] 2489 	tnz	(0x03, sp)
      009491 27 14            [ 1] 2490 	jreq	00107$
      009493 7B 03            [ 1] 2491 	ld	a, (0x03, sp)
      009495 4A               [ 1] 2492 	dec	a
      009496 27 0F            [ 1] 2493 	jreq	00107$
      009498 4B CE            [ 1] 2494 	push	#0xce
      00949A 4B 04            [ 1] 2495 	push	#0x04
      00949C 5F               [ 1] 2496 	clrw	x
      00949D 89               [ 2] 2497 	pushw	x
      00949E 4B 66            [ 1] 2498 	push	#<(___str_0+0)
      0094A0 4B 81            [ 1] 2499 	push	#((___str_0+0) >> 8)
      0094A2 CD 85 5C         [ 4] 2500 	call	_assert_failed
      0094A5 5B 06            [ 2] 2501 	addw	sp, #6
      0094A7                       2502 00107$:
                                   2503 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1235: TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
      0094A7 C6 52 59         [ 1] 2504 	ld	a, 0x5259
                                   2505 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1233: if (NewState != DISABLE)
      0094AA 0D 03            [ 1] 2506 	tnz	(0x03, sp)
      0094AC 27 06            [ 1] 2507 	jreq	00102$
                                   2508 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1235: TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
      0094AE AA 08            [ 1] 2509 	or	a, #0x08
      0094B0 C7 52 59         [ 1] 2510 	ld	0x5259, a
      0094B3 81               [ 4] 2511 	ret
      0094B4                       2512 00102$:
                                   2513 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1239: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      0094B4 A4 F7            [ 1] 2514 	and	a, #0xf7
      0094B6 C7 52 59         [ 1] 2515 	ld	0x5259, a
                                   2516 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1241: }
      0094B9 81               [ 4] 2517 	ret
                                   2518 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1249: void TIM1_OC3PreloadConfig(FunctionalState NewState)
                                   2519 ;	-----------------------------------------
                                   2520 ;	 function TIM1_OC3PreloadConfig
                                   2521 ;	-----------------------------------------
      0094BA                       2522 _TIM1_OC3PreloadConfig:
                                   2523 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1252: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0094BA 0D 03            [ 1] 2524 	tnz	(0x03, sp)
      0094BC 27 14            [ 1] 2525 	jreq	00107$
      0094BE 7B 03            [ 1] 2526 	ld	a, (0x03, sp)
      0094C0 4A               [ 1] 2527 	dec	a
      0094C1 27 0F            [ 1] 2528 	jreq	00107$
      0094C3 4B E4            [ 1] 2529 	push	#0xe4
      0094C5 4B 04            [ 1] 2530 	push	#0x04
      0094C7 5F               [ 1] 2531 	clrw	x
      0094C8 89               [ 2] 2532 	pushw	x
      0094C9 4B 66            [ 1] 2533 	push	#<(___str_0+0)
      0094CB 4B 81            [ 1] 2534 	push	#((___str_0+0) >> 8)
      0094CD CD 85 5C         [ 4] 2535 	call	_assert_failed
      0094D0 5B 06            [ 2] 2536 	addw	sp, #6
      0094D2                       2537 00107$:
                                   2538 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1257: TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
      0094D2 C6 52 5A         [ 1] 2539 	ld	a, 0x525a
                                   2540 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1255: if (NewState != DISABLE)
      0094D5 0D 03            [ 1] 2541 	tnz	(0x03, sp)
      0094D7 27 06            [ 1] 2542 	jreq	00102$
                                   2543 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1257: TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
      0094D9 AA 08            [ 1] 2544 	or	a, #0x08
      0094DB C7 52 5A         [ 1] 2545 	ld	0x525a, a
      0094DE 81               [ 4] 2546 	ret
      0094DF                       2547 00102$:
                                   2548 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1261: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      0094DF A4 F7            [ 1] 2549 	and	a, #0xf7
      0094E1 C7 52 5A         [ 1] 2550 	ld	0x525a, a
                                   2551 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1263: }
      0094E4 81               [ 4] 2552 	ret
                                   2553 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1271: void TIM1_OC4PreloadConfig(FunctionalState NewState)
                                   2554 ;	-----------------------------------------
                                   2555 ;	 function TIM1_OC4PreloadConfig
                                   2556 ;	-----------------------------------------
      0094E5                       2557 _TIM1_OC4PreloadConfig:
                                   2558 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1274: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0094E5 0D 03            [ 1] 2559 	tnz	(0x03, sp)
      0094E7 27 14            [ 1] 2560 	jreq	00107$
      0094E9 7B 03            [ 1] 2561 	ld	a, (0x03, sp)
      0094EB 4A               [ 1] 2562 	dec	a
      0094EC 27 0F            [ 1] 2563 	jreq	00107$
      0094EE 4B FA            [ 1] 2564 	push	#0xfa
      0094F0 4B 04            [ 1] 2565 	push	#0x04
      0094F2 5F               [ 1] 2566 	clrw	x
      0094F3 89               [ 2] 2567 	pushw	x
      0094F4 4B 66            [ 1] 2568 	push	#<(___str_0+0)
      0094F6 4B 81            [ 1] 2569 	push	#((___str_0+0) >> 8)
      0094F8 CD 85 5C         [ 4] 2570 	call	_assert_failed
      0094FB 5B 06            [ 2] 2571 	addw	sp, #6
      0094FD                       2572 00107$:
                                   2573 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1279: TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
      0094FD C6 52 5B         [ 1] 2574 	ld	a, 0x525b
                                   2575 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1277: if (NewState != DISABLE)
      009500 0D 03            [ 1] 2576 	tnz	(0x03, sp)
      009502 27 06            [ 1] 2577 	jreq	00102$
                                   2578 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1279: TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
      009504 AA 08            [ 1] 2579 	or	a, #0x08
      009506 C7 52 5B         [ 1] 2580 	ld	0x525b, a
      009509 81               [ 4] 2581 	ret
      00950A                       2582 00102$:
                                   2583 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1283: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      00950A A4 F7            [ 1] 2584 	and	a, #0xf7
      00950C C7 52 5B         [ 1] 2585 	ld	0x525b, a
                                   2586 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1285: }
      00950F 81               [ 4] 2587 	ret
                                   2588 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1293: void TIM1_OC1FastConfig(FunctionalState NewState)
                                   2589 ;	-----------------------------------------
                                   2590 ;	 function TIM1_OC1FastConfig
                                   2591 ;	-----------------------------------------
      009510                       2592 _TIM1_OC1FastConfig:
                                   2593 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1296: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009510 0D 03            [ 1] 2594 	tnz	(0x03, sp)
      009512 27 14            [ 1] 2595 	jreq	00107$
      009514 7B 03            [ 1] 2596 	ld	a, (0x03, sp)
      009516 4A               [ 1] 2597 	dec	a
      009517 27 0F            [ 1] 2598 	jreq	00107$
      009519 4B 10            [ 1] 2599 	push	#0x10
      00951B 4B 05            [ 1] 2600 	push	#0x05
      00951D 5F               [ 1] 2601 	clrw	x
      00951E 89               [ 2] 2602 	pushw	x
      00951F 4B 66            [ 1] 2603 	push	#<(___str_0+0)
      009521 4B 81            [ 1] 2604 	push	#((___str_0+0) >> 8)
      009523 CD 85 5C         [ 4] 2605 	call	_assert_failed
      009526 5B 06            [ 2] 2606 	addw	sp, #6
      009528                       2607 00107$:
                                   2608 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1301: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
      009528 C6 52 58         [ 1] 2609 	ld	a, 0x5258
                                   2610 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1299: if (NewState != DISABLE)
      00952B 0D 03            [ 1] 2611 	tnz	(0x03, sp)
      00952D 27 06            [ 1] 2612 	jreq	00102$
                                   2613 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1301: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
      00952F AA 04            [ 1] 2614 	or	a, #0x04
      009531 C7 52 58         [ 1] 2615 	ld	0x5258, a
      009534 81               [ 4] 2616 	ret
      009535                       2617 00102$:
                                   2618 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1305: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      009535 A4 FB            [ 1] 2619 	and	a, #0xfb
      009537 C7 52 58         [ 1] 2620 	ld	0x5258, a
                                   2621 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1307: }
      00953A 81               [ 4] 2622 	ret
                                   2623 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1315: void TIM1_OC2FastConfig(FunctionalState NewState)
                                   2624 ;	-----------------------------------------
                                   2625 ;	 function TIM1_OC2FastConfig
                                   2626 ;	-----------------------------------------
      00953B                       2627 _TIM1_OC2FastConfig:
                                   2628 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1318: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00953B 0D 03            [ 1] 2629 	tnz	(0x03, sp)
      00953D 27 14            [ 1] 2630 	jreq	00107$
      00953F 7B 03            [ 1] 2631 	ld	a, (0x03, sp)
      009541 4A               [ 1] 2632 	dec	a
      009542 27 0F            [ 1] 2633 	jreq	00107$
      009544 4B 26            [ 1] 2634 	push	#0x26
      009546 4B 05            [ 1] 2635 	push	#0x05
      009548 5F               [ 1] 2636 	clrw	x
      009549 89               [ 2] 2637 	pushw	x
      00954A 4B 66            [ 1] 2638 	push	#<(___str_0+0)
      00954C 4B 81            [ 1] 2639 	push	#((___str_0+0) >> 8)
      00954E CD 85 5C         [ 4] 2640 	call	_assert_failed
      009551 5B 06            [ 2] 2641 	addw	sp, #6
      009553                       2642 00107$:
                                   2643 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1323: TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
      009553 C6 52 59         [ 1] 2644 	ld	a, 0x5259
                                   2645 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1321: if (NewState != DISABLE)
      009556 0D 03            [ 1] 2646 	tnz	(0x03, sp)
      009558 27 06            [ 1] 2647 	jreq	00102$
                                   2648 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1323: TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
      00955A AA 04            [ 1] 2649 	or	a, #0x04
      00955C C7 52 59         [ 1] 2650 	ld	0x5259, a
      00955F 81               [ 4] 2651 	ret
      009560                       2652 00102$:
                                   2653 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1327: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      009560 A4 FB            [ 1] 2654 	and	a, #0xfb
      009562 C7 52 59         [ 1] 2655 	ld	0x5259, a
                                   2656 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1329: }
      009565 81               [ 4] 2657 	ret
                                   2658 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1337: void TIM1_OC3FastConfig(FunctionalState NewState)
                                   2659 ;	-----------------------------------------
                                   2660 ;	 function TIM1_OC3FastConfig
                                   2661 ;	-----------------------------------------
      009566                       2662 _TIM1_OC3FastConfig:
                                   2663 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1340: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009566 0D 03            [ 1] 2664 	tnz	(0x03, sp)
      009568 27 14            [ 1] 2665 	jreq	00107$
      00956A 7B 03            [ 1] 2666 	ld	a, (0x03, sp)
      00956C 4A               [ 1] 2667 	dec	a
      00956D 27 0F            [ 1] 2668 	jreq	00107$
      00956F 4B 3C            [ 1] 2669 	push	#0x3c
      009571 4B 05            [ 1] 2670 	push	#0x05
      009573 5F               [ 1] 2671 	clrw	x
      009574 89               [ 2] 2672 	pushw	x
      009575 4B 66            [ 1] 2673 	push	#<(___str_0+0)
      009577 4B 81            [ 1] 2674 	push	#((___str_0+0) >> 8)
      009579 CD 85 5C         [ 4] 2675 	call	_assert_failed
      00957C 5B 06            [ 2] 2676 	addw	sp, #6
      00957E                       2677 00107$:
                                   2678 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1345: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
      00957E C6 52 5A         [ 1] 2679 	ld	a, 0x525a
                                   2680 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1343: if (NewState != DISABLE)
      009581 0D 03            [ 1] 2681 	tnz	(0x03, sp)
      009583 27 06            [ 1] 2682 	jreq	00102$
                                   2683 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1345: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
      009585 AA 04            [ 1] 2684 	or	a, #0x04
      009587 C7 52 5A         [ 1] 2685 	ld	0x525a, a
      00958A 81               [ 4] 2686 	ret
      00958B                       2687 00102$:
                                   2688 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1349: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      00958B A4 FB            [ 1] 2689 	and	a, #0xfb
      00958D C7 52 5A         [ 1] 2690 	ld	0x525a, a
                                   2691 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1351: }
      009590 81               [ 4] 2692 	ret
                                   2693 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1359: void TIM1_OC4FastConfig(FunctionalState NewState)
                                   2694 ;	-----------------------------------------
                                   2695 ;	 function TIM1_OC4FastConfig
                                   2696 ;	-----------------------------------------
      009591                       2697 _TIM1_OC4FastConfig:
                                   2698 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1362: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009591 0D 03            [ 1] 2699 	tnz	(0x03, sp)
      009593 27 14            [ 1] 2700 	jreq	00107$
      009595 7B 03            [ 1] 2701 	ld	a, (0x03, sp)
      009597 4A               [ 1] 2702 	dec	a
      009598 27 0F            [ 1] 2703 	jreq	00107$
      00959A 4B 52            [ 1] 2704 	push	#0x52
      00959C 4B 05            [ 1] 2705 	push	#0x05
      00959E 5F               [ 1] 2706 	clrw	x
      00959F 89               [ 2] 2707 	pushw	x
      0095A0 4B 66            [ 1] 2708 	push	#<(___str_0+0)
      0095A2 4B 81            [ 1] 2709 	push	#((___str_0+0) >> 8)
      0095A4 CD 85 5C         [ 4] 2710 	call	_assert_failed
      0095A7 5B 06            [ 2] 2711 	addw	sp, #6
      0095A9                       2712 00107$:
                                   2713 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1367: TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
      0095A9 C6 52 5B         [ 1] 2714 	ld	a, 0x525b
                                   2715 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1365: if (NewState != DISABLE)
      0095AC 0D 03            [ 1] 2716 	tnz	(0x03, sp)
      0095AE 27 06            [ 1] 2717 	jreq	00102$
                                   2718 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1367: TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
      0095B0 AA 04            [ 1] 2719 	or	a, #0x04
      0095B2 C7 52 5B         [ 1] 2720 	ld	0x525b, a
      0095B5 81               [ 4] 2721 	ret
      0095B6                       2722 00102$:
                                   2723 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1371: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      0095B6 A4 FB            [ 1] 2724 	and	a, #0xfb
      0095B8 C7 52 5B         [ 1] 2725 	ld	0x525b, a
                                   2726 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1373: }
      0095BB 81               [ 4] 2727 	ret
                                   2728 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1389: void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
                                   2729 ;	-----------------------------------------
                                   2730 ;	 function TIM1_GenerateEvent
                                   2731 ;	-----------------------------------------
      0095BC                       2732 _TIM1_GenerateEvent:
                                   2733 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1392: assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
      0095BC 0D 03            [ 1] 2734 	tnz	(0x03, sp)
      0095BE 26 0F            [ 1] 2735 	jrne	00104$
      0095C0 4B 70            [ 1] 2736 	push	#0x70
      0095C2 4B 05            [ 1] 2737 	push	#0x05
      0095C4 5F               [ 1] 2738 	clrw	x
      0095C5 89               [ 2] 2739 	pushw	x
      0095C6 4B 66            [ 1] 2740 	push	#<(___str_0+0)
      0095C8 4B 81            [ 1] 2741 	push	#((___str_0+0) >> 8)
      0095CA CD 85 5C         [ 4] 2742 	call	_assert_failed
      0095CD 5B 06            [ 2] 2743 	addw	sp, #6
      0095CF                       2744 00104$:
                                   2745 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1395: TIM1->EGR = (uint8_t)TIM1_EventSource;
      0095CF AE 52 57         [ 2] 2746 	ldw	x, #0x5257
      0095D2 7B 03            [ 1] 2747 	ld	a, (0x03, sp)
      0095D4 F7               [ 1] 2748 	ld	(x), a
                                   2749 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1396: }
      0095D5 81               [ 4] 2750 	ret
                                   2751 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1406: void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2752 ;	-----------------------------------------
                                   2753 ;	 function TIM1_OC1PolarityConfig
                                   2754 ;	-----------------------------------------
      0095D6                       2755 _TIM1_OC1PolarityConfig:
                                   2756 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1409: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      0095D6 0D 03            [ 1] 2757 	tnz	(0x03, sp)
      0095D8 27 15            [ 1] 2758 	jreq	00107$
      0095DA 7B 03            [ 1] 2759 	ld	a, (0x03, sp)
      0095DC A1 22            [ 1] 2760 	cp	a, #0x22
      0095DE 27 0F            [ 1] 2761 	jreq	00107$
      0095E0 4B 81            [ 1] 2762 	push	#0x81
      0095E2 4B 05            [ 1] 2763 	push	#0x05
      0095E4 5F               [ 1] 2764 	clrw	x
      0095E5 89               [ 2] 2765 	pushw	x
      0095E6 4B 66            [ 1] 2766 	push	#<(___str_0+0)
      0095E8 4B 81            [ 1] 2767 	push	#((___str_0+0) >> 8)
      0095EA CD 85 5C         [ 4] 2768 	call	_assert_failed
      0095ED 5B 06            [ 2] 2769 	addw	sp, #6
      0095EF                       2770 00107$:
                                   2771 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1414: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      0095EF C6 52 5C         [ 1] 2772 	ld	a, 0x525c
                                   2773 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1412: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      0095F2 0D 03            [ 1] 2774 	tnz	(0x03, sp)
      0095F4 27 06            [ 1] 2775 	jreq	00102$
                                   2776 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1414: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      0095F6 AA 02            [ 1] 2777 	or	a, #0x02
      0095F8 C7 52 5C         [ 1] 2778 	ld	0x525c, a
      0095FB 81               [ 4] 2779 	ret
      0095FC                       2780 00102$:
                                   2781 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1418: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      0095FC A4 FD            [ 1] 2782 	and	a, #0xfd
      0095FE C7 52 5C         [ 1] 2783 	ld	0x525c, a
                                   2784 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1420: }
      009601 81               [ 4] 2785 	ret
                                   2786 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1430: void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   2787 ;	-----------------------------------------
                                   2788 ;	 function TIM1_OC1NPolarityConfig
                                   2789 ;	-----------------------------------------
      009602                       2790 _TIM1_OC1NPolarityConfig:
                                   2791 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1433: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      009602 0D 03            [ 1] 2792 	tnz	(0x03, sp)
      009604 27 15            [ 1] 2793 	jreq	00107$
      009606 7B 03            [ 1] 2794 	ld	a, (0x03, sp)
      009608 A1 88            [ 1] 2795 	cp	a, #0x88
      00960A 27 0F            [ 1] 2796 	jreq	00107$
      00960C 4B 99            [ 1] 2797 	push	#0x99
      00960E 4B 05            [ 1] 2798 	push	#0x05
      009610 5F               [ 1] 2799 	clrw	x
      009611 89               [ 2] 2800 	pushw	x
      009612 4B 66            [ 1] 2801 	push	#<(___str_0+0)
      009614 4B 81            [ 1] 2802 	push	#((___str_0+0) >> 8)
      009616 CD 85 5C         [ 4] 2803 	call	_assert_failed
      009619 5B 06            [ 2] 2804 	addw	sp, #6
      00961B                       2805 00107$:
                                   2806 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1438: TIM1->CCER1 |= TIM1_CCER1_CC1NP;
      00961B C6 52 5C         [ 1] 2807 	ld	a, 0x525c
                                   2808 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1436: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      00961E 0D 03            [ 1] 2809 	tnz	(0x03, sp)
      009620 27 06            [ 1] 2810 	jreq	00102$
                                   2811 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1438: TIM1->CCER1 |= TIM1_CCER1_CC1NP;
      009622 AA 08            [ 1] 2812 	or	a, #0x08
      009624 C7 52 5C         [ 1] 2813 	ld	0x525c, a
      009627 81               [ 4] 2814 	ret
      009628                       2815 00102$:
                                   2816 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1442: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
      009628 A4 F7            [ 1] 2817 	and	a, #0xf7
      00962A C7 52 5C         [ 1] 2818 	ld	0x525c, a
                                   2819 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1444: }
      00962D 81               [ 4] 2820 	ret
                                   2821 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1454: void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2822 ;	-----------------------------------------
                                   2823 ;	 function TIM1_OC2PolarityConfig
                                   2824 ;	-----------------------------------------
      00962E                       2825 _TIM1_OC2PolarityConfig:
                                   2826 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1457: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00962E 0D 03            [ 1] 2827 	tnz	(0x03, sp)
      009630 27 15            [ 1] 2828 	jreq	00107$
      009632 7B 03            [ 1] 2829 	ld	a, (0x03, sp)
      009634 A1 22            [ 1] 2830 	cp	a, #0x22
      009636 27 0F            [ 1] 2831 	jreq	00107$
      009638 4B B1            [ 1] 2832 	push	#0xb1
      00963A 4B 05            [ 1] 2833 	push	#0x05
      00963C 5F               [ 1] 2834 	clrw	x
      00963D 89               [ 2] 2835 	pushw	x
      00963E 4B 66            [ 1] 2836 	push	#<(___str_0+0)
      009640 4B 81            [ 1] 2837 	push	#((___str_0+0) >> 8)
      009642 CD 85 5C         [ 4] 2838 	call	_assert_failed
      009645 5B 06            [ 2] 2839 	addw	sp, #6
      009647                       2840 00107$:
                                   2841 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1462: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      009647 C6 52 5C         [ 1] 2842 	ld	a, 0x525c
                                   2843 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1460: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      00964A 0D 03            [ 1] 2844 	tnz	(0x03, sp)
      00964C 27 06            [ 1] 2845 	jreq	00102$
                                   2846 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1462: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      00964E AA 20            [ 1] 2847 	or	a, #0x20
      009650 C7 52 5C         [ 1] 2848 	ld	0x525c, a
      009653 81               [ 4] 2849 	ret
      009654                       2850 00102$:
                                   2851 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1466: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      009654 A4 DF            [ 1] 2852 	and	a, #0xdf
      009656 C7 52 5C         [ 1] 2853 	ld	0x525c, a
                                   2854 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1468: }
      009659 81               [ 4] 2855 	ret
                                   2856 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1478: void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   2857 ;	-----------------------------------------
                                   2858 ;	 function TIM1_OC2NPolarityConfig
                                   2859 ;	-----------------------------------------
      00965A                       2860 _TIM1_OC2NPolarityConfig:
                                   2861 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1481: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      00965A 0D 03            [ 1] 2862 	tnz	(0x03, sp)
      00965C 27 15            [ 1] 2863 	jreq	00107$
      00965E 7B 03            [ 1] 2864 	ld	a, (0x03, sp)
      009660 A1 88            [ 1] 2865 	cp	a, #0x88
      009662 27 0F            [ 1] 2866 	jreq	00107$
      009664 4B C9            [ 1] 2867 	push	#0xc9
      009666 4B 05            [ 1] 2868 	push	#0x05
      009668 5F               [ 1] 2869 	clrw	x
      009669 89               [ 2] 2870 	pushw	x
      00966A 4B 66            [ 1] 2871 	push	#<(___str_0+0)
      00966C 4B 81            [ 1] 2872 	push	#((___str_0+0) >> 8)
      00966E CD 85 5C         [ 4] 2873 	call	_assert_failed
      009671 5B 06            [ 2] 2874 	addw	sp, #6
      009673                       2875 00107$:
                                   2876 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1486: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
      009673 C6 52 5C         [ 1] 2877 	ld	a, 0x525c
                                   2878 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1484: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      009676 0D 03            [ 1] 2879 	tnz	(0x03, sp)
      009678 27 06            [ 1] 2880 	jreq	00102$
                                   2881 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1486: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
      00967A AA 80            [ 1] 2882 	or	a, #0x80
      00967C C7 52 5C         [ 1] 2883 	ld	0x525c, a
      00967F 81               [ 4] 2884 	ret
      009680                       2885 00102$:
                                   2886 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1490: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
      009680 A4 7F            [ 1] 2887 	and	a, #0x7f
      009682 C7 52 5C         [ 1] 2888 	ld	0x525c, a
                                   2889 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1492: }
      009685 81               [ 4] 2890 	ret
                                   2891 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1502: void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2892 ;	-----------------------------------------
                                   2893 ;	 function TIM1_OC3PolarityConfig
                                   2894 ;	-----------------------------------------
      009686                       2895 _TIM1_OC3PolarityConfig:
                                   2896 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1505: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      009686 0D 03            [ 1] 2897 	tnz	(0x03, sp)
      009688 27 15            [ 1] 2898 	jreq	00107$
      00968A 7B 03            [ 1] 2899 	ld	a, (0x03, sp)
      00968C A1 22            [ 1] 2900 	cp	a, #0x22
      00968E 27 0F            [ 1] 2901 	jreq	00107$
      009690 4B E1            [ 1] 2902 	push	#0xe1
      009692 4B 05            [ 1] 2903 	push	#0x05
      009694 5F               [ 1] 2904 	clrw	x
      009695 89               [ 2] 2905 	pushw	x
      009696 4B 66            [ 1] 2906 	push	#<(___str_0+0)
      009698 4B 81            [ 1] 2907 	push	#((___str_0+0) >> 8)
      00969A CD 85 5C         [ 4] 2908 	call	_assert_failed
      00969D 5B 06            [ 2] 2909 	addw	sp, #6
      00969F                       2910 00107$:
                                   2911 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1510: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      00969F C6 52 5D         [ 1] 2912 	ld	a, 0x525d
                                   2913 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1508: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      0096A2 0D 03            [ 1] 2914 	tnz	(0x03, sp)
      0096A4 27 06            [ 1] 2915 	jreq	00102$
                                   2916 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1510: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      0096A6 AA 02            [ 1] 2917 	or	a, #0x02
      0096A8 C7 52 5D         [ 1] 2918 	ld	0x525d, a
      0096AB 81               [ 4] 2919 	ret
      0096AC                       2920 00102$:
                                   2921 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1514: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      0096AC A4 FD            [ 1] 2922 	and	a, #0xfd
      0096AE C7 52 5D         [ 1] 2923 	ld	0x525d, a
                                   2924 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1516: }
      0096B1 81               [ 4] 2925 	ret
                                   2926 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1527: void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   2927 ;	-----------------------------------------
                                   2928 ;	 function TIM1_OC3NPolarityConfig
                                   2929 ;	-----------------------------------------
      0096B2                       2930 _TIM1_OC3NPolarityConfig:
                                   2931 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1530: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      0096B2 0D 03            [ 1] 2932 	tnz	(0x03, sp)
      0096B4 27 15            [ 1] 2933 	jreq	00107$
      0096B6 7B 03            [ 1] 2934 	ld	a, (0x03, sp)
      0096B8 A1 88            [ 1] 2935 	cp	a, #0x88
      0096BA 27 0F            [ 1] 2936 	jreq	00107$
      0096BC 4B FA            [ 1] 2937 	push	#0xfa
      0096BE 4B 05            [ 1] 2938 	push	#0x05
      0096C0 5F               [ 1] 2939 	clrw	x
      0096C1 89               [ 2] 2940 	pushw	x
      0096C2 4B 66            [ 1] 2941 	push	#<(___str_0+0)
      0096C4 4B 81            [ 1] 2942 	push	#((___str_0+0) >> 8)
      0096C6 CD 85 5C         [ 4] 2943 	call	_assert_failed
      0096C9 5B 06            [ 2] 2944 	addw	sp, #6
      0096CB                       2945 00107$:
                                   2946 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1535: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
      0096CB C6 52 5D         [ 1] 2947 	ld	a, 0x525d
                                   2948 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1533: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      0096CE 0D 03            [ 1] 2949 	tnz	(0x03, sp)
      0096D0 27 06            [ 1] 2950 	jreq	00102$
                                   2951 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1535: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
      0096D2 AA 08            [ 1] 2952 	or	a, #0x08
      0096D4 C7 52 5D         [ 1] 2953 	ld	0x525d, a
      0096D7 81               [ 4] 2954 	ret
      0096D8                       2955 00102$:
                                   2956 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1539: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
      0096D8 A4 F7            [ 1] 2957 	and	a, #0xf7
      0096DA C7 52 5D         [ 1] 2958 	ld	0x525d, a
                                   2959 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1541: }
      0096DD 81               [ 4] 2960 	ret
                                   2961 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1551: void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2962 ;	-----------------------------------------
                                   2963 ;	 function TIM1_OC4PolarityConfig
                                   2964 ;	-----------------------------------------
      0096DE                       2965 _TIM1_OC4PolarityConfig:
                                   2966 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1554: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      0096DE 0D 03            [ 1] 2967 	tnz	(0x03, sp)
      0096E0 27 15            [ 1] 2968 	jreq	00107$
      0096E2 7B 03            [ 1] 2969 	ld	a, (0x03, sp)
      0096E4 A1 22            [ 1] 2970 	cp	a, #0x22
      0096E6 27 0F            [ 1] 2971 	jreq	00107$
      0096E8 4B 12            [ 1] 2972 	push	#0x12
      0096EA 4B 06            [ 1] 2973 	push	#0x06
      0096EC 5F               [ 1] 2974 	clrw	x
      0096ED 89               [ 2] 2975 	pushw	x
      0096EE 4B 66            [ 1] 2976 	push	#<(___str_0+0)
      0096F0 4B 81            [ 1] 2977 	push	#((___str_0+0) >> 8)
      0096F2 CD 85 5C         [ 4] 2978 	call	_assert_failed
      0096F5 5B 06            [ 2] 2979 	addw	sp, #6
      0096F7                       2980 00107$:
                                   2981 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1559: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      0096F7 C6 52 5D         [ 1] 2982 	ld	a, 0x525d
                                   2983 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1557: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      0096FA 0D 03            [ 1] 2984 	tnz	(0x03, sp)
      0096FC 27 06            [ 1] 2985 	jreq	00102$
                                   2986 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1559: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      0096FE AA 20            [ 1] 2987 	or	a, #0x20
      009700 C7 52 5D         [ 1] 2988 	ld	0x525d, a
      009703 81               [ 4] 2989 	ret
      009704                       2990 00102$:
                                   2991 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1563: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      009704 A4 DF            [ 1] 2992 	and	a, #0xdf
      009706 C7 52 5D         [ 1] 2993 	ld	0x525d, a
                                   2994 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1565: }
      009709 81               [ 4] 2995 	ret
                                   2996 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1579: void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
                                   2997 ;	-----------------------------------------
                                   2998 ;	 function TIM1_CCxCmd
                                   2999 ;	-----------------------------------------
      00970A                       3000 _TIM1_CCxCmd:
      00970A 89               [ 2] 3001 	pushw	x
                                   3002 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1582: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      00970B 7B 05            [ 1] 3003 	ld	a, (0x05, sp)
      00970D 4A               [ 1] 3004 	dec	a
      00970E 26 05            [ 1] 3005 	jrne	00206$
      009710 A6 01            [ 1] 3006 	ld	a, #0x01
      009712 6B 01            [ 1] 3007 	ld	(0x01, sp), a
      009714 C5                    3008 	.byte 0xc5
      009715                       3009 00206$:
      009715 0F 01            [ 1] 3010 	clr	(0x01, sp)
      009717                       3011 00207$:
      009717 7B 05            [ 1] 3012 	ld	a, (0x05, sp)
      009719 A0 02            [ 1] 3013 	sub	a, #0x02
      00971B 26 04            [ 1] 3014 	jrne	00209$
      00971D 4C               [ 1] 3015 	inc	a
      00971E 6B 02            [ 1] 3016 	ld	(0x02, sp), a
      009720 C5                    3017 	.byte 0xc5
      009721                       3018 00209$:
      009721 0F 02            [ 1] 3019 	clr	(0x02, sp)
      009723                       3020 00210$:
      009723 0D 05            [ 1] 3021 	tnz	(0x05, sp)
      009725 27 1D            [ 1] 3022 	jreq	00125$
      009727 0D 01            [ 1] 3023 	tnz	(0x01, sp)
      009729 26 19            [ 1] 3024 	jrne	00125$
      00972B 0D 02            [ 1] 3025 	tnz	(0x02, sp)
      00972D 26 15            [ 1] 3026 	jrne	00125$
      00972F 7B 05            [ 1] 3027 	ld	a, (0x05, sp)
      009731 A1 03            [ 1] 3028 	cp	a, #0x03
      009733 27 0F            [ 1] 3029 	jreq	00125$
      009735 4B 2E            [ 1] 3030 	push	#0x2e
      009737 4B 06            [ 1] 3031 	push	#0x06
      009739 5F               [ 1] 3032 	clrw	x
      00973A 89               [ 2] 3033 	pushw	x
      00973B 4B 66            [ 1] 3034 	push	#<(___str_0+0)
      00973D 4B 81            [ 1] 3035 	push	#((___str_0+0) >> 8)
      00973F CD 85 5C         [ 4] 3036 	call	_assert_failed
      009742 5B 06            [ 2] 3037 	addw	sp, #6
      009744                       3038 00125$:
                                   3039 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1583: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009744 0D 06            [ 1] 3040 	tnz	(0x06, sp)
      009746 27 14            [ 1] 3041 	jreq	00136$
      009748 7B 06            [ 1] 3042 	ld	a, (0x06, sp)
      00974A 4A               [ 1] 3043 	dec	a
      00974B 27 0F            [ 1] 3044 	jreq	00136$
      00974D 4B 2F            [ 1] 3045 	push	#0x2f
      00974F 4B 06            [ 1] 3046 	push	#0x06
      009751 5F               [ 1] 3047 	clrw	x
      009752 89               [ 2] 3048 	pushw	x
      009753 4B 66            [ 1] 3049 	push	#<(___str_0+0)
      009755 4B 81            [ 1] 3050 	push	#((___str_0+0) >> 8)
      009757 CD 85 5C         [ 4] 3051 	call	_assert_failed
      00975A 5B 06            [ 2] 3052 	addw	sp, #6
      00975C                       3053 00136$:
                                   3054 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1585: if (TIM1_Channel == TIM1_CHANNEL_1)
      00975C 0D 05            [ 1] 3055 	tnz	(0x05, sp)
      00975E 26 15            [ 1] 3056 	jrne	00120$
                                   3057 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      009760 C6 52 5C         [ 1] 3058 	ld	a, 0x525c
                                   3059 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1588: if (NewState != DISABLE)
      009763 0D 06            [ 1] 3060 	tnz	(0x06, sp)
      009765 27 07            [ 1] 3061 	jreq	00102$
                                   3062 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      009767 AA 01            [ 1] 3063 	or	a, #0x01
      009769 C7 52 5C         [ 1] 3064 	ld	0x525c, a
      00976C 20 4E            [ 2] 3065 	jra	00122$
      00976E                       3066 00102$:
                                   3067 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1594: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      00976E A4 FE            [ 1] 3068 	and	a, #0xfe
      009770 C7 52 5C         [ 1] 3069 	ld	0x525c, a
      009773 20 47            [ 2] 3070 	jra	00122$
      009775                       3071 00120$:
                                   3072 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1598: else if (TIM1_Channel == TIM1_CHANNEL_2)
      009775 7B 01            [ 1] 3073 	ld	a, (0x01, sp)
      009777 27 15            [ 1] 3074 	jreq	00117$
                                   3075 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      009779 C6 52 5C         [ 1] 3076 	ld	a, 0x525c
                                   3077 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1601: if (NewState != DISABLE)
      00977C 0D 06            [ 1] 3078 	tnz	(0x06, sp)
      00977E 27 07            [ 1] 3079 	jreq	00105$
                                   3080 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1603: TIM1->CCER1 |= TIM1_CCER1_CC2E;
      009780 AA 10            [ 1] 3081 	or	a, #0x10
      009782 C7 52 5C         [ 1] 3082 	ld	0x525c, a
      009785 20 35            [ 2] 3083 	jra	00122$
      009787                       3084 00105$:
                                   3085 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1607: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      009787 A4 EF            [ 1] 3086 	and	a, #0xef
      009789 C7 52 5C         [ 1] 3087 	ld	0x525c, a
      00978C 20 2E            [ 2] 3088 	jra	00122$
      00978E                       3089 00117$:
                                   3090 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1615: TIM1->CCER2 |= TIM1_CCER2_CC3E;
      00978E C6 52 5D         [ 1] 3091 	ld	a, 0x525d
                                   3092 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1610: else if (TIM1_Channel == TIM1_CHANNEL_3)
      009791 41               [ 1] 3093 	exg	a, xl
      009792 7B 02            [ 1] 3094 	ld	a, (0x02, sp)
      009794 41               [ 1] 3095 	exg	a, xl
      009795 41               [ 1] 3096 	exg	a, xl
      009796 4D               [ 1] 3097 	tnz	a
      009797 41               [ 1] 3098 	exg	a, xl
      009798 27 12            [ 1] 3099 	jreq	00114$
                                   3100 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1613: if (NewState != DISABLE)
      00979A 0D 06            [ 1] 3101 	tnz	(0x06, sp)
      00979C 27 07            [ 1] 3102 	jreq	00108$
                                   3103 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1615: TIM1->CCER2 |= TIM1_CCER2_CC3E;
      00979E AA 01            [ 1] 3104 	or	a, #0x01
      0097A0 C7 52 5D         [ 1] 3105 	ld	0x525d, a
      0097A3 20 17            [ 2] 3106 	jra	00122$
      0097A5                       3107 00108$:
                                   3108 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1619: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      0097A5 A4 FE            [ 1] 3109 	and	a, #0xfe
      0097A7 C7 52 5D         [ 1] 3110 	ld	0x525d, a
      0097AA 20 10            [ 2] 3111 	jra	00122$
      0097AC                       3112 00114$:
                                   3113 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1625: if (NewState != DISABLE)
      0097AC 0D 06            [ 1] 3114 	tnz	(0x06, sp)
      0097AE 27 07            [ 1] 3115 	jreq	00111$
                                   3116 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1627: TIM1->CCER2 |= TIM1_CCER2_CC4E;
      0097B0 AA 10            [ 1] 3117 	or	a, #0x10
      0097B2 C7 52 5D         [ 1] 3118 	ld	0x525d, a
      0097B5 20 05            [ 2] 3119 	jra	00122$
      0097B7                       3120 00111$:
                                   3121 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1631: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      0097B7 A4 EF            [ 1] 3122 	and	a, #0xef
      0097B9 C7 52 5D         [ 1] 3123 	ld	0x525d, a
      0097BC                       3124 00122$:
                                   3125 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1634: }
      0097BC 85               [ 2] 3126 	popw	x
      0097BD 81               [ 4] 3127 	ret
                                   3128 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1647: void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
                                   3129 ;	-----------------------------------------
                                   3130 ;	 function TIM1_CCxNCmd
                                   3131 ;	-----------------------------------------
      0097BE                       3132 _TIM1_CCxNCmd:
      0097BE 88               [ 1] 3133 	push	a
                                   3134 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1650: assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
      0097BF 7B 04            [ 1] 3135 	ld	a, (0x04, sp)
      0097C1 4A               [ 1] 3136 	dec	a
      0097C2 26 05            [ 1] 3137 	jrne	00182$
      0097C4 A6 01            [ 1] 3138 	ld	a, #0x01
      0097C6 6B 01            [ 1] 3139 	ld	(0x01, sp), a
      0097C8 C5                    3140 	.byte 0xc5
      0097C9                       3141 00182$:
      0097C9 0F 01            [ 1] 3142 	clr	(0x01, sp)
      0097CB                       3143 00183$:
      0097CB 0D 04            [ 1] 3144 	tnz	(0x04, sp)
      0097CD 27 19            [ 1] 3145 	jreq	00119$
      0097CF 0D 01            [ 1] 3146 	tnz	(0x01, sp)
      0097D1 26 15            [ 1] 3147 	jrne	00119$
      0097D3 7B 04            [ 1] 3148 	ld	a, (0x04, sp)
      0097D5 A1 02            [ 1] 3149 	cp	a, #0x02
      0097D7 27 0F            [ 1] 3150 	jreq	00119$
      0097D9 4B 72            [ 1] 3151 	push	#0x72
      0097DB 4B 06            [ 1] 3152 	push	#0x06
      0097DD 5F               [ 1] 3153 	clrw	x
      0097DE 89               [ 2] 3154 	pushw	x
      0097DF 4B 66            [ 1] 3155 	push	#<(___str_0+0)
      0097E1 4B 81            [ 1] 3156 	push	#((___str_0+0) >> 8)
      0097E3 CD 85 5C         [ 4] 3157 	call	_assert_failed
      0097E6 5B 06            [ 2] 3158 	addw	sp, #6
      0097E8                       3159 00119$:
                                   3160 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1651: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      0097E8 0D 05            [ 1] 3161 	tnz	(0x05, sp)
      0097EA 27 14            [ 1] 3162 	jreq	00127$
      0097EC 7B 05            [ 1] 3163 	ld	a, (0x05, sp)
      0097EE 4A               [ 1] 3164 	dec	a
      0097EF 27 0F            [ 1] 3165 	jreq	00127$
      0097F1 4B 73            [ 1] 3166 	push	#0x73
      0097F3 4B 06            [ 1] 3167 	push	#0x06
      0097F5 5F               [ 1] 3168 	clrw	x
      0097F6 89               [ 2] 3169 	pushw	x
      0097F7 4B 66            [ 1] 3170 	push	#<(___str_0+0)
      0097F9 4B 81            [ 1] 3171 	push	#((___str_0+0) >> 8)
      0097FB CD 85 5C         [ 4] 3172 	call	_assert_failed
      0097FE 5B 06            [ 2] 3173 	addw	sp, #6
      009800                       3174 00127$:
                                   3175 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1653: if (TIM1_Channel == TIM1_CHANNEL_1)
      009800 0D 04            [ 1] 3176 	tnz	(0x04, sp)
      009802 26 15            [ 1] 3177 	jrne	00114$
                                   3178 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      009804 C6 52 5C         [ 1] 3179 	ld	a, 0x525c
                                   3180 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1656: if (NewState != DISABLE)
      009807 0D 05            [ 1] 3181 	tnz	(0x05, sp)
      009809 27 07            [ 1] 3182 	jreq	00102$
                                   3183 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      00980B AA 04            [ 1] 3184 	or	a, #0x04
      00980D C7 52 5C         [ 1] 3185 	ld	0x525c, a
      009810 20 33            [ 2] 3186 	jra	00116$
      009812                       3187 00102$:
                                   3188 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1662: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
      009812 A4 FB            [ 1] 3189 	and	a, #0xfb
      009814 C7 52 5C         [ 1] 3190 	ld	0x525c, a
      009817 20 2C            [ 2] 3191 	jra	00116$
      009819                       3192 00114$:
                                   3193 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1665: else if (TIM1_Channel == TIM1_CHANNEL_2)
      009819 7B 01            [ 1] 3194 	ld	a, (0x01, sp)
      00981B 27 15            [ 1] 3195 	jreq	00111$
                                   3196 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      00981D C6 52 5C         [ 1] 3197 	ld	a, 0x525c
                                   3198 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1668: if (NewState != DISABLE)
      009820 0D 05            [ 1] 3199 	tnz	(0x05, sp)
      009822 27 07            [ 1] 3200 	jreq	00105$
                                   3201 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1670: TIM1->CCER1 |= TIM1_CCER1_CC2NE;
      009824 AA 40            [ 1] 3202 	or	a, #0x40
      009826 C7 52 5C         [ 1] 3203 	ld	0x525c, a
      009829 20 1A            [ 2] 3204 	jra	00116$
      00982B                       3205 00105$:
                                   3206 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1674: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
      00982B A4 BF            [ 1] 3207 	and	a, #0xbf
      00982D C7 52 5C         [ 1] 3208 	ld	0x525c, a
      009830 20 13            [ 2] 3209 	jra	00116$
      009832                       3210 00111$:
                                   3211 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1682: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
      009832 C6 52 5D         [ 1] 3212 	ld	a, 0x525d
                                   3213 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1680: if (NewState != DISABLE)
      009835 0D 05            [ 1] 3214 	tnz	(0x05, sp)
      009837 27 07            [ 1] 3215 	jreq	00108$
                                   3216 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1682: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
      009839 AA 04            [ 1] 3217 	or	a, #0x04
      00983B C7 52 5D         [ 1] 3218 	ld	0x525d, a
      00983E 20 05            [ 2] 3219 	jra	00116$
      009840                       3220 00108$:
                                   3221 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1686: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
      009840 A4 FB            [ 1] 3222 	and	a, #0xfb
      009842 C7 52 5D         [ 1] 3223 	ld	0x525d, a
      009845                       3224 00116$:
                                   3225 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1689: }
      009845 84               [ 1] 3226 	pop	a
      009846 81               [ 4] 3227 	ret
                                   3228 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1712: void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
                                   3229 ;	-----------------------------------------
                                   3230 ;	 function TIM1_SelectOCxM
                                   3231 ;	-----------------------------------------
      009847                       3232 _TIM1_SelectOCxM:
      009847 89               [ 2] 3233 	pushw	x
                                   3234 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1715: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      009848 7B 05            [ 1] 3235 	ld	a, (0x05, sp)
      00984A 4A               [ 1] 3236 	dec	a
      00984B 26 05            [ 1] 3237 	jrne	00222$
      00984D A6 01            [ 1] 3238 	ld	a, #0x01
      00984F 6B 01            [ 1] 3239 	ld	(0x01, sp), a
      009851 C5                    3240 	.byte 0xc5
      009852                       3241 00222$:
      009852 0F 01            [ 1] 3242 	clr	(0x01, sp)
      009854                       3243 00223$:
      009854 7B 05            [ 1] 3244 	ld	a, (0x05, sp)
      009856 A0 02            [ 1] 3245 	sub	a, #0x02
      009858 26 04            [ 1] 3246 	jrne	00225$
      00985A 4C               [ 1] 3247 	inc	a
      00985B 6B 02            [ 1] 3248 	ld	(0x02, sp), a
      00985D C5                    3249 	.byte 0xc5
      00985E                       3250 00225$:
      00985E 0F 02            [ 1] 3251 	clr	(0x02, sp)
      009860                       3252 00226$:
      009860 0D 05            [ 1] 3253 	tnz	(0x05, sp)
      009862 27 1D            [ 1] 3254 	jreq	00113$
      009864 0D 01            [ 1] 3255 	tnz	(0x01, sp)
      009866 26 19            [ 1] 3256 	jrne	00113$
      009868 0D 02            [ 1] 3257 	tnz	(0x02, sp)
      00986A 26 15            [ 1] 3258 	jrne	00113$
      00986C 7B 05            [ 1] 3259 	ld	a, (0x05, sp)
      00986E A1 03            [ 1] 3260 	cp	a, #0x03
      009870 27 0F            [ 1] 3261 	jreq	00113$
      009872 4B B3            [ 1] 3262 	push	#0xb3
      009874 4B 06            [ 1] 3263 	push	#0x06
      009876 5F               [ 1] 3264 	clrw	x
      009877 89               [ 2] 3265 	pushw	x
      009878 4B 66            [ 1] 3266 	push	#<(___str_0+0)
      00987A 4B 81            [ 1] 3267 	push	#((___str_0+0) >> 8)
      00987C CD 85 5C         [ 4] 3268 	call	_assert_failed
      00987F 5B 06            [ 2] 3269 	addw	sp, #6
      009881                       3270 00113$:
                                   3271 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1716: assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
      009881 0D 06            [ 1] 3272 	tnz	(0x06, sp)
      009883 27 39            [ 1] 3273 	jreq	00124$
      009885 7B 06            [ 1] 3274 	ld	a, (0x06, sp)
      009887 A1 10            [ 1] 3275 	cp	a, #0x10
      009889 27 33            [ 1] 3276 	jreq	00124$
      00988B 7B 06            [ 1] 3277 	ld	a, (0x06, sp)
      00988D A1 20            [ 1] 3278 	cp	a, #0x20
      00988F 27 2D            [ 1] 3279 	jreq	00124$
      009891 7B 06            [ 1] 3280 	ld	a, (0x06, sp)
      009893 A1 30            [ 1] 3281 	cp	a, #0x30
      009895 27 27            [ 1] 3282 	jreq	00124$
      009897 7B 06            [ 1] 3283 	ld	a, (0x06, sp)
      009899 A1 60            [ 1] 3284 	cp	a, #0x60
      00989B 27 21            [ 1] 3285 	jreq	00124$
      00989D 7B 06            [ 1] 3286 	ld	a, (0x06, sp)
      00989F A1 70            [ 1] 3287 	cp	a, #0x70
      0098A1 27 1B            [ 1] 3288 	jreq	00124$
      0098A3 7B 06            [ 1] 3289 	ld	a, (0x06, sp)
      0098A5 A1 50            [ 1] 3290 	cp	a, #0x50
      0098A7 27 15            [ 1] 3291 	jreq	00124$
      0098A9 7B 06            [ 1] 3292 	ld	a, (0x06, sp)
      0098AB A1 40            [ 1] 3293 	cp	a, #0x40
      0098AD 27 0F            [ 1] 3294 	jreq	00124$
      0098AF 4B B4            [ 1] 3295 	push	#0xb4
      0098B1 4B 06            [ 1] 3296 	push	#0x06
      0098B3 5F               [ 1] 3297 	clrw	x
      0098B4 89               [ 2] 3298 	pushw	x
      0098B5 4B 66            [ 1] 3299 	push	#<(___str_0+0)
      0098B7 4B 81            [ 1] 3300 	push	#((___str_0+0) >> 8)
      0098B9 CD 85 5C         [ 4] 3301 	call	_assert_failed
      0098BC 5B 06            [ 2] 3302 	addw	sp, #6
      0098BE                       3303 00124$:
                                   3304 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1718: if (TIM1_Channel == TIM1_CHANNEL_1)
      0098BE 0D 05            [ 1] 3305 	tnz	(0x05, sp)
      0098C0 26 10            [ 1] 3306 	jrne	00108$
                                   3307 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1721: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      0098C2 72 11 52 5C      [ 1] 3308 	bres	21084, #0
                                   3309 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1724: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
      0098C6 C6 52 58         [ 1] 3310 	ld	a, 0x5258
      0098C9 A4 8F            [ 1] 3311 	and	a, #0x8f
                                   3312 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1725: | (uint8_t)TIM1_OCMode);
      0098CB 1A 06            [ 1] 3313 	or	a, (0x06, sp)
      0098CD C7 52 58         [ 1] 3314 	ld	0x5258, a
      0098D0 20 3E            [ 2] 3315 	jra	00110$
      0098D2                       3316 00108$:
                                   3317 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1727: else if (TIM1_Channel == TIM1_CHANNEL_2)
      0098D2 7B 01            [ 1] 3318 	ld	a, (0x01, sp)
      0098D4 27 10            [ 1] 3319 	jreq	00105$
                                   3320 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1730: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      0098D6 72 19 52 5C      [ 1] 3321 	bres	21084, #4
                                   3322 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1733: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
      0098DA C6 52 59         [ 1] 3323 	ld	a, 0x5259
      0098DD A4 8F            [ 1] 3324 	and	a, #0x8f
                                   3325 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1734: | (uint8_t)TIM1_OCMode);
      0098DF 1A 06            [ 1] 3326 	or	a, (0x06, sp)
      0098E1 C7 52 59         [ 1] 3327 	ld	0x5259, a
      0098E4 20 2A            [ 2] 3328 	jra	00110$
      0098E6                       3329 00105$:
                                   3330 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1739: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      0098E6 C6 52 5D         [ 1] 3331 	ld	a, 0x525d
      0098E9 97               [ 1] 3332 	ld	xl, a
                                   3333 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1736: else if (TIM1_Channel == TIM1_CHANNEL_3)
      0098EA 7B 02            [ 1] 3334 	ld	a, (0x02, sp)
      0098EC 27 12            [ 1] 3335 	jreq	00102$
                                   3336 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1739: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      0098EE 9F               [ 1] 3337 	ld	a, xl
      0098EF A4 FE            [ 1] 3338 	and	a, #0xfe
      0098F1 C7 52 5D         [ 1] 3339 	ld	0x525d, a
                                   3340 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1742: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
      0098F4 C6 52 5A         [ 1] 3341 	ld	a, 0x525a
      0098F7 A4 8F            [ 1] 3342 	and	a, #0x8f
                                   3343 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1743: | (uint8_t)TIM1_OCMode);
      0098F9 1A 06            [ 1] 3344 	or	a, (0x06, sp)
      0098FB C7 52 5A         [ 1] 3345 	ld	0x525a, a
      0098FE 20 10            [ 2] 3346 	jra	00110$
      009900                       3347 00102$:
                                   3348 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1748: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      009900 9F               [ 1] 3349 	ld	a, xl
      009901 A4 EF            [ 1] 3350 	and	a, #0xef
      009903 C7 52 5D         [ 1] 3351 	ld	0x525d, a
                                   3352 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1751: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
      009906 C6 52 5B         [ 1] 3353 	ld	a, 0x525b
      009909 A4 8F            [ 1] 3354 	and	a, #0x8f
                                   3355 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1752: | (uint8_t)TIM1_OCMode);
      00990B 1A 06            [ 1] 3356 	or	a, (0x06, sp)
      00990D C7 52 5B         [ 1] 3357 	ld	0x525b, a
      009910                       3358 00110$:
                                   3359 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1754: }
      009910 85               [ 2] 3360 	popw	x
      009911 81               [ 4] 3361 	ret
                                   3362 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1762: void TIM1_SetCounter(uint16_t Counter)
                                   3363 ;	-----------------------------------------
                                   3364 ;	 function TIM1_SetCounter
                                   3365 ;	-----------------------------------------
      009912                       3366 _TIM1_SetCounter:
                                   3367 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1765: TIM1->CNTRH = (uint8_t)(Counter >> 8);
      009912 7B 03            [ 1] 3368 	ld	a, (0x03, sp)
      009914 C7 52 5E         [ 1] 3369 	ld	0x525e, a
                                   3370 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1766: TIM1->CNTRL = (uint8_t)(Counter);
      009917 7B 04            [ 1] 3371 	ld	a, (0x04, sp)
      009919 C7 52 5F         [ 1] 3372 	ld	0x525f, a
                                   3373 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1767: }
      00991C 81               [ 4] 3374 	ret
                                   3375 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1775: void TIM1_SetAutoreload(uint16_t Autoreload)
                                   3376 ;	-----------------------------------------
                                   3377 ;	 function TIM1_SetAutoreload
                                   3378 ;	-----------------------------------------
      00991D                       3379 _TIM1_SetAutoreload:
                                   3380 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1778: TIM1->ARRH = (uint8_t)(Autoreload >> 8);
      00991D 7B 03            [ 1] 3381 	ld	a, (0x03, sp)
      00991F C7 52 62         [ 1] 3382 	ld	0x5262, a
                                   3383 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1779: TIM1->ARRL = (uint8_t)(Autoreload);
      009922 7B 04            [ 1] 3384 	ld	a, (0x04, sp)
      009924 C7 52 63         [ 1] 3385 	ld	0x5263, a
                                   3386 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1780: }
      009927 81               [ 4] 3387 	ret
                                   3388 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1788: void TIM1_SetCompare1(uint16_t Compare1)
                                   3389 ;	-----------------------------------------
                                   3390 ;	 function TIM1_SetCompare1
                                   3391 ;	-----------------------------------------
      009928                       3392 _TIM1_SetCompare1:
                                   3393 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1791: TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
      009928 7B 03            [ 1] 3394 	ld	a, (0x03, sp)
      00992A C7 52 65         [ 1] 3395 	ld	0x5265, a
                                   3396 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1792: TIM1->CCR1L = (uint8_t)(Compare1);
      00992D 7B 04            [ 1] 3397 	ld	a, (0x04, sp)
      00992F C7 52 66         [ 1] 3398 	ld	0x5266, a
                                   3399 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1793: }
      009932 81               [ 4] 3400 	ret
                                   3401 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1801: void TIM1_SetCompare2(uint16_t Compare2)
                                   3402 ;	-----------------------------------------
                                   3403 ;	 function TIM1_SetCompare2
                                   3404 ;	-----------------------------------------
      009933                       3405 _TIM1_SetCompare2:
                                   3406 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1804: TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
      009933 7B 03            [ 1] 3407 	ld	a, (0x03, sp)
      009935 C7 52 67         [ 1] 3408 	ld	0x5267, a
                                   3409 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1805: TIM1->CCR2L = (uint8_t)(Compare2);
      009938 7B 04            [ 1] 3410 	ld	a, (0x04, sp)
      00993A C7 52 68         [ 1] 3411 	ld	0x5268, a
                                   3412 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1806: }
      00993D 81               [ 4] 3413 	ret
                                   3414 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1814: void TIM1_SetCompare3(uint16_t Compare3)
                                   3415 ;	-----------------------------------------
                                   3416 ;	 function TIM1_SetCompare3
                                   3417 ;	-----------------------------------------
      00993E                       3418 _TIM1_SetCompare3:
                                   3419 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1817: TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
      00993E 7B 03            [ 1] 3420 	ld	a, (0x03, sp)
      009940 C7 52 69         [ 1] 3421 	ld	0x5269, a
                                   3422 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1818: TIM1->CCR3L = (uint8_t)(Compare3);
      009943 7B 04            [ 1] 3423 	ld	a, (0x04, sp)
      009945 C7 52 6A         [ 1] 3424 	ld	0x526a, a
                                   3425 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1819: }
      009948 81               [ 4] 3426 	ret
                                   3427 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1827: void TIM1_SetCompare4(uint16_t Compare4)
                                   3428 ;	-----------------------------------------
                                   3429 ;	 function TIM1_SetCompare4
                                   3430 ;	-----------------------------------------
      009949                       3431 _TIM1_SetCompare4:
                                   3432 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1830: TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
      009949 7B 03            [ 1] 3433 	ld	a, (0x03, sp)
      00994B C7 52 6B         [ 1] 3434 	ld	0x526b, a
                                   3435 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1831: TIM1->CCR4L = (uint8_t)(Compare4);
      00994E 7B 04            [ 1] 3436 	ld	a, (0x04, sp)
      009950 C7 52 6C         [ 1] 3437 	ld	0x526c, a
                                   3438 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1832: }
      009953 81               [ 4] 3439 	ret
                                   3440 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1844: void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
                                   3441 ;	-----------------------------------------
                                   3442 ;	 function TIM1_SetIC1Prescaler
                                   3443 ;	-----------------------------------------
      009954                       3444 _TIM1_SetIC1Prescaler:
                                   3445 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1847: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
      009954 0D 03            [ 1] 3446 	tnz	(0x03, sp)
      009956 27 21            [ 1] 3447 	jreq	00104$
      009958 7B 03            [ 1] 3448 	ld	a, (0x03, sp)
      00995A A1 04            [ 1] 3449 	cp	a, #0x04
      00995C 27 1B            [ 1] 3450 	jreq	00104$
      00995E 7B 03            [ 1] 3451 	ld	a, (0x03, sp)
      009960 A1 08            [ 1] 3452 	cp	a, #0x08
      009962 27 15            [ 1] 3453 	jreq	00104$
      009964 7B 03            [ 1] 3454 	ld	a, (0x03, sp)
      009966 A1 0C            [ 1] 3455 	cp	a, #0x0c
      009968 27 0F            [ 1] 3456 	jreq	00104$
      00996A 4B 37            [ 1] 3457 	push	#0x37
      00996C 4B 07            [ 1] 3458 	push	#0x07
      00996E 5F               [ 1] 3459 	clrw	x
      00996F 89               [ 2] 3460 	pushw	x
      009970 4B 66            [ 1] 3461 	push	#<(___str_0+0)
      009972 4B 81            [ 1] 3462 	push	#((___str_0+0) >> 8)
      009974 CD 85 5C         [ 4] 3463 	call	_assert_failed
      009977 5B 06            [ 2] 3464 	addw	sp, #6
      009979                       3465 00104$:
                                   3466 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1850: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
      009979 C6 52 58         [ 1] 3467 	ld	a, 0x5258
      00997C A4 F3            [ 1] 3468 	and	a, #0xf3
                                   3469 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1851: | (uint8_t)TIM1_IC1Prescaler);
      00997E 1A 03            [ 1] 3470 	or	a, (0x03, sp)
      009980 C7 52 58         [ 1] 3471 	ld	0x5258, a
                                   3472 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1852: }
      009983 81               [ 4] 3473 	ret
                                   3474 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1864: void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
                                   3475 ;	-----------------------------------------
                                   3476 ;	 function TIM1_SetIC2Prescaler
                                   3477 ;	-----------------------------------------
      009984                       3478 _TIM1_SetIC2Prescaler:
                                   3479 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1868: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
      009984 0D 03            [ 1] 3480 	tnz	(0x03, sp)
      009986 27 21            [ 1] 3481 	jreq	00104$
      009988 7B 03            [ 1] 3482 	ld	a, (0x03, sp)
      00998A A1 04            [ 1] 3483 	cp	a, #0x04
      00998C 27 1B            [ 1] 3484 	jreq	00104$
      00998E 7B 03            [ 1] 3485 	ld	a, (0x03, sp)
      009990 A1 08            [ 1] 3486 	cp	a, #0x08
      009992 27 15            [ 1] 3487 	jreq	00104$
      009994 7B 03            [ 1] 3488 	ld	a, (0x03, sp)
      009996 A1 0C            [ 1] 3489 	cp	a, #0x0c
      009998 27 0F            [ 1] 3490 	jreq	00104$
      00999A 4B 4C            [ 1] 3491 	push	#0x4c
      00999C 4B 07            [ 1] 3492 	push	#0x07
      00999E 5F               [ 1] 3493 	clrw	x
      00999F 89               [ 2] 3494 	pushw	x
      0099A0 4B 66            [ 1] 3495 	push	#<(___str_0+0)
      0099A2 4B 81            [ 1] 3496 	push	#((___str_0+0) >> 8)
      0099A4 CD 85 5C         [ 4] 3497 	call	_assert_failed
      0099A7 5B 06            [ 2] 3498 	addw	sp, #6
      0099A9                       3499 00104$:
                                   3500 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1871: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
      0099A9 C6 52 59         [ 1] 3501 	ld	a, 0x5259
      0099AC A4 F3            [ 1] 3502 	and	a, #0xf3
                                   3503 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1872: | (uint8_t)TIM1_IC2Prescaler);
      0099AE 1A 03            [ 1] 3504 	or	a, (0x03, sp)
      0099B0 C7 52 59         [ 1] 3505 	ld	0x5259, a
                                   3506 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1873: }
      0099B3 81               [ 4] 3507 	ret
                                   3508 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1885: void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
                                   3509 ;	-----------------------------------------
                                   3510 ;	 function TIM1_SetIC3Prescaler
                                   3511 ;	-----------------------------------------
      0099B4                       3512 _TIM1_SetIC3Prescaler:
                                   3513 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1889: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
      0099B4 0D 03            [ 1] 3514 	tnz	(0x03, sp)
      0099B6 27 21            [ 1] 3515 	jreq	00104$
      0099B8 7B 03            [ 1] 3516 	ld	a, (0x03, sp)
      0099BA A1 04            [ 1] 3517 	cp	a, #0x04
      0099BC 27 1B            [ 1] 3518 	jreq	00104$
      0099BE 7B 03            [ 1] 3519 	ld	a, (0x03, sp)
      0099C0 A1 08            [ 1] 3520 	cp	a, #0x08
      0099C2 27 15            [ 1] 3521 	jreq	00104$
      0099C4 7B 03            [ 1] 3522 	ld	a, (0x03, sp)
      0099C6 A1 0C            [ 1] 3523 	cp	a, #0x0c
      0099C8 27 0F            [ 1] 3524 	jreq	00104$
      0099CA 4B 61            [ 1] 3525 	push	#0x61
      0099CC 4B 07            [ 1] 3526 	push	#0x07
      0099CE 5F               [ 1] 3527 	clrw	x
      0099CF 89               [ 2] 3528 	pushw	x
      0099D0 4B 66            [ 1] 3529 	push	#<(___str_0+0)
      0099D2 4B 81            [ 1] 3530 	push	#((___str_0+0) >> 8)
      0099D4 CD 85 5C         [ 4] 3531 	call	_assert_failed
      0099D7 5B 06            [ 2] 3532 	addw	sp, #6
      0099D9                       3533 00104$:
                                   3534 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1892: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
      0099D9 C6 52 5A         [ 1] 3535 	ld	a, 0x525a
      0099DC A4 F3            [ 1] 3536 	and	a, #0xf3
                                   3537 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1893: (uint8_t)TIM1_IC3Prescaler);
      0099DE 1A 03            [ 1] 3538 	or	a, (0x03, sp)
      0099E0 C7 52 5A         [ 1] 3539 	ld	0x525a, a
                                   3540 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1894: }
      0099E3 81               [ 4] 3541 	ret
                                   3542 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1906: void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
                                   3543 ;	-----------------------------------------
                                   3544 ;	 function TIM1_SetIC4Prescaler
                                   3545 ;	-----------------------------------------
      0099E4                       3546 _TIM1_SetIC4Prescaler:
                                   3547 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1910: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
      0099E4 0D 03            [ 1] 3548 	tnz	(0x03, sp)
      0099E6 27 21            [ 1] 3549 	jreq	00104$
      0099E8 7B 03            [ 1] 3550 	ld	a, (0x03, sp)
      0099EA A1 04            [ 1] 3551 	cp	a, #0x04
      0099EC 27 1B            [ 1] 3552 	jreq	00104$
      0099EE 7B 03            [ 1] 3553 	ld	a, (0x03, sp)
      0099F0 A1 08            [ 1] 3554 	cp	a, #0x08
      0099F2 27 15            [ 1] 3555 	jreq	00104$
      0099F4 7B 03            [ 1] 3556 	ld	a, (0x03, sp)
      0099F6 A1 0C            [ 1] 3557 	cp	a, #0x0c
      0099F8 27 0F            [ 1] 3558 	jreq	00104$
      0099FA 4B 76            [ 1] 3559 	push	#0x76
      0099FC 4B 07            [ 1] 3560 	push	#0x07
      0099FE 5F               [ 1] 3561 	clrw	x
      0099FF 89               [ 2] 3562 	pushw	x
      009A00 4B 66            [ 1] 3563 	push	#<(___str_0+0)
      009A02 4B 81            [ 1] 3564 	push	#((___str_0+0) >> 8)
      009A04 CD 85 5C         [ 4] 3565 	call	_assert_failed
      009A07 5B 06            [ 2] 3566 	addw	sp, #6
      009A09                       3567 00104$:
                                   3568 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1913: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
      009A09 C6 52 5B         [ 1] 3569 	ld	a, 0x525b
      009A0C A4 F3            [ 1] 3570 	and	a, #0xf3
                                   3571 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1914: (uint8_t)TIM1_IC4Prescaler);
      009A0E 1A 03            [ 1] 3572 	or	a, (0x03, sp)
      009A10 C7 52 5B         [ 1] 3573 	ld	0x525b, a
                                   3574 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1915: }
      009A13 81               [ 4] 3575 	ret
                                   3576 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1922: uint16_t TIM1_GetCapture1(void)
                                   3577 ;	-----------------------------------------
                                   3578 ;	 function TIM1_GetCapture1
                                   3579 ;	-----------------------------------------
      009A14                       3580 _TIM1_GetCapture1:
      009A14 89               [ 2] 3581 	pushw	x
                                   3582 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1929: tmpccr1h = TIM1->CCR1H;
      009A15 C6 52 65         [ 1] 3583 	ld	a, 0x5265
      009A18 95               [ 1] 3584 	ld	xh, a
                                   3585 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1930: tmpccr1l = TIM1->CCR1L;
      009A19 C6 52 66         [ 1] 3586 	ld	a, 0x5266
                                   3587 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1932: tmpccr1 = (uint16_t)(tmpccr1l);
      009A1C 97               [ 1] 3588 	ld	xl, a
      009A1D 4F               [ 1] 3589 	clr	a
                                   3590 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1933: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      009A1E 0F 02            [ 1] 3591 	clr	(0x02, sp)
      009A20 89               [ 2] 3592 	pushw	x
      009A21 1A 01            [ 1] 3593 	or	a, (1, sp)
      009A23 85               [ 2] 3594 	popw	x
      009A24 01               [ 1] 3595 	rrwa	x
      009A25 1A 02            [ 1] 3596 	or	a, (0x02, sp)
      009A27 97               [ 1] 3597 	ld	xl, a
                                   3598 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1935: return (uint16_t)tmpccr1;
                                   3599 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1936: }
      009A28 5B 02            [ 2] 3600 	addw	sp, #2
      009A2A 81               [ 4] 3601 	ret
                                   3602 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1943: uint16_t TIM1_GetCapture2(void)
                                   3603 ;	-----------------------------------------
                                   3604 ;	 function TIM1_GetCapture2
                                   3605 ;	-----------------------------------------
      009A2B                       3606 _TIM1_GetCapture2:
      009A2B 89               [ 2] 3607 	pushw	x
                                   3608 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1950: tmpccr2h = TIM1->CCR2H;
      009A2C C6 52 67         [ 1] 3609 	ld	a, 0x5267
      009A2F 95               [ 1] 3610 	ld	xh, a
                                   3611 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1951: tmpccr2l = TIM1->CCR2L;
      009A30 C6 52 68         [ 1] 3612 	ld	a, 0x5268
                                   3613 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1953: tmpccr2 = (uint16_t)(tmpccr2l);
      009A33 97               [ 1] 3614 	ld	xl, a
      009A34 4F               [ 1] 3615 	clr	a
                                   3616 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1954: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      009A35 0F 02            [ 1] 3617 	clr	(0x02, sp)
      009A37 89               [ 2] 3618 	pushw	x
      009A38 1A 01            [ 1] 3619 	or	a, (1, sp)
      009A3A 85               [ 2] 3620 	popw	x
      009A3B 01               [ 1] 3621 	rrwa	x
      009A3C 1A 02            [ 1] 3622 	or	a, (0x02, sp)
      009A3E 97               [ 1] 3623 	ld	xl, a
                                   3624 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1956: return (uint16_t)tmpccr2;
                                   3625 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1957: }
      009A3F 5B 02            [ 2] 3626 	addw	sp, #2
      009A41 81               [ 4] 3627 	ret
                                   3628 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1964: uint16_t TIM1_GetCapture3(void)
                                   3629 ;	-----------------------------------------
                                   3630 ;	 function TIM1_GetCapture3
                                   3631 ;	-----------------------------------------
      009A42                       3632 _TIM1_GetCapture3:
      009A42 89               [ 2] 3633 	pushw	x
                                   3634 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1970: tmpccr3h = TIM1->CCR3H;
      009A43 C6 52 69         [ 1] 3635 	ld	a, 0x5269
      009A46 95               [ 1] 3636 	ld	xh, a
                                   3637 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1971: tmpccr3l = TIM1->CCR3L;
      009A47 C6 52 6A         [ 1] 3638 	ld	a, 0x526a
                                   3639 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1973: tmpccr3 = (uint16_t)(tmpccr3l);
      009A4A 97               [ 1] 3640 	ld	xl, a
      009A4B 4F               [ 1] 3641 	clr	a
                                   3642 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1974: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
      009A4C 0F 02            [ 1] 3643 	clr	(0x02, sp)
      009A4E 89               [ 2] 3644 	pushw	x
      009A4F 1A 01            [ 1] 3645 	or	a, (1, sp)
      009A51 85               [ 2] 3646 	popw	x
      009A52 01               [ 1] 3647 	rrwa	x
      009A53 1A 02            [ 1] 3648 	or	a, (0x02, sp)
      009A55 97               [ 1] 3649 	ld	xl, a
                                   3650 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1976: return (uint16_t)tmpccr3;
                                   3651 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1977: }
      009A56 5B 02            [ 2] 3652 	addw	sp, #2
      009A58 81               [ 4] 3653 	ret
                                   3654 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1984: uint16_t TIM1_GetCapture4(void)
                                   3655 ;	-----------------------------------------
                                   3656 ;	 function TIM1_GetCapture4
                                   3657 ;	-----------------------------------------
      009A59                       3658 _TIM1_GetCapture4:
      009A59 89               [ 2] 3659 	pushw	x
                                   3660 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1990: tmpccr4h = TIM1->CCR4H;
      009A5A C6 52 6B         [ 1] 3661 	ld	a, 0x526b
      009A5D 95               [ 1] 3662 	ld	xh, a
                                   3663 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1991: tmpccr4l = TIM1->CCR4L;
      009A5E C6 52 6C         [ 1] 3664 	ld	a, 0x526c
                                   3665 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1993: tmpccr4 = (uint16_t)(tmpccr4l);
      009A61 97               [ 1] 3666 	ld	xl, a
      009A62 4F               [ 1] 3667 	clr	a
                                   3668 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1994: tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
      009A63 0F 02            [ 1] 3669 	clr	(0x02, sp)
      009A65 89               [ 2] 3670 	pushw	x
      009A66 1A 01            [ 1] 3671 	or	a, (1, sp)
      009A68 85               [ 2] 3672 	popw	x
      009A69 01               [ 1] 3673 	rrwa	x
      009A6A 1A 02            [ 1] 3674 	or	a, (0x02, sp)
      009A6C 97               [ 1] 3675 	ld	xl, a
                                   3676 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1996: return (uint16_t)tmpccr4;
                                   3677 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1997: }
      009A6D 5B 02            [ 2] 3678 	addw	sp, #2
      009A6F 81               [ 4] 3679 	ret
                                   3680 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2004: uint16_t TIM1_GetCounter(void)
                                   3681 ;	-----------------------------------------
                                   3682 ;	 function TIM1_GetCounter
                                   3683 ;	-----------------------------------------
      009A70                       3684 _TIM1_GetCounter:
      009A70 52 04            [ 2] 3685 	sub	sp, #4
                                   3686 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2008: tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
      009A72 C6 52 5E         [ 1] 3687 	ld	a, 0x525e
      009A75 5F               [ 1] 3688 	clrw	x
      009A76 95               [ 1] 3689 	ld	xh, a
      009A77 4F               [ 1] 3690 	clr	a
      009A78 6B 02            [ 1] 3691 	ld	(0x02, sp), a
                                   3692 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2011: return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
      009A7A C6 52 5F         [ 1] 3693 	ld	a, 0x525f
      009A7D 0F 03            [ 1] 3694 	clr	(0x03, sp)
      009A7F 1A 02            [ 1] 3695 	or	a, (0x02, sp)
      009A81 02               [ 1] 3696 	rlwa	x
      009A82 1A 03            [ 1] 3697 	or	a, (0x03, sp)
      009A84 95               [ 1] 3698 	ld	xh, a
                                   3699 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2012: }
      009A85 5B 04            [ 2] 3700 	addw	sp, #4
      009A87 81               [ 4] 3701 	ret
                                   3702 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2019: uint16_t TIM1_GetPrescaler(void)
                                   3703 ;	-----------------------------------------
                                   3704 ;	 function TIM1_GetPrescaler
                                   3705 ;	-----------------------------------------
      009A88                       3706 _TIM1_GetPrescaler:
      009A88 52 04            [ 2] 3707 	sub	sp, #4
                                   3708 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2023: temp = ((uint16_t)TIM1->PSCRH << 8);
      009A8A C6 52 60         [ 1] 3709 	ld	a, 0x5260
      009A8D 5F               [ 1] 3710 	clrw	x
      009A8E 95               [ 1] 3711 	ld	xh, a
      009A8F 4F               [ 1] 3712 	clr	a
      009A90 6B 02            [ 1] 3713 	ld	(0x02, sp), a
                                   3714 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2026: return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
      009A92 C6 52 61         [ 1] 3715 	ld	a, 0x5261
      009A95 0F 03            [ 1] 3716 	clr	(0x03, sp)
      009A97 1A 02            [ 1] 3717 	or	a, (0x02, sp)
      009A99 02               [ 1] 3718 	rlwa	x
      009A9A 1A 03            [ 1] 3719 	or	a, (0x03, sp)
      009A9C 95               [ 1] 3720 	ld	xh, a
                                   3721 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2027: }
      009A9D 5B 04            [ 2] 3722 	addw	sp, #4
      009A9F 81               [ 4] 3723 	ret
                                   3724 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2047: FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
                                   3725 ;	-----------------------------------------
                                   3726 ;	 function TIM1_GetFlagStatus
                                   3727 ;	-----------------------------------------
      009AA0                       3728 _TIM1_GetFlagStatus:
      009AA0 88               [ 1] 3729 	push	a
                                   3730 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2053: assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
      009AA1 1E 04            [ 2] 3731 	ldw	x, (0x04, sp)
      009AA3 A3 00 01         [ 2] 3732 	cpw	x, #0x0001
      009AA6 27 4A            [ 1] 3733 	jreq	00107$
      009AA8 A3 00 02         [ 2] 3734 	cpw	x, #0x0002
      009AAB 27 45            [ 1] 3735 	jreq	00107$
      009AAD A3 00 04         [ 2] 3736 	cpw	x, #0x0004
      009AB0 27 40            [ 1] 3737 	jreq	00107$
      009AB2 A3 00 08         [ 2] 3738 	cpw	x, #0x0008
      009AB5 27 3B            [ 1] 3739 	jreq	00107$
      009AB7 A3 00 10         [ 2] 3740 	cpw	x, #0x0010
      009ABA 27 36            [ 1] 3741 	jreq	00107$
      009ABC A3 00 20         [ 2] 3742 	cpw	x, #0x0020
      009ABF 27 31            [ 1] 3743 	jreq	00107$
      009AC1 A3 00 40         [ 2] 3744 	cpw	x, #0x0040
      009AC4 27 2C            [ 1] 3745 	jreq	00107$
      009AC6 A3 00 80         [ 2] 3746 	cpw	x, #0x0080
      009AC9 27 27            [ 1] 3747 	jreq	00107$
      009ACB A3 02 00         [ 2] 3748 	cpw	x, #0x0200
      009ACE 27 22            [ 1] 3749 	jreq	00107$
      009AD0 A3 04 00         [ 2] 3750 	cpw	x, #0x0400
      009AD3 27 1D            [ 1] 3751 	jreq	00107$
      009AD5 A3 08 00         [ 2] 3752 	cpw	x, #0x0800
      009AD8 27 18            [ 1] 3753 	jreq	00107$
      009ADA A3 10 00         [ 2] 3754 	cpw	x, #0x1000
      009ADD 27 13            [ 1] 3755 	jreq	00107$
      009ADF 89               [ 2] 3756 	pushw	x
      009AE0 4B 05            [ 1] 3757 	push	#0x05
      009AE2 4B 08            [ 1] 3758 	push	#0x08
      009AE4 4B 00            [ 1] 3759 	push	#0x00
      009AE6 4B 00            [ 1] 3760 	push	#0x00
      009AE8 4B 66            [ 1] 3761 	push	#<(___str_0+0)
      009AEA 4B 81            [ 1] 3762 	push	#((___str_0+0) >> 8)
      009AEC CD 85 5C         [ 4] 3763 	call	_assert_failed
      009AEF 5B 06            [ 2] 3764 	addw	sp, #6
      009AF1 85               [ 2] 3765 	popw	x
      009AF2                       3766 00107$:
                                   3767 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2055: tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
      009AF2 C6 52 55         [ 1] 3768 	ld	a, 0x5255
      009AF5 6B 01            [ 1] 3769 	ld	(0x01, sp), a
      009AF7 7B 05            [ 1] 3770 	ld	a, (0x05, sp)
      009AF9 14 01            [ 1] 3771 	and	a, (0x01, sp)
      009AFB 6B 01            [ 1] 3772 	ld	(0x01, sp), a
                                   3773 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2056: tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
                                   3774 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2058: if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
      009AFD C6 52 56         [ 1] 3775 	ld	a, 0x5256
      009B00 89               [ 2] 3776 	pushw	x
      009B01 14 01            [ 1] 3777 	and	a, (1, sp)
      009B03 85               [ 2] 3778 	popw	x
      009B04 1A 01            [ 1] 3779 	or	a, (0x01, sp)
      009B06 27 03            [ 1] 3780 	jreq	00102$
                                   3781 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2060: bitstatus = SET;
      009B08 A6 01            [ 1] 3782 	ld	a, #0x01
                                   3783 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2064: bitstatus = RESET;
      009B0A 21                    3784 	.byte 0x21
      009B0B                       3785 00102$:
      009B0B 4F               [ 1] 3786 	clr	a
      009B0C                       3787 00103$:
                                   3788 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2066: return (FlagStatus)(bitstatus);
                                   3789 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2067: }
      009B0C 5B 01            [ 2] 3790 	addw	sp, #1
      009B0E 81               [ 4] 3791 	ret
                                   3792 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2087: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
                                   3793 ;	-----------------------------------------
                                   3794 ;	 function TIM1_ClearFlag
                                   3795 ;	-----------------------------------------
      009B0F                       3796 _TIM1_ClearFlag:
      009B0F 89               [ 2] 3797 	pushw	x
                                   3798 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2090: assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
      009B10 16 05            [ 2] 3799 	ldw	y, (0x05, sp)
      009B12 17 01            [ 2] 3800 	ldw	(0x01, sp), y
      009B14 7B 01            [ 1] 3801 	ld	a, (0x01, sp)
      009B16 A5 E1            [ 1] 3802 	bcp	a, #0xe1
      009B18 26 04            [ 1] 3803 	jrne	00103$
      009B1A 1E 05            [ 2] 3804 	ldw	x, (0x05, sp)
      009B1C 26 0F            [ 1] 3805 	jrne	00104$
      009B1E                       3806 00103$:
      009B1E 4B 2A            [ 1] 3807 	push	#0x2a
      009B20 4B 08            [ 1] 3808 	push	#0x08
      009B22 5F               [ 1] 3809 	clrw	x
      009B23 89               [ 2] 3810 	pushw	x
      009B24 4B 66            [ 1] 3811 	push	#<(___str_0+0)
      009B26 4B 81            [ 1] 3812 	push	#((___str_0+0) >> 8)
      009B28 CD 85 5C         [ 4] 3813 	call	_assert_failed
      009B2B 5B 06            [ 2] 3814 	addw	sp, #6
      009B2D                       3815 00104$:
                                   3816 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2093: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
      009B2D 7B 06            [ 1] 3817 	ld	a, (0x06, sp)
      009B2F 43               [ 1] 3818 	cpl	a
      009B30 C7 52 55         [ 1] 3819 	ld	0x5255, a
                                   3820 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2094: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
      009B33 7B 01            [ 1] 3821 	ld	a, (0x01, sp)
      009B35 43               [ 1] 3822 	cpl	a
      009B36 A4 1E            [ 1] 3823 	and	a, #0x1e
      009B38 C7 52 56         [ 1] 3824 	ld	0x5256, a
                                   3825 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2096: }
      009B3B 85               [ 2] 3826 	popw	x
      009B3C 81               [ 4] 3827 	ret
                                   3828 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2112: ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
                                   3829 ;	-----------------------------------------
                                   3830 ;	 function TIM1_GetITStatus
                                   3831 ;	-----------------------------------------
      009B3D                       3832 _TIM1_GetITStatus:
      009B3D 88               [ 1] 3833 	push	a
                                   3834 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2118: assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
      009B3E 7B 04            [ 1] 3835 	ld	a, (0x04, sp)
      009B40 4A               [ 1] 3836 	dec	a
      009B41 27 39            [ 1] 3837 	jreq	00108$
      009B43 7B 04            [ 1] 3838 	ld	a, (0x04, sp)
      009B45 A1 02            [ 1] 3839 	cp	a, #0x02
      009B47 27 33            [ 1] 3840 	jreq	00108$
      009B49 7B 04            [ 1] 3841 	ld	a, (0x04, sp)
      009B4B A1 04            [ 1] 3842 	cp	a, #0x04
      009B4D 27 2D            [ 1] 3843 	jreq	00108$
      009B4F 7B 04            [ 1] 3844 	ld	a, (0x04, sp)
      009B51 A1 08            [ 1] 3845 	cp	a, #0x08
      009B53 27 27            [ 1] 3846 	jreq	00108$
      009B55 7B 04            [ 1] 3847 	ld	a, (0x04, sp)
      009B57 A1 10            [ 1] 3848 	cp	a, #0x10
      009B59 27 21            [ 1] 3849 	jreq	00108$
      009B5B 7B 04            [ 1] 3850 	ld	a, (0x04, sp)
      009B5D A1 20            [ 1] 3851 	cp	a, #0x20
      009B5F 27 1B            [ 1] 3852 	jreq	00108$
      009B61 7B 04            [ 1] 3853 	ld	a, (0x04, sp)
      009B63 A1 40            [ 1] 3854 	cp	a, #0x40
      009B65 27 15            [ 1] 3855 	jreq	00108$
      009B67 7B 04            [ 1] 3856 	ld	a, (0x04, sp)
      009B69 A1 80            [ 1] 3857 	cp	a, #0x80
      009B6B 27 0F            [ 1] 3858 	jreq	00108$
      009B6D 4B 46            [ 1] 3859 	push	#0x46
      009B6F 4B 08            [ 1] 3860 	push	#0x08
      009B71 5F               [ 1] 3861 	clrw	x
      009B72 89               [ 2] 3862 	pushw	x
      009B73 4B 66            [ 1] 3863 	push	#<(___str_0+0)
      009B75 4B 81            [ 1] 3864 	push	#((___str_0+0) >> 8)
      009B77 CD 85 5C         [ 4] 3865 	call	_assert_failed
      009B7A 5B 06            [ 2] 3866 	addw	sp, #6
      009B7C                       3867 00108$:
                                   3868 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2120: TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
      009B7C C6 52 55         [ 1] 3869 	ld	a, 0x5255
      009B7F 14 04            [ 1] 3870 	and	a, (0x04, sp)
      009B81 6B 01            [ 1] 3871 	ld	(0x01, sp), a
                                   3872 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2122: TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
      009B83 C6 52 54         [ 1] 3873 	ld	a, 0x5254
      009B86 14 04            [ 1] 3874 	and	a, (0x04, sp)
                                   3875 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2124: if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
      009B88 0D 01            [ 1] 3876 	tnz	(0x01, sp)
      009B8A 27 06            [ 1] 3877 	jreq	00102$
      009B8C 4D               [ 1] 3878 	tnz	a
      009B8D 27 03            [ 1] 3879 	jreq	00102$
                                   3880 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2126: bitstatus = SET;
      009B8F A6 01            [ 1] 3881 	ld	a, #0x01
                                   3882 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2130: bitstatus = RESET;
      009B91 21                    3883 	.byte 0x21
      009B92                       3884 00102$:
      009B92 4F               [ 1] 3885 	clr	a
      009B93                       3886 00103$:
                                   3887 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2132: return (ITStatus)(bitstatus);
                                   3888 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2133: }
      009B93 5B 01            [ 2] 3889 	addw	sp, #1
      009B95 81               [ 4] 3890 	ret
                                   3891 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2149: void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
                                   3892 ;	-----------------------------------------
                                   3893 ;	 function TIM1_ClearITPendingBit
                                   3894 ;	-----------------------------------------
      009B96                       3895 _TIM1_ClearITPendingBit:
                                   3896 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2152: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      009B96 0D 03            [ 1] 3897 	tnz	(0x03, sp)
      009B98 26 0F            [ 1] 3898 	jrne	00104$
      009B9A 4B 68            [ 1] 3899 	push	#0x68
      009B9C 4B 08            [ 1] 3900 	push	#0x08
      009B9E 5F               [ 1] 3901 	clrw	x
      009B9F 89               [ 2] 3902 	pushw	x
      009BA0 4B 66            [ 1] 3903 	push	#<(___str_0+0)
      009BA2 4B 81            [ 1] 3904 	push	#((___str_0+0) >> 8)
      009BA4 CD 85 5C         [ 4] 3905 	call	_assert_failed
      009BA7 5B 06            [ 2] 3906 	addw	sp, #6
      009BA9                       3907 00104$:
                                   3908 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2155: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
      009BA9 7B 03            [ 1] 3909 	ld	a, (0x03, sp)
      009BAB 43               [ 1] 3910 	cpl	a
      009BAC C7 52 55         [ 1] 3911 	ld	0x5255, a
                                   3912 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2156: }
      009BAF 81               [ 4] 3913 	ret
                                   3914 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2174: static void TI1_Config(uint8_t TIM1_ICPolarity,
                                   3915 ;	-----------------------------------------
                                   3916 ;	 function TI1_Config
                                   3917 ;	-----------------------------------------
      009BB0                       3918 _TI1_Config:
      009BB0 88               [ 1] 3919 	push	a
                                   3920 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2179: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      009BB1 72 11 52 5C      [ 1] 3921 	bres	21084, #0
                                   3922 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2182: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
      009BB5 C6 52 58         [ 1] 3923 	ld	a, 0x5258
      009BB8 A4 0C            [ 1] 3924 	and	a, #0x0c
      009BBA 6B 01            [ 1] 3925 	ld	(0x01, sp), a
                                   3926 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2183: (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      009BBC 7B 06            [ 1] 3927 	ld	a, (0x06, sp)
      009BBE 4E               [ 1] 3928 	swap	a
      009BBF A4 F0            [ 1] 3929 	and	a, #0xf0
      009BC1 1A 05            [ 1] 3930 	or	a, (0x05, sp)
      009BC3 1A 01            [ 1] 3931 	or	a, (0x01, sp)
      009BC5 C7 52 58         [ 1] 3932 	ld	0x5258, a
                                   3933 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2179: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      009BC8 C6 52 5C         [ 1] 3934 	ld	a, 0x525c
                                   3935 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2186: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      009BCB 0D 04            [ 1] 3936 	tnz	(0x04, sp)
      009BCD 27 07            [ 1] 3937 	jreq	00102$
                                   3938 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2188: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      009BCF AA 02            [ 1] 3939 	or	a, #0x02
      009BD1 C7 52 5C         [ 1] 3940 	ld	0x525c, a
      009BD4 20 05            [ 2] 3941 	jra	00103$
      009BD6                       3942 00102$:
                                   3943 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2192: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      009BD6 A4 FD            [ 1] 3944 	and	a, #0xfd
      009BD8 C7 52 5C         [ 1] 3945 	ld	0x525c, a
      009BDB                       3946 00103$:
                                   3947 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2196: TIM1->CCER1 |=  TIM1_CCER1_CC1E;
      009BDB 72 10 52 5C      [ 1] 3948 	bset	21084, #0
                                   3949 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2197: }
      009BDF 84               [ 1] 3950 	pop	a
      009BE0 81               [ 4] 3951 	ret
                                   3952 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2215: static void TI2_Config(uint8_t TIM1_ICPolarity,
                                   3953 ;	-----------------------------------------
                                   3954 ;	 function TI2_Config
                                   3955 ;	-----------------------------------------
      009BE1                       3956 _TI2_Config:
      009BE1 88               [ 1] 3957 	push	a
                                   3958 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2220: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      009BE2 72 19 52 5C      [ 1] 3959 	bres	21084, #4
                                   3960 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2223: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
      009BE6 C6 52 59         [ 1] 3961 	ld	a, 0x5259
      009BE9 A4 0C            [ 1] 3962 	and	a, #0x0c
      009BEB 6B 01            [ 1] 3963 	ld	(0x01, sp), a
                                   3964 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2224: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      009BED 7B 06            [ 1] 3965 	ld	a, (0x06, sp)
      009BEF 4E               [ 1] 3966 	swap	a
      009BF0 A4 F0            [ 1] 3967 	and	a, #0xf0
      009BF2 1A 05            [ 1] 3968 	or	a, (0x05, sp)
      009BF4 1A 01            [ 1] 3969 	or	a, (0x01, sp)
      009BF6 C7 52 59         [ 1] 3970 	ld	0x5259, a
                                   3971 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2220: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      009BF9 C6 52 5C         [ 1] 3972 	ld	a, 0x525c
                                   3973 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2226: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      009BFC 0D 04            [ 1] 3974 	tnz	(0x04, sp)
      009BFE 27 07            [ 1] 3975 	jreq	00102$
                                   3976 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2228: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      009C00 AA 20            [ 1] 3977 	or	a, #0x20
      009C02 C7 52 5C         [ 1] 3978 	ld	0x525c, a
      009C05 20 05            [ 2] 3979 	jra	00103$
      009C07                       3980 00102$:
                                   3981 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2232: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      009C07 A4 DF            [ 1] 3982 	and	a, #0xdf
      009C09 C7 52 5C         [ 1] 3983 	ld	0x525c, a
      009C0C                       3984 00103$:
                                   3985 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2235: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
      009C0C 72 18 52 5C      [ 1] 3986 	bset	21084, #4
                                   3987 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2236: }
      009C10 84               [ 1] 3988 	pop	a
      009C11 81               [ 4] 3989 	ret
                                   3990 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2254: static void TI3_Config(uint8_t TIM1_ICPolarity,
                                   3991 ;	-----------------------------------------
                                   3992 ;	 function TI3_Config
                                   3993 ;	-----------------------------------------
      009C12                       3994 _TI3_Config:
      009C12 88               [ 1] 3995 	push	a
                                   3996 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2259: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      009C13 C6 52 5D         [ 1] 3997 	ld	a, 0x525d
      009C16 A4 FE            [ 1] 3998 	and	a, #0xfe
      009C18 C7 52 5D         [ 1] 3999 	ld	0x525d, a
                                   4000 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2262: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
      009C1B C6 52 5A         [ 1] 4001 	ld	a, 0x525a
      009C1E A4 0C            [ 1] 4002 	and	a, #0x0c
      009C20 6B 01            [ 1] 4003 	ld	(0x01, sp), a
                                   4004 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2263: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      009C22 7B 06            [ 1] 4005 	ld	a, (0x06, sp)
      009C24 4E               [ 1] 4006 	swap	a
      009C25 A4 F0            [ 1] 4007 	and	a, #0xf0
      009C27 1A 05            [ 1] 4008 	or	a, (0x05, sp)
      009C29 1A 01            [ 1] 4009 	or	a, (0x01, sp)
      009C2B C7 52 5A         [ 1] 4010 	ld	0x525a, a
                                   4011 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2259: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      009C2E C6 52 5D         [ 1] 4012 	ld	a, 0x525d
                                   4013 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2266: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      009C31 0D 04            [ 1] 4014 	tnz	(0x04, sp)
      009C33 27 07            [ 1] 4015 	jreq	00102$
                                   4016 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2268: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      009C35 AA 02            [ 1] 4017 	or	a, #0x02
      009C37 C7 52 5D         [ 1] 4018 	ld	0x525d, a
      009C3A 20 05            [ 2] 4019 	jra	00103$
      009C3C                       4020 00102$:
                                   4021 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2272: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      009C3C A4 FD            [ 1] 4022 	and	a, #0xfd
      009C3E C7 52 5D         [ 1] 4023 	ld	0x525d, a
      009C41                       4024 00103$:
                                   4025 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2275: TIM1->CCER2 |=  TIM1_CCER2_CC3E;
      009C41 72 10 52 5D      [ 1] 4026 	bset	21085, #0
                                   4027 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2276: }
      009C45 84               [ 1] 4028 	pop	a
      009C46 81               [ 4] 4029 	ret
                                   4030 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2294: static void TI4_Config(uint8_t TIM1_ICPolarity,
                                   4031 ;	-----------------------------------------
                                   4032 ;	 function TI4_Config
                                   4033 ;	-----------------------------------------
      009C47                       4034 _TI4_Config:
      009C47 88               [ 1] 4035 	push	a
                                   4036 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2299: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      009C48 72 19 52 5D      [ 1] 4037 	bres	21085, #4
                                   4038 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2302: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
      009C4C C6 52 5B         [ 1] 4039 	ld	a, 0x525b
      009C4F A4 0C            [ 1] 4040 	and	a, #0x0c
      009C51 6B 01            [ 1] 4041 	ld	(0x01, sp), a
                                   4042 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2303: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      009C53 7B 06            [ 1] 4043 	ld	a, (0x06, sp)
      009C55 4E               [ 1] 4044 	swap	a
      009C56 A4 F0            [ 1] 4045 	and	a, #0xf0
      009C58 1A 05            [ 1] 4046 	or	a, (0x05, sp)
      009C5A 1A 01            [ 1] 4047 	or	a, (0x01, sp)
      009C5C C7 52 5B         [ 1] 4048 	ld	0x525b, a
                                   4049 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2299: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      009C5F C6 52 5D         [ 1] 4050 	ld	a, 0x525d
                                   4051 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2306: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      009C62 0D 04            [ 1] 4052 	tnz	(0x04, sp)
      009C64 27 07            [ 1] 4053 	jreq	00102$
                                   4054 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2308: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      009C66 AA 20            [ 1] 4055 	or	a, #0x20
      009C68 C7 52 5D         [ 1] 4056 	ld	0x525d, a
      009C6B 20 05            [ 2] 4057 	jra	00103$
      009C6D                       4058 00102$:
                                   4059 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2312: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      009C6D A4 DF            [ 1] 4060 	and	a, #0xdf
      009C6F C7 52 5D         [ 1] 4061 	ld	0x525d, a
      009C72                       4062 00103$:
                                   4063 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2316: TIM1->CCER2 |=  TIM1_CCER2_CC4E;
      009C72 72 18 52 5D      [ 1] 4064 	bset	21085, #4
                                   4065 ;	/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2317: }
      009C76 84               [ 1] 4066 	pop	a
      009C77 81               [ 4] 4067 	ret
                                   4068 	.area CODE
                                   4069 	.area CONST
                                   4070 	.area CONST
      008166                       4071 ___str_0:
      008166 2F 55 73 65 72 73 2F  4072 	.ascii "/Users/mybays/develop/stm8/stm8_proj.dev/StdPeriph_Driver/ST"
             6D 79 62 61 79 73 2F
             64 65 76 65 6C 6F 70
             2F 73 74 6D 38 2F 73
             74 6D 38 5F 70 72 6F
             6A 2E 64 65 76 2F 53
             74 64 50 65 72 69 70
             68 5F 44 72 69 76 65
             72 2F 53 54
      0081A2 4D 38 53 5F 53 74 64  4073 	.ascii "M8S_StdPeriph_Driver/src/stm8s_tim1.c"
             50 65 72 69 70 68 5F
             44 72 69 76 65 72 2F
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 31
             2E 63
      0081C7 00                    4074 	.db 0x00
                                   4075 	.area CODE
                                   4076 	.area INITIALIZER
                                   4077 	.area CABS (ABS)
