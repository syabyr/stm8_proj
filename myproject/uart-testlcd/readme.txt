管脚定义:

//测试环境LCD
PB0:CS 输出
PB1:WR 输出
PB2:DATA 输出



PA3:PWR_CTL  一秒后开机高电平

PB0:IR_SNS 红外接收,检测中间有没有东西

PB1:SHAP_P
PB2:SHAP_N
控制电机正转,反转
FW344
PB3:OPEN_P
PB4:OPEN_N


PB5:PUMP	气泵,高电平工作
PB7:KEY_SNS:SW/ON OFF:常为高电平,按下后为低电平

PD0:BAG_OK	收发一体红外,有袋子时输出低电平.确认有没有纸袋子

PD4:CS#(LCD)
PD5:WR#(LCD)
PD6:DATA(LCD)
PD7:CLEAR:常为高电平,按下后为低电平

PE5:WN_IR		告警,蜂鸣器
*缺袋子时,告警
*按下关机键一段时间后,告警一下,按下清零一段时间后,告警一下

PC1:CLR_CTL		控制电机走袋子

PC2:PSB3
PC3:PSA3

PC4:PSB2
PC5:PSA2

PC6:PSB1
PC7:PSA1

6个开关.



没焊接的电阻:
R19,R34,R1,R16,R4,R39,R9,R99,R21,R40


R27,R24,R28,R29,R17,R20,R31
10K
