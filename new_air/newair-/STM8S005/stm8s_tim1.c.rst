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
                                    123 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 58: void TIM1_DeInit(void)
                                    124 ;	-----------------------------------------
                                    125 ;	 function TIM1_DeInit
                                    126 ;	-----------------------------------------
      00978C                        127 _TIM1_DeInit:
                                    128 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 60: TIM1->CR1  = TIM1_CR1_RESET_VALUE;
      00978C 35 00 52 50      [ 1]  129 	mov	0x5250+0, #0x00
                                    130 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 61: TIM1->CR2  = TIM1_CR2_RESET_VALUE;
      009790 35 00 52 51      [ 1]  131 	mov	0x5251+0, #0x00
                                    132 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 62: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
      009794 35 00 52 52      [ 1]  133 	mov	0x5252+0, #0x00
                                    134 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 63: TIM1->ETR  = TIM1_ETR_RESET_VALUE;
      009798 35 00 52 53      [ 1]  135 	mov	0x5253+0, #0x00
                                    136 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 64: TIM1->IER  = TIM1_IER_RESET_VALUE;
      00979C 35 00 52 54      [ 1]  137 	mov	0x5254+0, #0x00
                                    138 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 65: TIM1->SR2  = TIM1_SR2_RESET_VALUE;
      0097A0 35 00 52 56      [ 1]  139 	mov	0x5256+0, #0x00
                                    140 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 67: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      0097A4 35 00 52 5C      [ 1]  141 	mov	0x525c+0, #0x00
                                    142 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 68: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      0097A8 35 00 52 5D      [ 1]  143 	mov	0x525d+0, #0x00
                                    144 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 70: TIM1->CCMR1 = 0x01;
      0097AC 35 01 52 58      [ 1]  145 	mov	0x5258+0, #0x01
                                    146 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 71: TIM1->CCMR2 = 0x01;
      0097B0 35 01 52 59      [ 1]  147 	mov	0x5259+0, #0x01
                                    148 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 72: TIM1->CCMR3 = 0x01;
      0097B4 35 01 52 5A      [ 1]  149 	mov	0x525a+0, #0x01
                                    150 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 73: TIM1->CCMR4 = 0x01;
      0097B8 35 01 52 5B      [ 1]  151 	mov	0x525b+0, #0x01
                                    152 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 75: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      0097BC 35 00 52 5C      [ 1]  153 	mov	0x525c+0, #0x00
                                    154 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 76: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      0097C0 35 00 52 5D      [ 1]  155 	mov	0x525d+0, #0x00
                                    156 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 77: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
      0097C4 35 00 52 58      [ 1]  157 	mov	0x5258+0, #0x00
                                    158 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 78: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
      0097C8 35 00 52 59      [ 1]  159 	mov	0x5259+0, #0x00
                                    160 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 79: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
      0097CC 35 00 52 5A      [ 1]  161 	mov	0x525a+0, #0x00
                                    162 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 80: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
      0097D0 35 00 52 5B      [ 1]  163 	mov	0x525b+0, #0x00
                                    164 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 81: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
      0097D4 35 00 52 5E      [ 1]  165 	mov	0x525e+0, #0x00
                                    166 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 82: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
      0097D8 35 00 52 5F      [ 1]  167 	mov	0x525f+0, #0x00
                                    168 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 83: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
      0097DC 35 00 52 60      [ 1]  169 	mov	0x5260+0, #0x00
                                    170 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 84: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
      0097E0 35 00 52 61      [ 1]  171 	mov	0x5261+0, #0x00
                                    172 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 85: TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
      0097E4 35 FF 52 62      [ 1]  173 	mov	0x5262+0, #0xff
                                    174 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 86: TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
      0097E8 35 FF 52 63      [ 1]  175 	mov	0x5263+0, #0xff
                                    176 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 87: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
      0097EC 35 00 52 65      [ 1]  177 	mov	0x5265+0, #0x00
                                    178 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 88: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
      0097F0 35 00 52 66      [ 1]  179 	mov	0x5266+0, #0x00
                                    180 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 89: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
      0097F4 35 00 52 67      [ 1]  181 	mov	0x5267+0, #0x00
                                    182 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 90: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
      0097F8 35 00 52 68      [ 1]  183 	mov	0x5268+0, #0x00
                                    184 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 91: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
      0097FC 35 00 52 69      [ 1]  185 	mov	0x5269+0, #0x00
                                    186 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 92: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
      009800 35 00 52 6A      [ 1]  187 	mov	0x526a+0, #0x00
                                    188 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 93: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
      009804 35 00 52 6B      [ 1]  189 	mov	0x526b+0, #0x00
                                    190 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 94: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
      009808 35 00 52 6C      [ 1]  191 	mov	0x526c+0, #0x00
                                    192 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 95: TIM1->OISR  = TIM1_OISR_RESET_VALUE;
      00980C 35 00 52 6F      [ 1]  193 	mov	0x526f+0, #0x00
                                    194 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 96: TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
      009810 35 01 52 57      [ 1]  195 	mov	0x5257+0, #0x01
                                    196 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 97: TIM1->DTR   = TIM1_DTR_RESET_VALUE;
      009814 35 00 52 6E      [ 1]  197 	mov	0x526e+0, #0x00
                                    198 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 98: TIM1->BKR   = TIM1_BKR_RESET_VALUE;
      009818 35 00 52 6D      [ 1]  199 	mov	0x526d+0, #0x00
                                    200 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 99: TIM1->RCR   = TIM1_RCR_RESET_VALUE;
      00981C 35 00 52 64      [ 1]  201 	mov	0x5264+0, #0x00
                                    202 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 100: TIM1->SR1   = TIM1_SR1_RESET_VALUE;
      009820 35 00 52 55      [ 1]  203 	mov	0x5255+0, #0x00
                                    204 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 101: }
      009824 81               [ 4]  205 	ret
                                    206 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 111: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                                    207 ;	-----------------------------------------
                                    208 ;	 function TIM1_TimeBaseInit
                                    209 ;	-----------------------------------------
      009825                        210 _TIM1_TimeBaseInit:
                                    211 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 117: assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
      009825 0D 05            [ 1]  212 	tnz	(0x05, sp)
      009827 27 27            [ 1]  213 	jreq	00104$
      009829 7B 05            [ 1]  214 	ld	a, (0x05, sp)
      00982B A1 10            [ 1]  215 	cp	a, #0x10
      00982D 27 21            [ 1]  216 	jreq	00104$
      00982F 7B 05            [ 1]  217 	ld	a, (0x05, sp)
      009831 A1 20            [ 1]  218 	cp	a, #0x20
      009833 27 1B            [ 1]  219 	jreq	00104$
      009835 7B 05            [ 1]  220 	ld	a, (0x05, sp)
      009837 A1 40            [ 1]  221 	cp	a, #0x40
      009839 27 15            [ 1]  222 	jreq	00104$
      00983B 7B 05            [ 1]  223 	ld	a, (0x05, sp)
      00983D A1 60            [ 1]  224 	cp	a, #0x60
      00983F 27 0F            [ 1]  225 	jreq	00104$
      009841 4B 75            [ 1]  226 	push	#0x75
      009843 5F               [ 1]  227 	clrw	x
      009844 89               [ 2]  228 	pushw	x
      009845 4B 00            [ 1]  229 	push	#0x00
      009847 4B 6A            [ 1]  230 	push	#<(___str_0+0)
      009849 4B 81            [ 1]  231 	push	#((___str_0+0) >> 8)
      00984B CD 83 84         [ 4]  232 	call	_assert_failed
      00984E 5B 06            [ 2]  233 	addw	sp, #6
      009850                        234 00104$:
                                    235 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 120: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
      009850 7B 06            [ 1]  236 	ld	a, (0x06, sp)
      009852 C7 52 62         [ 1]  237 	ld	0x5262, a
                                    238 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 121: TIM1->ARRL = (uint8_t)(TIM1_Period);
      009855 7B 07            [ 1]  239 	ld	a, (0x07, sp)
      009857 C7 52 63         [ 1]  240 	ld	0x5263, a
                                    241 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 124: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
      00985A 7B 03            [ 1]  242 	ld	a, (0x03, sp)
      00985C 5F               [ 1]  243 	clrw	x
      00985D C7 52 60         [ 1]  244 	ld	0x5260, a
                                    245 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 125: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
      009860 7B 04            [ 1]  246 	ld	a, (0x04, sp)
      009862 C7 52 61         [ 1]  247 	ld	0x5261, a
                                    248 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 128: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
      009865 C6 52 50         [ 1]  249 	ld	a, 0x5250
      009868 A4 8F            [ 1]  250 	and	a, #0x8f
                                    251 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 129: | (uint8_t)(TIM1_CounterMode));
      00986A 1A 05            [ 1]  252 	or	a, (0x05, sp)
      00986C C7 52 50         [ 1]  253 	ld	0x5250, a
                                    254 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 132: TIM1->RCR = TIM1_RepetitionCounter;
      00986F AE 52 64         [ 2]  255 	ldw	x, #0x5264
      009872 7B 08            [ 1]  256 	ld	a, (0x08, sp)
      009874 F7               [ 1]  257 	ld	(x), a
                                    258 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 133: }
      009875 81               [ 4]  259 	ret
                                    260 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 154: void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    261 ;	-----------------------------------------
                                    262 ;	 function TIM1_OC1Init
                                    263 ;	-----------------------------------------
      009876                        264 _TIM1_OC1Init:
      009876 52 03            [ 2]  265 	sub	sp, #3
                                    266 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 164: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
      009878 0D 06            [ 1]  267 	tnz	(0x06, sp)
      00987A 27 2D            [ 1]  268 	jreq	00104$
      00987C 7B 06            [ 1]  269 	ld	a, (0x06, sp)
      00987E A1 10            [ 1]  270 	cp	a, #0x10
      009880 27 27            [ 1]  271 	jreq	00104$
      009882 7B 06            [ 1]  272 	ld	a, (0x06, sp)
      009884 A1 20            [ 1]  273 	cp	a, #0x20
      009886 27 21            [ 1]  274 	jreq	00104$
      009888 7B 06            [ 1]  275 	ld	a, (0x06, sp)
      00988A A1 30            [ 1]  276 	cp	a, #0x30
      00988C 27 1B            [ 1]  277 	jreq	00104$
      00988E 7B 06            [ 1]  278 	ld	a, (0x06, sp)
      009890 A1 60            [ 1]  279 	cp	a, #0x60
      009892 27 15            [ 1]  280 	jreq	00104$
      009894 7B 06            [ 1]  281 	ld	a, (0x06, sp)
      009896 A1 70            [ 1]  282 	cp	a, #0x70
      009898 27 0F            [ 1]  283 	jreq	00104$
      00989A 4B A4            [ 1]  284 	push	#0xa4
      00989C 5F               [ 1]  285 	clrw	x
      00989D 89               [ 2]  286 	pushw	x
      00989E 4B 00            [ 1]  287 	push	#0x00
      0098A0 4B 6A            [ 1]  288 	push	#<(___str_0+0)
      0098A2 4B 81            [ 1]  289 	push	#((___str_0+0) >> 8)
      0098A4 CD 83 84         [ 4]  290 	call	_assert_failed
      0098A7 5B 06            [ 2]  291 	addw	sp, #6
      0098A9                        292 00104$:
                                    293 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 165: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
      0098A9 0D 07            [ 1]  294 	tnz	(0x07, sp)
      0098AB 27 15            [ 1]  295 	jreq	00121$
      0098AD 7B 07            [ 1]  296 	ld	a, (0x07, sp)
      0098AF A1 11            [ 1]  297 	cp	a, #0x11
      0098B1 27 0F            [ 1]  298 	jreq	00121$
      0098B3 4B A5            [ 1]  299 	push	#0xa5
      0098B5 5F               [ 1]  300 	clrw	x
      0098B6 89               [ 2]  301 	pushw	x
      0098B7 4B 00            [ 1]  302 	push	#0x00
      0098B9 4B 6A            [ 1]  303 	push	#<(___str_0+0)
      0098BB 4B 81            [ 1]  304 	push	#((___str_0+0) >> 8)
      0098BD CD 83 84         [ 4]  305 	call	_assert_failed
      0098C0 5B 06            [ 2]  306 	addw	sp, #6
      0098C2                        307 00121$:
                                    308 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 166: assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
      0098C2 0D 08            [ 1]  309 	tnz	(0x08, sp)
      0098C4 27 15            [ 1]  310 	jreq	00126$
      0098C6 7B 08            [ 1]  311 	ld	a, (0x08, sp)
      0098C8 A1 44            [ 1]  312 	cp	a, #0x44
      0098CA 27 0F            [ 1]  313 	jreq	00126$
      0098CC 4B A6            [ 1]  314 	push	#0xa6
      0098CE 5F               [ 1]  315 	clrw	x
      0098CF 89               [ 2]  316 	pushw	x
      0098D0 4B 00            [ 1]  317 	push	#0x00
      0098D2 4B 6A            [ 1]  318 	push	#<(___str_0+0)
      0098D4 4B 81            [ 1]  319 	push	#((___str_0+0) >> 8)
      0098D6 CD 83 84         [ 4]  320 	call	_assert_failed
      0098D9 5B 06            [ 2]  321 	addw	sp, #6
      0098DB                        322 00126$:
                                    323 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 167: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      0098DB 0D 0B            [ 1]  324 	tnz	(0x0b, sp)
      0098DD 27 15            [ 1]  325 	jreq	00131$
      0098DF 7B 0B            [ 1]  326 	ld	a, (0x0b, sp)
      0098E1 A1 22            [ 1]  327 	cp	a, #0x22
      0098E3 27 0F            [ 1]  328 	jreq	00131$
      0098E5 4B A7            [ 1]  329 	push	#0xa7
      0098E7 5F               [ 1]  330 	clrw	x
      0098E8 89               [ 2]  331 	pushw	x
      0098E9 4B 00            [ 1]  332 	push	#0x00
      0098EB 4B 6A            [ 1]  333 	push	#<(___str_0+0)
      0098ED 4B 81            [ 1]  334 	push	#((___str_0+0) >> 8)
      0098EF CD 83 84         [ 4]  335 	call	_assert_failed
      0098F2 5B 06            [ 2]  336 	addw	sp, #6
      0098F4                        337 00131$:
                                    338 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 168: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      0098F4 0D 0C            [ 1]  339 	tnz	(0x0c, sp)
      0098F6 27 15            [ 1]  340 	jreq	00136$
      0098F8 7B 0C            [ 1]  341 	ld	a, (0x0c, sp)
      0098FA A1 88            [ 1]  342 	cp	a, #0x88
      0098FC 27 0F            [ 1]  343 	jreq	00136$
      0098FE 4B A8            [ 1]  344 	push	#0xa8
      009900 5F               [ 1]  345 	clrw	x
      009901 89               [ 2]  346 	pushw	x
      009902 4B 00            [ 1]  347 	push	#0x00
      009904 4B 6A            [ 1]  348 	push	#<(___str_0+0)
      009906 4B 81            [ 1]  349 	push	#((___str_0+0) >> 8)
      009908 CD 83 84         [ 4]  350 	call	_assert_failed
      00990B 5B 06            [ 2]  351 	addw	sp, #6
      00990D                        352 00136$:
                                    353 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 169: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
      00990D 7B 0D            [ 1]  354 	ld	a, (0x0d, sp)
      00990F A1 55            [ 1]  355 	cp	a, #0x55
      009911 27 13            [ 1]  356 	jreq	00141$
      009913 0D 0D            [ 1]  357 	tnz	(0x0d, sp)
      009915 27 0F            [ 1]  358 	jreq	00141$
      009917 4B A9            [ 1]  359 	push	#0xa9
      009919 5F               [ 1]  360 	clrw	x
      00991A 89               [ 2]  361 	pushw	x
      00991B 4B 00            [ 1]  362 	push	#0x00
      00991D 4B 6A            [ 1]  363 	push	#<(___str_0+0)
      00991F 4B 81            [ 1]  364 	push	#((___str_0+0) >> 8)
      009921 CD 83 84         [ 4]  365 	call	_assert_failed
      009924 5B 06            [ 2]  366 	addw	sp, #6
      009926                        367 00141$:
                                    368 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 170: assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
      009926 7B 0E            [ 1]  369 	ld	a, (0x0e, sp)
      009928 A1 2A            [ 1]  370 	cp	a, #0x2a
      00992A 27 13            [ 1]  371 	jreq	00146$
      00992C 0D 0E            [ 1]  372 	tnz	(0x0e, sp)
      00992E 27 0F            [ 1]  373 	jreq	00146$
      009930 4B AA            [ 1]  374 	push	#0xaa
      009932 5F               [ 1]  375 	clrw	x
      009933 89               [ 2]  376 	pushw	x
      009934 4B 00            [ 1]  377 	push	#0x00
      009936 4B 6A            [ 1]  378 	push	#<(___str_0+0)
      009938 4B 81            [ 1]  379 	push	#((___str_0+0) >> 8)
      00993A CD 83 84         [ 4]  380 	call	_assert_failed
      00993D 5B 06            [ 2]  381 	addw	sp, #6
      00993F                        382 00146$:
                                    383 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 174: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
      00993F C6 52 5C         [ 1]  384 	ld	a, 0x525c
      009942 A4 F0            [ 1]  385 	and	a, #0xf0
      009944 C7 52 5C         [ 1]  386 	ld	0x525c, a
                                    387 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 178: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
      009947 C6 52 5C         [ 1]  388 	ld	a, 0x525c
      00994A 6B 01            [ 1]  389 	ld	(0x01, sp), a
      00994C 7B 07            [ 1]  390 	ld	a, (0x07, sp)
      00994E A4 01            [ 1]  391 	and	a, #0x01
      009950 6B 03            [ 1]  392 	ld	(0x03, sp), a
                                    393 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 179: | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
      009952 7B 08            [ 1]  394 	ld	a, (0x08, sp)
      009954 A4 04            [ 1]  395 	and	a, #0x04
      009956 1A 03            [ 1]  396 	or	a, (0x03, sp)
      009958 6B 02            [ 1]  397 	ld	(0x02, sp), a
                                    398 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 180: | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
      00995A 7B 0B            [ 1]  399 	ld	a, (0x0b, sp)
      00995C A4 02            [ 1]  400 	and	a, #0x02
      00995E 6B 03            [ 1]  401 	ld	(0x03, sp), a
                                    402 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 181: | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
      009960 7B 0C            [ 1]  403 	ld	a, (0x0c, sp)
      009962 A4 08            [ 1]  404 	and	a, #0x08
      009964 1A 03            [ 1]  405 	or	a, (0x03, sp)
      009966 1A 02            [ 1]  406 	or	a, (0x02, sp)
      009968 1A 01            [ 1]  407 	or	a, (0x01, sp)
      00996A C7 52 5C         [ 1]  408 	ld	0x525c, a
                                    409 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 184: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      00996D C6 52 58         [ 1]  410 	ld	a, 0x5258
      009970 A4 8F            [ 1]  411 	and	a, #0x8f
                                    412 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 185: (uint8_t)TIM1_OCMode);
      009972 1A 06            [ 1]  413 	or	a, (0x06, sp)
      009974 C7 52 58         [ 1]  414 	ld	0x5258, a
                                    415 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 188: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
      009977 C6 52 6F         [ 1]  416 	ld	a, 0x526f
      00997A A4 FC            [ 1]  417 	and	a, #0xfc
      00997C C7 52 6F         [ 1]  418 	ld	0x526f, a
                                    419 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 190: TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
      00997F C6 52 6F         [ 1]  420 	ld	a, 0x526f
      009982 6B 02            [ 1]  421 	ld	(0x02, sp), a
      009984 7B 0D            [ 1]  422 	ld	a, (0x0d, sp)
      009986 A4 01            [ 1]  423 	and	a, #0x01
      009988 6B 03            [ 1]  424 	ld	(0x03, sp), a
                                    425 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 191: (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
      00998A 7B 0E            [ 1]  426 	ld	a, (0x0e, sp)
      00998C A4 02            [ 1]  427 	and	a, #0x02
      00998E 1A 03            [ 1]  428 	or	a, (0x03, sp)
      009990 1A 02            [ 1]  429 	or	a, (0x02, sp)
      009992 C7 52 6F         [ 1]  430 	ld	0x526f, a
                                    431 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 194: TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
      009995 7B 09            [ 1]  432 	ld	a, (0x09, sp)
      009997 C7 52 65         [ 1]  433 	ld	0x5265, a
                                    434 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 195: TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
      00999A 7B 0A            [ 1]  435 	ld	a, (0x0a, sp)
      00999C C7 52 66         [ 1]  436 	ld	0x5266, a
                                    437 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 196: }
      00999F 5B 03            [ 2]  438 	addw	sp, #3
      0099A1 81               [ 4]  439 	ret
                                    440 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 217: void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    441 ;	-----------------------------------------
                                    442 ;	 function TIM1_OC2Init
                                    443 ;	-----------------------------------------
      0099A2                        444 _TIM1_OC2Init:
      0099A2 52 03            [ 2]  445 	sub	sp, #3
                                    446 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 227: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
      0099A4 0D 06            [ 1]  447 	tnz	(0x06, sp)
      0099A6 27 2D            [ 1]  448 	jreq	00104$
      0099A8 7B 06            [ 1]  449 	ld	a, (0x06, sp)
      0099AA A1 10            [ 1]  450 	cp	a, #0x10
      0099AC 27 27            [ 1]  451 	jreq	00104$
      0099AE 7B 06            [ 1]  452 	ld	a, (0x06, sp)
      0099B0 A1 20            [ 1]  453 	cp	a, #0x20
      0099B2 27 21            [ 1]  454 	jreq	00104$
      0099B4 7B 06            [ 1]  455 	ld	a, (0x06, sp)
      0099B6 A1 30            [ 1]  456 	cp	a, #0x30
      0099B8 27 1B            [ 1]  457 	jreq	00104$
      0099BA 7B 06            [ 1]  458 	ld	a, (0x06, sp)
      0099BC A1 60            [ 1]  459 	cp	a, #0x60
      0099BE 27 15            [ 1]  460 	jreq	00104$
      0099C0 7B 06            [ 1]  461 	ld	a, (0x06, sp)
      0099C2 A1 70            [ 1]  462 	cp	a, #0x70
      0099C4 27 0F            [ 1]  463 	jreq	00104$
      0099C6 4B E3            [ 1]  464 	push	#0xe3
      0099C8 5F               [ 1]  465 	clrw	x
      0099C9 89               [ 2]  466 	pushw	x
      0099CA 4B 00            [ 1]  467 	push	#0x00
      0099CC 4B 6A            [ 1]  468 	push	#<(___str_0+0)
      0099CE 4B 81            [ 1]  469 	push	#((___str_0+0) >> 8)
      0099D0 CD 83 84         [ 4]  470 	call	_assert_failed
      0099D3 5B 06            [ 2]  471 	addw	sp, #6
      0099D5                        472 00104$:
                                    473 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 228: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
      0099D5 0D 07            [ 1]  474 	tnz	(0x07, sp)
      0099D7 27 15            [ 1]  475 	jreq	00121$
      0099D9 7B 07            [ 1]  476 	ld	a, (0x07, sp)
      0099DB A1 11            [ 1]  477 	cp	a, #0x11
      0099DD 27 0F            [ 1]  478 	jreq	00121$
      0099DF 4B E4            [ 1]  479 	push	#0xe4
      0099E1 5F               [ 1]  480 	clrw	x
      0099E2 89               [ 2]  481 	pushw	x
      0099E3 4B 00            [ 1]  482 	push	#0x00
      0099E5 4B 6A            [ 1]  483 	push	#<(___str_0+0)
      0099E7 4B 81            [ 1]  484 	push	#((___str_0+0) >> 8)
      0099E9 CD 83 84         [ 4]  485 	call	_assert_failed
      0099EC 5B 06            [ 2]  486 	addw	sp, #6
      0099EE                        487 00121$:
                                    488 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 229: assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
      0099EE 0D 08            [ 1]  489 	tnz	(0x08, sp)
      0099F0 27 15            [ 1]  490 	jreq	00126$
      0099F2 7B 08            [ 1]  491 	ld	a, (0x08, sp)
      0099F4 A1 44            [ 1]  492 	cp	a, #0x44
      0099F6 27 0F            [ 1]  493 	jreq	00126$
      0099F8 4B E5            [ 1]  494 	push	#0xe5
      0099FA 5F               [ 1]  495 	clrw	x
      0099FB 89               [ 2]  496 	pushw	x
      0099FC 4B 00            [ 1]  497 	push	#0x00
      0099FE 4B 6A            [ 1]  498 	push	#<(___str_0+0)
      009A00 4B 81            [ 1]  499 	push	#((___str_0+0) >> 8)
      009A02 CD 83 84         [ 4]  500 	call	_assert_failed
      009A05 5B 06            [ 2]  501 	addw	sp, #6
      009A07                        502 00126$:
                                    503 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 230: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      009A07 0D 0B            [ 1]  504 	tnz	(0x0b, sp)
      009A09 27 15            [ 1]  505 	jreq	00131$
      009A0B 7B 0B            [ 1]  506 	ld	a, (0x0b, sp)
      009A0D A1 22            [ 1]  507 	cp	a, #0x22
      009A0F 27 0F            [ 1]  508 	jreq	00131$
      009A11 4B E6            [ 1]  509 	push	#0xe6
      009A13 5F               [ 1]  510 	clrw	x
      009A14 89               [ 2]  511 	pushw	x
      009A15 4B 00            [ 1]  512 	push	#0x00
      009A17 4B 6A            [ 1]  513 	push	#<(___str_0+0)
      009A19 4B 81            [ 1]  514 	push	#((___str_0+0) >> 8)
      009A1B CD 83 84         [ 4]  515 	call	_assert_failed
      009A1E 5B 06            [ 2]  516 	addw	sp, #6
      009A20                        517 00131$:
                                    518 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 231: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      009A20 0D 0C            [ 1]  519 	tnz	(0x0c, sp)
      009A22 27 15            [ 1]  520 	jreq	00136$
      009A24 7B 0C            [ 1]  521 	ld	a, (0x0c, sp)
      009A26 A1 88            [ 1]  522 	cp	a, #0x88
      009A28 27 0F            [ 1]  523 	jreq	00136$
      009A2A 4B E7            [ 1]  524 	push	#0xe7
      009A2C 5F               [ 1]  525 	clrw	x
      009A2D 89               [ 2]  526 	pushw	x
      009A2E 4B 00            [ 1]  527 	push	#0x00
      009A30 4B 6A            [ 1]  528 	push	#<(___str_0+0)
      009A32 4B 81            [ 1]  529 	push	#((___str_0+0) >> 8)
      009A34 CD 83 84         [ 4]  530 	call	_assert_failed
      009A37 5B 06            [ 2]  531 	addw	sp, #6
      009A39                        532 00136$:
                                    533 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 232: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
      009A39 7B 0D            [ 1]  534 	ld	a, (0x0d, sp)
      009A3B A1 55            [ 1]  535 	cp	a, #0x55
      009A3D 27 13            [ 1]  536 	jreq	00141$
      009A3F 0D 0D            [ 1]  537 	tnz	(0x0d, sp)
      009A41 27 0F            [ 1]  538 	jreq	00141$
      009A43 4B E8            [ 1]  539 	push	#0xe8
      009A45 5F               [ 1]  540 	clrw	x
      009A46 89               [ 2]  541 	pushw	x
      009A47 4B 00            [ 1]  542 	push	#0x00
      009A49 4B 6A            [ 1]  543 	push	#<(___str_0+0)
      009A4B 4B 81            [ 1]  544 	push	#((___str_0+0) >> 8)
      009A4D CD 83 84         [ 4]  545 	call	_assert_failed
      009A50 5B 06            [ 2]  546 	addw	sp, #6
      009A52                        547 00141$:
                                    548 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 233: assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
      009A52 7B 0E            [ 1]  549 	ld	a, (0x0e, sp)
      009A54 A1 2A            [ 1]  550 	cp	a, #0x2a
      009A56 27 13            [ 1]  551 	jreq	00146$
      009A58 0D 0E            [ 1]  552 	tnz	(0x0e, sp)
      009A5A 27 0F            [ 1]  553 	jreq	00146$
      009A5C 4B E9            [ 1]  554 	push	#0xe9
      009A5E 5F               [ 1]  555 	clrw	x
      009A5F 89               [ 2]  556 	pushw	x
      009A60 4B 00            [ 1]  557 	push	#0x00
      009A62 4B 6A            [ 1]  558 	push	#<(___str_0+0)
      009A64 4B 81            [ 1]  559 	push	#((___str_0+0) >> 8)
      009A66 CD 83 84         [ 4]  560 	call	_assert_failed
      009A69 5B 06            [ 2]  561 	addw	sp, #6
      009A6B                        562 00146$:
                                    563 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 237: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
      009A6B C6 52 5C         [ 1]  564 	ld	a, 0x525c
      009A6E A4 0F            [ 1]  565 	and	a, #0x0f
      009A70 C7 52 5C         [ 1]  566 	ld	0x525c, a
                                    567 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 242: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
      009A73 C6 52 5C         [ 1]  568 	ld	a, 0x525c
      009A76 6B 01            [ 1]  569 	ld	(0x01, sp), a
      009A78 7B 07            [ 1]  570 	ld	a, (0x07, sp)
      009A7A A4 10            [ 1]  571 	and	a, #0x10
      009A7C 6B 03            [ 1]  572 	ld	(0x03, sp), a
                                    573 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 243: (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
      009A7E 7B 08            [ 1]  574 	ld	a, (0x08, sp)
      009A80 A4 40            [ 1]  575 	and	a, #0x40
      009A82 1A 03            [ 1]  576 	or	a, (0x03, sp)
      009A84 6B 02            [ 1]  577 	ld	(0x02, sp), a
                                    578 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 244: (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
      009A86 7B 0B            [ 1]  579 	ld	a, (0x0b, sp)
      009A88 A4 20            [ 1]  580 	and	a, #0x20
      009A8A 6B 03            [ 1]  581 	ld	(0x03, sp), a
                                    582 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 245: (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
      009A8C 7B 0C            [ 1]  583 	ld	a, (0x0c, sp)
      009A8E A4 80            [ 1]  584 	and	a, #0x80
      009A90 1A 03            [ 1]  585 	or	a, (0x03, sp)
      009A92 1A 02            [ 1]  586 	or	a, (0x02, sp)
      009A94 1A 01            [ 1]  587 	or	a, (0x01, sp)
      009A96 C7 52 5C         [ 1]  588 	ld	0x525c, a
                                    589 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 248: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      009A99 C6 52 59         [ 1]  590 	ld	a, 0x5259
      009A9C A4 8F            [ 1]  591 	and	a, #0x8f
                                    592 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 249: (uint8_t)TIM1_OCMode);
      009A9E 1A 06            [ 1]  593 	or	a, (0x06, sp)
      009AA0 C7 52 59         [ 1]  594 	ld	0x5259, a
                                    595 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 252: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
      009AA3 C6 52 6F         [ 1]  596 	ld	a, 0x526f
      009AA6 A4 F3            [ 1]  597 	and	a, #0xf3
      009AA8 C7 52 6F         [ 1]  598 	ld	0x526f, a
                                    599 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 254: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
      009AAB C6 52 6F         [ 1]  600 	ld	a, 0x526f
      009AAE 6B 02            [ 1]  601 	ld	(0x02, sp), a
      009AB0 7B 0D            [ 1]  602 	ld	a, (0x0d, sp)
      009AB2 A4 04            [ 1]  603 	and	a, #0x04
      009AB4 6B 03            [ 1]  604 	ld	(0x03, sp), a
                                    605 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 255: (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
      009AB6 7B 0E            [ 1]  606 	ld	a, (0x0e, sp)
      009AB8 A4 08            [ 1]  607 	and	a, #0x08
      009ABA 1A 03            [ 1]  608 	or	a, (0x03, sp)
      009ABC 1A 02            [ 1]  609 	or	a, (0x02, sp)
      009ABE C7 52 6F         [ 1]  610 	ld	0x526f, a
                                    611 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 258: TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
      009AC1 7B 09            [ 1]  612 	ld	a, (0x09, sp)
      009AC3 C7 52 67         [ 1]  613 	ld	0x5267, a
                                    614 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 259: TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
      009AC6 7B 0A            [ 1]  615 	ld	a, (0x0a, sp)
      009AC8 C7 52 68         [ 1]  616 	ld	0x5268, a
                                    617 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 260: }
      009ACB 5B 03            [ 2]  618 	addw	sp, #3
      009ACD 81               [ 4]  619 	ret
                                    620 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 281: void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    621 ;	-----------------------------------------
                                    622 ;	 function TIM1_OC3Init
                                    623 ;	-----------------------------------------
      009ACE                        624 _TIM1_OC3Init:
      009ACE 52 03            [ 2]  625 	sub	sp, #3
                                    626 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 291: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
      009AD0 0D 06            [ 1]  627 	tnz	(0x06, sp)
      009AD2 27 2D            [ 1]  628 	jreq	00104$
      009AD4 7B 06            [ 1]  629 	ld	a, (0x06, sp)
      009AD6 A1 10            [ 1]  630 	cp	a, #0x10
      009AD8 27 27            [ 1]  631 	jreq	00104$
      009ADA 7B 06            [ 1]  632 	ld	a, (0x06, sp)
      009ADC A1 20            [ 1]  633 	cp	a, #0x20
      009ADE 27 21            [ 1]  634 	jreq	00104$
      009AE0 7B 06            [ 1]  635 	ld	a, (0x06, sp)
      009AE2 A1 30            [ 1]  636 	cp	a, #0x30
      009AE4 27 1B            [ 1]  637 	jreq	00104$
      009AE6 7B 06            [ 1]  638 	ld	a, (0x06, sp)
      009AE8 A1 60            [ 1]  639 	cp	a, #0x60
      009AEA 27 15            [ 1]  640 	jreq	00104$
      009AEC 7B 06            [ 1]  641 	ld	a, (0x06, sp)
      009AEE A1 70            [ 1]  642 	cp	a, #0x70
      009AF0 27 0F            [ 1]  643 	jreq	00104$
      009AF2 4B 23            [ 1]  644 	push	#0x23
      009AF4 4B 01            [ 1]  645 	push	#0x01
      009AF6 5F               [ 1]  646 	clrw	x
      009AF7 89               [ 2]  647 	pushw	x
      009AF8 4B 6A            [ 1]  648 	push	#<(___str_0+0)
      009AFA 4B 81            [ 1]  649 	push	#((___str_0+0) >> 8)
      009AFC CD 83 84         [ 4]  650 	call	_assert_failed
      009AFF 5B 06            [ 2]  651 	addw	sp, #6
      009B01                        652 00104$:
                                    653 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 292: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
      009B01 0D 07            [ 1]  654 	tnz	(0x07, sp)
      009B03 27 15            [ 1]  655 	jreq	00121$
      009B05 7B 07            [ 1]  656 	ld	a, (0x07, sp)
      009B07 A1 11            [ 1]  657 	cp	a, #0x11
      009B09 27 0F            [ 1]  658 	jreq	00121$
      009B0B 4B 24            [ 1]  659 	push	#0x24
      009B0D 4B 01            [ 1]  660 	push	#0x01
      009B0F 5F               [ 1]  661 	clrw	x
      009B10 89               [ 2]  662 	pushw	x
      009B11 4B 6A            [ 1]  663 	push	#<(___str_0+0)
      009B13 4B 81            [ 1]  664 	push	#((___str_0+0) >> 8)
      009B15 CD 83 84         [ 4]  665 	call	_assert_failed
      009B18 5B 06            [ 2]  666 	addw	sp, #6
      009B1A                        667 00121$:
                                    668 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 293: assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
      009B1A 0D 08            [ 1]  669 	tnz	(0x08, sp)
      009B1C 27 15            [ 1]  670 	jreq	00126$
      009B1E 7B 08            [ 1]  671 	ld	a, (0x08, sp)
      009B20 A1 44            [ 1]  672 	cp	a, #0x44
      009B22 27 0F            [ 1]  673 	jreq	00126$
      009B24 4B 25            [ 1]  674 	push	#0x25
      009B26 4B 01            [ 1]  675 	push	#0x01
      009B28 5F               [ 1]  676 	clrw	x
      009B29 89               [ 2]  677 	pushw	x
      009B2A 4B 6A            [ 1]  678 	push	#<(___str_0+0)
      009B2C 4B 81            [ 1]  679 	push	#((___str_0+0) >> 8)
      009B2E CD 83 84         [ 4]  680 	call	_assert_failed
      009B31 5B 06            [ 2]  681 	addw	sp, #6
      009B33                        682 00126$:
                                    683 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 294: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      009B33 0D 0B            [ 1]  684 	tnz	(0x0b, sp)
      009B35 27 15            [ 1]  685 	jreq	00131$
      009B37 7B 0B            [ 1]  686 	ld	a, (0x0b, sp)
      009B39 A1 22            [ 1]  687 	cp	a, #0x22
      009B3B 27 0F            [ 1]  688 	jreq	00131$
      009B3D 4B 26            [ 1]  689 	push	#0x26
      009B3F 4B 01            [ 1]  690 	push	#0x01
      009B41 5F               [ 1]  691 	clrw	x
      009B42 89               [ 2]  692 	pushw	x
      009B43 4B 6A            [ 1]  693 	push	#<(___str_0+0)
      009B45 4B 81            [ 1]  694 	push	#((___str_0+0) >> 8)
      009B47 CD 83 84         [ 4]  695 	call	_assert_failed
      009B4A 5B 06            [ 2]  696 	addw	sp, #6
      009B4C                        697 00131$:
                                    698 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 295: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      009B4C 0D 0C            [ 1]  699 	tnz	(0x0c, sp)
      009B4E 27 15            [ 1]  700 	jreq	00136$
      009B50 7B 0C            [ 1]  701 	ld	a, (0x0c, sp)
      009B52 A1 88            [ 1]  702 	cp	a, #0x88
      009B54 27 0F            [ 1]  703 	jreq	00136$
      009B56 4B 27            [ 1]  704 	push	#0x27
      009B58 4B 01            [ 1]  705 	push	#0x01
      009B5A 5F               [ 1]  706 	clrw	x
      009B5B 89               [ 2]  707 	pushw	x
      009B5C 4B 6A            [ 1]  708 	push	#<(___str_0+0)
      009B5E 4B 81            [ 1]  709 	push	#((___str_0+0) >> 8)
      009B60 CD 83 84         [ 4]  710 	call	_assert_failed
      009B63 5B 06            [ 2]  711 	addw	sp, #6
      009B65                        712 00136$:
                                    713 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 296: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
      009B65 7B 0D            [ 1]  714 	ld	a, (0x0d, sp)
      009B67 A1 55            [ 1]  715 	cp	a, #0x55
      009B69 27 13            [ 1]  716 	jreq	00141$
      009B6B 0D 0D            [ 1]  717 	tnz	(0x0d, sp)
      009B6D 27 0F            [ 1]  718 	jreq	00141$
      009B6F 4B 28            [ 1]  719 	push	#0x28
      009B71 4B 01            [ 1]  720 	push	#0x01
      009B73 5F               [ 1]  721 	clrw	x
      009B74 89               [ 2]  722 	pushw	x
      009B75 4B 6A            [ 1]  723 	push	#<(___str_0+0)
      009B77 4B 81            [ 1]  724 	push	#((___str_0+0) >> 8)
      009B79 CD 83 84         [ 4]  725 	call	_assert_failed
      009B7C 5B 06            [ 2]  726 	addw	sp, #6
      009B7E                        727 00141$:
                                    728 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 297: assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
      009B7E 7B 0E            [ 1]  729 	ld	a, (0x0e, sp)
      009B80 A1 2A            [ 1]  730 	cp	a, #0x2a
      009B82 27 13            [ 1]  731 	jreq	00146$
      009B84 0D 0E            [ 1]  732 	tnz	(0x0e, sp)
      009B86 27 0F            [ 1]  733 	jreq	00146$
      009B88 4B 29            [ 1]  734 	push	#0x29
      009B8A 4B 01            [ 1]  735 	push	#0x01
      009B8C 5F               [ 1]  736 	clrw	x
      009B8D 89               [ 2]  737 	pushw	x
      009B8E 4B 6A            [ 1]  738 	push	#<(___str_0+0)
      009B90 4B 81            [ 1]  739 	push	#((___str_0+0) >> 8)
      009B92 CD 83 84         [ 4]  740 	call	_assert_failed
      009B95 5B 06            [ 2]  741 	addw	sp, #6
      009B97                        742 00146$:
                                    743 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 301: TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
      009B97 C6 52 5D         [ 1]  744 	ld	a, 0x525d
      009B9A A4 F0            [ 1]  745 	and	a, #0xf0
      009B9C C7 52 5D         [ 1]  746 	ld	0x525d, a
                                    747 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 305: TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
      009B9F C6 52 5D         [ 1]  748 	ld	a, 0x525d
      009BA2 6B 01            [ 1]  749 	ld	(0x01, sp), a
      009BA4 7B 07            [ 1]  750 	ld	a, (0x07, sp)
      009BA6 A4 01            [ 1]  751 	and	a, #0x01
      009BA8 6B 03            [ 1]  752 	ld	(0x03, sp), a
                                    753 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 306: (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
      009BAA 7B 08            [ 1]  754 	ld	a, (0x08, sp)
      009BAC A4 04            [ 1]  755 	and	a, #0x04
      009BAE 1A 03            [ 1]  756 	or	a, (0x03, sp)
      009BB0 6B 02            [ 1]  757 	ld	(0x02, sp), a
                                    758 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 307: (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
      009BB2 7B 0B            [ 1]  759 	ld	a, (0x0b, sp)
      009BB4 A4 02            [ 1]  760 	and	a, #0x02
      009BB6 6B 03            [ 1]  761 	ld	(0x03, sp), a
                                    762 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 308: (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
      009BB8 7B 0C            [ 1]  763 	ld	a, (0x0c, sp)
      009BBA A4 08            [ 1]  764 	and	a, #0x08
      009BBC 1A 03            [ 1]  765 	or	a, (0x03, sp)
      009BBE 1A 02            [ 1]  766 	or	a, (0x02, sp)
      009BC0 1A 01            [ 1]  767 	or	a, (0x01, sp)
      009BC2 C7 52 5D         [ 1]  768 	ld	0x525d, a
                                    769 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 311: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      009BC5 C6 52 5A         [ 1]  770 	ld	a, 0x525a
      009BC8 A4 8F            [ 1]  771 	and	a, #0x8f
                                    772 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 312: (uint8_t)TIM1_OCMode);
      009BCA 1A 06            [ 1]  773 	or	a, (0x06, sp)
      009BCC C7 52 5A         [ 1]  774 	ld	0x525a, a
                                    775 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 315: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
      009BCF C6 52 6F         [ 1]  776 	ld	a, 0x526f
      009BD2 A4 CF            [ 1]  777 	and	a, #0xcf
      009BD4 C7 52 6F         [ 1]  778 	ld	0x526f, a
                                    779 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 317: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
      009BD7 C6 52 6F         [ 1]  780 	ld	a, 0x526f
      009BDA 6B 02            [ 1]  781 	ld	(0x02, sp), a
      009BDC 7B 0D            [ 1]  782 	ld	a, (0x0d, sp)
      009BDE A4 10            [ 1]  783 	and	a, #0x10
      009BE0 6B 03            [ 1]  784 	ld	(0x03, sp), a
                                    785 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 318: (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
      009BE2 7B 0E            [ 1]  786 	ld	a, (0x0e, sp)
      009BE4 A4 20            [ 1]  787 	and	a, #0x20
      009BE6 1A 03            [ 1]  788 	or	a, (0x03, sp)
      009BE8 1A 02            [ 1]  789 	or	a, (0x02, sp)
      009BEA C7 52 6F         [ 1]  790 	ld	0x526f, a
                                    791 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 321: TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
      009BED 7B 09            [ 1]  792 	ld	a, (0x09, sp)
      009BEF C7 52 69         [ 1]  793 	ld	0x5269, a
                                    794 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 322: TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
      009BF2 7B 0A            [ 1]  795 	ld	a, (0x0a, sp)
      009BF4 C7 52 6A         [ 1]  796 	ld	0x526a, a
                                    797 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 323: }
      009BF7 5B 03            [ 2]  798 	addw	sp, #3
      009BF9 81               [ 4]  799 	ret
                                    800 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 338: void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    801 ;	-----------------------------------------
                                    802 ;	 function TIM1_OC4Init
                                    803 ;	-----------------------------------------
      009BFA                        804 _TIM1_OC4Init:
      009BFA 89               [ 2]  805 	pushw	x
                                    806 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 345: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
      009BFB 0D 05            [ 1]  807 	tnz	(0x05, sp)
      009BFD 27 2D            [ 1]  808 	jreq	00107$
      009BFF 7B 05            [ 1]  809 	ld	a, (0x05, sp)
      009C01 A1 10            [ 1]  810 	cp	a, #0x10
      009C03 27 27            [ 1]  811 	jreq	00107$
      009C05 7B 05            [ 1]  812 	ld	a, (0x05, sp)
      009C07 A1 20            [ 1]  813 	cp	a, #0x20
      009C09 27 21            [ 1]  814 	jreq	00107$
      009C0B 7B 05            [ 1]  815 	ld	a, (0x05, sp)
      009C0D A1 30            [ 1]  816 	cp	a, #0x30
      009C0F 27 1B            [ 1]  817 	jreq	00107$
      009C11 7B 05            [ 1]  818 	ld	a, (0x05, sp)
      009C13 A1 60            [ 1]  819 	cp	a, #0x60
      009C15 27 15            [ 1]  820 	jreq	00107$
      009C17 7B 05            [ 1]  821 	ld	a, (0x05, sp)
      009C19 A1 70            [ 1]  822 	cp	a, #0x70
      009C1B 27 0F            [ 1]  823 	jreq	00107$
      009C1D 4B 59            [ 1]  824 	push	#0x59
      009C1F 4B 01            [ 1]  825 	push	#0x01
      009C21 5F               [ 1]  826 	clrw	x
      009C22 89               [ 2]  827 	pushw	x
      009C23 4B 6A            [ 1]  828 	push	#<(___str_0+0)
      009C25 4B 81            [ 1]  829 	push	#((___str_0+0) >> 8)
      009C27 CD 83 84         [ 4]  830 	call	_assert_failed
      009C2A 5B 06            [ 2]  831 	addw	sp, #6
      009C2C                        832 00107$:
                                    833 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 346: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
      009C2C 0D 06            [ 1]  834 	tnz	(0x06, sp)
      009C2E 27 15            [ 1]  835 	jreq	00124$
      009C30 7B 06            [ 1]  836 	ld	a, (0x06, sp)
      009C32 A1 11            [ 1]  837 	cp	a, #0x11
      009C34 27 0F            [ 1]  838 	jreq	00124$
      009C36 4B 5A            [ 1]  839 	push	#0x5a
      009C38 4B 01            [ 1]  840 	push	#0x01
      009C3A 5F               [ 1]  841 	clrw	x
      009C3B 89               [ 2]  842 	pushw	x
      009C3C 4B 6A            [ 1]  843 	push	#<(___str_0+0)
      009C3E 4B 81            [ 1]  844 	push	#((___str_0+0) >> 8)
      009C40 CD 83 84         [ 4]  845 	call	_assert_failed
      009C43 5B 06            [ 2]  846 	addw	sp, #6
      009C45                        847 00124$:
                                    848 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 347: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      009C45 0D 09            [ 1]  849 	tnz	(0x09, sp)
      009C47 27 15            [ 1]  850 	jreq	00129$
      009C49 7B 09            [ 1]  851 	ld	a, (0x09, sp)
      009C4B A1 22            [ 1]  852 	cp	a, #0x22
      009C4D 27 0F            [ 1]  853 	jreq	00129$
      009C4F 4B 5B            [ 1]  854 	push	#0x5b
      009C51 4B 01            [ 1]  855 	push	#0x01
      009C53 5F               [ 1]  856 	clrw	x
      009C54 89               [ 2]  857 	pushw	x
      009C55 4B 6A            [ 1]  858 	push	#<(___str_0+0)
      009C57 4B 81            [ 1]  859 	push	#((___str_0+0) >> 8)
      009C59 CD 83 84         [ 4]  860 	call	_assert_failed
      009C5C 5B 06            [ 2]  861 	addw	sp, #6
      009C5E                        862 00129$:
                                    863 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 348: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
      009C5E 7B 0A            [ 1]  864 	ld	a, (0x0a, sp)
      009C60 A1 55            [ 1]  865 	cp	a, #0x55
      009C62 27 13            [ 1]  866 	jreq	00134$
      009C64 0D 0A            [ 1]  867 	tnz	(0x0a, sp)
      009C66 27 0F            [ 1]  868 	jreq	00134$
      009C68 4B 5C            [ 1]  869 	push	#0x5c
      009C6A 4B 01            [ 1]  870 	push	#0x01
      009C6C 5F               [ 1]  871 	clrw	x
      009C6D 89               [ 2]  872 	pushw	x
      009C6E 4B 6A            [ 1]  873 	push	#<(___str_0+0)
      009C70 4B 81            [ 1]  874 	push	#((___str_0+0) >> 8)
      009C72 CD 83 84         [ 4]  875 	call	_assert_failed
      009C75 5B 06            [ 2]  876 	addw	sp, #6
      009C77                        877 00134$:
                                    878 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 351: TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
      009C77 C6 52 5D         [ 1]  879 	ld	a, 0x525d
      009C7A A4 CF            [ 1]  880 	and	a, #0xcf
      009C7C C7 52 5D         [ 1]  881 	ld	0x525d, a
                                    882 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 353: TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
      009C7F C6 52 5D         [ 1]  883 	ld	a, 0x525d
      009C82 6B 01            [ 1]  884 	ld	(0x01, sp), a
      009C84 7B 06            [ 1]  885 	ld	a, (0x06, sp)
      009C86 A4 10            [ 1]  886 	and	a, #0x10
      009C88 6B 02            [ 1]  887 	ld	(0x02, sp), a
                                    888 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 354: (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
      009C8A 7B 09            [ 1]  889 	ld	a, (0x09, sp)
      009C8C A4 20            [ 1]  890 	and	a, #0x20
      009C8E 1A 02            [ 1]  891 	or	a, (0x02, sp)
      009C90 1A 01            [ 1]  892 	or	a, (0x01, sp)
      009C92 C7 52 5D         [ 1]  893 	ld	0x525d, a
                                    894 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 357: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      009C95 C6 52 5B         [ 1]  895 	ld	a, 0x525b
      009C98 A4 8F            [ 1]  896 	and	a, #0x8f
      009C9A 1A 05            [ 1]  897 	or	a, (0x05, sp)
      009C9C C7 52 5B         [ 1]  898 	ld	0x525b, a
                                    899 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 363: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
      009C9F C6 52 6F         [ 1]  900 	ld	a, 0x526f
                                    901 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 361: if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
      009CA2 0D 0A            [ 1]  902 	tnz	(0x0a, sp)
      009CA4 27 07            [ 1]  903 	jreq	00102$
                                    904 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 363: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
      009CA6 AA DF            [ 1]  905 	or	a, #0xdf
      009CA8 C7 52 6F         [ 1]  906 	ld	0x526f, a
      009CAB 20 05            [ 2]  907 	jra	00103$
      009CAD                        908 00102$:
                                    909 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 367: TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
      009CAD A4 BF            [ 1]  910 	and	a, #0xbf
      009CAF C7 52 6F         [ 1]  911 	ld	0x526f, a
      009CB2                        912 00103$:
                                    913 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 371: TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
      009CB2 7B 07            [ 1]  914 	ld	a, (0x07, sp)
      009CB4 C7 52 6B         [ 1]  915 	ld	0x526b, a
                                    916 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 372: TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
      009CB7 7B 08            [ 1]  917 	ld	a, (0x08, sp)
      009CB9 C7 52 6C         [ 1]  918 	ld	0x526c, a
                                    919 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 373: }
      009CBC 85               [ 2]  920 	popw	x
      009CBD 81               [ 4]  921 	ret
                                    922 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 388: void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
                                    923 ;	-----------------------------------------
                                    924 ;	 function TIM1_BDTRConfig
                                    925 ;	-----------------------------------------
      009CBE                        926 _TIM1_BDTRConfig:
      009CBE 88               [ 1]  927 	push	a
                                    928 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 396: assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
      009CBF 7B 04            [ 1]  929 	ld	a, (0x04, sp)
      009CC1 A1 04            [ 1]  930 	cp	a, #0x04
      009CC3 27 13            [ 1]  931 	jreq	00104$
      009CC5 0D 04            [ 1]  932 	tnz	(0x04, sp)
      009CC7 27 0F            [ 1]  933 	jreq	00104$
      009CC9 4B 8C            [ 1]  934 	push	#0x8c
      009CCB 4B 01            [ 1]  935 	push	#0x01
      009CCD 5F               [ 1]  936 	clrw	x
      009CCE 89               [ 2]  937 	pushw	x
      009CCF 4B 6A            [ 1]  938 	push	#<(___str_0+0)
      009CD1 4B 81            [ 1]  939 	push	#((___str_0+0) >> 8)
      009CD3 CD 83 84         [ 4]  940 	call	_assert_failed
      009CD6 5B 06            [ 2]  941 	addw	sp, #6
      009CD8                        942 00104$:
                                    943 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 397: assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
      009CD8 0D 05            [ 1]  944 	tnz	(0x05, sp)
      009CDA 27 20            [ 1]  945 	jreq	00109$
      009CDC 7B 05            [ 1]  946 	ld	a, (0x05, sp)
      009CDE 4A               [ 1]  947 	dec	a
      009CDF 27 1B            [ 1]  948 	jreq	00109$
      009CE1 7B 05            [ 1]  949 	ld	a, (0x05, sp)
      009CE3 A1 02            [ 1]  950 	cp	a, #0x02
      009CE5 27 15            [ 1]  951 	jreq	00109$
      009CE7 7B 05            [ 1]  952 	ld	a, (0x05, sp)
      009CE9 A1 03            [ 1]  953 	cp	a, #0x03
      009CEB 27 0F            [ 1]  954 	jreq	00109$
      009CED 4B 8D            [ 1]  955 	push	#0x8d
      009CEF 4B 01            [ 1]  956 	push	#0x01
      009CF1 5F               [ 1]  957 	clrw	x
      009CF2 89               [ 2]  958 	pushw	x
      009CF3 4B 6A            [ 1]  959 	push	#<(___str_0+0)
      009CF5 4B 81            [ 1]  960 	push	#((___str_0+0) >> 8)
      009CF7 CD 83 84         [ 4]  961 	call	_assert_failed
      009CFA 5B 06            [ 2]  962 	addw	sp, #6
      009CFC                        963 00109$:
                                    964 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 398: assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
      009CFC 7B 07            [ 1]  965 	ld	a, (0x07, sp)
      009CFE A1 10            [ 1]  966 	cp	a, #0x10
      009D00 27 13            [ 1]  967 	jreq	00120$
      009D02 0D 07            [ 1]  968 	tnz	(0x07, sp)
      009D04 27 0F            [ 1]  969 	jreq	00120$
      009D06 4B 8E            [ 1]  970 	push	#0x8e
      009D08 4B 01            [ 1]  971 	push	#0x01
      009D0A 5F               [ 1]  972 	clrw	x
      009D0B 89               [ 2]  973 	pushw	x
      009D0C 4B 6A            [ 1]  974 	push	#<(___str_0+0)
      009D0E 4B 81            [ 1]  975 	push	#((___str_0+0) >> 8)
      009D10 CD 83 84         [ 4]  976 	call	_assert_failed
      009D13 5B 06            [ 2]  977 	addw	sp, #6
      009D15                        978 00120$:
                                    979 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 399: assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
      009D15 0D 08            [ 1]  980 	tnz	(0x08, sp)
      009D17 27 15            [ 1]  981 	jreq	00125$
      009D19 7B 08            [ 1]  982 	ld	a, (0x08, sp)
      009D1B A1 20            [ 1]  983 	cp	a, #0x20
      009D1D 27 0F            [ 1]  984 	jreq	00125$
      009D1F 4B 8F            [ 1]  985 	push	#0x8f
      009D21 4B 01            [ 1]  986 	push	#0x01
      009D23 5F               [ 1]  987 	clrw	x
      009D24 89               [ 2]  988 	pushw	x
      009D25 4B 6A            [ 1]  989 	push	#<(___str_0+0)
      009D27 4B 81            [ 1]  990 	push	#((___str_0+0) >> 8)
      009D29 CD 83 84         [ 4]  991 	call	_assert_failed
      009D2C 5B 06            [ 2]  992 	addw	sp, #6
      009D2E                        993 00125$:
                                    994 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 400: assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
      009D2E 7B 09            [ 1]  995 	ld	a, (0x09, sp)
      009D30 A1 40            [ 1]  996 	cp	a, #0x40
      009D32 27 13            [ 1]  997 	jreq	00130$
      009D34 0D 09            [ 1]  998 	tnz	(0x09, sp)
      009D36 27 0F            [ 1]  999 	jreq	00130$
      009D38 4B 90            [ 1] 1000 	push	#0x90
      009D3A 4B 01            [ 1] 1001 	push	#0x01
      009D3C 5F               [ 1] 1002 	clrw	x
      009D3D 89               [ 2] 1003 	pushw	x
      009D3E 4B 6A            [ 1] 1004 	push	#<(___str_0+0)
      009D40 4B 81            [ 1] 1005 	push	#((___str_0+0) >> 8)
      009D42 CD 83 84         [ 4] 1006 	call	_assert_failed
      009D45 5B 06            [ 2] 1007 	addw	sp, #6
      009D47                       1008 00130$:
                                   1009 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 402: TIM1->DTR = (uint8_t)(TIM1_DeadTime);
      009D47 AE 52 6E         [ 2] 1010 	ldw	x, #0x526e
      009D4A 7B 06            [ 1] 1011 	ld	a, (0x06, sp)
      009D4C F7               [ 1] 1012 	ld	(x), a
                                   1013 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 406: TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
      009D4D 7B 04            [ 1] 1014 	ld	a, (0x04, sp)
      009D4F 1A 05            [ 1] 1015 	or	a, (0x05, sp)
      009D51 6B 01            [ 1] 1016 	ld	(0x01, sp), a
                                   1017 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 407: (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
      009D53 7B 07            [ 1] 1018 	ld	a, (0x07, sp)
      009D55 1A 08            [ 1] 1019 	or	a, (0x08, sp)
                                   1020 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 408: (uint8_t)TIM1_AutomaticOutput));
      009D57 1A 09            [ 1] 1021 	or	a, (0x09, sp)
      009D59 1A 01            [ 1] 1022 	or	a, (0x01, sp)
      009D5B C7 52 6D         [ 1] 1023 	ld	0x526d, a
                                   1024 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 409: }
      009D5E 84               [ 1] 1025 	pop	a
      009D5F 81               [ 4] 1026 	ret
                                   1027 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 423: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
                                   1028 ;	-----------------------------------------
                                   1029 ;	 function TIM1_ICInit
                                   1030 ;	-----------------------------------------
      009D60                       1031 _TIM1_ICInit:
      009D60 89               [ 2] 1032 	pushw	x
                                   1033 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 430: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      009D61 7B 05            [ 1] 1034 	ld	a, (0x05, sp)
      009D63 4A               [ 1] 1035 	dec	a
      009D64 26 05            [ 1] 1036 	jrne	00235$
      009D66 A6 01            [ 1] 1037 	ld	a, #0x01
      009D68 6B 01            [ 1] 1038 	ld	(0x01, sp), a
      009D6A C5                    1039 	.byte 0xc5
      009D6B                       1040 00235$:
      009D6B 0F 01            [ 1] 1041 	clr	(0x01, sp)
      009D6D                       1042 00236$:
      009D6D 7B 05            [ 1] 1043 	ld	a, (0x05, sp)
      009D6F A0 02            [ 1] 1044 	sub	a, #0x02
      009D71 26 04            [ 1] 1045 	jrne	00238$
      009D73 4C               [ 1] 1046 	inc	a
      009D74 6B 02            [ 1] 1047 	ld	(0x02, sp), a
      009D76 C5                    1048 	.byte 0xc5
      009D77                       1049 00238$:
      009D77 0F 02            [ 1] 1050 	clr	(0x02, sp)
      009D79                       1051 00239$:
      009D79 0D 05            [ 1] 1052 	tnz	(0x05, sp)
      009D7B 27 1D            [ 1] 1053 	jreq	00113$
      009D7D 0D 01            [ 1] 1054 	tnz	(0x01, sp)
      009D7F 26 19            [ 1] 1055 	jrne	00113$
      009D81 0D 02            [ 1] 1056 	tnz	(0x02, sp)
      009D83 26 15            [ 1] 1057 	jrne	00113$
      009D85 7B 05            [ 1] 1058 	ld	a, (0x05, sp)
      009D87 A1 03            [ 1] 1059 	cp	a, #0x03
      009D89 27 0F            [ 1] 1060 	jreq	00113$
      009D8B 4B AE            [ 1] 1061 	push	#0xae
      009D8D 4B 01            [ 1] 1062 	push	#0x01
      009D8F 5F               [ 1] 1063 	clrw	x
      009D90 89               [ 2] 1064 	pushw	x
      009D91 4B 6A            [ 1] 1065 	push	#<(___str_0+0)
      009D93 4B 81            [ 1] 1066 	push	#((___str_0+0) >> 8)
      009D95 CD 83 84         [ 4] 1067 	call	_assert_failed
      009D98 5B 06            [ 2] 1068 	addw	sp, #6
      009D9A                       1069 00113$:
                                   1070 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 431: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      009D9A 0D 06            [ 1] 1071 	tnz	(0x06, sp)
      009D9C 27 14            [ 1] 1072 	jreq	00124$
      009D9E 7B 06            [ 1] 1073 	ld	a, (0x06, sp)
      009DA0 4A               [ 1] 1074 	dec	a
      009DA1 27 0F            [ 1] 1075 	jreq	00124$
      009DA3 4B AF            [ 1] 1076 	push	#0xaf
      009DA5 4B 01            [ 1] 1077 	push	#0x01
      009DA7 5F               [ 1] 1078 	clrw	x
      009DA8 89               [ 2] 1079 	pushw	x
      009DA9 4B 6A            [ 1] 1080 	push	#<(___str_0+0)
      009DAB 4B 81            [ 1] 1081 	push	#((___str_0+0) >> 8)
      009DAD CD 83 84         [ 4] 1082 	call	_assert_failed
      009DB0 5B 06            [ 2] 1083 	addw	sp, #6
      009DB2                       1084 00124$:
                                   1085 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 432: assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
      009DB2 7B 07            [ 1] 1086 	ld	a, (0x07, sp)
      009DB4 4A               [ 1] 1087 	dec	a
      009DB5 27 1B            [ 1] 1088 	jreq	00129$
      009DB7 7B 07            [ 1] 1089 	ld	a, (0x07, sp)
      009DB9 A1 02            [ 1] 1090 	cp	a, #0x02
      009DBB 27 15            [ 1] 1091 	jreq	00129$
      009DBD 7B 07            [ 1] 1092 	ld	a, (0x07, sp)
      009DBF A1 03            [ 1] 1093 	cp	a, #0x03
      009DC1 27 0F            [ 1] 1094 	jreq	00129$
      009DC3 4B B0            [ 1] 1095 	push	#0xb0
      009DC5 4B 01            [ 1] 1096 	push	#0x01
      009DC7 5F               [ 1] 1097 	clrw	x
      009DC8 89               [ 2] 1098 	pushw	x
      009DC9 4B 6A            [ 1] 1099 	push	#<(___str_0+0)
      009DCB 4B 81            [ 1] 1100 	push	#((___str_0+0) >> 8)
      009DCD CD 83 84         [ 4] 1101 	call	_assert_failed
      009DD0 5B 06            [ 2] 1102 	addw	sp, #6
      009DD2                       1103 00129$:
                                   1104 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 433: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
      009DD2 0D 08            [ 1] 1105 	tnz	(0x08, sp)
      009DD4 27 21            [ 1] 1106 	jreq	00137$
      009DD6 7B 08            [ 1] 1107 	ld	a, (0x08, sp)
      009DD8 A1 04            [ 1] 1108 	cp	a, #0x04
      009DDA 27 1B            [ 1] 1109 	jreq	00137$
      009DDC 7B 08            [ 1] 1110 	ld	a, (0x08, sp)
      009DDE A1 08            [ 1] 1111 	cp	a, #0x08
      009DE0 27 15            [ 1] 1112 	jreq	00137$
      009DE2 7B 08            [ 1] 1113 	ld	a, (0x08, sp)
      009DE4 A1 0C            [ 1] 1114 	cp	a, #0x0c
      009DE6 27 0F            [ 1] 1115 	jreq	00137$
      009DE8 4B B1            [ 1] 1116 	push	#0xb1
      009DEA 4B 01            [ 1] 1117 	push	#0x01
      009DEC 5F               [ 1] 1118 	clrw	x
      009DED 89               [ 2] 1119 	pushw	x
      009DEE 4B 6A            [ 1] 1120 	push	#<(___str_0+0)
      009DF0 4B 81            [ 1] 1121 	push	#((___str_0+0) >> 8)
      009DF2 CD 83 84         [ 4] 1122 	call	_assert_failed
      009DF5 5B 06            [ 2] 1123 	addw	sp, #6
      009DF7                       1124 00137$:
                                   1125 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 434: assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
      009DF7 7B 09            [ 1] 1126 	ld	a, (0x09, sp)
      009DF9 A1 0F            [ 1] 1127 	cp	a, #0x0f
      009DFB 23 0F            [ 2] 1128 	jrule	00148$
      009DFD 4B B2            [ 1] 1129 	push	#0xb2
      009DFF 4B 01            [ 1] 1130 	push	#0x01
      009E01 5F               [ 1] 1131 	clrw	x
      009E02 89               [ 2] 1132 	pushw	x
      009E03 4B 6A            [ 1] 1133 	push	#<(___str_0+0)
      009E05 4B 81            [ 1] 1134 	push	#((___str_0+0) >> 8)
      009E07 CD 83 84         [ 4] 1135 	call	_assert_failed
      009E0A 5B 06            [ 2] 1136 	addw	sp, #6
      009E0C                       1137 00148$:
                                   1138 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 436: if (TIM1_Channel == TIM1_CHANNEL_1)
      009E0C 0D 05            [ 1] 1139 	tnz	(0x05, sp)
      009E0E 26 17            [ 1] 1140 	jrne	00108$
                                   1141 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 439: TI1_Config((uint8_t)TIM1_ICPolarity,
      009E10 7B 09            [ 1] 1142 	ld	a, (0x09, sp)
      009E12 88               [ 1] 1143 	push	a
      009E13 7B 08            [ 1] 1144 	ld	a, (0x08, sp)
      009E15 88               [ 1] 1145 	push	a
      009E16 7B 08            [ 1] 1146 	ld	a, (0x08, sp)
      009E18 88               [ 1] 1147 	push	a
      009E19 CD AC 56         [ 4] 1148 	call	_TI1_Config
      009E1C 5B 03            [ 2] 1149 	addw	sp, #3
                                   1150 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 443: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      009E1E 7B 08            [ 1] 1151 	ld	a, (0x08, sp)
      009E20 88               [ 1] 1152 	push	a
      009E21 CD A9 FA         [ 4] 1153 	call	_TIM1_SetIC1Prescaler
      009E24 84               [ 1] 1154 	pop	a
      009E25 20 4B            [ 2] 1155 	jra	00110$
      009E27                       1156 00108$:
                                   1157 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 445: else if (TIM1_Channel == TIM1_CHANNEL_2)
      009E27 7B 01            [ 1] 1158 	ld	a, (0x01, sp)
      009E29 27 17            [ 1] 1159 	jreq	00105$
                                   1160 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 448: TI2_Config((uint8_t)TIM1_ICPolarity,
      009E2B 7B 09            [ 1] 1161 	ld	a, (0x09, sp)
      009E2D 88               [ 1] 1162 	push	a
      009E2E 7B 08            [ 1] 1163 	ld	a, (0x08, sp)
      009E30 88               [ 1] 1164 	push	a
      009E31 7B 08            [ 1] 1165 	ld	a, (0x08, sp)
      009E33 88               [ 1] 1166 	push	a
      009E34 CD AC 87         [ 4] 1167 	call	_TI2_Config
      009E37 5B 03            [ 2] 1168 	addw	sp, #3
                                   1169 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 452: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      009E39 7B 08            [ 1] 1170 	ld	a, (0x08, sp)
      009E3B 88               [ 1] 1171 	push	a
      009E3C CD AA 2A         [ 4] 1172 	call	_TIM1_SetIC2Prescaler
      009E3F 84               [ 1] 1173 	pop	a
      009E40 20 30            [ 2] 1174 	jra	00110$
      009E42                       1175 00105$:
                                   1176 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 454: else if (TIM1_Channel == TIM1_CHANNEL_3)
      009E42 7B 02            [ 1] 1177 	ld	a, (0x02, sp)
      009E44 27 17            [ 1] 1178 	jreq	00102$
                                   1179 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 457: TI3_Config((uint8_t)TIM1_ICPolarity,
      009E46 7B 09            [ 1] 1180 	ld	a, (0x09, sp)
      009E48 88               [ 1] 1181 	push	a
      009E49 7B 08            [ 1] 1182 	ld	a, (0x08, sp)
      009E4B 88               [ 1] 1183 	push	a
      009E4C 7B 08            [ 1] 1184 	ld	a, (0x08, sp)
      009E4E 88               [ 1] 1185 	push	a
      009E4F CD AC B8         [ 4] 1186 	call	_TI3_Config
      009E52 5B 03            [ 2] 1187 	addw	sp, #3
                                   1188 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 461: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
      009E54 7B 08            [ 1] 1189 	ld	a, (0x08, sp)
      009E56 88               [ 1] 1190 	push	a
      009E57 CD AA 5A         [ 4] 1191 	call	_TIM1_SetIC3Prescaler
      009E5A 84               [ 1] 1192 	pop	a
      009E5B 20 15            [ 2] 1193 	jra	00110$
      009E5D                       1194 00102$:
                                   1195 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 466: TI4_Config((uint8_t)TIM1_ICPolarity,
      009E5D 7B 09            [ 1] 1196 	ld	a, (0x09, sp)
      009E5F 88               [ 1] 1197 	push	a
      009E60 7B 08            [ 1] 1198 	ld	a, (0x08, sp)
      009E62 88               [ 1] 1199 	push	a
      009E63 7B 08            [ 1] 1200 	ld	a, (0x08, sp)
      009E65 88               [ 1] 1201 	push	a
      009E66 CD AC ED         [ 4] 1202 	call	_TI4_Config
      009E69 5B 03            [ 2] 1203 	addw	sp, #3
                                   1204 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 470: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
      009E6B 7B 08            [ 1] 1205 	ld	a, (0x08, sp)
      009E6D 88               [ 1] 1206 	push	a
      009E6E CD AA 8A         [ 4] 1207 	call	_TIM1_SetIC4Prescaler
      009E71 84               [ 1] 1208 	pop	a
      009E72                       1209 00110$:
                                   1210 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 472: }
      009E72 85               [ 2] 1211 	popw	x
      009E73 81               [ 4] 1212 	ret
                                   1213 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 488: void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
                                   1214 ;	-----------------------------------------
                                   1215 ;	 function TIM1_PWMIConfig
                                   1216 ;	-----------------------------------------
      009E74                       1217 _TIM1_PWMIConfig:
      009E74 89               [ 2] 1218 	pushw	x
                                   1219 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 498: assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
      009E75 0D 05            [ 1] 1220 	tnz	(0x05, sp)
      009E77 27 14            [ 1] 1221 	jreq	00113$
      009E79 7B 05            [ 1] 1222 	ld	a, (0x05, sp)
      009E7B 4A               [ 1] 1223 	dec	a
      009E7C 27 0F            [ 1] 1224 	jreq	00113$
      009E7E 4B F2            [ 1] 1225 	push	#0xf2
      009E80 4B 01            [ 1] 1226 	push	#0x01
      009E82 5F               [ 1] 1227 	clrw	x
      009E83 89               [ 2] 1228 	pushw	x
      009E84 4B 6A            [ 1] 1229 	push	#<(___str_0+0)
      009E86 4B 81            [ 1] 1230 	push	#((___str_0+0) >> 8)
      009E88 CD 83 84         [ 4] 1231 	call	_assert_failed
      009E8B 5B 06            [ 2] 1232 	addw	sp, #6
      009E8D                       1233 00113$:
                                   1234 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 499: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      009E8D 7B 06            [ 1] 1235 	ld	a, (0x06, sp)
      009E8F 4A               [ 1] 1236 	dec	a
      009E90 26 05            [ 1] 1237 	jrne	00216$
      009E92 A6 01            [ 1] 1238 	ld	a, #0x01
      009E94 6B 01            [ 1] 1239 	ld	(0x01, sp), a
      009E96 C5                    1240 	.byte 0xc5
      009E97                       1241 00216$:
      009E97 0F 01            [ 1] 1242 	clr	(0x01, sp)
      009E99                       1243 00217$:
      009E99 0D 06            [ 1] 1244 	tnz	(0x06, sp)
      009E9B 27 13            [ 1] 1245 	jreq	00118$
      009E9D 0D 01            [ 1] 1246 	tnz	(0x01, sp)
      009E9F 26 0F            [ 1] 1247 	jrne	00118$
      009EA1 4B F3            [ 1] 1248 	push	#0xf3
      009EA3 4B 01            [ 1] 1249 	push	#0x01
      009EA5 5F               [ 1] 1250 	clrw	x
      009EA6 89               [ 2] 1251 	pushw	x
      009EA7 4B 6A            [ 1] 1252 	push	#<(___str_0+0)
      009EA9 4B 81            [ 1] 1253 	push	#((___str_0+0) >> 8)
      009EAB CD 83 84         [ 4] 1254 	call	_assert_failed
      009EAE 5B 06            [ 2] 1255 	addw	sp, #6
      009EB0                       1256 00118$:
                                   1257 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 500: assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
      009EB0 7B 07            [ 1] 1258 	ld	a, (0x07, sp)
      009EB2 4A               [ 1] 1259 	dec	a
      009EB3 26 05            [ 1] 1260 	jrne	00221$
      009EB5 A6 01            [ 1] 1261 	ld	a, #0x01
      009EB7 6B 02            [ 1] 1262 	ld	(0x02, sp), a
      009EB9 C5                    1263 	.byte 0xc5
      009EBA                       1264 00221$:
      009EBA 0F 02            [ 1] 1265 	clr	(0x02, sp)
      009EBC                       1266 00222$:
      009EBC 0D 02            [ 1] 1267 	tnz	(0x02, sp)
      009EBE 26 1B            [ 1] 1268 	jrne	00123$
      009EC0 7B 07            [ 1] 1269 	ld	a, (0x07, sp)
      009EC2 A1 02            [ 1] 1270 	cp	a, #0x02
      009EC4 27 15            [ 1] 1271 	jreq	00123$
      009EC6 7B 07            [ 1] 1272 	ld	a, (0x07, sp)
      009EC8 A1 03            [ 1] 1273 	cp	a, #0x03
      009ECA 27 0F            [ 1] 1274 	jreq	00123$
      009ECC 4B F4            [ 1] 1275 	push	#0xf4
      009ECE 4B 01            [ 1] 1276 	push	#0x01
      009ED0 5F               [ 1] 1277 	clrw	x
      009ED1 89               [ 2] 1278 	pushw	x
      009ED2 4B 6A            [ 1] 1279 	push	#<(___str_0+0)
      009ED4 4B 81            [ 1] 1280 	push	#((___str_0+0) >> 8)
      009ED6 CD 83 84         [ 4] 1281 	call	_assert_failed
      009ED9 5B 06            [ 2] 1282 	addw	sp, #6
      009EDB                       1283 00123$:
                                   1284 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 501: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
      009EDB 0D 08            [ 1] 1285 	tnz	(0x08, sp)
      009EDD 27 21            [ 1] 1286 	jreq	00131$
      009EDF 7B 08            [ 1] 1287 	ld	a, (0x08, sp)
      009EE1 A1 04            [ 1] 1288 	cp	a, #0x04
      009EE3 27 1B            [ 1] 1289 	jreq	00131$
      009EE5 7B 08            [ 1] 1290 	ld	a, (0x08, sp)
      009EE7 A1 08            [ 1] 1291 	cp	a, #0x08
      009EE9 27 15            [ 1] 1292 	jreq	00131$
      009EEB 7B 08            [ 1] 1293 	ld	a, (0x08, sp)
      009EED A1 0C            [ 1] 1294 	cp	a, #0x0c
      009EEF 27 0F            [ 1] 1295 	jreq	00131$
      009EF1 4B F5            [ 1] 1296 	push	#0xf5
      009EF3 4B 01            [ 1] 1297 	push	#0x01
      009EF5 5F               [ 1] 1298 	clrw	x
      009EF6 89               [ 2] 1299 	pushw	x
      009EF7 4B 6A            [ 1] 1300 	push	#<(___str_0+0)
      009EF9 4B 81            [ 1] 1301 	push	#((___str_0+0) >> 8)
      009EFB CD 83 84         [ 4] 1302 	call	_assert_failed
      009EFE 5B 06            [ 2] 1303 	addw	sp, #6
      009F00                       1304 00131$:
                                   1305 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 504: if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
      009F00 0D 01            [ 1] 1306 	tnz	(0x01, sp)
      009F02 26 05            [ 1] 1307 	jrne	00102$
                                   1308 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 506: icpolarity = TIM1_ICPOLARITY_FALLING;
      009F04 A6 01            [ 1] 1309 	ld	a, #0x01
      009F06 6B 01            [ 1] 1310 	ld	(0x01, sp), a
                                   1311 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 510: icpolarity = TIM1_ICPOLARITY_RISING;
      009F08 C5                    1312 	.byte 0xc5
      009F09                       1313 00102$:
      009F09 0F 01            [ 1] 1314 	clr	(0x01, sp)
      009F0B                       1315 00103$:
                                   1316 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 514: if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
      009F0B 7B 02            [ 1] 1317 	ld	a, (0x02, sp)
      009F0D 27 06            [ 1] 1318 	jreq	00105$
                                   1319 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 516: icselection = TIM1_ICSELECTION_INDIRECTTI;
      009F0F A6 02            [ 1] 1320 	ld	a, #0x02
      009F11 6B 02            [ 1] 1321 	ld	(0x02, sp), a
      009F13 20 04            [ 2] 1322 	jra	00106$
      009F15                       1323 00105$:
                                   1324 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 520: icselection = TIM1_ICSELECTION_DIRECTTI;
      009F15 A6 01            [ 1] 1325 	ld	a, #0x01
      009F17 6B 02            [ 1] 1326 	ld	(0x02, sp), a
      009F19                       1327 00106$:
                                   1328 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 523: if (TIM1_Channel == TIM1_CHANNEL_1)
      009F19 0D 05            [ 1] 1329 	tnz	(0x05, sp)
      009F1B 26 2C            [ 1] 1330 	jrne	00108$
                                   1331 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 526: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
      009F1D 7B 09            [ 1] 1332 	ld	a, (0x09, sp)
      009F1F 88               [ 1] 1333 	push	a
      009F20 7B 08            [ 1] 1334 	ld	a, (0x08, sp)
      009F22 88               [ 1] 1335 	push	a
      009F23 7B 08            [ 1] 1336 	ld	a, (0x08, sp)
      009F25 88               [ 1] 1337 	push	a
      009F26 CD AC 56         [ 4] 1338 	call	_TI1_Config
      009F29 5B 03            [ 2] 1339 	addw	sp, #3
                                   1340 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 530: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      009F2B 7B 08            [ 1] 1341 	ld	a, (0x08, sp)
      009F2D 88               [ 1] 1342 	push	a
      009F2E CD A9 FA         [ 4] 1343 	call	_TIM1_SetIC1Prescaler
      009F31 84               [ 1] 1344 	pop	a
                                   1345 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 533: TI2_Config(icpolarity, icselection, TIM1_ICFilter);
      009F32 7B 09            [ 1] 1346 	ld	a, (0x09, sp)
      009F34 88               [ 1] 1347 	push	a
      009F35 7B 03            [ 1] 1348 	ld	a, (0x03, sp)
      009F37 88               [ 1] 1349 	push	a
      009F38 7B 03            [ 1] 1350 	ld	a, (0x03, sp)
      009F3A 88               [ 1] 1351 	push	a
      009F3B CD AC 87         [ 4] 1352 	call	_TI2_Config
      009F3E 5B 03            [ 2] 1353 	addw	sp, #3
                                   1354 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 536: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      009F40 7B 08            [ 1] 1355 	ld	a, (0x08, sp)
      009F42 88               [ 1] 1356 	push	a
      009F43 CD AA 2A         [ 4] 1357 	call	_TIM1_SetIC2Prescaler
      009F46 84               [ 1] 1358 	pop	a
      009F47 20 2A            [ 2] 1359 	jra	00110$
      009F49                       1360 00108$:
                                   1361 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 541: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
      009F49 7B 09            [ 1] 1362 	ld	a, (0x09, sp)
      009F4B 88               [ 1] 1363 	push	a
      009F4C 7B 08            [ 1] 1364 	ld	a, (0x08, sp)
      009F4E 88               [ 1] 1365 	push	a
      009F4F 7B 08            [ 1] 1366 	ld	a, (0x08, sp)
      009F51 88               [ 1] 1367 	push	a
      009F52 CD AC 87         [ 4] 1368 	call	_TI2_Config
      009F55 5B 03            [ 2] 1369 	addw	sp, #3
                                   1370 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 545: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      009F57 7B 08            [ 1] 1371 	ld	a, (0x08, sp)
      009F59 88               [ 1] 1372 	push	a
      009F5A CD AA 2A         [ 4] 1373 	call	_TIM1_SetIC2Prescaler
      009F5D 84               [ 1] 1374 	pop	a
                                   1375 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 548: TI1_Config(icpolarity, icselection, TIM1_ICFilter);
      009F5E 7B 09            [ 1] 1376 	ld	a, (0x09, sp)
      009F60 88               [ 1] 1377 	push	a
      009F61 7B 03            [ 1] 1378 	ld	a, (0x03, sp)
      009F63 88               [ 1] 1379 	push	a
      009F64 7B 03            [ 1] 1380 	ld	a, (0x03, sp)
      009F66 88               [ 1] 1381 	push	a
      009F67 CD AC 56         [ 4] 1382 	call	_TI1_Config
      009F6A 5B 03            [ 2] 1383 	addw	sp, #3
                                   1384 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 551: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      009F6C 7B 08            [ 1] 1385 	ld	a, (0x08, sp)
      009F6E 88               [ 1] 1386 	push	a
      009F6F CD A9 FA         [ 4] 1387 	call	_TIM1_SetIC1Prescaler
      009F72 84               [ 1] 1388 	pop	a
      009F73                       1389 00110$:
                                   1390 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 553: }
      009F73 85               [ 2] 1391 	popw	x
      009F74 81               [ 4] 1392 	ret
                                   1393 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 561: void TIM1_Cmd(FunctionalState NewState)
                                   1394 ;	-----------------------------------------
                                   1395 ;	 function TIM1_Cmd
                                   1396 ;	-----------------------------------------
      009F75                       1397 _TIM1_Cmd:
                                   1398 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 564: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009F75 0D 03            [ 1] 1399 	tnz	(0x03, sp)
      009F77 27 14            [ 1] 1400 	jreq	00107$
      009F79 7B 03            [ 1] 1401 	ld	a, (0x03, sp)
      009F7B 4A               [ 1] 1402 	dec	a
      009F7C 27 0F            [ 1] 1403 	jreq	00107$
      009F7E 4B 34            [ 1] 1404 	push	#0x34
      009F80 4B 02            [ 1] 1405 	push	#0x02
      009F82 5F               [ 1] 1406 	clrw	x
      009F83 89               [ 2] 1407 	pushw	x
      009F84 4B 6A            [ 1] 1408 	push	#<(___str_0+0)
      009F86 4B 81            [ 1] 1409 	push	#((___str_0+0) >> 8)
      009F88 CD 83 84         [ 4] 1410 	call	_assert_failed
      009F8B 5B 06            [ 2] 1411 	addw	sp, #6
      009F8D                       1412 00107$:
                                   1413 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 569: TIM1->CR1 |= TIM1_CR1_CEN;
      009F8D C6 52 50         [ 1] 1414 	ld	a, 0x5250
                                   1415 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 567: if (NewState != DISABLE)
      009F90 0D 03            [ 1] 1416 	tnz	(0x03, sp)
      009F92 27 06            [ 1] 1417 	jreq	00102$
                                   1418 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 569: TIM1->CR1 |= TIM1_CR1_CEN;
      009F94 AA 01            [ 1] 1419 	or	a, #0x01
      009F96 C7 52 50         [ 1] 1420 	ld	0x5250, a
      009F99 81               [ 4] 1421 	ret
      009F9A                       1422 00102$:
                                   1423 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 573: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
      009F9A A4 FE            [ 1] 1424 	and	a, #0xfe
      009F9C C7 52 50         [ 1] 1425 	ld	0x5250, a
                                   1426 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 575: }
      009F9F 81               [ 4] 1427 	ret
                                   1428 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 583: void TIM1_CtrlPWMOutputs(FunctionalState NewState)
                                   1429 ;	-----------------------------------------
                                   1430 ;	 function TIM1_CtrlPWMOutputs
                                   1431 ;	-----------------------------------------
      009FA0                       1432 _TIM1_CtrlPWMOutputs:
                                   1433 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 586: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009FA0 0D 03            [ 1] 1434 	tnz	(0x03, sp)
      009FA2 27 14            [ 1] 1435 	jreq	00107$
      009FA4 7B 03            [ 1] 1436 	ld	a, (0x03, sp)
      009FA6 4A               [ 1] 1437 	dec	a
      009FA7 27 0F            [ 1] 1438 	jreq	00107$
      009FA9 4B 4A            [ 1] 1439 	push	#0x4a
      009FAB 4B 02            [ 1] 1440 	push	#0x02
      009FAD 5F               [ 1] 1441 	clrw	x
      009FAE 89               [ 2] 1442 	pushw	x
      009FAF 4B 6A            [ 1] 1443 	push	#<(___str_0+0)
      009FB1 4B 81            [ 1] 1444 	push	#((___str_0+0) >> 8)
      009FB3 CD 83 84         [ 4] 1445 	call	_assert_failed
      009FB6 5B 06            [ 2] 1446 	addw	sp, #6
      009FB8                       1447 00107$:
                                   1448 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 592: TIM1->BKR |= TIM1_BKR_MOE;
      009FB8 C6 52 6D         [ 1] 1449 	ld	a, 0x526d
                                   1450 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 590: if (NewState != DISABLE)
      009FBB 0D 03            [ 1] 1451 	tnz	(0x03, sp)
      009FBD 27 06            [ 1] 1452 	jreq	00102$
                                   1453 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 592: TIM1->BKR |= TIM1_BKR_MOE;
      009FBF AA 80            [ 1] 1454 	or	a, #0x80
      009FC1 C7 52 6D         [ 1] 1455 	ld	0x526d, a
      009FC4 81               [ 4] 1456 	ret
      009FC5                       1457 00102$:
                                   1458 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 596: TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
      009FC5 A4 7F            [ 1] 1459 	and	a, #0x7f
      009FC7 C7 52 6D         [ 1] 1460 	ld	0x526d, a
                                   1461 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 598: }
      009FCA 81               [ 4] 1462 	ret
                                   1463 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 617: void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
                                   1464 ;	-----------------------------------------
                                   1465 ;	 function TIM1_ITConfig
                                   1466 ;	-----------------------------------------
      009FCB                       1467 _TIM1_ITConfig:
      009FCB 88               [ 1] 1468 	push	a
                                   1469 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 620: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      009FCC 0D 04            [ 1] 1470 	tnz	(0x04, sp)
      009FCE 26 0F            [ 1] 1471 	jrne	00107$
      009FD0 4B 6C            [ 1] 1472 	push	#0x6c
      009FD2 4B 02            [ 1] 1473 	push	#0x02
      009FD4 5F               [ 1] 1474 	clrw	x
      009FD5 89               [ 2] 1475 	pushw	x
      009FD6 4B 6A            [ 1] 1476 	push	#<(___str_0+0)
      009FD8 4B 81            [ 1] 1477 	push	#((___str_0+0) >> 8)
      009FDA CD 83 84         [ 4] 1478 	call	_assert_failed
      009FDD 5B 06            [ 2] 1479 	addw	sp, #6
      009FDF                       1480 00107$:
                                   1481 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 621: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      009FDF 0D 05            [ 1] 1482 	tnz	(0x05, sp)
      009FE1 27 14            [ 1] 1483 	jreq	00109$
      009FE3 7B 05            [ 1] 1484 	ld	a, (0x05, sp)
      009FE5 4A               [ 1] 1485 	dec	a
      009FE6 27 0F            [ 1] 1486 	jreq	00109$
      009FE8 4B 6D            [ 1] 1487 	push	#0x6d
      009FEA 4B 02            [ 1] 1488 	push	#0x02
      009FEC 5F               [ 1] 1489 	clrw	x
      009FED 89               [ 2] 1490 	pushw	x
      009FEE 4B 6A            [ 1] 1491 	push	#<(___str_0+0)
      009FF0 4B 81            [ 1] 1492 	push	#((___str_0+0) >> 8)
      009FF2 CD 83 84         [ 4] 1493 	call	_assert_failed
      009FF5 5B 06            [ 2] 1494 	addw	sp, #6
      009FF7                       1495 00109$:
                                   1496 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 626: TIM1->IER |= (uint8_t)TIM1_IT;
      009FF7 C6 52 54         [ 1] 1497 	ld	a, 0x5254
                                   1498 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 623: if (NewState != DISABLE)
      009FFA 0D 05            [ 1] 1499 	tnz	(0x05, sp)
      009FFC 27 07            [ 1] 1500 	jreq	00102$
                                   1501 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 626: TIM1->IER |= (uint8_t)TIM1_IT;
      009FFE 1A 04            [ 1] 1502 	or	a, (0x04, sp)
      00A000 C7 52 54         [ 1] 1503 	ld	0x5254, a
      00A003 20 0C            [ 2] 1504 	jra	00104$
      00A005                       1505 00102$:
                                   1506 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 631: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
      00A005 88               [ 1] 1507 	push	a
      00A006 7B 05            [ 1] 1508 	ld	a, (0x05, sp)
      00A008 43               [ 1] 1509 	cpl	a
      00A009 6B 02            [ 1] 1510 	ld	(0x02, sp), a
      00A00B 84               [ 1] 1511 	pop	a
      00A00C 14 01            [ 1] 1512 	and	a, (0x01, sp)
      00A00E C7 52 54         [ 1] 1513 	ld	0x5254, a
      00A011                       1514 00104$:
                                   1515 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 633: }
      00A011 84               [ 1] 1516 	pop	a
      00A012 81               [ 4] 1517 	ret
                                   1518 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 640: void TIM1_InternalClockConfig(void)
                                   1519 ;	-----------------------------------------
                                   1520 ;	 function TIM1_InternalClockConfig
                                   1521 ;	-----------------------------------------
      00A013                       1522 _TIM1_InternalClockConfig:
                                   1523 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 643: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
      00A013 C6 52 52         [ 1] 1524 	ld	a, 0x5252
      00A016 A4 F8            [ 1] 1525 	and	a, #0xf8
      00A018 C7 52 52         [ 1] 1526 	ld	0x5252, a
                                   1527 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 644: }
      00A01B 81               [ 4] 1528 	ret
                                   1529 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 662: void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                   1530 ;	-----------------------------------------
                                   1531 ;	 function TIM1_ETRClockMode1Config
                                   1532 ;	-----------------------------------------
      00A01C                       1533 _TIM1_ETRClockMode1Config:
                                   1534 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 667: assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
      00A01C 0D 03            [ 1] 1535 	tnz	(0x03, sp)
      00A01E 27 21            [ 1] 1536 	jreq	00104$
      00A020 7B 03            [ 1] 1537 	ld	a, (0x03, sp)
      00A022 A1 10            [ 1] 1538 	cp	a, #0x10
      00A024 27 1B            [ 1] 1539 	jreq	00104$
      00A026 7B 03            [ 1] 1540 	ld	a, (0x03, sp)
      00A028 A1 20            [ 1] 1541 	cp	a, #0x20
      00A02A 27 15            [ 1] 1542 	jreq	00104$
      00A02C 7B 03            [ 1] 1543 	ld	a, (0x03, sp)
      00A02E A1 30            [ 1] 1544 	cp	a, #0x30
      00A030 27 0F            [ 1] 1545 	jreq	00104$
      00A032 4B 9B            [ 1] 1546 	push	#0x9b
      00A034 4B 02            [ 1] 1547 	push	#0x02
      00A036 5F               [ 1] 1548 	clrw	x
      00A037 89               [ 2] 1549 	pushw	x
      00A038 4B 6A            [ 1] 1550 	push	#<(___str_0+0)
      00A03A 4B 81            [ 1] 1551 	push	#((___str_0+0) >> 8)
      00A03C CD 83 84         [ 4] 1552 	call	_assert_failed
      00A03F 5B 06            [ 2] 1553 	addw	sp, #6
      00A041                       1554 00104$:
                                   1555 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 668: assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
      00A041 7B 04            [ 1] 1556 	ld	a, (0x04, sp)
      00A043 A1 80            [ 1] 1557 	cp	a, #0x80
      00A045 27 13            [ 1] 1558 	jreq	00115$
      00A047 0D 04            [ 1] 1559 	tnz	(0x04, sp)
      00A049 27 0F            [ 1] 1560 	jreq	00115$
      00A04B 4B 9C            [ 1] 1561 	push	#0x9c
      00A04D 4B 02            [ 1] 1562 	push	#0x02
      00A04F 5F               [ 1] 1563 	clrw	x
      00A050 89               [ 2] 1564 	pushw	x
      00A051 4B 6A            [ 1] 1565 	push	#<(___str_0+0)
      00A053 4B 81            [ 1] 1566 	push	#((___str_0+0) >> 8)
      00A055 CD 83 84         [ 4] 1567 	call	_assert_failed
      00A058 5B 06            [ 2] 1568 	addw	sp, #6
      00A05A                       1569 00115$:
                                   1570 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 671: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
      00A05A 7B 05            [ 1] 1571 	ld	a, (0x05, sp)
      00A05C 88               [ 1] 1572 	push	a
      00A05D 7B 05            [ 1] 1573 	ld	a, (0x05, sp)
      00A05F 88               [ 1] 1574 	push	a
      00A060 7B 05            [ 1] 1575 	ld	a, (0x05, sp)
      00A062 88               [ 1] 1576 	push	a
      00A063 CD A0 C4         [ 4] 1577 	call	_TIM1_ETRConfig
      00A066 5B 03            [ 2] 1578 	addw	sp, #3
                                   1579 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 674: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
      00A068 C6 52 52         [ 1] 1580 	ld	a, 0x5252
      00A06B A4 88            [ 1] 1581 	and	a, #0x88
      00A06D AA 77            [ 1] 1582 	or	a, #0x77
      00A06F C7 52 52         [ 1] 1583 	ld	0x5252, a
                                   1584 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 676: }
      00A072 81               [ 4] 1585 	ret
                                   1586 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 694: void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                   1587 ;	-----------------------------------------
                                   1588 ;	 function TIM1_ETRClockMode2Config
                                   1589 ;	-----------------------------------------
      00A073                       1590 _TIM1_ETRClockMode2Config:
                                   1591 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 699: assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
      00A073 0D 03            [ 1] 1592 	tnz	(0x03, sp)
      00A075 27 21            [ 1] 1593 	jreq	00104$
      00A077 7B 03            [ 1] 1594 	ld	a, (0x03, sp)
      00A079 A1 10            [ 1] 1595 	cp	a, #0x10
      00A07B 27 1B            [ 1] 1596 	jreq	00104$
      00A07D 7B 03            [ 1] 1597 	ld	a, (0x03, sp)
      00A07F A1 20            [ 1] 1598 	cp	a, #0x20
      00A081 27 15            [ 1] 1599 	jreq	00104$
      00A083 7B 03            [ 1] 1600 	ld	a, (0x03, sp)
      00A085 A1 30            [ 1] 1601 	cp	a, #0x30
      00A087 27 0F            [ 1] 1602 	jreq	00104$
      00A089 4B BB            [ 1] 1603 	push	#0xbb
      00A08B 4B 02            [ 1] 1604 	push	#0x02
      00A08D 5F               [ 1] 1605 	clrw	x
      00A08E 89               [ 2] 1606 	pushw	x
      00A08F 4B 6A            [ 1] 1607 	push	#<(___str_0+0)
      00A091 4B 81            [ 1] 1608 	push	#((___str_0+0) >> 8)
      00A093 CD 83 84         [ 4] 1609 	call	_assert_failed
      00A096 5B 06            [ 2] 1610 	addw	sp, #6
      00A098                       1611 00104$:
                                   1612 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 700: assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
      00A098 7B 04            [ 1] 1613 	ld	a, (0x04, sp)
      00A09A A1 80            [ 1] 1614 	cp	a, #0x80
      00A09C 27 13            [ 1] 1615 	jreq	00115$
      00A09E 0D 04            [ 1] 1616 	tnz	(0x04, sp)
      00A0A0 27 0F            [ 1] 1617 	jreq	00115$
      00A0A2 4B BC            [ 1] 1618 	push	#0xbc
      00A0A4 4B 02            [ 1] 1619 	push	#0x02
      00A0A6 5F               [ 1] 1620 	clrw	x
      00A0A7 89               [ 2] 1621 	pushw	x
      00A0A8 4B 6A            [ 1] 1622 	push	#<(___str_0+0)
      00A0AA 4B 81            [ 1] 1623 	push	#((___str_0+0) >> 8)
      00A0AC CD 83 84         [ 4] 1624 	call	_assert_failed
      00A0AF 5B 06            [ 2] 1625 	addw	sp, #6
      00A0B1                       1626 00115$:
                                   1627 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 703: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
      00A0B1 7B 05            [ 1] 1628 	ld	a, (0x05, sp)
      00A0B3 88               [ 1] 1629 	push	a
      00A0B4 7B 05            [ 1] 1630 	ld	a, (0x05, sp)
      00A0B6 88               [ 1] 1631 	push	a
      00A0B7 7B 05            [ 1] 1632 	ld	a, (0x05, sp)
      00A0B9 88               [ 1] 1633 	push	a
      00A0BA CD A0 C4         [ 4] 1634 	call	_TIM1_ETRConfig
      00A0BD 5B 03            [ 2] 1635 	addw	sp, #3
                                   1636 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 706: TIM1->ETR |= TIM1_ETR_ECE;
      00A0BF 72 1C 52 53      [ 1] 1637 	bset	21075, #6
                                   1638 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 707: }
      00A0C3 81               [ 4] 1639 	ret
                                   1640 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 725: void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                   1641 ;	-----------------------------------------
                                   1642 ;	 function TIM1_ETRConfig
                                   1643 ;	-----------------------------------------
      00A0C4                       1644 _TIM1_ETRConfig:
      00A0C4 88               [ 1] 1645 	push	a
                                   1646 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 730: assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
      00A0C5 7B 06            [ 1] 1647 	ld	a, (0x06, sp)
      00A0C7 A1 0F            [ 1] 1648 	cp	a, #0x0f
      00A0C9 23 0F            [ 2] 1649 	jrule	00104$
      00A0CB 4B DA            [ 1] 1650 	push	#0xda
      00A0CD 4B 02            [ 1] 1651 	push	#0x02
      00A0CF 5F               [ 1] 1652 	clrw	x
      00A0D0 89               [ 2] 1653 	pushw	x
      00A0D1 4B 6A            [ 1] 1654 	push	#<(___str_0+0)
      00A0D3 4B 81            [ 1] 1655 	push	#((___str_0+0) >> 8)
      00A0D5 CD 83 84         [ 4] 1656 	call	_assert_failed
      00A0D8 5B 06            [ 2] 1657 	addw	sp, #6
      00A0DA                       1658 00104$:
                                   1659 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 732: TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
      00A0DA C6 52 53         [ 1] 1660 	ld	a, 0x5253
      00A0DD 6B 01            [ 1] 1661 	ld	(0x01, sp), a
      00A0DF 7B 04            [ 1] 1662 	ld	a, (0x04, sp)
      00A0E1 1A 05            [ 1] 1663 	or	a, (0x05, sp)
                                   1664 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 733: (uint8_t)ExtTRGFilter );
      00A0E3 1A 06            [ 1] 1665 	or	a, (0x06, sp)
      00A0E5 1A 01            [ 1] 1666 	or	a, (0x01, sp)
      00A0E7 C7 52 53         [ 1] 1667 	ld	0x5253, a
                                   1668 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 734: }
      00A0EA 84               [ 1] 1669 	pop	a
      00A0EB 81               [ 4] 1670 	ret
                                   1671 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 751: void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
                                   1672 ;	-----------------------------------------
                                   1673 ;	 function TIM1_TIxExternalClockConfig
                                   1674 ;	-----------------------------------------
      00A0EC                       1675 _TIM1_TIxExternalClockConfig:
      00A0EC 88               [ 1] 1676 	push	a
                                   1677 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 756: assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
      00A0ED 7B 04            [ 1] 1678 	ld	a, (0x04, sp)
      00A0EF A0 60            [ 1] 1679 	sub	a, #0x60
      00A0F1 26 04            [ 1] 1680 	jrne	00157$
      00A0F3 4C               [ 1] 1681 	inc	a
      00A0F4 6B 01            [ 1] 1682 	ld	(0x01, sp), a
      00A0F6 C5                    1683 	.byte 0xc5
      00A0F7                       1684 00157$:
      00A0F7 0F 01            [ 1] 1685 	clr	(0x01, sp)
      00A0F9                       1686 00158$:
      00A0F9 7B 04            [ 1] 1687 	ld	a, (0x04, sp)
      00A0FB A1 40            [ 1] 1688 	cp	a, #0x40
      00A0FD 27 19            [ 1] 1689 	jreq	00107$
      00A0FF 0D 01            [ 1] 1690 	tnz	(0x01, sp)
      00A101 26 15            [ 1] 1691 	jrne	00107$
      00A103 7B 04            [ 1] 1692 	ld	a, (0x04, sp)
      00A105 A1 50            [ 1] 1693 	cp	a, #0x50
      00A107 27 0F            [ 1] 1694 	jreq	00107$
      00A109 4B F4            [ 1] 1695 	push	#0xf4
      00A10B 4B 02            [ 1] 1696 	push	#0x02
      00A10D 5F               [ 1] 1697 	clrw	x
      00A10E 89               [ 2] 1698 	pushw	x
      00A10F 4B 6A            [ 1] 1699 	push	#<(___str_0+0)
      00A111 4B 81            [ 1] 1700 	push	#((___str_0+0) >> 8)
      00A113 CD 83 84         [ 4] 1701 	call	_assert_failed
      00A116 5B 06            [ 2] 1702 	addw	sp, #6
      00A118                       1703 00107$:
                                   1704 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 757: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
      00A118 0D 05            [ 1] 1705 	tnz	(0x05, sp)
      00A11A 27 14            [ 1] 1706 	jreq	00115$
      00A11C 7B 05            [ 1] 1707 	ld	a, (0x05, sp)
      00A11E 4A               [ 1] 1708 	dec	a
      00A11F 27 0F            [ 1] 1709 	jreq	00115$
      00A121 4B F5            [ 1] 1710 	push	#0xf5
      00A123 4B 02            [ 1] 1711 	push	#0x02
      00A125 5F               [ 1] 1712 	clrw	x
      00A126 89               [ 2] 1713 	pushw	x
      00A127 4B 6A            [ 1] 1714 	push	#<(___str_0+0)
      00A129 4B 81            [ 1] 1715 	push	#((___str_0+0) >> 8)
      00A12B CD 83 84         [ 4] 1716 	call	_assert_failed
      00A12E 5B 06            [ 2] 1717 	addw	sp, #6
      00A130                       1718 00115$:
                                   1719 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 758: assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
      00A130 7B 06            [ 1] 1720 	ld	a, (0x06, sp)
      00A132 A1 0F            [ 1] 1721 	cp	a, #0x0f
      00A134 23 0F            [ 2] 1722 	jrule	00120$
      00A136 4B F6            [ 1] 1723 	push	#0xf6
      00A138 4B 02            [ 1] 1724 	push	#0x02
      00A13A 5F               [ 1] 1725 	clrw	x
      00A13B 89               [ 2] 1726 	pushw	x
      00A13C 4B 6A            [ 1] 1727 	push	#<(___str_0+0)
      00A13E 4B 81            [ 1] 1728 	push	#((___str_0+0) >> 8)
      00A140 CD 83 84         [ 4] 1729 	call	_assert_failed
      00A143 5B 06            [ 2] 1730 	addw	sp, #6
      00A145                       1731 00120$:
                                   1732 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 761: if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
      00A145 7B 01            [ 1] 1733 	ld	a, (0x01, sp)
      00A147 27 0F            [ 1] 1734 	jreq	00102$
                                   1735 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 763: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
      00A149 7B 06            [ 1] 1736 	ld	a, (0x06, sp)
      00A14B 88               [ 1] 1737 	push	a
      00A14C 4B 01            [ 1] 1738 	push	#0x01
      00A14E 7B 07            [ 1] 1739 	ld	a, (0x07, sp)
      00A150 88               [ 1] 1740 	push	a
      00A151 CD AC 87         [ 4] 1741 	call	_TI2_Config
      00A154 5B 03            [ 2] 1742 	addw	sp, #3
      00A156 20 0D            [ 2] 1743 	jra	00103$
      00A158                       1744 00102$:
                                   1745 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 767: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
      00A158 7B 06            [ 1] 1746 	ld	a, (0x06, sp)
      00A15A 88               [ 1] 1747 	push	a
      00A15B 4B 01            [ 1] 1748 	push	#0x01
      00A15D 7B 07            [ 1] 1749 	ld	a, (0x07, sp)
      00A15F 88               [ 1] 1750 	push	a
      00A160 CD AC 56         [ 4] 1751 	call	_TI1_Config
      00A163 5B 03            [ 2] 1752 	addw	sp, #3
      00A165                       1753 00103$:
                                   1754 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 771: TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
      00A165 7B 04            [ 1] 1755 	ld	a, (0x04, sp)
      00A167 88               [ 1] 1756 	push	a
      00A168 CD A1 76         [ 4] 1757 	call	_TIM1_SelectInputTrigger
      00A16B 84               [ 1] 1758 	pop	a
                                   1759 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 774: TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
      00A16C C6 52 52         [ 1] 1760 	ld	a, 0x5252
      00A16F AA 07            [ 1] 1761 	or	a, #0x07
      00A171 C7 52 52         [ 1] 1762 	ld	0x5252, a
                                   1763 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 775: }
      00A174 84               [ 1] 1764 	pop	a
      00A175 81               [ 4] 1765 	ret
                                   1766 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 787: void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
                                   1767 ;	-----------------------------------------
                                   1768 ;	 function TIM1_SelectInputTrigger
                                   1769 ;	-----------------------------------------
      00A176                       1770 _TIM1_SelectInputTrigger:
                                   1771 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 790: assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
      00A176 7B 03            [ 1] 1772 	ld	a, (0x03, sp)
      00A178 A1 40            [ 1] 1773 	cp	a, #0x40
      00A17A 27 2B            [ 1] 1774 	jreq	00104$
      00A17C 7B 03            [ 1] 1775 	ld	a, (0x03, sp)
      00A17E A1 50            [ 1] 1776 	cp	a, #0x50
      00A180 27 25            [ 1] 1777 	jreq	00104$
      00A182 7B 03            [ 1] 1778 	ld	a, (0x03, sp)
      00A184 A1 60            [ 1] 1779 	cp	a, #0x60
      00A186 27 1F            [ 1] 1780 	jreq	00104$
      00A188 7B 03            [ 1] 1781 	ld	a, (0x03, sp)
      00A18A A1 70            [ 1] 1782 	cp	a, #0x70
      00A18C 27 19            [ 1] 1783 	jreq	00104$
      00A18E 7B 03            [ 1] 1784 	ld	a, (0x03, sp)
      00A190 A1 30            [ 1] 1785 	cp	a, #0x30
      00A192 27 13            [ 1] 1786 	jreq	00104$
      00A194 0D 03            [ 1] 1787 	tnz	(0x03, sp)
      00A196 27 0F            [ 1] 1788 	jreq	00104$
      00A198 4B 16            [ 1] 1789 	push	#0x16
      00A19A 4B 03            [ 1] 1790 	push	#0x03
      00A19C 5F               [ 1] 1791 	clrw	x
      00A19D 89               [ 2] 1792 	pushw	x
      00A19E 4B 6A            [ 1] 1793 	push	#<(___str_0+0)
      00A1A0 4B 81            [ 1] 1794 	push	#((___str_0+0) >> 8)
      00A1A2 CD 83 84         [ 4] 1795 	call	_assert_failed
      00A1A5 5B 06            [ 2] 1796 	addw	sp, #6
      00A1A7                       1797 00104$:
                                   1798 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 793: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
      00A1A7 C6 52 52         [ 1] 1799 	ld	a, 0x5252
      00A1AA A4 8F            [ 1] 1800 	and	a, #0x8f
      00A1AC 1A 03            [ 1] 1801 	or	a, (0x03, sp)
      00A1AE C7 52 52         [ 1] 1802 	ld	0x5252, a
                                   1803 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 794: }
      00A1B1 81               [ 4] 1804 	ret
                                   1805 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 803: void TIM1_UpdateDisableConfig(FunctionalState NewState)
                                   1806 ;	-----------------------------------------
                                   1807 ;	 function TIM1_UpdateDisableConfig
                                   1808 ;	-----------------------------------------
      00A1B2                       1809 _TIM1_UpdateDisableConfig:
                                   1810 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 806: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A1B2 0D 03            [ 1] 1811 	tnz	(0x03, sp)
      00A1B4 27 14            [ 1] 1812 	jreq	00107$
      00A1B6 7B 03            [ 1] 1813 	ld	a, (0x03, sp)
      00A1B8 4A               [ 1] 1814 	dec	a
      00A1B9 27 0F            [ 1] 1815 	jreq	00107$
      00A1BB 4B 26            [ 1] 1816 	push	#0x26
      00A1BD 4B 03            [ 1] 1817 	push	#0x03
      00A1BF 5F               [ 1] 1818 	clrw	x
      00A1C0 89               [ 2] 1819 	pushw	x
      00A1C1 4B 6A            [ 1] 1820 	push	#<(___str_0+0)
      00A1C3 4B 81            [ 1] 1821 	push	#((___str_0+0) >> 8)
      00A1C5 CD 83 84         [ 4] 1822 	call	_assert_failed
      00A1C8 5B 06            [ 2] 1823 	addw	sp, #6
      00A1CA                       1824 00107$:
                                   1825 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 811: TIM1->CR1 |= TIM1_CR1_UDIS;
      00A1CA C6 52 50         [ 1] 1826 	ld	a, 0x5250
                                   1827 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 809: if (NewState != DISABLE)
      00A1CD 0D 03            [ 1] 1828 	tnz	(0x03, sp)
      00A1CF 27 06            [ 1] 1829 	jreq	00102$
                                   1830 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 811: TIM1->CR1 |= TIM1_CR1_UDIS;
      00A1D1 AA 02            [ 1] 1831 	or	a, #0x02
      00A1D3 C7 52 50         [ 1] 1832 	ld	0x5250, a
      00A1D6 81               [ 4] 1833 	ret
      00A1D7                       1834 00102$:
                                   1835 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 815: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
      00A1D7 A4 FD            [ 1] 1836 	and	a, #0xfd
      00A1D9 C7 52 50         [ 1] 1837 	ld	0x5250, a
                                   1838 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 817: }
      00A1DC 81               [ 4] 1839 	ret
                                   1840 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 827: void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
                                   1841 ;	-----------------------------------------
                                   1842 ;	 function TIM1_UpdateRequestConfig
                                   1843 ;	-----------------------------------------
      00A1DD                       1844 _TIM1_UpdateRequestConfig:
                                   1845 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 830: assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
      00A1DD 0D 03            [ 1] 1846 	tnz	(0x03, sp)
      00A1DF 27 14            [ 1] 1847 	jreq	00107$
      00A1E1 7B 03            [ 1] 1848 	ld	a, (0x03, sp)
      00A1E3 4A               [ 1] 1849 	dec	a
      00A1E4 27 0F            [ 1] 1850 	jreq	00107$
      00A1E6 4B 3E            [ 1] 1851 	push	#0x3e
      00A1E8 4B 03            [ 1] 1852 	push	#0x03
      00A1EA 5F               [ 1] 1853 	clrw	x
      00A1EB 89               [ 2] 1854 	pushw	x
      00A1EC 4B 6A            [ 1] 1855 	push	#<(___str_0+0)
      00A1EE 4B 81            [ 1] 1856 	push	#((___str_0+0) >> 8)
      00A1F0 CD 83 84         [ 4] 1857 	call	_assert_failed
      00A1F3 5B 06            [ 2] 1858 	addw	sp, #6
      00A1F5                       1859 00107$:
                                   1860 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 835: TIM1->CR1 |= TIM1_CR1_URS;
      00A1F5 C6 52 50         [ 1] 1861 	ld	a, 0x5250
                                   1862 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 833: if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
      00A1F8 0D 03            [ 1] 1863 	tnz	(0x03, sp)
      00A1FA 27 06            [ 1] 1864 	jreq	00102$
                                   1865 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 835: TIM1->CR1 |= TIM1_CR1_URS;
      00A1FC AA 04            [ 1] 1866 	or	a, #0x04
      00A1FE C7 52 50         [ 1] 1867 	ld	0x5250, a
      00A201 81               [ 4] 1868 	ret
      00A202                       1869 00102$:
                                   1870 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 839: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
      00A202 A4 FB            [ 1] 1871 	and	a, #0xfb
      00A204 C7 52 50         [ 1] 1872 	ld	0x5250, a
                                   1873 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 841: }
      00A207 81               [ 4] 1874 	ret
                                   1875 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 849: void TIM1_SelectHallSensor(FunctionalState NewState)
                                   1876 ;	-----------------------------------------
                                   1877 ;	 function TIM1_SelectHallSensor
                                   1878 ;	-----------------------------------------
      00A208                       1879 _TIM1_SelectHallSensor:
                                   1880 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 852: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A208 0D 03            [ 1] 1881 	tnz	(0x03, sp)
      00A20A 27 14            [ 1] 1882 	jreq	00107$
      00A20C 7B 03            [ 1] 1883 	ld	a, (0x03, sp)
      00A20E 4A               [ 1] 1884 	dec	a
      00A20F 27 0F            [ 1] 1885 	jreq	00107$
      00A211 4B 54            [ 1] 1886 	push	#0x54
      00A213 4B 03            [ 1] 1887 	push	#0x03
      00A215 5F               [ 1] 1888 	clrw	x
      00A216 89               [ 2] 1889 	pushw	x
      00A217 4B 6A            [ 1] 1890 	push	#<(___str_0+0)
      00A219 4B 81            [ 1] 1891 	push	#((___str_0+0) >> 8)
      00A21B CD 83 84         [ 4] 1892 	call	_assert_failed
      00A21E 5B 06            [ 2] 1893 	addw	sp, #6
      00A220                       1894 00107$:
                                   1895 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 857: TIM1->CR2 |= TIM1_CR2_TI1S;
      00A220 C6 52 51         [ 1] 1896 	ld	a, 0x5251
                                   1897 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 855: if (NewState != DISABLE)
      00A223 0D 03            [ 1] 1898 	tnz	(0x03, sp)
      00A225 27 06            [ 1] 1899 	jreq	00102$
                                   1900 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 857: TIM1->CR2 |= TIM1_CR2_TI1S;
      00A227 AA 80            [ 1] 1901 	or	a, #0x80
      00A229 C7 52 51         [ 1] 1902 	ld	0x5251, a
      00A22C 81               [ 4] 1903 	ret
      00A22D                       1904 00102$:
                                   1905 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 861: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
      00A22D A4 7F            [ 1] 1906 	and	a, #0x7f
      00A22F C7 52 51         [ 1] 1907 	ld	0x5251, a
                                   1908 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 863: }
      00A232 81               [ 4] 1909 	ret
                                   1910 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 873: void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
                                   1911 ;	-----------------------------------------
                                   1912 ;	 function TIM1_SelectOnePulseMode
                                   1913 ;	-----------------------------------------
      00A233                       1914 _TIM1_SelectOnePulseMode:
                                   1915 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 876: assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
      00A233 7B 03            [ 1] 1916 	ld	a, (0x03, sp)
      00A235 4A               [ 1] 1917 	dec	a
      00A236 27 13            [ 1] 1918 	jreq	00107$
      00A238 0D 03            [ 1] 1919 	tnz	(0x03, sp)
      00A23A 27 0F            [ 1] 1920 	jreq	00107$
      00A23C 4B 6C            [ 1] 1921 	push	#0x6c
      00A23E 4B 03            [ 1] 1922 	push	#0x03
      00A240 5F               [ 1] 1923 	clrw	x
      00A241 89               [ 2] 1924 	pushw	x
      00A242 4B 6A            [ 1] 1925 	push	#<(___str_0+0)
      00A244 4B 81            [ 1] 1926 	push	#((___str_0+0) >> 8)
      00A246 CD 83 84         [ 4] 1927 	call	_assert_failed
      00A249 5B 06            [ 2] 1928 	addw	sp, #6
      00A24B                       1929 00107$:
                                   1930 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 881: TIM1->CR1 |= TIM1_CR1_OPM;
      00A24B C6 52 50         [ 1] 1931 	ld	a, 0x5250
                                   1932 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 879: if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
      00A24E 0D 03            [ 1] 1933 	tnz	(0x03, sp)
      00A250 27 06            [ 1] 1934 	jreq	00102$
                                   1935 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 881: TIM1->CR1 |= TIM1_CR1_OPM;
      00A252 AA 08            [ 1] 1936 	or	a, #0x08
      00A254 C7 52 50         [ 1] 1937 	ld	0x5250, a
      00A257 81               [ 4] 1938 	ret
      00A258                       1939 00102$:
                                   1940 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 885: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
      00A258 A4 F7            [ 1] 1941 	and	a, #0xf7
      00A25A C7 52 50         [ 1] 1942 	ld	0x5250, a
                                   1943 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 888: }
      00A25D 81               [ 4] 1944 	ret
                                   1945 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 903: void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
                                   1946 ;	-----------------------------------------
                                   1947 ;	 function TIM1_SelectOutputTrigger
                                   1948 ;	-----------------------------------------
      00A25E                       1949 _TIM1_SelectOutputTrigger:
                                   1950 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 906: assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
      00A25E 0D 03            [ 1] 1951 	tnz	(0x03, sp)
      00A260 27 33            [ 1] 1952 	jreq	00104$
      00A262 7B 03            [ 1] 1953 	ld	a, (0x03, sp)
      00A264 A1 10            [ 1] 1954 	cp	a, #0x10
      00A266 27 2D            [ 1] 1955 	jreq	00104$
      00A268 7B 03            [ 1] 1956 	ld	a, (0x03, sp)
      00A26A A1 20            [ 1] 1957 	cp	a, #0x20
      00A26C 27 27            [ 1] 1958 	jreq	00104$
      00A26E 7B 03            [ 1] 1959 	ld	a, (0x03, sp)
      00A270 A1 30            [ 1] 1960 	cp	a, #0x30
      00A272 27 21            [ 1] 1961 	jreq	00104$
      00A274 7B 03            [ 1] 1962 	ld	a, (0x03, sp)
      00A276 A1 40            [ 1] 1963 	cp	a, #0x40
      00A278 27 1B            [ 1] 1964 	jreq	00104$
      00A27A 7B 03            [ 1] 1965 	ld	a, (0x03, sp)
      00A27C A1 50            [ 1] 1966 	cp	a, #0x50
      00A27E 27 15            [ 1] 1967 	jreq	00104$
      00A280 7B 03            [ 1] 1968 	ld	a, (0x03, sp)
      00A282 A1 60            [ 1] 1969 	cp	a, #0x60
      00A284 27 0F            [ 1] 1970 	jreq	00104$
      00A286 4B 8A            [ 1] 1971 	push	#0x8a
      00A288 4B 03            [ 1] 1972 	push	#0x03
      00A28A 5F               [ 1] 1973 	clrw	x
      00A28B 89               [ 2] 1974 	pushw	x
      00A28C 4B 6A            [ 1] 1975 	push	#<(___str_0+0)
      00A28E 4B 81            [ 1] 1976 	push	#((___str_0+0) >> 8)
      00A290 CD 83 84         [ 4] 1977 	call	_assert_failed
      00A293 5B 06            [ 2] 1978 	addw	sp, #6
      00A295                       1979 00104$:
                                   1980 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 909: TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
      00A295 C6 52 51         [ 1] 1981 	ld	a, 0x5251
      00A298 A4 8F            [ 1] 1982 	and	a, #0x8f
                                   1983 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 910: (uint8_t) TIM1_TRGOSource);
      00A29A 1A 03            [ 1] 1984 	or	a, (0x03, sp)
      00A29C C7 52 51         [ 1] 1985 	ld	0x5251, a
                                   1986 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 911: }
      00A29F 81               [ 4] 1987 	ret
                                   1988 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 923: void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
                                   1989 ;	-----------------------------------------
                                   1990 ;	 function TIM1_SelectSlaveMode
                                   1991 ;	-----------------------------------------
      00A2A0                       1992 _TIM1_SelectSlaveMode:
                                   1993 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 926: assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
      00A2A0 7B 03            [ 1] 1994 	ld	a, (0x03, sp)
      00A2A2 A1 04            [ 1] 1995 	cp	a, #0x04
      00A2A4 27 21            [ 1] 1996 	jreq	00104$
      00A2A6 7B 03            [ 1] 1997 	ld	a, (0x03, sp)
      00A2A8 A1 05            [ 1] 1998 	cp	a, #0x05
      00A2AA 27 1B            [ 1] 1999 	jreq	00104$
      00A2AC 7B 03            [ 1] 2000 	ld	a, (0x03, sp)
      00A2AE A1 06            [ 1] 2001 	cp	a, #0x06
      00A2B0 27 15            [ 1] 2002 	jreq	00104$
      00A2B2 7B 03            [ 1] 2003 	ld	a, (0x03, sp)
      00A2B4 A1 07            [ 1] 2004 	cp	a, #0x07
      00A2B6 27 0F            [ 1] 2005 	jreq	00104$
      00A2B8 4B 9E            [ 1] 2006 	push	#0x9e
      00A2BA 4B 03            [ 1] 2007 	push	#0x03
      00A2BC 5F               [ 1] 2008 	clrw	x
      00A2BD 89               [ 2] 2009 	pushw	x
      00A2BE 4B 6A            [ 1] 2010 	push	#<(___str_0+0)
      00A2C0 4B 81            [ 1] 2011 	push	#((___str_0+0) >> 8)
      00A2C2 CD 83 84         [ 4] 2012 	call	_assert_failed
      00A2C5 5B 06            [ 2] 2013 	addw	sp, #6
      00A2C7                       2014 00104$:
                                   2015 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 929: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
      00A2C7 C6 52 52         [ 1] 2016 	ld	a, 0x5252
      00A2CA A4 F8            [ 1] 2017 	and	a, #0xf8
                                   2018 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 930: (uint8_t)TIM1_SlaveMode);
      00A2CC 1A 03            [ 1] 2019 	or	a, (0x03, sp)
      00A2CE C7 52 52         [ 1] 2020 	ld	0x5252, a
                                   2021 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 931: }
      00A2D1 81               [ 4] 2022 	ret
                                   2023 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 939: void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
                                   2024 ;	-----------------------------------------
                                   2025 ;	 function TIM1_SelectMasterSlaveMode
                                   2026 ;	-----------------------------------------
      00A2D2                       2027 _TIM1_SelectMasterSlaveMode:
                                   2028 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 942: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A2D2 0D 03            [ 1] 2029 	tnz	(0x03, sp)
      00A2D4 27 14            [ 1] 2030 	jreq	00107$
      00A2D6 7B 03            [ 1] 2031 	ld	a, (0x03, sp)
      00A2D8 4A               [ 1] 2032 	dec	a
      00A2D9 27 0F            [ 1] 2033 	jreq	00107$
      00A2DB 4B AE            [ 1] 2034 	push	#0xae
      00A2DD 4B 03            [ 1] 2035 	push	#0x03
      00A2DF 5F               [ 1] 2036 	clrw	x
      00A2E0 89               [ 2] 2037 	pushw	x
      00A2E1 4B 6A            [ 1] 2038 	push	#<(___str_0+0)
      00A2E3 4B 81            [ 1] 2039 	push	#((___str_0+0) >> 8)
      00A2E5 CD 83 84         [ 4] 2040 	call	_assert_failed
      00A2E8 5B 06            [ 2] 2041 	addw	sp, #6
      00A2EA                       2042 00107$:
                                   2043 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 947: TIM1->SMCR |= TIM1_SMCR_MSM;
      00A2EA C6 52 52         [ 1] 2044 	ld	a, 0x5252
                                   2045 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 945: if (NewState != DISABLE)
      00A2ED 0D 03            [ 1] 2046 	tnz	(0x03, sp)
      00A2EF 27 06            [ 1] 2047 	jreq	00102$
                                   2048 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 947: TIM1->SMCR |= TIM1_SMCR_MSM;
      00A2F1 AA 80            [ 1] 2049 	or	a, #0x80
      00A2F3 C7 52 52         [ 1] 2050 	ld	0x5252, a
      00A2F6 81               [ 4] 2051 	ret
      00A2F7                       2052 00102$:
                                   2053 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 951: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
      00A2F7 A4 7F            [ 1] 2054 	and	a, #0x7f
      00A2F9 C7 52 52         [ 1] 2055 	ld	0x5252, a
                                   2056 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 953: }
      00A2FC 81               [ 4] 2057 	ret
                                   2058 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 975: void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
                                   2059 ;	-----------------------------------------
                                   2060 ;	 function TIM1_EncoderInterfaceConfig
                                   2061 ;	-----------------------------------------
      00A2FD                       2062 _TIM1_EncoderInterfaceConfig:
                                   2063 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 980: assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
      00A2FD 7B 03            [ 1] 2064 	ld	a, (0x03, sp)
      00A2FF 4A               [ 1] 2065 	dec	a
      00A300 27 1B            [ 1] 2066 	jreq	00110$
      00A302 7B 03            [ 1] 2067 	ld	a, (0x03, sp)
      00A304 A1 02            [ 1] 2068 	cp	a, #0x02
      00A306 27 15            [ 1] 2069 	jreq	00110$
      00A308 7B 03            [ 1] 2070 	ld	a, (0x03, sp)
      00A30A A1 03            [ 1] 2071 	cp	a, #0x03
      00A30C 27 0F            [ 1] 2072 	jreq	00110$
      00A30E 4B D4            [ 1] 2073 	push	#0xd4
      00A310 4B 03            [ 1] 2074 	push	#0x03
      00A312 5F               [ 1] 2075 	clrw	x
      00A313 89               [ 2] 2076 	pushw	x
      00A314 4B 6A            [ 1] 2077 	push	#<(___str_0+0)
      00A316 4B 81            [ 1] 2078 	push	#((___str_0+0) >> 8)
      00A318 CD 83 84         [ 4] 2079 	call	_assert_failed
      00A31B 5B 06            [ 2] 2080 	addw	sp, #6
      00A31D                       2081 00110$:
                                   2082 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 981: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
      00A31D 0D 04            [ 1] 2083 	tnz	(0x04, sp)
      00A31F 27 14            [ 1] 2084 	jreq	00118$
      00A321 7B 04            [ 1] 2085 	ld	a, (0x04, sp)
      00A323 4A               [ 1] 2086 	dec	a
      00A324 27 0F            [ 1] 2087 	jreq	00118$
      00A326 4B D5            [ 1] 2088 	push	#0xd5
      00A328 4B 03            [ 1] 2089 	push	#0x03
      00A32A 5F               [ 1] 2090 	clrw	x
      00A32B 89               [ 2] 2091 	pushw	x
      00A32C 4B 6A            [ 1] 2092 	push	#<(___str_0+0)
      00A32E 4B 81            [ 1] 2093 	push	#((___str_0+0) >> 8)
      00A330 CD 83 84         [ 4] 2094 	call	_assert_failed
      00A333 5B 06            [ 2] 2095 	addw	sp, #6
      00A335                       2096 00118$:
                                   2097 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 982: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
      00A335 0D 05            [ 1] 2098 	tnz	(0x05, sp)
      00A337 27 14            [ 1] 2099 	jreq	00123$
      00A339 7B 05            [ 1] 2100 	ld	a, (0x05, sp)
      00A33B 4A               [ 1] 2101 	dec	a
      00A33C 27 0F            [ 1] 2102 	jreq	00123$
      00A33E 4B D6            [ 1] 2103 	push	#0xd6
      00A340 4B 03            [ 1] 2104 	push	#0x03
      00A342 5F               [ 1] 2105 	clrw	x
      00A343 89               [ 2] 2106 	pushw	x
      00A344 4B 6A            [ 1] 2107 	push	#<(___str_0+0)
      00A346 4B 81            [ 1] 2108 	push	#((___str_0+0) >> 8)
      00A348 CD 83 84         [ 4] 2109 	call	_assert_failed
      00A34B 5B 06            [ 2] 2110 	addw	sp, #6
      00A34D                       2111 00123$:
                                   2112 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00A34D C6 52 5C         [ 1] 2113 	ld	a, 0x525c
                                   2114 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 985: if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
      00A350 0D 04            [ 1] 2115 	tnz	(0x04, sp)
      00A352 27 07            [ 1] 2116 	jreq	00102$
                                   2117 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00A354 AA 02            [ 1] 2118 	or	a, #0x02
      00A356 C7 52 5C         [ 1] 2119 	ld	0x525c, a
      00A359 20 05            [ 2] 2120 	jra	00103$
      00A35B                       2121 00102$:
                                   2122 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 991: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      00A35B A4 FD            [ 1] 2123 	and	a, #0xfd
      00A35D C7 52 5C         [ 1] 2124 	ld	0x525c, a
      00A360                       2125 00103$:
                                   2126 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00A360 C6 52 5C         [ 1] 2127 	ld	a, 0x525c
                                   2128 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 994: if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
      00A363 0D 05            [ 1] 2129 	tnz	(0x05, sp)
      00A365 27 07            [ 1] 2130 	jreq	00105$
                                   2131 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 996: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      00A367 AA 20            [ 1] 2132 	or	a, #0x20
      00A369 C7 52 5C         [ 1] 2133 	ld	0x525c, a
      00A36C 20 05            [ 2] 2134 	jra	00106$
      00A36E                       2135 00105$:
                                   2136 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1000: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      00A36E A4 DF            [ 1] 2137 	and	a, #0xdf
      00A370 C7 52 5C         [ 1] 2138 	ld	0x525c, a
      00A373                       2139 00106$:
                                   2140 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1003: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
      00A373 C6 52 52         [ 1] 2141 	ld	a, 0x5252
      00A376 A4 F0            [ 1] 2142 	and	a, #0xf0
                                   2143 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1004: | (uint8_t) TIM1_EncoderMode);
      00A378 1A 03            [ 1] 2144 	or	a, (0x03, sp)
      00A37A C7 52 52         [ 1] 2145 	ld	0x5252, a
                                   2146 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1007: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
      00A37D C6 52 58         [ 1] 2147 	ld	a, 0x5258
      00A380 A4 FC            [ 1] 2148 	and	a, #0xfc
      00A382 AA 01            [ 1] 2149 	or	a, #0x01
      00A384 C7 52 58         [ 1] 2150 	ld	0x5258, a
                                   2151 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1009: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
      00A387 C6 52 59         [ 1] 2152 	ld	a, 0x5259
      00A38A A4 FC            [ 1] 2153 	and	a, #0xfc
      00A38C AA 01            [ 1] 2154 	or	a, #0x01
      00A38E C7 52 59         [ 1] 2155 	ld	0x5259, a
                                   2156 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1011: }
      00A391 81               [ 4] 2157 	ret
                                   2158 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1023: void TIM1_PrescalerConfig(uint16_t Prescaler,
                                   2159 ;	-----------------------------------------
                                   2160 ;	 function TIM1_PrescalerConfig
                                   2161 ;	-----------------------------------------
      00A392                       2162 _TIM1_PrescalerConfig:
                                   2163 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1027: assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
      00A392 0D 05            [ 1] 2164 	tnz	(0x05, sp)
      00A394 27 14            [ 1] 2165 	jreq	00104$
      00A396 7B 05            [ 1] 2166 	ld	a, (0x05, sp)
      00A398 4A               [ 1] 2167 	dec	a
      00A399 27 0F            [ 1] 2168 	jreq	00104$
      00A39B 4B 03            [ 1] 2169 	push	#0x03
      00A39D 4B 04            [ 1] 2170 	push	#0x04
      00A39F 5F               [ 1] 2171 	clrw	x
      00A3A0 89               [ 2] 2172 	pushw	x
      00A3A1 4B 6A            [ 1] 2173 	push	#<(___str_0+0)
      00A3A3 4B 81            [ 1] 2174 	push	#((___str_0+0) >> 8)
      00A3A5 CD 83 84         [ 4] 2175 	call	_assert_failed
      00A3A8 5B 06            [ 2] 2176 	addw	sp, #6
      00A3AA                       2177 00104$:
                                   2178 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1030: TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
      00A3AA 7B 03            [ 1] 2179 	ld	a, (0x03, sp)
      00A3AC C7 52 60         [ 1] 2180 	ld	0x5260, a
                                   2181 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1031: TIM1->PSCRL = (uint8_t)(Prescaler);
      00A3AF 7B 04            [ 1] 2182 	ld	a, (0x04, sp)
      00A3B1 C7 52 61         [ 1] 2183 	ld	0x5261, a
                                   2184 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1034: TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
      00A3B4 AE 52 57         [ 2] 2185 	ldw	x, #0x5257
      00A3B7 7B 05            [ 1] 2186 	ld	a, (0x05, sp)
      00A3B9 F7               [ 1] 2187 	ld	(x), a
                                   2188 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1035: }
      00A3BA 81               [ 4] 2189 	ret
                                   2190 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1048: void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
                                   2191 ;	-----------------------------------------
                                   2192 ;	 function TIM1_CounterModeConfig
                                   2193 ;	-----------------------------------------
      00A3BB                       2194 _TIM1_CounterModeConfig:
                                   2195 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1051: assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
      00A3BB 0D 03            [ 1] 2196 	tnz	(0x03, sp)
      00A3BD 27 27            [ 1] 2197 	jreq	00104$
      00A3BF 7B 03            [ 1] 2198 	ld	a, (0x03, sp)
      00A3C1 A1 10            [ 1] 2199 	cp	a, #0x10
      00A3C3 27 21            [ 1] 2200 	jreq	00104$
      00A3C5 7B 03            [ 1] 2201 	ld	a, (0x03, sp)
      00A3C7 A1 20            [ 1] 2202 	cp	a, #0x20
      00A3C9 27 1B            [ 1] 2203 	jreq	00104$
      00A3CB 7B 03            [ 1] 2204 	ld	a, (0x03, sp)
      00A3CD A1 40            [ 1] 2205 	cp	a, #0x40
      00A3CF 27 15            [ 1] 2206 	jreq	00104$
      00A3D1 7B 03            [ 1] 2207 	ld	a, (0x03, sp)
      00A3D3 A1 60            [ 1] 2208 	cp	a, #0x60
      00A3D5 27 0F            [ 1] 2209 	jreq	00104$
      00A3D7 4B 1B            [ 1] 2210 	push	#0x1b
      00A3D9 4B 04            [ 1] 2211 	push	#0x04
      00A3DB 5F               [ 1] 2212 	clrw	x
      00A3DC 89               [ 2] 2213 	pushw	x
      00A3DD 4B 6A            [ 1] 2214 	push	#<(___str_0+0)
      00A3DF 4B 81            [ 1] 2215 	push	#((___str_0+0) >> 8)
      00A3E1 CD 83 84         [ 4] 2216 	call	_assert_failed
      00A3E4 5B 06            [ 2] 2217 	addw	sp, #6
      00A3E6                       2218 00104$:
                                   2219 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1055: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
      00A3E6 C6 52 50         [ 1] 2220 	ld	a, 0x5250
      00A3E9 A4 8F            [ 1] 2221 	and	a, #0x8f
                                   2222 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1056: | (uint8_t)TIM1_CounterMode);
      00A3EB 1A 03            [ 1] 2223 	or	a, (0x03, sp)
      00A3ED C7 52 50         [ 1] 2224 	ld	0x5250, a
                                   2225 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1057: }
      00A3F0 81               [ 4] 2226 	ret
                                   2227 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1067: void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   2228 ;	-----------------------------------------
                                   2229 ;	 function TIM1_ForcedOC1Config
                                   2230 ;	-----------------------------------------
      00A3F1                       2231 _TIM1_ForcedOC1Config:
                                   2232 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1070: assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
      00A3F1 7B 03            [ 1] 2233 	ld	a, (0x03, sp)
      00A3F3 A1 50            [ 1] 2234 	cp	a, #0x50
      00A3F5 27 15            [ 1] 2235 	jreq	00104$
      00A3F7 7B 03            [ 1] 2236 	ld	a, (0x03, sp)
      00A3F9 A1 40            [ 1] 2237 	cp	a, #0x40
      00A3FB 27 0F            [ 1] 2238 	jreq	00104$
      00A3FD 4B 2E            [ 1] 2239 	push	#0x2e
      00A3FF 4B 04            [ 1] 2240 	push	#0x04
      00A401 5F               [ 1] 2241 	clrw	x
      00A402 89               [ 2] 2242 	pushw	x
      00A403 4B 6A            [ 1] 2243 	push	#<(___str_0+0)
      00A405 4B 81            [ 1] 2244 	push	#((___str_0+0) >> 8)
      00A407 CD 83 84         [ 4] 2245 	call	_assert_failed
      00A40A 5B 06            [ 2] 2246 	addw	sp, #6
      00A40C                       2247 00104$:
                                   2248 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1073: TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
      00A40C C6 52 58         [ 1] 2249 	ld	a, 0x5258
      00A40F A4 8F            [ 1] 2250 	and	a, #0x8f
                                   2251 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1074: (uint8_t)TIM1_ForcedAction);
      00A411 1A 03            [ 1] 2252 	or	a, (0x03, sp)
      00A413 C7 52 58         [ 1] 2253 	ld	0x5258, a
                                   2254 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1075: }
      00A416 81               [ 4] 2255 	ret
                                   2256 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1085: void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   2257 ;	-----------------------------------------
                                   2258 ;	 function TIM1_ForcedOC2Config
                                   2259 ;	-----------------------------------------
      00A417                       2260 _TIM1_ForcedOC2Config:
                                   2261 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1088: assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
      00A417 7B 03            [ 1] 2262 	ld	a, (0x03, sp)
      00A419 A1 50            [ 1] 2263 	cp	a, #0x50
      00A41B 27 15            [ 1] 2264 	jreq	00104$
      00A41D 7B 03            [ 1] 2265 	ld	a, (0x03, sp)
      00A41F A1 40            [ 1] 2266 	cp	a, #0x40
      00A421 27 0F            [ 1] 2267 	jreq	00104$
      00A423 4B 40            [ 1] 2268 	push	#0x40
      00A425 4B 04            [ 1] 2269 	push	#0x04
      00A427 5F               [ 1] 2270 	clrw	x
      00A428 89               [ 2] 2271 	pushw	x
      00A429 4B 6A            [ 1] 2272 	push	#<(___str_0+0)
      00A42B 4B 81            [ 1] 2273 	push	#((___str_0+0) >> 8)
      00A42D CD 83 84         [ 4] 2274 	call	_assert_failed
      00A430 5B 06            [ 2] 2275 	addw	sp, #6
      00A432                       2276 00104$:
                                   2277 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1091: TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
      00A432 C6 52 59         [ 1] 2278 	ld	a, 0x5259
      00A435 A4 8F            [ 1] 2279 	and	a, #0x8f
                                   2280 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1092: | (uint8_t)TIM1_ForcedAction);
      00A437 1A 03            [ 1] 2281 	or	a, (0x03, sp)
      00A439 C7 52 59         [ 1] 2282 	ld	0x5259, a
                                   2283 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1093: }
      00A43C 81               [ 4] 2284 	ret
                                   2285 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1104: void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   2286 ;	-----------------------------------------
                                   2287 ;	 function TIM1_ForcedOC3Config
                                   2288 ;	-----------------------------------------
      00A43D                       2289 _TIM1_ForcedOC3Config:
                                   2290 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1107: assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
      00A43D 7B 03            [ 1] 2291 	ld	a, (0x03, sp)
      00A43F A1 50            [ 1] 2292 	cp	a, #0x50
      00A441 27 15            [ 1] 2293 	jreq	00104$
      00A443 7B 03            [ 1] 2294 	ld	a, (0x03, sp)
      00A445 A1 40            [ 1] 2295 	cp	a, #0x40
      00A447 27 0F            [ 1] 2296 	jreq	00104$
      00A449 4B 53            [ 1] 2297 	push	#0x53
      00A44B 4B 04            [ 1] 2298 	push	#0x04
      00A44D 5F               [ 1] 2299 	clrw	x
      00A44E 89               [ 2] 2300 	pushw	x
      00A44F 4B 6A            [ 1] 2301 	push	#<(___str_0+0)
      00A451 4B 81            [ 1] 2302 	push	#((___str_0+0) >> 8)
      00A453 CD 83 84         [ 4] 2303 	call	_assert_failed
      00A456 5B 06            [ 2] 2304 	addw	sp, #6
      00A458                       2305 00104$:
                                   2306 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1110: TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
      00A458 C6 52 5A         [ 1] 2307 	ld	a, 0x525a
      00A45B A4 8F            [ 1] 2308 	and	a, #0x8f
                                   2309 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1111: | (uint8_t)TIM1_ForcedAction);
      00A45D 1A 03            [ 1] 2310 	or	a, (0x03, sp)
      00A45F C7 52 5A         [ 1] 2311 	ld	0x525a, a
                                   2312 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1112: }
      00A462 81               [ 4] 2313 	ret
                                   2314 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1123: void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   2315 ;	-----------------------------------------
                                   2316 ;	 function TIM1_ForcedOC4Config
                                   2317 ;	-----------------------------------------
      00A463                       2318 _TIM1_ForcedOC4Config:
                                   2319 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1126: assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
      00A463 7B 03            [ 1] 2320 	ld	a, (0x03, sp)
      00A465 A1 50            [ 1] 2321 	cp	a, #0x50
      00A467 27 15            [ 1] 2322 	jreq	00104$
      00A469 7B 03            [ 1] 2323 	ld	a, (0x03, sp)
      00A46B A1 40            [ 1] 2324 	cp	a, #0x40
      00A46D 27 0F            [ 1] 2325 	jreq	00104$
      00A46F 4B 66            [ 1] 2326 	push	#0x66
      00A471 4B 04            [ 1] 2327 	push	#0x04
      00A473 5F               [ 1] 2328 	clrw	x
      00A474 89               [ 2] 2329 	pushw	x
      00A475 4B 6A            [ 1] 2330 	push	#<(___str_0+0)
      00A477 4B 81            [ 1] 2331 	push	#((___str_0+0) >> 8)
      00A479 CD 83 84         [ 4] 2332 	call	_assert_failed
      00A47C 5B 06            [ 2] 2333 	addw	sp, #6
      00A47E                       2334 00104$:
                                   2335 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1129: TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
      00A47E C6 52 5B         [ 1] 2336 	ld	a, 0x525b
      00A481 A4 8F            [ 1] 2337 	and	a, #0x8f
                                   2338 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1130: | (uint8_t)TIM1_ForcedAction);
      00A483 1A 03            [ 1] 2339 	or	a, (0x03, sp)
      00A485 C7 52 5B         [ 1] 2340 	ld	0x525b, a
                                   2341 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1131: }
      00A488 81               [ 4] 2342 	ret
                                   2343 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1139: void TIM1_ARRPreloadConfig(FunctionalState NewState)
                                   2344 ;	-----------------------------------------
                                   2345 ;	 function TIM1_ARRPreloadConfig
                                   2346 ;	-----------------------------------------
      00A489                       2347 _TIM1_ARRPreloadConfig:
                                   2348 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1142: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A489 0D 03            [ 1] 2349 	tnz	(0x03, sp)
      00A48B 27 14            [ 1] 2350 	jreq	00107$
      00A48D 7B 03            [ 1] 2351 	ld	a, (0x03, sp)
      00A48F 4A               [ 1] 2352 	dec	a
      00A490 27 0F            [ 1] 2353 	jreq	00107$
      00A492 4B 76            [ 1] 2354 	push	#0x76
      00A494 4B 04            [ 1] 2355 	push	#0x04
      00A496 5F               [ 1] 2356 	clrw	x
      00A497 89               [ 2] 2357 	pushw	x
      00A498 4B 6A            [ 1] 2358 	push	#<(___str_0+0)
      00A49A 4B 81            [ 1] 2359 	push	#((___str_0+0) >> 8)
      00A49C CD 83 84         [ 4] 2360 	call	_assert_failed
      00A49F 5B 06            [ 2] 2361 	addw	sp, #6
      00A4A1                       2362 00107$:
                                   2363 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1147: TIM1->CR1 |= TIM1_CR1_ARPE;
      00A4A1 C6 52 50         [ 1] 2364 	ld	a, 0x5250
                                   2365 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1145: if (NewState != DISABLE)
      00A4A4 0D 03            [ 1] 2366 	tnz	(0x03, sp)
      00A4A6 27 06            [ 1] 2367 	jreq	00102$
                                   2368 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1147: TIM1->CR1 |= TIM1_CR1_ARPE;
      00A4A8 AA 80            [ 1] 2369 	or	a, #0x80
      00A4AA C7 52 50         [ 1] 2370 	ld	0x5250, a
      00A4AD 81               [ 4] 2371 	ret
      00A4AE                       2372 00102$:
                                   2373 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1151: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
      00A4AE A4 7F            [ 1] 2374 	and	a, #0x7f
      00A4B0 C7 52 50         [ 1] 2375 	ld	0x5250, a
                                   2376 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1153: }
      00A4B3 81               [ 4] 2377 	ret
                                   2378 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1161: void TIM1_SelectCOM(FunctionalState NewState)
                                   2379 ;	-----------------------------------------
                                   2380 ;	 function TIM1_SelectCOM
                                   2381 ;	-----------------------------------------
      00A4B4                       2382 _TIM1_SelectCOM:
                                   2383 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1164: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A4B4 0D 03            [ 1] 2384 	tnz	(0x03, sp)
      00A4B6 27 14            [ 1] 2385 	jreq	00107$
      00A4B8 7B 03            [ 1] 2386 	ld	a, (0x03, sp)
      00A4BA 4A               [ 1] 2387 	dec	a
      00A4BB 27 0F            [ 1] 2388 	jreq	00107$
      00A4BD 4B 8C            [ 1] 2389 	push	#0x8c
      00A4BF 4B 04            [ 1] 2390 	push	#0x04
      00A4C1 5F               [ 1] 2391 	clrw	x
      00A4C2 89               [ 2] 2392 	pushw	x
      00A4C3 4B 6A            [ 1] 2393 	push	#<(___str_0+0)
      00A4C5 4B 81            [ 1] 2394 	push	#((___str_0+0) >> 8)
      00A4C7 CD 83 84         [ 4] 2395 	call	_assert_failed
      00A4CA 5B 06            [ 2] 2396 	addw	sp, #6
      00A4CC                       2397 00107$:
                                   2398 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1169: TIM1->CR2 |= TIM1_CR2_COMS;
      00A4CC C6 52 51         [ 1] 2399 	ld	a, 0x5251
                                   2400 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1167: if (NewState != DISABLE)
      00A4CF 0D 03            [ 1] 2401 	tnz	(0x03, sp)
      00A4D1 27 06            [ 1] 2402 	jreq	00102$
                                   2403 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1169: TIM1->CR2 |= TIM1_CR2_COMS;
      00A4D3 AA 04            [ 1] 2404 	or	a, #0x04
      00A4D5 C7 52 51         [ 1] 2405 	ld	0x5251, a
      00A4D8 81               [ 4] 2406 	ret
      00A4D9                       2407 00102$:
                                   2408 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1173: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
      00A4D9 A4 FB            [ 1] 2409 	and	a, #0xfb
      00A4DB C7 52 51         [ 1] 2410 	ld	0x5251, a
                                   2411 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1175: }
      00A4DE 81               [ 4] 2412 	ret
                                   2413 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1183: void TIM1_CCPreloadControl(FunctionalState NewState)
                                   2414 ;	-----------------------------------------
                                   2415 ;	 function TIM1_CCPreloadControl
                                   2416 ;	-----------------------------------------
      00A4DF                       2417 _TIM1_CCPreloadControl:
                                   2418 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1186: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A4DF 0D 03            [ 1] 2419 	tnz	(0x03, sp)
      00A4E1 27 14            [ 1] 2420 	jreq	00107$
      00A4E3 7B 03            [ 1] 2421 	ld	a, (0x03, sp)
      00A4E5 4A               [ 1] 2422 	dec	a
      00A4E6 27 0F            [ 1] 2423 	jreq	00107$
      00A4E8 4B A2            [ 1] 2424 	push	#0xa2
      00A4EA 4B 04            [ 1] 2425 	push	#0x04
      00A4EC 5F               [ 1] 2426 	clrw	x
      00A4ED 89               [ 2] 2427 	pushw	x
      00A4EE 4B 6A            [ 1] 2428 	push	#<(___str_0+0)
      00A4F0 4B 81            [ 1] 2429 	push	#((___str_0+0) >> 8)
      00A4F2 CD 83 84         [ 4] 2430 	call	_assert_failed
      00A4F5 5B 06            [ 2] 2431 	addw	sp, #6
      00A4F7                       2432 00107$:
                                   2433 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1191: TIM1->CR2 |= TIM1_CR2_CCPC;
      00A4F7 C6 52 51         [ 1] 2434 	ld	a, 0x5251
                                   2435 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1189: if (NewState != DISABLE)
      00A4FA 0D 03            [ 1] 2436 	tnz	(0x03, sp)
      00A4FC 27 06            [ 1] 2437 	jreq	00102$
                                   2438 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1191: TIM1->CR2 |= TIM1_CR2_CCPC;
      00A4FE AA 01            [ 1] 2439 	or	a, #0x01
      00A500 C7 52 51         [ 1] 2440 	ld	0x5251, a
      00A503 81               [ 4] 2441 	ret
      00A504                       2442 00102$:
                                   2443 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1195: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
      00A504 A4 FE            [ 1] 2444 	and	a, #0xfe
      00A506 C7 52 51         [ 1] 2445 	ld	0x5251, a
                                   2446 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1197: }
      00A509 81               [ 4] 2447 	ret
                                   2448 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1205: void TIM1_OC1PreloadConfig(FunctionalState NewState)
                                   2449 ;	-----------------------------------------
                                   2450 ;	 function TIM1_OC1PreloadConfig
                                   2451 ;	-----------------------------------------
      00A50A                       2452 _TIM1_OC1PreloadConfig:
                                   2453 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1208: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A50A 0D 03            [ 1] 2454 	tnz	(0x03, sp)
      00A50C 27 14            [ 1] 2455 	jreq	00107$
      00A50E 7B 03            [ 1] 2456 	ld	a, (0x03, sp)
      00A510 4A               [ 1] 2457 	dec	a
      00A511 27 0F            [ 1] 2458 	jreq	00107$
      00A513 4B B8            [ 1] 2459 	push	#0xb8
      00A515 4B 04            [ 1] 2460 	push	#0x04
      00A517 5F               [ 1] 2461 	clrw	x
      00A518 89               [ 2] 2462 	pushw	x
      00A519 4B 6A            [ 1] 2463 	push	#<(___str_0+0)
      00A51B 4B 81            [ 1] 2464 	push	#((___str_0+0) >> 8)
      00A51D CD 83 84         [ 4] 2465 	call	_assert_failed
      00A520 5B 06            [ 2] 2466 	addw	sp, #6
      00A522                       2467 00107$:
                                   2468 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1213: TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
      00A522 C6 52 58         [ 1] 2469 	ld	a, 0x5258
                                   2470 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1211: if (NewState != DISABLE)
      00A525 0D 03            [ 1] 2471 	tnz	(0x03, sp)
      00A527 27 06            [ 1] 2472 	jreq	00102$
                                   2473 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1213: TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
      00A529 AA 08            [ 1] 2474 	or	a, #0x08
      00A52B C7 52 58         [ 1] 2475 	ld	0x5258, a
      00A52E 81               [ 4] 2476 	ret
      00A52F                       2477 00102$:
                                   2478 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1217: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      00A52F A4 F7            [ 1] 2479 	and	a, #0xf7
      00A531 C7 52 58         [ 1] 2480 	ld	0x5258, a
                                   2481 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1219: }
      00A534 81               [ 4] 2482 	ret
                                   2483 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1227: void TIM1_OC2PreloadConfig(FunctionalState NewState)
                                   2484 ;	-----------------------------------------
                                   2485 ;	 function TIM1_OC2PreloadConfig
                                   2486 ;	-----------------------------------------
      00A535                       2487 _TIM1_OC2PreloadConfig:
                                   2488 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1230: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A535 0D 03            [ 1] 2489 	tnz	(0x03, sp)
      00A537 27 14            [ 1] 2490 	jreq	00107$
      00A539 7B 03            [ 1] 2491 	ld	a, (0x03, sp)
      00A53B 4A               [ 1] 2492 	dec	a
      00A53C 27 0F            [ 1] 2493 	jreq	00107$
      00A53E 4B CE            [ 1] 2494 	push	#0xce
      00A540 4B 04            [ 1] 2495 	push	#0x04
      00A542 5F               [ 1] 2496 	clrw	x
      00A543 89               [ 2] 2497 	pushw	x
      00A544 4B 6A            [ 1] 2498 	push	#<(___str_0+0)
      00A546 4B 81            [ 1] 2499 	push	#((___str_0+0) >> 8)
      00A548 CD 83 84         [ 4] 2500 	call	_assert_failed
      00A54B 5B 06            [ 2] 2501 	addw	sp, #6
      00A54D                       2502 00107$:
                                   2503 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1235: TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
      00A54D C6 52 59         [ 1] 2504 	ld	a, 0x5259
                                   2505 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1233: if (NewState != DISABLE)
      00A550 0D 03            [ 1] 2506 	tnz	(0x03, sp)
      00A552 27 06            [ 1] 2507 	jreq	00102$
                                   2508 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1235: TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
      00A554 AA 08            [ 1] 2509 	or	a, #0x08
      00A556 C7 52 59         [ 1] 2510 	ld	0x5259, a
      00A559 81               [ 4] 2511 	ret
      00A55A                       2512 00102$:
                                   2513 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1239: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      00A55A A4 F7            [ 1] 2514 	and	a, #0xf7
      00A55C C7 52 59         [ 1] 2515 	ld	0x5259, a
                                   2516 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1241: }
      00A55F 81               [ 4] 2517 	ret
                                   2518 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1249: void TIM1_OC3PreloadConfig(FunctionalState NewState)
                                   2519 ;	-----------------------------------------
                                   2520 ;	 function TIM1_OC3PreloadConfig
                                   2521 ;	-----------------------------------------
      00A560                       2522 _TIM1_OC3PreloadConfig:
                                   2523 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1252: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A560 0D 03            [ 1] 2524 	tnz	(0x03, sp)
      00A562 27 14            [ 1] 2525 	jreq	00107$
      00A564 7B 03            [ 1] 2526 	ld	a, (0x03, sp)
      00A566 4A               [ 1] 2527 	dec	a
      00A567 27 0F            [ 1] 2528 	jreq	00107$
      00A569 4B E4            [ 1] 2529 	push	#0xe4
      00A56B 4B 04            [ 1] 2530 	push	#0x04
      00A56D 5F               [ 1] 2531 	clrw	x
      00A56E 89               [ 2] 2532 	pushw	x
      00A56F 4B 6A            [ 1] 2533 	push	#<(___str_0+0)
      00A571 4B 81            [ 1] 2534 	push	#((___str_0+0) >> 8)
      00A573 CD 83 84         [ 4] 2535 	call	_assert_failed
      00A576 5B 06            [ 2] 2536 	addw	sp, #6
      00A578                       2537 00107$:
                                   2538 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1257: TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
      00A578 C6 52 5A         [ 1] 2539 	ld	a, 0x525a
                                   2540 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1255: if (NewState != DISABLE)
      00A57B 0D 03            [ 1] 2541 	tnz	(0x03, sp)
      00A57D 27 06            [ 1] 2542 	jreq	00102$
                                   2543 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1257: TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
      00A57F AA 08            [ 1] 2544 	or	a, #0x08
      00A581 C7 52 5A         [ 1] 2545 	ld	0x525a, a
      00A584 81               [ 4] 2546 	ret
      00A585                       2547 00102$:
                                   2548 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1261: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      00A585 A4 F7            [ 1] 2549 	and	a, #0xf7
      00A587 C7 52 5A         [ 1] 2550 	ld	0x525a, a
                                   2551 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1263: }
      00A58A 81               [ 4] 2552 	ret
                                   2553 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1271: void TIM1_OC4PreloadConfig(FunctionalState NewState)
                                   2554 ;	-----------------------------------------
                                   2555 ;	 function TIM1_OC4PreloadConfig
                                   2556 ;	-----------------------------------------
      00A58B                       2557 _TIM1_OC4PreloadConfig:
                                   2558 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1274: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A58B 0D 03            [ 1] 2559 	tnz	(0x03, sp)
      00A58D 27 14            [ 1] 2560 	jreq	00107$
      00A58F 7B 03            [ 1] 2561 	ld	a, (0x03, sp)
      00A591 4A               [ 1] 2562 	dec	a
      00A592 27 0F            [ 1] 2563 	jreq	00107$
      00A594 4B FA            [ 1] 2564 	push	#0xfa
      00A596 4B 04            [ 1] 2565 	push	#0x04
      00A598 5F               [ 1] 2566 	clrw	x
      00A599 89               [ 2] 2567 	pushw	x
      00A59A 4B 6A            [ 1] 2568 	push	#<(___str_0+0)
      00A59C 4B 81            [ 1] 2569 	push	#((___str_0+0) >> 8)
      00A59E CD 83 84         [ 4] 2570 	call	_assert_failed
      00A5A1 5B 06            [ 2] 2571 	addw	sp, #6
      00A5A3                       2572 00107$:
                                   2573 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1279: TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
      00A5A3 C6 52 5B         [ 1] 2574 	ld	a, 0x525b
                                   2575 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1277: if (NewState != DISABLE)
      00A5A6 0D 03            [ 1] 2576 	tnz	(0x03, sp)
      00A5A8 27 06            [ 1] 2577 	jreq	00102$
                                   2578 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1279: TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
      00A5AA AA 08            [ 1] 2579 	or	a, #0x08
      00A5AC C7 52 5B         [ 1] 2580 	ld	0x525b, a
      00A5AF 81               [ 4] 2581 	ret
      00A5B0                       2582 00102$:
                                   2583 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1283: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      00A5B0 A4 F7            [ 1] 2584 	and	a, #0xf7
      00A5B2 C7 52 5B         [ 1] 2585 	ld	0x525b, a
                                   2586 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1285: }
      00A5B5 81               [ 4] 2587 	ret
                                   2588 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1293: void TIM1_OC1FastConfig(FunctionalState NewState)
                                   2589 ;	-----------------------------------------
                                   2590 ;	 function TIM1_OC1FastConfig
                                   2591 ;	-----------------------------------------
      00A5B6                       2592 _TIM1_OC1FastConfig:
                                   2593 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1296: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A5B6 0D 03            [ 1] 2594 	tnz	(0x03, sp)
      00A5B8 27 14            [ 1] 2595 	jreq	00107$
      00A5BA 7B 03            [ 1] 2596 	ld	a, (0x03, sp)
      00A5BC 4A               [ 1] 2597 	dec	a
      00A5BD 27 0F            [ 1] 2598 	jreq	00107$
      00A5BF 4B 10            [ 1] 2599 	push	#0x10
      00A5C1 4B 05            [ 1] 2600 	push	#0x05
      00A5C3 5F               [ 1] 2601 	clrw	x
      00A5C4 89               [ 2] 2602 	pushw	x
      00A5C5 4B 6A            [ 1] 2603 	push	#<(___str_0+0)
      00A5C7 4B 81            [ 1] 2604 	push	#((___str_0+0) >> 8)
      00A5C9 CD 83 84         [ 4] 2605 	call	_assert_failed
      00A5CC 5B 06            [ 2] 2606 	addw	sp, #6
      00A5CE                       2607 00107$:
                                   2608 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1301: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
      00A5CE C6 52 58         [ 1] 2609 	ld	a, 0x5258
                                   2610 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1299: if (NewState != DISABLE)
      00A5D1 0D 03            [ 1] 2611 	tnz	(0x03, sp)
      00A5D3 27 06            [ 1] 2612 	jreq	00102$
                                   2613 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1301: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
      00A5D5 AA 04            [ 1] 2614 	or	a, #0x04
      00A5D7 C7 52 58         [ 1] 2615 	ld	0x5258, a
      00A5DA 81               [ 4] 2616 	ret
      00A5DB                       2617 00102$:
                                   2618 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1305: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      00A5DB A4 FB            [ 1] 2619 	and	a, #0xfb
      00A5DD C7 52 58         [ 1] 2620 	ld	0x5258, a
                                   2621 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1307: }
      00A5E0 81               [ 4] 2622 	ret
                                   2623 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1315: void TIM1_OC2FastConfig(FunctionalState NewState)
                                   2624 ;	-----------------------------------------
                                   2625 ;	 function TIM1_OC2FastConfig
                                   2626 ;	-----------------------------------------
      00A5E1                       2627 _TIM1_OC2FastConfig:
                                   2628 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1318: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A5E1 0D 03            [ 1] 2629 	tnz	(0x03, sp)
      00A5E3 27 14            [ 1] 2630 	jreq	00107$
      00A5E5 7B 03            [ 1] 2631 	ld	a, (0x03, sp)
      00A5E7 4A               [ 1] 2632 	dec	a
      00A5E8 27 0F            [ 1] 2633 	jreq	00107$
      00A5EA 4B 26            [ 1] 2634 	push	#0x26
      00A5EC 4B 05            [ 1] 2635 	push	#0x05
      00A5EE 5F               [ 1] 2636 	clrw	x
      00A5EF 89               [ 2] 2637 	pushw	x
      00A5F0 4B 6A            [ 1] 2638 	push	#<(___str_0+0)
      00A5F2 4B 81            [ 1] 2639 	push	#((___str_0+0) >> 8)
      00A5F4 CD 83 84         [ 4] 2640 	call	_assert_failed
      00A5F7 5B 06            [ 2] 2641 	addw	sp, #6
      00A5F9                       2642 00107$:
                                   2643 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1323: TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
      00A5F9 C6 52 59         [ 1] 2644 	ld	a, 0x5259
                                   2645 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1321: if (NewState != DISABLE)
      00A5FC 0D 03            [ 1] 2646 	tnz	(0x03, sp)
      00A5FE 27 06            [ 1] 2647 	jreq	00102$
                                   2648 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1323: TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
      00A600 AA 04            [ 1] 2649 	or	a, #0x04
      00A602 C7 52 59         [ 1] 2650 	ld	0x5259, a
      00A605 81               [ 4] 2651 	ret
      00A606                       2652 00102$:
                                   2653 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1327: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      00A606 A4 FB            [ 1] 2654 	and	a, #0xfb
      00A608 C7 52 59         [ 1] 2655 	ld	0x5259, a
                                   2656 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1329: }
      00A60B 81               [ 4] 2657 	ret
                                   2658 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1337: void TIM1_OC3FastConfig(FunctionalState NewState)
                                   2659 ;	-----------------------------------------
                                   2660 ;	 function TIM1_OC3FastConfig
                                   2661 ;	-----------------------------------------
      00A60C                       2662 _TIM1_OC3FastConfig:
                                   2663 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1340: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A60C 0D 03            [ 1] 2664 	tnz	(0x03, sp)
      00A60E 27 14            [ 1] 2665 	jreq	00107$
      00A610 7B 03            [ 1] 2666 	ld	a, (0x03, sp)
      00A612 4A               [ 1] 2667 	dec	a
      00A613 27 0F            [ 1] 2668 	jreq	00107$
      00A615 4B 3C            [ 1] 2669 	push	#0x3c
      00A617 4B 05            [ 1] 2670 	push	#0x05
      00A619 5F               [ 1] 2671 	clrw	x
      00A61A 89               [ 2] 2672 	pushw	x
      00A61B 4B 6A            [ 1] 2673 	push	#<(___str_0+0)
      00A61D 4B 81            [ 1] 2674 	push	#((___str_0+0) >> 8)
      00A61F CD 83 84         [ 4] 2675 	call	_assert_failed
      00A622 5B 06            [ 2] 2676 	addw	sp, #6
      00A624                       2677 00107$:
                                   2678 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1345: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
      00A624 C6 52 5A         [ 1] 2679 	ld	a, 0x525a
                                   2680 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1343: if (NewState != DISABLE)
      00A627 0D 03            [ 1] 2681 	tnz	(0x03, sp)
      00A629 27 06            [ 1] 2682 	jreq	00102$
                                   2683 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1345: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
      00A62B AA 04            [ 1] 2684 	or	a, #0x04
      00A62D C7 52 5A         [ 1] 2685 	ld	0x525a, a
      00A630 81               [ 4] 2686 	ret
      00A631                       2687 00102$:
                                   2688 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1349: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      00A631 A4 FB            [ 1] 2689 	and	a, #0xfb
      00A633 C7 52 5A         [ 1] 2690 	ld	0x525a, a
                                   2691 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1351: }
      00A636 81               [ 4] 2692 	ret
                                   2693 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1359: void TIM1_OC4FastConfig(FunctionalState NewState)
                                   2694 ;	-----------------------------------------
                                   2695 ;	 function TIM1_OC4FastConfig
                                   2696 ;	-----------------------------------------
      00A637                       2697 _TIM1_OC4FastConfig:
                                   2698 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1362: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A637 0D 03            [ 1] 2699 	tnz	(0x03, sp)
      00A639 27 14            [ 1] 2700 	jreq	00107$
      00A63B 7B 03            [ 1] 2701 	ld	a, (0x03, sp)
      00A63D 4A               [ 1] 2702 	dec	a
      00A63E 27 0F            [ 1] 2703 	jreq	00107$
      00A640 4B 52            [ 1] 2704 	push	#0x52
      00A642 4B 05            [ 1] 2705 	push	#0x05
      00A644 5F               [ 1] 2706 	clrw	x
      00A645 89               [ 2] 2707 	pushw	x
      00A646 4B 6A            [ 1] 2708 	push	#<(___str_0+0)
      00A648 4B 81            [ 1] 2709 	push	#((___str_0+0) >> 8)
      00A64A CD 83 84         [ 4] 2710 	call	_assert_failed
      00A64D 5B 06            [ 2] 2711 	addw	sp, #6
      00A64F                       2712 00107$:
                                   2713 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1367: TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
      00A64F C6 52 5B         [ 1] 2714 	ld	a, 0x525b
                                   2715 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1365: if (NewState != DISABLE)
      00A652 0D 03            [ 1] 2716 	tnz	(0x03, sp)
      00A654 27 06            [ 1] 2717 	jreq	00102$
                                   2718 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1367: TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
      00A656 AA 04            [ 1] 2719 	or	a, #0x04
      00A658 C7 52 5B         [ 1] 2720 	ld	0x525b, a
      00A65B 81               [ 4] 2721 	ret
      00A65C                       2722 00102$:
                                   2723 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1371: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      00A65C A4 FB            [ 1] 2724 	and	a, #0xfb
      00A65E C7 52 5B         [ 1] 2725 	ld	0x525b, a
                                   2726 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1373: }
      00A661 81               [ 4] 2727 	ret
                                   2728 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1389: void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
                                   2729 ;	-----------------------------------------
                                   2730 ;	 function TIM1_GenerateEvent
                                   2731 ;	-----------------------------------------
      00A662                       2732 _TIM1_GenerateEvent:
                                   2733 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1392: assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
      00A662 0D 03            [ 1] 2734 	tnz	(0x03, sp)
      00A664 26 0F            [ 1] 2735 	jrne	00104$
      00A666 4B 70            [ 1] 2736 	push	#0x70
      00A668 4B 05            [ 1] 2737 	push	#0x05
      00A66A 5F               [ 1] 2738 	clrw	x
      00A66B 89               [ 2] 2739 	pushw	x
      00A66C 4B 6A            [ 1] 2740 	push	#<(___str_0+0)
      00A66E 4B 81            [ 1] 2741 	push	#((___str_0+0) >> 8)
      00A670 CD 83 84         [ 4] 2742 	call	_assert_failed
      00A673 5B 06            [ 2] 2743 	addw	sp, #6
      00A675                       2744 00104$:
                                   2745 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1395: TIM1->EGR = (uint8_t)TIM1_EventSource;
      00A675 AE 52 57         [ 2] 2746 	ldw	x, #0x5257
      00A678 7B 03            [ 1] 2747 	ld	a, (0x03, sp)
      00A67A F7               [ 1] 2748 	ld	(x), a
                                   2749 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1396: }
      00A67B 81               [ 4] 2750 	ret
                                   2751 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1406: void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2752 ;	-----------------------------------------
                                   2753 ;	 function TIM1_OC1PolarityConfig
                                   2754 ;	-----------------------------------------
      00A67C                       2755 _TIM1_OC1PolarityConfig:
                                   2756 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1409: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00A67C 0D 03            [ 1] 2757 	tnz	(0x03, sp)
      00A67E 27 15            [ 1] 2758 	jreq	00107$
      00A680 7B 03            [ 1] 2759 	ld	a, (0x03, sp)
      00A682 A1 22            [ 1] 2760 	cp	a, #0x22
      00A684 27 0F            [ 1] 2761 	jreq	00107$
      00A686 4B 81            [ 1] 2762 	push	#0x81
      00A688 4B 05            [ 1] 2763 	push	#0x05
      00A68A 5F               [ 1] 2764 	clrw	x
      00A68B 89               [ 2] 2765 	pushw	x
      00A68C 4B 6A            [ 1] 2766 	push	#<(___str_0+0)
      00A68E 4B 81            [ 1] 2767 	push	#((___str_0+0) >> 8)
      00A690 CD 83 84         [ 4] 2768 	call	_assert_failed
      00A693 5B 06            [ 2] 2769 	addw	sp, #6
      00A695                       2770 00107$:
                                   2771 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1414: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00A695 C6 52 5C         [ 1] 2772 	ld	a, 0x525c
                                   2773 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1412: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      00A698 0D 03            [ 1] 2774 	tnz	(0x03, sp)
      00A69A 27 06            [ 1] 2775 	jreq	00102$
                                   2776 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1414: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00A69C AA 02            [ 1] 2777 	or	a, #0x02
      00A69E C7 52 5C         [ 1] 2778 	ld	0x525c, a
      00A6A1 81               [ 4] 2779 	ret
      00A6A2                       2780 00102$:
                                   2781 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1418: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      00A6A2 A4 FD            [ 1] 2782 	and	a, #0xfd
      00A6A4 C7 52 5C         [ 1] 2783 	ld	0x525c, a
                                   2784 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1420: }
      00A6A7 81               [ 4] 2785 	ret
                                   2786 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1430: void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   2787 ;	-----------------------------------------
                                   2788 ;	 function TIM1_OC1NPolarityConfig
                                   2789 ;	-----------------------------------------
      00A6A8                       2790 _TIM1_OC1NPolarityConfig:
                                   2791 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1433: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      00A6A8 0D 03            [ 1] 2792 	tnz	(0x03, sp)
      00A6AA 27 15            [ 1] 2793 	jreq	00107$
      00A6AC 7B 03            [ 1] 2794 	ld	a, (0x03, sp)
      00A6AE A1 88            [ 1] 2795 	cp	a, #0x88
      00A6B0 27 0F            [ 1] 2796 	jreq	00107$
      00A6B2 4B 99            [ 1] 2797 	push	#0x99
      00A6B4 4B 05            [ 1] 2798 	push	#0x05
      00A6B6 5F               [ 1] 2799 	clrw	x
      00A6B7 89               [ 2] 2800 	pushw	x
      00A6B8 4B 6A            [ 1] 2801 	push	#<(___str_0+0)
      00A6BA 4B 81            [ 1] 2802 	push	#((___str_0+0) >> 8)
      00A6BC CD 83 84         [ 4] 2803 	call	_assert_failed
      00A6BF 5B 06            [ 2] 2804 	addw	sp, #6
      00A6C1                       2805 00107$:
                                   2806 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1438: TIM1->CCER1 |= TIM1_CCER1_CC1NP;
      00A6C1 C6 52 5C         [ 1] 2807 	ld	a, 0x525c
                                   2808 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1436: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      00A6C4 0D 03            [ 1] 2809 	tnz	(0x03, sp)
      00A6C6 27 06            [ 1] 2810 	jreq	00102$
                                   2811 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1438: TIM1->CCER1 |= TIM1_CCER1_CC1NP;
      00A6C8 AA 08            [ 1] 2812 	or	a, #0x08
      00A6CA C7 52 5C         [ 1] 2813 	ld	0x525c, a
      00A6CD 81               [ 4] 2814 	ret
      00A6CE                       2815 00102$:
                                   2816 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1442: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
      00A6CE A4 F7            [ 1] 2817 	and	a, #0xf7
      00A6D0 C7 52 5C         [ 1] 2818 	ld	0x525c, a
                                   2819 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1444: }
      00A6D3 81               [ 4] 2820 	ret
                                   2821 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1454: void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2822 ;	-----------------------------------------
                                   2823 ;	 function TIM1_OC2PolarityConfig
                                   2824 ;	-----------------------------------------
      00A6D4                       2825 _TIM1_OC2PolarityConfig:
                                   2826 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1457: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00A6D4 0D 03            [ 1] 2827 	tnz	(0x03, sp)
      00A6D6 27 15            [ 1] 2828 	jreq	00107$
      00A6D8 7B 03            [ 1] 2829 	ld	a, (0x03, sp)
      00A6DA A1 22            [ 1] 2830 	cp	a, #0x22
      00A6DC 27 0F            [ 1] 2831 	jreq	00107$
      00A6DE 4B B1            [ 1] 2832 	push	#0xb1
      00A6E0 4B 05            [ 1] 2833 	push	#0x05
      00A6E2 5F               [ 1] 2834 	clrw	x
      00A6E3 89               [ 2] 2835 	pushw	x
      00A6E4 4B 6A            [ 1] 2836 	push	#<(___str_0+0)
      00A6E6 4B 81            [ 1] 2837 	push	#((___str_0+0) >> 8)
      00A6E8 CD 83 84         [ 4] 2838 	call	_assert_failed
      00A6EB 5B 06            [ 2] 2839 	addw	sp, #6
      00A6ED                       2840 00107$:
                                   2841 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1462: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      00A6ED C6 52 5C         [ 1] 2842 	ld	a, 0x525c
                                   2843 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1460: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      00A6F0 0D 03            [ 1] 2844 	tnz	(0x03, sp)
      00A6F2 27 06            [ 1] 2845 	jreq	00102$
                                   2846 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1462: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      00A6F4 AA 20            [ 1] 2847 	or	a, #0x20
      00A6F6 C7 52 5C         [ 1] 2848 	ld	0x525c, a
      00A6F9 81               [ 4] 2849 	ret
      00A6FA                       2850 00102$:
                                   2851 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1466: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      00A6FA A4 DF            [ 1] 2852 	and	a, #0xdf
      00A6FC C7 52 5C         [ 1] 2853 	ld	0x525c, a
                                   2854 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1468: }
      00A6FF 81               [ 4] 2855 	ret
                                   2856 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1478: void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   2857 ;	-----------------------------------------
                                   2858 ;	 function TIM1_OC2NPolarityConfig
                                   2859 ;	-----------------------------------------
      00A700                       2860 _TIM1_OC2NPolarityConfig:
                                   2861 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1481: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      00A700 0D 03            [ 1] 2862 	tnz	(0x03, sp)
      00A702 27 15            [ 1] 2863 	jreq	00107$
      00A704 7B 03            [ 1] 2864 	ld	a, (0x03, sp)
      00A706 A1 88            [ 1] 2865 	cp	a, #0x88
      00A708 27 0F            [ 1] 2866 	jreq	00107$
      00A70A 4B C9            [ 1] 2867 	push	#0xc9
      00A70C 4B 05            [ 1] 2868 	push	#0x05
      00A70E 5F               [ 1] 2869 	clrw	x
      00A70F 89               [ 2] 2870 	pushw	x
      00A710 4B 6A            [ 1] 2871 	push	#<(___str_0+0)
      00A712 4B 81            [ 1] 2872 	push	#((___str_0+0) >> 8)
      00A714 CD 83 84         [ 4] 2873 	call	_assert_failed
      00A717 5B 06            [ 2] 2874 	addw	sp, #6
      00A719                       2875 00107$:
                                   2876 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1486: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
      00A719 C6 52 5C         [ 1] 2877 	ld	a, 0x525c
                                   2878 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1484: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      00A71C 0D 03            [ 1] 2879 	tnz	(0x03, sp)
      00A71E 27 06            [ 1] 2880 	jreq	00102$
                                   2881 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1486: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
      00A720 AA 80            [ 1] 2882 	or	a, #0x80
      00A722 C7 52 5C         [ 1] 2883 	ld	0x525c, a
      00A725 81               [ 4] 2884 	ret
      00A726                       2885 00102$:
                                   2886 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1490: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
      00A726 A4 7F            [ 1] 2887 	and	a, #0x7f
      00A728 C7 52 5C         [ 1] 2888 	ld	0x525c, a
                                   2889 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1492: }
      00A72B 81               [ 4] 2890 	ret
                                   2891 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1502: void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2892 ;	-----------------------------------------
                                   2893 ;	 function TIM1_OC3PolarityConfig
                                   2894 ;	-----------------------------------------
      00A72C                       2895 _TIM1_OC3PolarityConfig:
                                   2896 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1505: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00A72C 0D 03            [ 1] 2897 	tnz	(0x03, sp)
      00A72E 27 15            [ 1] 2898 	jreq	00107$
      00A730 7B 03            [ 1] 2899 	ld	a, (0x03, sp)
      00A732 A1 22            [ 1] 2900 	cp	a, #0x22
      00A734 27 0F            [ 1] 2901 	jreq	00107$
      00A736 4B E1            [ 1] 2902 	push	#0xe1
      00A738 4B 05            [ 1] 2903 	push	#0x05
      00A73A 5F               [ 1] 2904 	clrw	x
      00A73B 89               [ 2] 2905 	pushw	x
      00A73C 4B 6A            [ 1] 2906 	push	#<(___str_0+0)
      00A73E 4B 81            [ 1] 2907 	push	#((___str_0+0) >> 8)
      00A740 CD 83 84         [ 4] 2908 	call	_assert_failed
      00A743 5B 06            [ 2] 2909 	addw	sp, #6
      00A745                       2910 00107$:
                                   2911 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1510: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      00A745 C6 52 5D         [ 1] 2912 	ld	a, 0x525d
                                   2913 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1508: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      00A748 0D 03            [ 1] 2914 	tnz	(0x03, sp)
      00A74A 27 06            [ 1] 2915 	jreq	00102$
                                   2916 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1510: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      00A74C AA 02            [ 1] 2917 	or	a, #0x02
      00A74E C7 52 5D         [ 1] 2918 	ld	0x525d, a
      00A751 81               [ 4] 2919 	ret
      00A752                       2920 00102$:
                                   2921 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1514: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      00A752 A4 FD            [ 1] 2922 	and	a, #0xfd
      00A754 C7 52 5D         [ 1] 2923 	ld	0x525d, a
                                   2924 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1516: }
      00A757 81               [ 4] 2925 	ret
                                   2926 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1527: void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   2927 ;	-----------------------------------------
                                   2928 ;	 function TIM1_OC3NPolarityConfig
                                   2929 ;	-----------------------------------------
      00A758                       2930 _TIM1_OC3NPolarityConfig:
                                   2931 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1530: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
      00A758 0D 03            [ 1] 2932 	tnz	(0x03, sp)
      00A75A 27 15            [ 1] 2933 	jreq	00107$
      00A75C 7B 03            [ 1] 2934 	ld	a, (0x03, sp)
      00A75E A1 88            [ 1] 2935 	cp	a, #0x88
      00A760 27 0F            [ 1] 2936 	jreq	00107$
      00A762 4B FA            [ 1] 2937 	push	#0xfa
      00A764 4B 05            [ 1] 2938 	push	#0x05
      00A766 5F               [ 1] 2939 	clrw	x
      00A767 89               [ 2] 2940 	pushw	x
      00A768 4B 6A            [ 1] 2941 	push	#<(___str_0+0)
      00A76A 4B 81            [ 1] 2942 	push	#((___str_0+0) >> 8)
      00A76C CD 83 84         [ 4] 2943 	call	_assert_failed
      00A76F 5B 06            [ 2] 2944 	addw	sp, #6
      00A771                       2945 00107$:
                                   2946 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1535: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
      00A771 C6 52 5D         [ 1] 2947 	ld	a, 0x525d
                                   2948 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1533: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      00A774 0D 03            [ 1] 2949 	tnz	(0x03, sp)
      00A776 27 06            [ 1] 2950 	jreq	00102$
                                   2951 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1535: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
      00A778 AA 08            [ 1] 2952 	or	a, #0x08
      00A77A C7 52 5D         [ 1] 2953 	ld	0x525d, a
      00A77D 81               [ 4] 2954 	ret
      00A77E                       2955 00102$:
                                   2956 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1539: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
      00A77E A4 F7            [ 1] 2957 	and	a, #0xf7
      00A780 C7 52 5D         [ 1] 2958 	ld	0x525d, a
                                   2959 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1541: }
      00A783 81               [ 4] 2960 	ret
                                   2961 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1551: void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   2962 ;	-----------------------------------------
                                   2963 ;	 function TIM1_OC4PolarityConfig
                                   2964 ;	-----------------------------------------
      00A784                       2965 _TIM1_OC4PolarityConfig:
                                   2966 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1554: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
      00A784 0D 03            [ 1] 2967 	tnz	(0x03, sp)
      00A786 27 15            [ 1] 2968 	jreq	00107$
      00A788 7B 03            [ 1] 2969 	ld	a, (0x03, sp)
      00A78A A1 22            [ 1] 2970 	cp	a, #0x22
      00A78C 27 0F            [ 1] 2971 	jreq	00107$
      00A78E 4B 12            [ 1] 2972 	push	#0x12
      00A790 4B 06            [ 1] 2973 	push	#0x06
      00A792 5F               [ 1] 2974 	clrw	x
      00A793 89               [ 2] 2975 	pushw	x
      00A794 4B 6A            [ 1] 2976 	push	#<(___str_0+0)
      00A796 4B 81            [ 1] 2977 	push	#((___str_0+0) >> 8)
      00A798 CD 83 84         [ 4] 2978 	call	_assert_failed
      00A79B 5B 06            [ 2] 2979 	addw	sp, #6
      00A79D                       2980 00107$:
                                   2981 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1559: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      00A79D C6 52 5D         [ 1] 2982 	ld	a, 0x525d
                                   2983 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1557: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      00A7A0 0D 03            [ 1] 2984 	tnz	(0x03, sp)
      00A7A2 27 06            [ 1] 2985 	jreq	00102$
                                   2986 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1559: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      00A7A4 AA 20            [ 1] 2987 	or	a, #0x20
      00A7A6 C7 52 5D         [ 1] 2988 	ld	0x525d, a
      00A7A9 81               [ 4] 2989 	ret
      00A7AA                       2990 00102$:
                                   2991 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1563: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      00A7AA A4 DF            [ 1] 2992 	and	a, #0xdf
      00A7AC C7 52 5D         [ 1] 2993 	ld	0x525d, a
                                   2994 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1565: }
      00A7AF 81               [ 4] 2995 	ret
                                   2996 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1579: void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
                                   2997 ;	-----------------------------------------
                                   2998 ;	 function TIM1_CCxCmd
                                   2999 ;	-----------------------------------------
      00A7B0                       3000 _TIM1_CCxCmd:
      00A7B0 89               [ 2] 3001 	pushw	x
                                   3002 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1582: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      00A7B1 7B 05            [ 1] 3003 	ld	a, (0x05, sp)
      00A7B3 4A               [ 1] 3004 	dec	a
      00A7B4 26 05            [ 1] 3005 	jrne	00206$
      00A7B6 A6 01            [ 1] 3006 	ld	a, #0x01
      00A7B8 6B 01            [ 1] 3007 	ld	(0x01, sp), a
      00A7BA C5                    3008 	.byte 0xc5
      00A7BB                       3009 00206$:
      00A7BB 0F 01            [ 1] 3010 	clr	(0x01, sp)
      00A7BD                       3011 00207$:
      00A7BD 7B 05            [ 1] 3012 	ld	a, (0x05, sp)
      00A7BF A0 02            [ 1] 3013 	sub	a, #0x02
      00A7C1 26 04            [ 1] 3014 	jrne	00209$
      00A7C3 4C               [ 1] 3015 	inc	a
      00A7C4 6B 02            [ 1] 3016 	ld	(0x02, sp), a
      00A7C6 C5                    3017 	.byte 0xc5
      00A7C7                       3018 00209$:
      00A7C7 0F 02            [ 1] 3019 	clr	(0x02, sp)
      00A7C9                       3020 00210$:
      00A7C9 0D 05            [ 1] 3021 	tnz	(0x05, sp)
      00A7CB 27 1D            [ 1] 3022 	jreq	00125$
      00A7CD 0D 01            [ 1] 3023 	tnz	(0x01, sp)
      00A7CF 26 19            [ 1] 3024 	jrne	00125$
      00A7D1 0D 02            [ 1] 3025 	tnz	(0x02, sp)
      00A7D3 26 15            [ 1] 3026 	jrne	00125$
      00A7D5 7B 05            [ 1] 3027 	ld	a, (0x05, sp)
      00A7D7 A1 03            [ 1] 3028 	cp	a, #0x03
      00A7D9 27 0F            [ 1] 3029 	jreq	00125$
      00A7DB 4B 2E            [ 1] 3030 	push	#0x2e
      00A7DD 4B 06            [ 1] 3031 	push	#0x06
      00A7DF 5F               [ 1] 3032 	clrw	x
      00A7E0 89               [ 2] 3033 	pushw	x
      00A7E1 4B 6A            [ 1] 3034 	push	#<(___str_0+0)
      00A7E3 4B 81            [ 1] 3035 	push	#((___str_0+0) >> 8)
      00A7E5 CD 83 84         [ 4] 3036 	call	_assert_failed
      00A7E8 5B 06            [ 2] 3037 	addw	sp, #6
      00A7EA                       3038 00125$:
                                   3039 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1583: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A7EA 0D 06            [ 1] 3040 	tnz	(0x06, sp)
      00A7EC 27 14            [ 1] 3041 	jreq	00136$
      00A7EE 7B 06            [ 1] 3042 	ld	a, (0x06, sp)
      00A7F0 4A               [ 1] 3043 	dec	a
      00A7F1 27 0F            [ 1] 3044 	jreq	00136$
      00A7F3 4B 2F            [ 1] 3045 	push	#0x2f
      00A7F5 4B 06            [ 1] 3046 	push	#0x06
      00A7F7 5F               [ 1] 3047 	clrw	x
      00A7F8 89               [ 2] 3048 	pushw	x
      00A7F9 4B 6A            [ 1] 3049 	push	#<(___str_0+0)
      00A7FB 4B 81            [ 1] 3050 	push	#((___str_0+0) >> 8)
      00A7FD CD 83 84         [ 4] 3051 	call	_assert_failed
      00A800 5B 06            [ 2] 3052 	addw	sp, #6
      00A802                       3053 00136$:
                                   3054 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1585: if (TIM1_Channel == TIM1_CHANNEL_1)
      00A802 0D 05            [ 1] 3055 	tnz	(0x05, sp)
      00A804 26 15            [ 1] 3056 	jrne	00120$
                                   3057 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      00A806 C6 52 5C         [ 1] 3058 	ld	a, 0x525c
                                   3059 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1588: if (NewState != DISABLE)
      00A809 0D 06            [ 1] 3060 	tnz	(0x06, sp)
      00A80B 27 07            [ 1] 3061 	jreq	00102$
                                   3062 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      00A80D AA 01            [ 1] 3063 	or	a, #0x01
      00A80F C7 52 5C         [ 1] 3064 	ld	0x525c, a
      00A812 20 4E            [ 2] 3065 	jra	00122$
      00A814                       3066 00102$:
                                   3067 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1594: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      00A814 A4 FE            [ 1] 3068 	and	a, #0xfe
      00A816 C7 52 5C         [ 1] 3069 	ld	0x525c, a
      00A819 20 47            [ 2] 3070 	jra	00122$
      00A81B                       3071 00120$:
                                   3072 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1598: else if (TIM1_Channel == TIM1_CHANNEL_2)
      00A81B 7B 01            [ 1] 3073 	ld	a, (0x01, sp)
      00A81D 27 15            [ 1] 3074 	jreq	00117$
                                   3075 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      00A81F C6 52 5C         [ 1] 3076 	ld	a, 0x525c
                                   3077 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1601: if (NewState != DISABLE)
      00A822 0D 06            [ 1] 3078 	tnz	(0x06, sp)
      00A824 27 07            [ 1] 3079 	jreq	00105$
                                   3080 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1603: TIM1->CCER1 |= TIM1_CCER1_CC2E;
      00A826 AA 10            [ 1] 3081 	or	a, #0x10
      00A828 C7 52 5C         [ 1] 3082 	ld	0x525c, a
      00A82B 20 35            [ 2] 3083 	jra	00122$
      00A82D                       3084 00105$:
                                   3085 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1607: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      00A82D A4 EF            [ 1] 3086 	and	a, #0xef
      00A82F C7 52 5C         [ 1] 3087 	ld	0x525c, a
      00A832 20 2E            [ 2] 3088 	jra	00122$
      00A834                       3089 00117$:
                                   3090 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1615: TIM1->CCER2 |= TIM1_CCER2_CC3E;
      00A834 C6 52 5D         [ 1] 3091 	ld	a, 0x525d
                                   3092 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1610: else if (TIM1_Channel == TIM1_CHANNEL_3)
      00A837 41               [ 1] 3093 	exg	a, xl
      00A838 7B 02            [ 1] 3094 	ld	a, (0x02, sp)
      00A83A 41               [ 1] 3095 	exg	a, xl
      00A83B 41               [ 1] 3096 	exg	a, xl
      00A83C 4D               [ 1] 3097 	tnz	a
      00A83D 41               [ 1] 3098 	exg	a, xl
      00A83E 27 12            [ 1] 3099 	jreq	00114$
                                   3100 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1613: if (NewState != DISABLE)
      00A840 0D 06            [ 1] 3101 	tnz	(0x06, sp)
      00A842 27 07            [ 1] 3102 	jreq	00108$
                                   3103 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1615: TIM1->CCER2 |= TIM1_CCER2_CC3E;
      00A844 AA 01            [ 1] 3104 	or	a, #0x01
      00A846 C7 52 5D         [ 1] 3105 	ld	0x525d, a
      00A849 20 17            [ 2] 3106 	jra	00122$
      00A84B                       3107 00108$:
                                   3108 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1619: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      00A84B A4 FE            [ 1] 3109 	and	a, #0xfe
      00A84D C7 52 5D         [ 1] 3110 	ld	0x525d, a
      00A850 20 10            [ 2] 3111 	jra	00122$
      00A852                       3112 00114$:
                                   3113 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1625: if (NewState != DISABLE)
      00A852 0D 06            [ 1] 3114 	tnz	(0x06, sp)
      00A854 27 07            [ 1] 3115 	jreq	00111$
                                   3116 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1627: TIM1->CCER2 |= TIM1_CCER2_CC4E;
      00A856 AA 10            [ 1] 3117 	or	a, #0x10
      00A858 C7 52 5D         [ 1] 3118 	ld	0x525d, a
      00A85B 20 05            [ 2] 3119 	jra	00122$
      00A85D                       3120 00111$:
                                   3121 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1631: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      00A85D A4 EF            [ 1] 3122 	and	a, #0xef
      00A85F C7 52 5D         [ 1] 3123 	ld	0x525d, a
      00A862                       3124 00122$:
                                   3125 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1634: }
      00A862 85               [ 2] 3126 	popw	x
      00A863 81               [ 4] 3127 	ret
                                   3128 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1647: void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
                                   3129 ;	-----------------------------------------
                                   3130 ;	 function TIM1_CCxNCmd
                                   3131 ;	-----------------------------------------
      00A864                       3132 _TIM1_CCxNCmd:
      00A864 88               [ 1] 3133 	push	a
                                   3134 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1650: assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
      00A865 7B 04            [ 1] 3135 	ld	a, (0x04, sp)
      00A867 4A               [ 1] 3136 	dec	a
      00A868 26 05            [ 1] 3137 	jrne	00182$
      00A86A A6 01            [ 1] 3138 	ld	a, #0x01
      00A86C 6B 01            [ 1] 3139 	ld	(0x01, sp), a
      00A86E C5                    3140 	.byte 0xc5
      00A86F                       3141 00182$:
      00A86F 0F 01            [ 1] 3142 	clr	(0x01, sp)
      00A871                       3143 00183$:
      00A871 0D 04            [ 1] 3144 	tnz	(0x04, sp)
      00A873 27 19            [ 1] 3145 	jreq	00119$
      00A875 0D 01            [ 1] 3146 	tnz	(0x01, sp)
      00A877 26 15            [ 1] 3147 	jrne	00119$
      00A879 7B 04            [ 1] 3148 	ld	a, (0x04, sp)
      00A87B A1 02            [ 1] 3149 	cp	a, #0x02
      00A87D 27 0F            [ 1] 3150 	jreq	00119$
      00A87F 4B 72            [ 1] 3151 	push	#0x72
      00A881 4B 06            [ 1] 3152 	push	#0x06
      00A883 5F               [ 1] 3153 	clrw	x
      00A884 89               [ 2] 3154 	pushw	x
      00A885 4B 6A            [ 1] 3155 	push	#<(___str_0+0)
      00A887 4B 81            [ 1] 3156 	push	#((___str_0+0) >> 8)
      00A889 CD 83 84         [ 4] 3157 	call	_assert_failed
      00A88C 5B 06            [ 2] 3158 	addw	sp, #6
      00A88E                       3159 00119$:
                                   3160 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1651: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
      00A88E 0D 05            [ 1] 3161 	tnz	(0x05, sp)
      00A890 27 14            [ 1] 3162 	jreq	00127$
      00A892 7B 05            [ 1] 3163 	ld	a, (0x05, sp)
      00A894 4A               [ 1] 3164 	dec	a
      00A895 27 0F            [ 1] 3165 	jreq	00127$
      00A897 4B 73            [ 1] 3166 	push	#0x73
      00A899 4B 06            [ 1] 3167 	push	#0x06
      00A89B 5F               [ 1] 3168 	clrw	x
      00A89C 89               [ 2] 3169 	pushw	x
      00A89D 4B 6A            [ 1] 3170 	push	#<(___str_0+0)
      00A89F 4B 81            [ 1] 3171 	push	#((___str_0+0) >> 8)
      00A8A1 CD 83 84         [ 4] 3172 	call	_assert_failed
      00A8A4 5B 06            [ 2] 3173 	addw	sp, #6
      00A8A6                       3174 00127$:
                                   3175 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1653: if (TIM1_Channel == TIM1_CHANNEL_1)
      00A8A6 0D 04            [ 1] 3176 	tnz	(0x04, sp)
      00A8A8 26 15            [ 1] 3177 	jrne	00114$
                                   3178 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      00A8AA C6 52 5C         [ 1] 3179 	ld	a, 0x525c
                                   3180 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1656: if (NewState != DISABLE)
      00A8AD 0D 05            [ 1] 3181 	tnz	(0x05, sp)
      00A8AF 27 07            [ 1] 3182 	jreq	00102$
                                   3183 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      00A8B1 AA 04            [ 1] 3184 	or	a, #0x04
      00A8B3 C7 52 5C         [ 1] 3185 	ld	0x525c, a
      00A8B6 20 33            [ 2] 3186 	jra	00116$
      00A8B8                       3187 00102$:
                                   3188 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1662: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
      00A8B8 A4 FB            [ 1] 3189 	and	a, #0xfb
      00A8BA C7 52 5C         [ 1] 3190 	ld	0x525c, a
      00A8BD 20 2C            [ 2] 3191 	jra	00116$
      00A8BF                       3192 00114$:
                                   3193 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1665: else if (TIM1_Channel == TIM1_CHANNEL_2)
      00A8BF 7B 01            [ 1] 3194 	ld	a, (0x01, sp)
      00A8C1 27 15            [ 1] 3195 	jreq	00111$
                                   3196 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      00A8C3 C6 52 5C         [ 1] 3197 	ld	a, 0x525c
                                   3198 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1668: if (NewState != DISABLE)
      00A8C6 0D 05            [ 1] 3199 	tnz	(0x05, sp)
      00A8C8 27 07            [ 1] 3200 	jreq	00105$
                                   3201 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1670: TIM1->CCER1 |= TIM1_CCER1_CC2NE;
      00A8CA AA 40            [ 1] 3202 	or	a, #0x40
      00A8CC C7 52 5C         [ 1] 3203 	ld	0x525c, a
      00A8CF 20 1A            [ 2] 3204 	jra	00116$
      00A8D1                       3205 00105$:
                                   3206 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1674: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
      00A8D1 A4 BF            [ 1] 3207 	and	a, #0xbf
      00A8D3 C7 52 5C         [ 1] 3208 	ld	0x525c, a
      00A8D6 20 13            [ 2] 3209 	jra	00116$
      00A8D8                       3210 00111$:
                                   3211 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1682: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
      00A8D8 C6 52 5D         [ 1] 3212 	ld	a, 0x525d
                                   3213 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1680: if (NewState != DISABLE)
      00A8DB 0D 05            [ 1] 3214 	tnz	(0x05, sp)
      00A8DD 27 07            [ 1] 3215 	jreq	00108$
                                   3216 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1682: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
      00A8DF AA 04            [ 1] 3217 	or	a, #0x04
      00A8E1 C7 52 5D         [ 1] 3218 	ld	0x525d, a
      00A8E4 20 05            [ 2] 3219 	jra	00116$
      00A8E6                       3220 00108$:
                                   3221 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1686: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
      00A8E6 A4 FB            [ 1] 3222 	and	a, #0xfb
      00A8E8 C7 52 5D         [ 1] 3223 	ld	0x525d, a
      00A8EB                       3224 00116$:
                                   3225 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1689: }
      00A8EB 84               [ 1] 3226 	pop	a
      00A8EC 81               [ 4] 3227 	ret
                                   3228 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1712: void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
                                   3229 ;	-----------------------------------------
                                   3230 ;	 function TIM1_SelectOCxM
                                   3231 ;	-----------------------------------------
      00A8ED                       3232 _TIM1_SelectOCxM:
      00A8ED 89               [ 2] 3233 	pushw	x
                                   3234 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1715: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
      00A8EE 7B 05            [ 1] 3235 	ld	a, (0x05, sp)
      00A8F0 4A               [ 1] 3236 	dec	a
      00A8F1 26 05            [ 1] 3237 	jrne	00222$
      00A8F3 A6 01            [ 1] 3238 	ld	a, #0x01
      00A8F5 6B 01            [ 1] 3239 	ld	(0x01, sp), a
      00A8F7 C5                    3240 	.byte 0xc5
      00A8F8                       3241 00222$:
      00A8F8 0F 01            [ 1] 3242 	clr	(0x01, sp)
      00A8FA                       3243 00223$:
      00A8FA 7B 05            [ 1] 3244 	ld	a, (0x05, sp)
      00A8FC A0 02            [ 1] 3245 	sub	a, #0x02
      00A8FE 26 04            [ 1] 3246 	jrne	00225$
      00A900 4C               [ 1] 3247 	inc	a
      00A901 6B 02            [ 1] 3248 	ld	(0x02, sp), a
      00A903 C5                    3249 	.byte 0xc5
      00A904                       3250 00225$:
      00A904 0F 02            [ 1] 3251 	clr	(0x02, sp)
      00A906                       3252 00226$:
      00A906 0D 05            [ 1] 3253 	tnz	(0x05, sp)
      00A908 27 1D            [ 1] 3254 	jreq	00113$
      00A90A 0D 01            [ 1] 3255 	tnz	(0x01, sp)
      00A90C 26 19            [ 1] 3256 	jrne	00113$
      00A90E 0D 02            [ 1] 3257 	tnz	(0x02, sp)
      00A910 26 15            [ 1] 3258 	jrne	00113$
      00A912 7B 05            [ 1] 3259 	ld	a, (0x05, sp)
      00A914 A1 03            [ 1] 3260 	cp	a, #0x03
      00A916 27 0F            [ 1] 3261 	jreq	00113$
      00A918 4B B3            [ 1] 3262 	push	#0xb3
      00A91A 4B 06            [ 1] 3263 	push	#0x06
      00A91C 5F               [ 1] 3264 	clrw	x
      00A91D 89               [ 2] 3265 	pushw	x
      00A91E 4B 6A            [ 1] 3266 	push	#<(___str_0+0)
      00A920 4B 81            [ 1] 3267 	push	#((___str_0+0) >> 8)
      00A922 CD 83 84         [ 4] 3268 	call	_assert_failed
      00A925 5B 06            [ 2] 3269 	addw	sp, #6
      00A927                       3270 00113$:
                                   3271 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1716: assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
      00A927 0D 06            [ 1] 3272 	tnz	(0x06, sp)
      00A929 27 39            [ 1] 3273 	jreq	00124$
      00A92B 7B 06            [ 1] 3274 	ld	a, (0x06, sp)
      00A92D A1 10            [ 1] 3275 	cp	a, #0x10
      00A92F 27 33            [ 1] 3276 	jreq	00124$
      00A931 7B 06            [ 1] 3277 	ld	a, (0x06, sp)
      00A933 A1 20            [ 1] 3278 	cp	a, #0x20
      00A935 27 2D            [ 1] 3279 	jreq	00124$
      00A937 7B 06            [ 1] 3280 	ld	a, (0x06, sp)
      00A939 A1 30            [ 1] 3281 	cp	a, #0x30
      00A93B 27 27            [ 1] 3282 	jreq	00124$
      00A93D 7B 06            [ 1] 3283 	ld	a, (0x06, sp)
      00A93F A1 60            [ 1] 3284 	cp	a, #0x60
      00A941 27 21            [ 1] 3285 	jreq	00124$
      00A943 7B 06            [ 1] 3286 	ld	a, (0x06, sp)
      00A945 A1 70            [ 1] 3287 	cp	a, #0x70
      00A947 27 1B            [ 1] 3288 	jreq	00124$
      00A949 7B 06            [ 1] 3289 	ld	a, (0x06, sp)
      00A94B A1 50            [ 1] 3290 	cp	a, #0x50
      00A94D 27 15            [ 1] 3291 	jreq	00124$
      00A94F 7B 06            [ 1] 3292 	ld	a, (0x06, sp)
      00A951 A1 40            [ 1] 3293 	cp	a, #0x40
      00A953 27 0F            [ 1] 3294 	jreq	00124$
      00A955 4B B4            [ 1] 3295 	push	#0xb4
      00A957 4B 06            [ 1] 3296 	push	#0x06
      00A959 5F               [ 1] 3297 	clrw	x
      00A95A 89               [ 2] 3298 	pushw	x
      00A95B 4B 6A            [ 1] 3299 	push	#<(___str_0+0)
      00A95D 4B 81            [ 1] 3300 	push	#((___str_0+0) >> 8)
      00A95F CD 83 84         [ 4] 3301 	call	_assert_failed
      00A962 5B 06            [ 2] 3302 	addw	sp, #6
      00A964                       3303 00124$:
                                   3304 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1718: if (TIM1_Channel == TIM1_CHANNEL_1)
      00A964 0D 05            [ 1] 3305 	tnz	(0x05, sp)
      00A966 26 10            [ 1] 3306 	jrne	00108$
                                   3307 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1721: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      00A968 72 11 52 5C      [ 1] 3308 	bres	21084, #0
                                   3309 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1724: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
      00A96C C6 52 58         [ 1] 3310 	ld	a, 0x5258
      00A96F A4 8F            [ 1] 3311 	and	a, #0x8f
                                   3312 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1725: | (uint8_t)TIM1_OCMode);
      00A971 1A 06            [ 1] 3313 	or	a, (0x06, sp)
      00A973 C7 52 58         [ 1] 3314 	ld	0x5258, a
      00A976 20 3E            [ 2] 3315 	jra	00110$
      00A978                       3316 00108$:
                                   3317 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1727: else if (TIM1_Channel == TIM1_CHANNEL_2)
      00A978 7B 01            [ 1] 3318 	ld	a, (0x01, sp)
      00A97A 27 10            [ 1] 3319 	jreq	00105$
                                   3320 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1730: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      00A97C 72 19 52 5C      [ 1] 3321 	bres	21084, #4
                                   3322 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1733: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
      00A980 C6 52 59         [ 1] 3323 	ld	a, 0x5259
      00A983 A4 8F            [ 1] 3324 	and	a, #0x8f
                                   3325 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1734: | (uint8_t)TIM1_OCMode);
      00A985 1A 06            [ 1] 3326 	or	a, (0x06, sp)
      00A987 C7 52 59         [ 1] 3327 	ld	0x5259, a
      00A98A 20 2A            [ 2] 3328 	jra	00110$
      00A98C                       3329 00105$:
                                   3330 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1739: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      00A98C C6 52 5D         [ 1] 3331 	ld	a, 0x525d
      00A98F 97               [ 1] 3332 	ld	xl, a
                                   3333 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1736: else if (TIM1_Channel == TIM1_CHANNEL_3)
      00A990 7B 02            [ 1] 3334 	ld	a, (0x02, sp)
      00A992 27 12            [ 1] 3335 	jreq	00102$
                                   3336 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1739: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      00A994 9F               [ 1] 3337 	ld	a, xl
      00A995 A4 FE            [ 1] 3338 	and	a, #0xfe
      00A997 C7 52 5D         [ 1] 3339 	ld	0x525d, a
                                   3340 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1742: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
      00A99A C6 52 5A         [ 1] 3341 	ld	a, 0x525a
      00A99D A4 8F            [ 1] 3342 	and	a, #0x8f
                                   3343 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1743: | (uint8_t)TIM1_OCMode);
      00A99F 1A 06            [ 1] 3344 	or	a, (0x06, sp)
      00A9A1 C7 52 5A         [ 1] 3345 	ld	0x525a, a
      00A9A4 20 10            [ 2] 3346 	jra	00110$
      00A9A6                       3347 00102$:
                                   3348 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1748: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      00A9A6 9F               [ 1] 3349 	ld	a, xl
      00A9A7 A4 EF            [ 1] 3350 	and	a, #0xef
      00A9A9 C7 52 5D         [ 1] 3351 	ld	0x525d, a
                                   3352 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1751: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
      00A9AC C6 52 5B         [ 1] 3353 	ld	a, 0x525b
      00A9AF A4 8F            [ 1] 3354 	and	a, #0x8f
                                   3355 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1752: | (uint8_t)TIM1_OCMode);
      00A9B1 1A 06            [ 1] 3356 	or	a, (0x06, sp)
      00A9B3 C7 52 5B         [ 1] 3357 	ld	0x525b, a
      00A9B6                       3358 00110$:
                                   3359 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1754: }
      00A9B6 85               [ 2] 3360 	popw	x
      00A9B7 81               [ 4] 3361 	ret
                                   3362 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1762: void TIM1_SetCounter(uint16_t Counter)
                                   3363 ;	-----------------------------------------
                                   3364 ;	 function TIM1_SetCounter
                                   3365 ;	-----------------------------------------
      00A9B8                       3366 _TIM1_SetCounter:
                                   3367 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1765: TIM1->CNTRH = (uint8_t)(Counter >> 8);
      00A9B8 7B 03            [ 1] 3368 	ld	a, (0x03, sp)
      00A9BA C7 52 5E         [ 1] 3369 	ld	0x525e, a
                                   3370 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1766: TIM1->CNTRL = (uint8_t)(Counter);
      00A9BD 7B 04            [ 1] 3371 	ld	a, (0x04, sp)
      00A9BF C7 52 5F         [ 1] 3372 	ld	0x525f, a
                                   3373 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1767: }
      00A9C2 81               [ 4] 3374 	ret
                                   3375 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1775: void TIM1_SetAutoreload(uint16_t Autoreload)
                                   3376 ;	-----------------------------------------
                                   3377 ;	 function TIM1_SetAutoreload
                                   3378 ;	-----------------------------------------
      00A9C3                       3379 _TIM1_SetAutoreload:
                                   3380 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1778: TIM1->ARRH = (uint8_t)(Autoreload >> 8);
      00A9C3 7B 03            [ 1] 3381 	ld	a, (0x03, sp)
      00A9C5 C7 52 62         [ 1] 3382 	ld	0x5262, a
                                   3383 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1779: TIM1->ARRL = (uint8_t)(Autoreload);
      00A9C8 7B 04            [ 1] 3384 	ld	a, (0x04, sp)
      00A9CA C7 52 63         [ 1] 3385 	ld	0x5263, a
                                   3386 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1780: }
      00A9CD 81               [ 4] 3387 	ret
                                   3388 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1788: void TIM1_SetCompare1(uint16_t Compare1)
                                   3389 ;	-----------------------------------------
                                   3390 ;	 function TIM1_SetCompare1
                                   3391 ;	-----------------------------------------
      00A9CE                       3392 _TIM1_SetCompare1:
                                   3393 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1791: TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
      00A9CE 7B 03            [ 1] 3394 	ld	a, (0x03, sp)
      00A9D0 C7 52 65         [ 1] 3395 	ld	0x5265, a
                                   3396 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1792: TIM1->CCR1L = (uint8_t)(Compare1);
      00A9D3 7B 04            [ 1] 3397 	ld	a, (0x04, sp)
      00A9D5 C7 52 66         [ 1] 3398 	ld	0x5266, a
                                   3399 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1793: }
      00A9D8 81               [ 4] 3400 	ret
                                   3401 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1801: void TIM1_SetCompare2(uint16_t Compare2)
                                   3402 ;	-----------------------------------------
                                   3403 ;	 function TIM1_SetCompare2
                                   3404 ;	-----------------------------------------
      00A9D9                       3405 _TIM1_SetCompare2:
                                   3406 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1804: TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
      00A9D9 7B 03            [ 1] 3407 	ld	a, (0x03, sp)
      00A9DB C7 52 67         [ 1] 3408 	ld	0x5267, a
                                   3409 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1805: TIM1->CCR2L = (uint8_t)(Compare2);
      00A9DE 7B 04            [ 1] 3410 	ld	a, (0x04, sp)
      00A9E0 C7 52 68         [ 1] 3411 	ld	0x5268, a
                                   3412 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1806: }
      00A9E3 81               [ 4] 3413 	ret
                                   3414 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1814: void TIM1_SetCompare3(uint16_t Compare3)
                                   3415 ;	-----------------------------------------
                                   3416 ;	 function TIM1_SetCompare3
                                   3417 ;	-----------------------------------------
      00A9E4                       3418 _TIM1_SetCompare3:
                                   3419 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1817: TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
      00A9E4 7B 03            [ 1] 3420 	ld	a, (0x03, sp)
      00A9E6 C7 52 69         [ 1] 3421 	ld	0x5269, a
                                   3422 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1818: TIM1->CCR3L = (uint8_t)(Compare3);
      00A9E9 7B 04            [ 1] 3423 	ld	a, (0x04, sp)
      00A9EB C7 52 6A         [ 1] 3424 	ld	0x526a, a
                                   3425 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1819: }
      00A9EE 81               [ 4] 3426 	ret
                                   3427 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1827: void TIM1_SetCompare4(uint16_t Compare4)
                                   3428 ;	-----------------------------------------
                                   3429 ;	 function TIM1_SetCompare4
                                   3430 ;	-----------------------------------------
      00A9EF                       3431 _TIM1_SetCompare4:
                                   3432 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1830: TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
      00A9EF 7B 03            [ 1] 3433 	ld	a, (0x03, sp)
      00A9F1 C7 52 6B         [ 1] 3434 	ld	0x526b, a
                                   3435 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1831: TIM1->CCR4L = (uint8_t)(Compare4);
      00A9F4 7B 04            [ 1] 3436 	ld	a, (0x04, sp)
      00A9F6 C7 52 6C         [ 1] 3437 	ld	0x526c, a
                                   3438 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1832: }
      00A9F9 81               [ 4] 3439 	ret
                                   3440 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1844: void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
                                   3441 ;	-----------------------------------------
                                   3442 ;	 function TIM1_SetIC1Prescaler
                                   3443 ;	-----------------------------------------
      00A9FA                       3444 _TIM1_SetIC1Prescaler:
                                   3445 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1847: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
      00A9FA 0D 03            [ 1] 3446 	tnz	(0x03, sp)
      00A9FC 27 21            [ 1] 3447 	jreq	00104$
      00A9FE 7B 03            [ 1] 3448 	ld	a, (0x03, sp)
      00AA00 A1 04            [ 1] 3449 	cp	a, #0x04
      00AA02 27 1B            [ 1] 3450 	jreq	00104$
      00AA04 7B 03            [ 1] 3451 	ld	a, (0x03, sp)
      00AA06 A1 08            [ 1] 3452 	cp	a, #0x08
      00AA08 27 15            [ 1] 3453 	jreq	00104$
      00AA0A 7B 03            [ 1] 3454 	ld	a, (0x03, sp)
      00AA0C A1 0C            [ 1] 3455 	cp	a, #0x0c
      00AA0E 27 0F            [ 1] 3456 	jreq	00104$
      00AA10 4B 37            [ 1] 3457 	push	#0x37
      00AA12 4B 07            [ 1] 3458 	push	#0x07
      00AA14 5F               [ 1] 3459 	clrw	x
      00AA15 89               [ 2] 3460 	pushw	x
      00AA16 4B 6A            [ 1] 3461 	push	#<(___str_0+0)
      00AA18 4B 81            [ 1] 3462 	push	#((___str_0+0) >> 8)
      00AA1A CD 83 84         [ 4] 3463 	call	_assert_failed
      00AA1D 5B 06            [ 2] 3464 	addw	sp, #6
      00AA1F                       3465 00104$:
                                   3466 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1850: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
      00AA1F C6 52 58         [ 1] 3467 	ld	a, 0x5258
      00AA22 A4 F3            [ 1] 3468 	and	a, #0xf3
                                   3469 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1851: | (uint8_t)TIM1_IC1Prescaler);
      00AA24 1A 03            [ 1] 3470 	or	a, (0x03, sp)
      00AA26 C7 52 58         [ 1] 3471 	ld	0x5258, a
                                   3472 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1852: }
      00AA29 81               [ 4] 3473 	ret
                                   3474 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1864: void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
                                   3475 ;	-----------------------------------------
                                   3476 ;	 function TIM1_SetIC2Prescaler
                                   3477 ;	-----------------------------------------
      00AA2A                       3478 _TIM1_SetIC2Prescaler:
                                   3479 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1868: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
      00AA2A 0D 03            [ 1] 3480 	tnz	(0x03, sp)
      00AA2C 27 21            [ 1] 3481 	jreq	00104$
      00AA2E 7B 03            [ 1] 3482 	ld	a, (0x03, sp)
      00AA30 A1 04            [ 1] 3483 	cp	a, #0x04
      00AA32 27 1B            [ 1] 3484 	jreq	00104$
      00AA34 7B 03            [ 1] 3485 	ld	a, (0x03, sp)
      00AA36 A1 08            [ 1] 3486 	cp	a, #0x08
      00AA38 27 15            [ 1] 3487 	jreq	00104$
      00AA3A 7B 03            [ 1] 3488 	ld	a, (0x03, sp)
      00AA3C A1 0C            [ 1] 3489 	cp	a, #0x0c
      00AA3E 27 0F            [ 1] 3490 	jreq	00104$
      00AA40 4B 4C            [ 1] 3491 	push	#0x4c
      00AA42 4B 07            [ 1] 3492 	push	#0x07
      00AA44 5F               [ 1] 3493 	clrw	x
      00AA45 89               [ 2] 3494 	pushw	x
      00AA46 4B 6A            [ 1] 3495 	push	#<(___str_0+0)
      00AA48 4B 81            [ 1] 3496 	push	#((___str_0+0) >> 8)
      00AA4A CD 83 84         [ 4] 3497 	call	_assert_failed
      00AA4D 5B 06            [ 2] 3498 	addw	sp, #6
      00AA4F                       3499 00104$:
                                   3500 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1871: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
      00AA4F C6 52 59         [ 1] 3501 	ld	a, 0x5259
      00AA52 A4 F3            [ 1] 3502 	and	a, #0xf3
                                   3503 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1872: | (uint8_t)TIM1_IC2Prescaler);
      00AA54 1A 03            [ 1] 3504 	or	a, (0x03, sp)
      00AA56 C7 52 59         [ 1] 3505 	ld	0x5259, a
                                   3506 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1873: }
      00AA59 81               [ 4] 3507 	ret
                                   3508 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1885: void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
                                   3509 ;	-----------------------------------------
                                   3510 ;	 function TIM1_SetIC3Prescaler
                                   3511 ;	-----------------------------------------
      00AA5A                       3512 _TIM1_SetIC3Prescaler:
                                   3513 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1889: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
      00AA5A 0D 03            [ 1] 3514 	tnz	(0x03, sp)
      00AA5C 27 21            [ 1] 3515 	jreq	00104$
      00AA5E 7B 03            [ 1] 3516 	ld	a, (0x03, sp)
      00AA60 A1 04            [ 1] 3517 	cp	a, #0x04
      00AA62 27 1B            [ 1] 3518 	jreq	00104$
      00AA64 7B 03            [ 1] 3519 	ld	a, (0x03, sp)
      00AA66 A1 08            [ 1] 3520 	cp	a, #0x08
      00AA68 27 15            [ 1] 3521 	jreq	00104$
      00AA6A 7B 03            [ 1] 3522 	ld	a, (0x03, sp)
      00AA6C A1 0C            [ 1] 3523 	cp	a, #0x0c
      00AA6E 27 0F            [ 1] 3524 	jreq	00104$
      00AA70 4B 61            [ 1] 3525 	push	#0x61
      00AA72 4B 07            [ 1] 3526 	push	#0x07
      00AA74 5F               [ 1] 3527 	clrw	x
      00AA75 89               [ 2] 3528 	pushw	x
      00AA76 4B 6A            [ 1] 3529 	push	#<(___str_0+0)
      00AA78 4B 81            [ 1] 3530 	push	#((___str_0+0) >> 8)
      00AA7A CD 83 84         [ 4] 3531 	call	_assert_failed
      00AA7D 5B 06            [ 2] 3532 	addw	sp, #6
      00AA7F                       3533 00104$:
                                   3534 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1892: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
      00AA7F C6 52 5A         [ 1] 3535 	ld	a, 0x525a
      00AA82 A4 F3            [ 1] 3536 	and	a, #0xf3
                                   3537 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1893: (uint8_t)TIM1_IC3Prescaler);
      00AA84 1A 03            [ 1] 3538 	or	a, (0x03, sp)
      00AA86 C7 52 5A         [ 1] 3539 	ld	0x525a, a
                                   3540 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1894: }
      00AA89 81               [ 4] 3541 	ret
                                   3542 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1906: void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
                                   3543 ;	-----------------------------------------
                                   3544 ;	 function TIM1_SetIC4Prescaler
                                   3545 ;	-----------------------------------------
      00AA8A                       3546 _TIM1_SetIC4Prescaler:
                                   3547 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1910: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
      00AA8A 0D 03            [ 1] 3548 	tnz	(0x03, sp)
      00AA8C 27 21            [ 1] 3549 	jreq	00104$
      00AA8E 7B 03            [ 1] 3550 	ld	a, (0x03, sp)
      00AA90 A1 04            [ 1] 3551 	cp	a, #0x04
      00AA92 27 1B            [ 1] 3552 	jreq	00104$
      00AA94 7B 03            [ 1] 3553 	ld	a, (0x03, sp)
      00AA96 A1 08            [ 1] 3554 	cp	a, #0x08
      00AA98 27 15            [ 1] 3555 	jreq	00104$
      00AA9A 7B 03            [ 1] 3556 	ld	a, (0x03, sp)
      00AA9C A1 0C            [ 1] 3557 	cp	a, #0x0c
      00AA9E 27 0F            [ 1] 3558 	jreq	00104$
      00AAA0 4B 76            [ 1] 3559 	push	#0x76
      00AAA2 4B 07            [ 1] 3560 	push	#0x07
      00AAA4 5F               [ 1] 3561 	clrw	x
      00AAA5 89               [ 2] 3562 	pushw	x
      00AAA6 4B 6A            [ 1] 3563 	push	#<(___str_0+0)
      00AAA8 4B 81            [ 1] 3564 	push	#((___str_0+0) >> 8)
      00AAAA CD 83 84         [ 4] 3565 	call	_assert_failed
      00AAAD 5B 06            [ 2] 3566 	addw	sp, #6
      00AAAF                       3567 00104$:
                                   3568 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1913: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
      00AAAF C6 52 5B         [ 1] 3569 	ld	a, 0x525b
      00AAB2 A4 F3            [ 1] 3570 	and	a, #0xf3
                                   3571 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1914: (uint8_t)TIM1_IC4Prescaler);
      00AAB4 1A 03            [ 1] 3572 	or	a, (0x03, sp)
      00AAB6 C7 52 5B         [ 1] 3573 	ld	0x525b, a
                                   3574 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1915: }
      00AAB9 81               [ 4] 3575 	ret
                                   3576 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1922: uint16_t TIM1_GetCapture1(void)
                                   3577 ;	-----------------------------------------
                                   3578 ;	 function TIM1_GetCapture1
                                   3579 ;	-----------------------------------------
      00AABA                       3580 _TIM1_GetCapture1:
      00AABA 89               [ 2] 3581 	pushw	x
                                   3582 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1929: tmpccr1h = TIM1->CCR1H;
      00AABB C6 52 65         [ 1] 3583 	ld	a, 0x5265
      00AABE 95               [ 1] 3584 	ld	xh, a
                                   3585 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1930: tmpccr1l = TIM1->CCR1L;
      00AABF C6 52 66         [ 1] 3586 	ld	a, 0x5266
                                   3587 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1932: tmpccr1 = (uint16_t)(tmpccr1l);
      00AAC2 97               [ 1] 3588 	ld	xl, a
      00AAC3 4F               [ 1] 3589 	clr	a
                                   3590 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1933: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      00AAC4 0F 02            [ 1] 3591 	clr	(0x02, sp)
      00AAC6 89               [ 2] 3592 	pushw	x
      00AAC7 1A 01            [ 1] 3593 	or	a, (1, sp)
      00AAC9 85               [ 2] 3594 	popw	x
      00AACA 01               [ 1] 3595 	rrwa	x
      00AACB 1A 02            [ 1] 3596 	or	a, (0x02, sp)
      00AACD 97               [ 1] 3597 	ld	xl, a
                                   3598 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1935: return (uint16_t)tmpccr1;
                                   3599 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1936: }
      00AACE 5B 02            [ 2] 3600 	addw	sp, #2
      00AAD0 81               [ 4] 3601 	ret
                                   3602 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1943: uint16_t TIM1_GetCapture2(void)
                                   3603 ;	-----------------------------------------
                                   3604 ;	 function TIM1_GetCapture2
                                   3605 ;	-----------------------------------------
      00AAD1                       3606 _TIM1_GetCapture2:
      00AAD1 89               [ 2] 3607 	pushw	x
                                   3608 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1950: tmpccr2h = TIM1->CCR2H;
      00AAD2 C6 52 67         [ 1] 3609 	ld	a, 0x5267
      00AAD5 95               [ 1] 3610 	ld	xh, a
                                   3611 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1951: tmpccr2l = TIM1->CCR2L;
      00AAD6 C6 52 68         [ 1] 3612 	ld	a, 0x5268
                                   3613 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1953: tmpccr2 = (uint16_t)(tmpccr2l);
      00AAD9 97               [ 1] 3614 	ld	xl, a
      00AADA 4F               [ 1] 3615 	clr	a
                                   3616 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1954: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      00AADB 0F 02            [ 1] 3617 	clr	(0x02, sp)
      00AADD 89               [ 2] 3618 	pushw	x
      00AADE 1A 01            [ 1] 3619 	or	a, (1, sp)
      00AAE0 85               [ 2] 3620 	popw	x
      00AAE1 01               [ 1] 3621 	rrwa	x
      00AAE2 1A 02            [ 1] 3622 	or	a, (0x02, sp)
      00AAE4 97               [ 1] 3623 	ld	xl, a
                                   3624 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1956: return (uint16_t)tmpccr2;
                                   3625 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1957: }
      00AAE5 5B 02            [ 2] 3626 	addw	sp, #2
      00AAE7 81               [ 4] 3627 	ret
                                   3628 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1964: uint16_t TIM1_GetCapture3(void)
                                   3629 ;	-----------------------------------------
                                   3630 ;	 function TIM1_GetCapture3
                                   3631 ;	-----------------------------------------
      00AAE8                       3632 _TIM1_GetCapture3:
      00AAE8 89               [ 2] 3633 	pushw	x
                                   3634 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1970: tmpccr3h = TIM1->CCR3H;
      00AAE9 C6 52 69         [ 1] 3635 	ld	a, 0x5269
      00AAEC 95               [ 1] 3636 	ld	xh, a
                                   3637 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1971: tmpccr3l = TIM1->CCR3L;
      00AAED C6 52 6A         [ 1] 3638 	ld	a, 0x526a
                                   3639 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1973: tmpccr3 = (uint16_t)(tmpccr3l);
      00AAF0 97               [ 1] 3640 	ld	xl, a
      00AAF1 4F               [ 1] 3641 	clr	a
                                   3642 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1974: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
      00AAF2 0F 02            [ 1] 3643 	clr	(0x02, sp)
      00AAF4 89               [ 2] 3644 	pushw	x
      00AAF5 1A 01            [ 1] 3645 	or	a, (1, sp)
      00AAF7 85               [ 2] 3646 	popw	x
      00AAF8 01               [ 1] 3647 	rrwa	x
      00AAF9 1A 02            [ 1] 3648 	or	a, (0x02, sp)
      00AAFB 97               [ 1] 3649 	ld	xl, a
                                   3650 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1976: return (uint16_t)tmpccr3;
                                   3651 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1977: }
      00AAFC 5B 02            [ 2] 3652 	addw	sp, #2
      00AAFE 81               [ 4] 3653 	ret
                                   3654 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1984: uint16_t TIM1_GetCapture4(void)
                                   3655 ;	-----------------------------------------
                                   3656 ;	 function TIM1_GetCapture4
                                   3657 ;	-----------------------------------------
      00AAFF                       3658 _TIM1_GetCapture4:
      00AAFF 89               [ 2] 3659 	pushw	x
                                   3660 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1990: tmpccr4h = TIM1->CCR4H;
      00AB00 C6 52 6B         [ 1] 3661 	ld	a, 0x526b
      00AB03 95               [ 1] 3662 	ld	xh, a
                                   3663 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1991: tmpccr4l = TIM1->CCR4L;
      00AB04 C6 52 6C         [ 1] 3664 	ld	a, 0x526c
                                   3665 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1993: tmpccr4 = (uint16_t)(tmpccr4l);
      00AB07 97               [ 1] 3666 	ld	xl, a
      00AB08 4F               [ 1] 3667 	clr	a
                                   3668 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1994: tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
      00AB09 0F 02            [ 1] 3669 	clr	(0x02, sp)
      00AB0B 89               [ 2] 3670 	pushw	x
      00AB0C 1A 01            [ 1] 3671 	or	a, (1, sp)
      00AB0E 85               [ 2] 3672 	popw	x
      00AB0F 01               [ 1] 3673 	rrwa	x
      00AB10 1A 02            [ 1] 3674 	or	a, (0x02, sp)
      00AB12 97               [ 1] 3675 	ld	xl, a
                                   3676 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1996: return (uint16_t)tmpccr4;
                                   3677 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 1997: }
      00AB13 5B 02            [ 2] 3678 	addw	sp, #2
      00AB15 81               [ 4] 3679 	ret
                                   3680 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2004: uint16_t TIM1_GetCounter(void)
                                   3681 ;	-----------------------------------------
                                   3682 ;	 function TIM1_GetCounter
                                   3683 ;	-----------------------------------------
      00AB16                       3684 _TIM1_GetCounter:
      00AB16 52 04            [ 2] 3685 	sub	sp, #4
                                   3686 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2008: tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
      00AB18 C6 52 5E         [ 1] 3687 	ld	a, 0x525e
      00AB1B 5F               [ 1] 3688 	clrw	x
      00AB1C 95               [ 1] 3689 	ld	xh, a
      00AB1D 4F               [ 1] 3690 	clr	a
      00AB1E 6B 02            [ 1] 3691 	ld	(0x02, sp), a
                                   3692 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2011: return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
      00AB20 C6 52 5F         [ 1] 3693 	ld	a, 0x525f
      00AB23 0F 03            [ 1] 3694 	clr	(0x03, sp)
      00AB25 1A 02            [ 1] 3695 	or	a, (0x02, sp)
      00AB27 02               [ 1] 3696 	rlwa	x
      00AB28 1A 03            [ 1] 3697 	or	a, (0x03, sp)
      00AB2A 95               [ 1] 3698 	ld	xh, a
                                   3699 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2012: }
      00AB2B 5B 04            [ 2] 3700 	addw	sp, #4
      00AB2D 81               [ 4] 3701 	ret
                                   3702 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2019: uint16_t TIM1_GetPrescaler(void)
                                   3703 ;	-----------------------------------------
                                   3704 ;	 function TIM1_GetPrescaler
                                   3705 ;	-----------------------------------------
      00AB2E                       3706 _TIM1_GetPrescaler:
      00AB2E 52 04            [ 2] 3707 	sub	sp, #4
                                   3708 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2023: temp = ((uint16_t)TIM1->PSCRH << 8);
      00AB30 C6 52 60         [ 1] 3709 	ld	a, 0x5260
      00AB33 5F               [ 1] 3710 	clrw	x
      00AB34 95               [ 1] 3711 	ld	xh, a
      00AB35 4F               [ 1] 3712 	clr	a
      00AB36 6B 02            [ 1] 3713 	ld	(0x02, sp), a
                                   3714 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2026: return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
      00AB38 C6 52 61         [ 1] 3715 	ld	a, 0x5261
      00AB3B 0F 03            [ 1] 3716 	clr	(0x03, sp)
      00AB3D 1A 02            [ 1] 3717 	or	a, (0x02, sp)
      00AB3F 02               [ 1] 3718 	rlwa	x
      00AB40 1A 03            [ 1] 3719 	or	a, (0x03, sp)
      00AB42 95               [ 1] 3720 	ld	xh, a
                                   3721 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2027: }
      00AB43 5B 04            [ 2] 3722 	addw	sp, #4
      00AB45 81               [ 4] 3723 	ret
                                   3724 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2047: FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
                                   3725 ;	-----------------------------------------
                                   3726 ;	 function TIM1_GetFlagStatus
                                   3727 ;	-----------------------------------------
      00AB46                       3728 _TIM1_GetFlagStatus:
      00AB46 88               [ 1] 3729 	push	a
                                   3730 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2053: assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
      00AB47 1E 04            [ 2] 3731 	ldw	x, (0x04, sp)
      00AB49 A3 00 01         [ 2] 3732 	cpw	x, #0x0001
      00AB4C 27 4A            [ 1] 3733 	jreq	00107$
      00AB4E A3 00 02         [ 2] 3734 	cpw	x, #0x0002
      00AB51 27 45            [ 1] 3735 	jreq	00107$
      00AB53 A3 00 04         [ 2] 3736 	cpw	x, #0x0004
      00AB56 27 40            [ 1] 3737 	jreq	00107$
      00AB58 A3 00 08         [ 2] 3738 	cpw	x, #0x0008
      00AB5B 27 3B            [ 1] 3739 	jreq	00107$
      00AB5D A3 00 10         [ 2] 3740 	cpw	x, #0x0010
      00AB60 27 36            [ 1] 3741 	jreq	00107$
      00AB62 A3 00 20         [ 2] 3742 	cpw	x, #0x0020
      00AB65 27 31            [ 1] 3743 	jreq	00107$
      00AB67 A3 00 40         [ 2] 3744 	cpw	x, #0x0040
      00AB6A 27 2C            [ 1] 3745 	jreq	00107$
      00AB6C A3 00 80         [ 2] 3746 	cpw	x, #0x0080
      00AB6F 27 27            [ 1] 3747 	jreq	00107$
      00AB71 A3 02 00         [ 2] 3748 	cpw	x, #0x0200
      00AB74 27 22            [ 1] 3749 	jreq	00107$
      00AB76 A3 04 00         [ 2] 3750 	cpw	x, #0x0400
      00AB79 27 1D            [ 1] 3751 	jreq	00107$
      00AB7B A3 08 00         [ 2] 3752 	cpw	x, #0x0800
      00AB7E 27 18            [ 1] 3753 	jreq	00107$
      00AB80 A3 10 00         [ 2] 3754 	cpw	x, #0x1000
      00AB83 27 13            [ 1] 3755 	jreq	00107$
      00AB85 89               [ 2] 3756 	pushw	x
      00AB86 4B 05            [ 1] 3757 	push	#0x05
      00AB88 4B 08            [ 1] 3758 	push	#0x08
      00AB8A 4B 00            [ 1] 3759 	push	#0x00
      00AB8C 4B 00            [ 1] 3760 	push	#0x00
      00AB8E 4B 6A            [ 1] 3761 	push	#<(___str_0+0)
      00AB90 4B 81            [ 1] 3762 	push	#((___str_0+0) >> 8)
      00AB92 CD 83 84         [ 4] 3763 	call	_assert_failed
      00AB95 5B 06            [ 2] 3764 	addw	sp, #6
      00AB97 85               [ 2] 3765 	popw	x
      00AB98                       3766 00107$:
                                   3767 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2055: tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
      00AB98 C6 52 55         [ 1] 3768 	ld	a, 0x5255
      00AB9B 6B 01            [ 1] 3769 	ld	(0x01, sp), a
      00AB9D 7B 05            [ 1] 3770 	ld	a, (0x05, sp)
      00AB9F 14 01            [ 1] 3771 	and	a, (0x01, sp)
      00ABA1 6B 01            [ 1] 3772 	ld	(0x01, sp), a
                                   3773 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2056: tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
                                   3774 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2058: if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
      00ABA3 C6 52 56         [ 1] 3775 	ld	a, 0x5256
      00ABA6 89               [ 2] 3776 	pushw	x
      00ABA7 14 01            [ 1] 3777 	and	a, (1, sp)
      00ABA9 85               [ 2] 3778 	popw	x
      00ABAA 1A 01            [ 1] 3779 	or	a, (0x01, sp)
      00ABAC 27 03            [ 1] 3780 	jreq	00102$
                                   3781 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2060: bitstatus = SET;
      00ABAE A6 01            [ 1] 3782 	ld	a, #0x01
                                   3783 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2064: bitstatus = RESET;
      00ABB0 21                    3784 	.byte 0x21
      00ABB1                       3785 00102$:
      00ABB1 4F               [ 1] 3786 	clr	a
      00ABB2                       3787 00103$:
                                   3788 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2066: return (FlagStatus)(bitstatus);
                                   3789 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2067: }
      00ABB2 5B 01            [ 2] 3790 	addw	sp, #1
      00ABB4 81               [ 4] 3791 	ret
                                   3792 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2087: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
                                   3793 ;	-----------------------------------------
                                   3794 ;	 function TIM1_ClearFlag
                                   3795 ;	-----------------------------------------
      00ABB5                       3796 _TIM1_ClearFlag:
      00ABB5 89               [ 2] 3797 	pushw	x
                                   3798 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2090: assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
      00ABB6 16 05            [ 2] 3799 	ldw	y, (0x05, sp)
      00ABB8 17 01            [ 2] 3800 	ldw	(0x01, sp), y
      00ABBA 7B 01            [ 1] 3801 	ld	a, (0x01, sp)
      00ABBC A5 E1            [ 1] 3802 	bcp	a, #0xe1
      00ABBE 26 04            [ 1] 3803 	jrne	00103$
      00ABC0 1E 05            [ 2] 3804 	ldw	x, (0x05, sp)
      00ABC2 26 0F            [ 1] 3805 	jrne	00104$
      00ABC4                       3806 00103$:
      00ABC4 4B 2A            [ 1] 3807 	push	#0x2a
      00ABC6 4B 08            [ 1] 3808 	push	#0x08
      00ABC8 5F               [ 1] 3809 	clrw	x
      00ABC9 89               [ 2] 3810 	pushw	x
      00ABCA 4B 6A            [ 1] 3811 	push	#<(___str_0+0)
      00ABCC 4B 81            [ 1] 3812 	push	#((___str_0+0) >> 8)
      00ABCE CD 83 84         [ 4] 3813 	call	_assert_failed
      00ABD1 5B 06            [ 2] 3814 	addw	sp, #6
      00ABD3                       3815 00104$:
                                   3816 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2093: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
      00ABD3 7B 06            [ 1] 3817 	ld	a, (0x06, sp)
      00ABD5 43               [ 1] 3818 	cpl	a
      00ABD6 C7 52 55         [ 1] 3819 	ld	0x5255, a
                                   3820 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2094: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
      00ABD9 7B 01            [ 1] 3821 	ld	a, (0x01, sp)
      00ABDB 43               [ 1] 3822 	cpl	a
      00ABDC A4 1E            [ 1] 3823 	and	a, #0x1e
      00ABDE C7 52 56         [ 1] 3824 	ld	0x5256, a
                                   3825 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2096: }
      00ABE1 85               [ 2] 3826 	popw	x
      00ABE2 81               [ 4] 3827 	ret
                                   3828 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2112: ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
                                   3829 ;	-----------------------------------------
                                   3830 ;	 function TIM1_GetITStatus
                                   3831 ;	-----------------------------------------
      00ABE3                       3832 _TIM1_GetITStatus:
      00ABE3 88               [ 1] 3833 	push	a
                                   3834 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2118: assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
      00ABE4 7B 04            [ 1] 3835 	ld	a, (0x04, sp)
      00ABE6 4A               [ 1] 3836 	dec	a
      00ABE7 27 39            [ 1] 3837 	jreq	00108$
      00ABE9 7B 04            [ 1] 3838 	ld	a, (0x04, sp)
      00ABEB A1 02            [ 1] 3839 	cp	a, #0x02
      00ABED 27 33            [ 1] 3840 	jreq	00108$
      00ABEF 7B 04            [ 1] 3841 	ld	a, (0x04, sp)
      00ABF1 A1 04            [ 1] 3842 	cp	a, #0x04
      00ABF3 27 2D            [ 1] 3843 	jreq	00108$
      00ABF5 7B 04            [ 1] 3844 	ld	a, (0x04, sp)
      00ABF7 A1 08            [ 1] 3845 	cp	a, #0x08
      00ABF9 27 27            [ 1] 3846 	jreq	00108$
      00ABFB 7B 04            [ 1] 3847 	ld	a, (0x04, sp)
      00ABFD A1 10            [ 1] 3848 	cp	a, #0x10
      00ABFF 27 21            [ 1] 3849 	jreq	00108$
      00AC01 7B 04            [ 1] 3850 	ld	a, (0x04, sp)
      00AC03 A1 20            [ 1] 3851 	cp	a, #0x20
      00AC05 27 1B            [ 1] 3852 	jreq	00108$
      00AC07 7B 04            [ 1] 3853 	ld	a, (0x04, sp)
      00AC09 A1 40            [ 1] 3854 	cp	a, #0x40
      00AC0B 27 15            [ 1] 3855 	jreq	00108$
      00AC0D 7B 04            [ 1] 3856 	ld	a, (0x04, sp)
      00AC0F A1 80            [ 1] 3857 	cp	a, #0x80
      00AC11 27 0F            [ 1] 3858 	jreq	00108$
      00AC13 4B 46            [ 1] 3859 	push	#0x46
      00AC15 4B 08            [ 1] 3860 	push	#0x08
      00AC17 5F               [ 1] 3861 	clrw	x
      00AC18 89               [ 2] 3862 	pushw	x
      00AC19 4B 6A            [ 1] 3863 	push	#<(___str_0+0)
      00AC1B 4B 81            [ 1] 3864 	push	#((___str_0+0) >> 8)
      00AC1D CD 83 84         [ 4] 3865 	call	_assert_failed
      00AC20 5B 06            [ 2] 3866 	addw	sp, #6
      00AC22                       3867 00108$:
                                   3868 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2120: TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
      00AC22 C6 52 55         [ 1] 3869 	ld	a, 0x5255
      00AC25 14 04            [ 1] 3870 	and	a, (0x04, sp)
      00AC27 6B 01            [ 1] 3871 	ld	(0x01, sp), a
                                   3872 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2122: TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
      00AC29 C6 52 54         [ 1] 3873 	ld	a, 0x5254
      00AC2C 14 04            [ 1] 3874 	and	a, (0x04, sp)
                                   3875 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2124: if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
      00AC2E 0D 01            [ 1] 3876 	tnz	(0x01, sp)
      00AC30 27 06            [ 1] 3877 	jreq	00102$
      00AC32 4D               [ 1] 3878 	tnz	a
      00AC33 27 03            [ 1] 3879 	jreq	00102$
                                   3880 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2126: bitstatus = SET;
      00AC35 A6 01            [ 1] 3881 	ld	a, #0x01
                                   3882 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2130: bitstatus = RESET;
      00AC37 21                    3883 	.byte 0x21
      00AC38                       3884 00102$:
      00AC38 4F               [ 1] 3885 	clr	a
      00AC39                       3886 00103$:
                                   3887 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2132: return (ITStatus)(bitstatus);
                                   3888 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2133: }
      00AC39 5B 01            [ 2] 3889 	addw	sp, #1
      00AC3B 81               [ 4] 3890 	ret
                                   3891 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2149: void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
                                   3892 ;	-----------------------------------------
                                   3893 ;	 function TIM1_ClearITPendingBit
                                   3894 ;	-----------------------------------------
      00AC3C                       3895 _TIM1_ClearITPendingBit:
                                   3896 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2152: assert_param(IS_TIM1_IT_OK(TIM1_IT));
      00AC3C 0D 03            [ 1] 3897 	tnz	(0x03, sp)
      00AC3E 26 0F            [ 1] 3898 	jrne	00104$
      00AC40 4B 68            [ 1] 3899 	push	#0x68
      00AC42 4B 08            [ 1] 3900 	push	#0x08
      00AC44 5F               [ 1] 3901 	clrw	x
      00AC45 89               [ 2] 3902 	pushw	x
      00AC46 4B 6A            [ 1] 3903 	push	#<(___str_0+0)
      00AC48 4B 81            [ 1] 3904 	push	#((___str_0+0) >> 8)
      00AC4A CD 83 84         [ 4] 3905 	call	_assert_failed
      00AC4D 5B 06            [ 2] 3906 	addw	sp, #6
      00AC4F                       3907 00104$:
                                   3908 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2155: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
      00AC4F 7B 03            [ 1] 3909 	ld	a, (0x03, sp)
      00AC51 43               [ 1] 3910 	cpl	a
      00AC52 C7 52 55         [ 1] 3911 	ld	0x5255, a
                                   3912 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2156: }
      00AC55 81               [ 4] 3913 	ret
                                   3914 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2174: static void TI1_Config(uint8_t TIM1_ICPolarity,
                                   3915 ;	-----------------------------------------
                                   3916 ;	 function TI1_Config
                                   3917 ;	-----------------------------------------
      00AC56                       3918 _TI1_Config:
      00AC56 88               [ 1] 3919 	push	a
                                   3920 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2179: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      00AC57 72 11 52 5C      [ 1] 3921 	bres	21084, #0
                                   3922 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2182: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
      00AC5B C6 52 58         [ 1] 3923 	ld	a, 0x5258
      00AC5E A4 0C            [ 1] 3924 	and	a, #0x0c
      00AC60 6B 01            [ 1] 3925 	ld	(0x01, sp), a
                                   3926 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2183: (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00AC62 7B 06            [ 1] 3927 	ld	a, (0x06, sp)
      00AC64 4E               [ 1] 3928 	swap	a
      00AC65 A4 F0            [ 1] 3929 	and	a, #0xf0
      00AC67 1A 05            [ 1] 3930 	or	a, (0x05, sp)
      00AC69 1A 01            [ 1] 3931 	or	a, (0x01, sp)
      00AC6B C7 52 58         [ 1] 3932 	ld	0x5258, a
                                   3933 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2179: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      00AC6E C6 52 5C         [ 1] 3934 	ld	a, 0x525c
                                   3935 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2186: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      00AC71 0D 04            [ 1] 3936 	tnz	(0x04, sp)
      00AC73 27 07            [ 1] 3937 	jreq	00102$
                                   3938 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2188: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00AC75 AA 02            [ 1] 3939 	or	a, #0x02
      00AC77 C7 52 5C         [ 1] 3940 	ld	0x525c, a
      00AC7A 20 05            [ 2] 3941 	jra	00103$
      00AC7C                       3942 00102$:
                                   3943 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2192: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      00AC7C A4 FD            [ 1] 3944 	and	a, #0xfd
      00AC7E C7 52 5C         [ 1] 3945 	ld	0x525c, a
      00AC81                       3946 00103$:
                                   3947 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2196: TIM1->CCER1 |=  TIM1_CCER1_CC1E;
      00AC81 72 10 52 5C      [ 1] 3948 	bset	21084, #0
                                   3949 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2197: }
      00AC85 84               [ 1] 3950 	pop	a
      00AC86 81               [ 4] 3951 	ret
                                   3952 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2215: static void TI2_Config(uint8_t TIM1_ICPolarity,
                                   3953 ;	-----------------------------------------
                                   3954 ;	 function TI2_Config
                                   3955 ;	-----------------------------------------
      00AC87                       3956 _TI2_Config:
      00AC87 88               [ 1] 3957 	push	a
                                   3958 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2220: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      00AC88 72 19 52 5C      [ 1] 3959 	bres	21084, #4
                                   3960 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2223: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
      00AC8C C6 52 59         [ 1] 3961 	ld	a, 0x5259
      00AC8F A4 0C            [ 1] 3962 	and	a, #0x0c
      00AC91 6B 01            [ 1] 3963 	ld	(0x01, sp), a
                                   3964 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2224: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00AC93 7B 06            [ 1] 3965 	ld	a, (0x06, sp)
      00AC95 4E               [ 1] 3966 	swap	a
      00AC96 A4 F0            [ 1] 3967 	and	a, #0xf0
      00AC98 1A 05            [ 1] 3968 	or	a, (0x05, sp)
      00AC9A 1A 01            [ 1] 3969 	or	a, (0x01, sp)
      00AC9C C7 52 59         [ 1] 3970 	ld	0x5259, a
                                   3971 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2220: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      00AC9F C6 52 5C         [ 1] 3972 	ld	a, 0x525c
                                   3973 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2226: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      00ACA2 0D 04            [ 1] 3974 	tnz	(0x04, sp)
      00ACA4 27 07            [ 1] 3975 	jreq	00102$
                                   3976 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2228: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      00ACA6 AA 20            [ 1] 3977 	or	a, #0x20
      00ACA8 C7 52 5C         [ 1] 3978 	ld	0x525c, a
      00ACAB 20 05            [ 2] 3979 	jra	00103$
      00ACAD                       3980 00102$:
                                   3981 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2232: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      00ACAD A4 DF            [ 1] 3982 	and	a, #0xdf
      00ACAF C7 52 5C         [ 1] 3983 	ld	0x525c, a
      00ACB2                       3984 00103$:
                                   3985 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2235: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
      00ACB2 72 18 52 5C      [ 1] 3986 	bset	21084, #4
                                   3987 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2236: }
      00ACB6 84               [ 1] 3988 	pop	a
      00ACB7 81               [ 4] 3989 	ret
                                   3990 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2254: static void TI3_Config(uint8_t TIM1_ICPolarity,
                                   3991 ;	-----------------------------------------
                                   3992 ;	 function TI3_Config
                                   3993 ;	-----------------------------------------
      00ACB8                       3994 _TI3_Config:
      00ACB8 88               [ 1] 3995 	push	a
                                   3996 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2259: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      00ACB9 C6 52 5D         [ 1] 3997 	ld	a, 0x525d
      00ACBC A4 FE            [ 1] 3998 	and	a, #0xfe
      00ACBE C7 52 5D         [ 1] 3999 	ld	0x525d, a
                                   4000 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2262: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
      00ACC1 C6 52 5A         [ 1] 4001 	ld	a, 0x525a
      00ACC4 A4 0C            [ 1] 4002 	and	a, #0x0c
      00ACC6 6B 01            [ 1] 4003 	ld	(0x01, sp), a
                                   4004 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2263: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00ACC8 7B 06            [ 1] 4005 	ld	a, (0x06, sp)
      00ACCA 4E               [ 1] 4006 	swap	a
      00ACCB A4 F0            [ 1] 4007 	and	a, #0xf0
      00ACCD 1A 05            [ 1] 4008 	or	a, (0x05, sp)
      00ACCF 1A 01            [ 1] 4009 	or	a, (0x01, sp)
      00ACD1 C7 52 5A         [ 1] 4010 	ld	0x525a, a
                                   4011 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2259: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      00ACD4 C6 52 5D         [ 1] 4012 	ld	a, 0x525d
                                   4013 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2266: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      00ACD7 0D 04            [ 1] 4014 	tnz	(0x04, sp)
      00ACD9 27 07            [ 1] 4015 	jreq	00102$
                                   4016 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2268: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      00ACDB AA 02            [ 1] 4017 	or	a, #0x02
      00ACDD C7 52 5D         [ 1] 4018 	ld	0x525d, a
      00ACE0 20 05            [ 2] 4019 	jra	00103$
      00ACE2                       4020 00102$:
                                   4021 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2272: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      00ACE2 A4 FD            [ 1] 4022 	and	a, #0xfd
      00ACE4 C7 52 5D         [ 1] 4023 	ld	0x525d, a
      00ACE7                       4024 00103$:
                                   4025 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2275: TIM1->CCER2 |=  TIM1_CCER2_CC3E;
      00ACE7 72 10 52 5D      [ 1] 4026 	bset	21085, #0
                                   4027 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2276: }
      00ACEB 84               [ 1] 4028 	pop	a
      00ACEC 81               [ 4] 4029 	ret
                                   4030 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2294: static void TI4_Config(uint8_t TIM1_ICPolarity,
                                   4031 ;	-----------------------------------------
                                   4032 ;	 function TI4_Config
                                   4033 ;	-----------------------------------------
      00ACED                       4034 _TI4_Config:
      00ACED 88               [ 1] 4035 	push	a
                                   4036 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2299: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      00ACEE 72 19 52 5D      [ 1] 4037 	bres	21085, #4
                                   4038 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2302: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
      00ACF2 C6 52 5B         [ 1] 4039 	ld	a, 0x525b
      00ACF5 A4 0C            [ 1] 4040 	and	a, #0x0c
      00ACF7 6B 01            [ 1] 4041 	ld	(0x01, sp), a
                                   4042 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2303: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      00ACF9 7B 06            [ 1] 4043 	ld	a, (0x06, sp)
      00ACFB 4E               [ 1] 4044 	swap	a
      00ACFC A4 F0            [ 1] 4045 	and	a, #0xf0
      00ACFE 1A 05            [ 1] 4046 	or	a, (0x05, sp)
      00AD00 1A 01            [ 1] 4047 	or	a, (0x01, sp)
      00AD02 C7 52 5B         [ 1] 4048 	ld	0x525b, a
                                   4049 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2299: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      00AD05 C6 52 5D         [ 1] 4050 	ld	a, 0x525d
                                   4051 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2306: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      00AD08 0D 04            [ 1] 4052 	tnz	(0x04, sp)
      00AD0A 27 07            [ 1] 4053 	jreq	00102$
                                   4054 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2308: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      00AD0C AA 20            [ 1] 4055 	or	a, #0x20
      00AD0E C7 52 5D         [ 1] 4056 	ld	0x525d, a
      00AD11 20 05            [ 2] 4057 	jra	00103$
      00AD13                       4058 00102$:
                                   4059 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2312: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      00AD13 A4 DF            [ 1] 4060 	and	a, #0xdf
      00AD15 C7 52 5D         [ 1] 4061 	ld	0x525d, a
      00AD18                       4062 00103$:
                                   4063 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2316: TIM1->CCER2 |=  TIM1_CCER2_CC4E;
      00AD18 72 18 52 5D      [ 1] 4064 	bset	21085, #4
                                   4065 ;	../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_tim1.c: 2317: }
      00AD1C 84               [ 1] 4066 	pop	a
      00AD1D 81               [ 4] 4067 	ret
                                   4068 	.area CODE
                                   4069 	.area CONST
                                   4070 	.area CONST
      00816A                       4071 ___str_0:
      00816A 2E 2E 2F 2E 2E 2F 2F  4072 	.ascii "../..//StdPeriph_Driver/STM8S_StdPeriph_Driver//src/stm8s_ti"
             53 74 64 50 65 72 69
             70 68 5F 44 72 69 76
             65 72 2F 53 54 4D 38
             53 5F 53 74 64 50 65
             72 69 70 68 5F 44 72
             69 76 65 72 2F 2F 73
             72 63 2F 73 74 6D 38
             73 5F 74 69
      0081A6 6D 31 2E 63           4073 	.ascii "m1.c"
      0081AA 00                    4074 	.db 0x00
                                   4075 	.area CODE
                                   4076 	.area INITIALIZER
                                   4077 	.area CABS (ABS)
