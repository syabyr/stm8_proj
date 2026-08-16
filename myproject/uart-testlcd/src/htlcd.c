#include "htlcd.h"
//#include "stdio.h"


uint8_t bitmap[16];

void init_lcd_gpio()
{
	  //设置PB0-PB2为输出
	//PB0:CS,PB1:WR,PB2:DATA
	GPIOB->DDR=GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2;
	GPIOB->CR1=GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2;
	GPIOB->CR2=GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2;
}

void start_ht1621()
{
	GPIOB->ODR|=GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2;
	Delay(1);
	GPIOB->ODR&=~(GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2);
}



void send_bit(uint8_t dat,uint8_t bitcnt)
{
	uint8_t i;
	for(i=0;i<bitcnt;i++)
	{
		if((dat&0x80)== 0x00)
		{
			GPIOB->ODR &= ~GPIO_PIN_2;
		}
		else
		{
			GPIOB->ODR |= GPIO_PIN_2;
		}
		Delay(1);
		GPIOB->ODR |= GPIO_PIN_1;
		Delay(1);
		GPIOB->ODR &= ~GPIO_PIN_1;
		dat=dat<<1;
	}
}

void send_byte(uint8_t dat)
{
	send_bit(dat,8);
}

void send_hex_h(uint8_t dat)
{
	send_bit(dat,4);
}

void send_hex_l(uint8_t dat)
{
	send_bit(dat<<4,4);
}




void send_cmda(uint8_t com)
{
	start_ht1621();
	send_bit(0x80,4);
	send_byte(com);
/*
	 START_HT1621();
 SENDBIT(0X80,4);
 SENDBYTE(com);
*/
}

void send_cmdb(uint8_t adr)
{
	start_ht1621();
	send_bit(0xA0,3);
	send_bit(adr<<2,6);
}

void display(uint8_t dat)
{
	uint8_t i;
	send_cmdb(0x00);
	for(i=0;i<8;i++)
	{
		send_byte(dat);
	}
}

void clear_lcd()
{
	uint8_t i;
	send_cmdb(0x00);
	for(i=0;i<16;i++)
	{
		send_byte(0x00);
	}
}

void display_all()
{
	uint8_t i;
	send_cmdb(0x00);
	for(i=0;i<16;i++)
	{
		send_byte(0xff);
		Delay(500);
	}
}

void flush_bitmap()
{
	uint8_t i;
	send_cmdb(0x00);
	Delay(50);
	for(i=0;i<16;i++)
	{
		send_byte(bitmap[i]);
		Delay(50);
	}
}

void display_test()
{
	uint8_t i;
	send_cmdb(0x00);
	send_hex_l(0xf);
	Delay(5000);
	for(i=0;i<4;i++)
	{
		send_cmdb(0x00);
		send_hex_l(1<<i);
		Delay(5000);
	}
}



//int de = 0;

void test_int()
{
	/*
	send_cmdb(de);
	send_hex_l(0x0);
	de++;
	if( de>=32)
	{
		de=0;
	}
	send_cmdb(de);
	send_hex_l(0xf);
	*/
	//printf("addr:%d\r\n",de);

}

void setup_ht1621b()
{
	send_cmda(BIAS);
	send_cmda(RC256);
	send_cmda(SYSEN);
	Delay(100);
	send_cmda(LCDON);
	send_cmda(WDTDIS1);
	send_cmda(TIMERDIS);
}




int32_t up;
int32_t down;

void init_bitmap()
{
	int i=0;
	for(i=0;i<16;i++)
	{
		bitmap[i]=0;
	}
	bitmap[0]=0x80;
	bitmap[1]=0x80;
}



uint8_t num1[]={num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,0};
uint8_t num2[]={num20,num21,num22,num23,num24,num25,num26,num27,num28,num29,0};
uint8_t num3[]={num30,num31,num32,num33,num34,num35,num36,num37,num38,num39,0};

void dispnum(uint8_t i,uint8_t num)
{
	if(i<=6)
	{
		bitmap[i-1]=(bitmap[i-1]&0x80)|num1[num];
		//printf("bitmap[%d]=0x%x,num1[%d]=0x%x\r\n",i-1,bitmap[i-1],num,num1[num]);
	}
	else if((i>=11) && (i<=16))
	{
		bitmap[i-5]=(bitmap[i-5]&0xF8)|(num2[num]&0x07);
		bitmap[i-4]=(bitmap[i-4]&0x0F)|(num2[num]&0xF0);
		//printf("bitmap[%d]=0x%x,bitmap[%d]=0x%x,num2[%d]=0x%x\r\n",i-5,bitmap[i-5],i-4,bitmap[i-4],num,num2[num]);
	}
	else if((i ==7 )|| (i == 8))
	{
		bitmap[20-i]=(bitmap[20-i]&0xF0)|(num3[num]&0x0F);
		bitmap[21-i]=(bitmap[21-i]&0x8F)|(num3[num]&0x70);
		//printf("bitmap[%d]=0x%x,bitmap[%d]=0x%x,num3[%d]=0x%x\r\n",20-i,bitmap[20-i],21-i,bitmap[21-i],num,num3[num]);
	}
	else if(i==10)
	{
		bitmap[i-4]=(bitmap[i-4]&0x0F)|(num2[num]&0xF0);

		if((num == 0)||(num == 2)||(num == 6)||(num == 8))
		{
			//sege
			bitmap[8]|=0x08;
		}
		else
		{
			bitmap[8]&=~0x08;
		}
		//if((num != 0)&&(num != 1)&&(num != 7))
		if((num == 2)||(num == 3)||(num == 4)||(num == 5)||(num == 6)||(num == 8)||(num == 9))
		{
			//segg
			bitmap[7]|=0x08;
		}
		else
		{
			bitmap[7]&=~0x08;
		}
		//if((num != 1)&&(num != 2)&&(num != 3)&&(num != 7))
		if((num == 0)||(num == 4)||(num == 5)||(num == 6)||(num == 8)||(num == 9))
		{
			//segf
			bitmap[6]|=0x08;
		}
		else
		{
			bitmap[6]&=~0x08;
		}
		
		//printf("bitmap[%d]=0x%x,num2[%d]=0x%x\r\n",i-4,bitmap[i-4],num,num2[num]);
	}
	else if(i == 9)
	{
		//if((num != 1)&&(num != 4))
		if((num == 0)||(num == 2)||(num == 3)||(num == 5)||(num == 6)||(num == 7)||(num == 8)||(num == 9))
		{
			//sega
			bitmap[11]|=0x08;
		}
		else
		{
			bitmap[11]&=~0x08;
		}
		//if((num != 5)&&(num != 6))
		if((num == 0)||(num == 1)||(num == 2)||(num == 3)||(num == 4)||(num == 7)||(num == 8)||(num == 9))
		{
			//segb
			bitmap[10]|=0x08;
		}
		else
		{
			bitmap[10]&=~0x08;
		}
		//if(num != 2)
		if((num == 0)||(num == 1)||(num == 3)||(num == 4)||(num == 5)||(num == 6)||(num == 7)||(num == 8)||(num == 9))
		{
			//segc
			bitmap[9]|=0x08;
		}
		else
		{
			bitmap[9]&=~0x08;
		}
		//if((num != 1)&&(num != 4)&&(num != 7))
		if((num == 0)||(num == 2)||(num == 3)||(num == 5)||(num == 6)||(num == 8)||(num == 9))
		{
			//segd
			bitmap[2]|=0x80;
		}
		else
		{
			bitmap[2]&=~0x80;
		}

		if((num == 0)||(num == 2)||(num == 6)||(num == 8))
		{
			//sege
			bitmap[3]|=0x80;
		}
		else
		{
			bitmap[3]&=~0x80;
		}
		//if((num != 0)&&(num != 1)&&(num != 7))
		if((num == 2)||(num == 3)||(num == 4)||(num == 5)||(num == 6)||(num == 8)||(num == 9))
		{
			//segg
			bitmap[4]|=0x80;
		}
		else
		{
			bitmap[4]&=~0x80;
		}
		//if((num != 1)&&(num != 2)&&(num != 3)&&(num != 7))
		if((num == 0)||(num == 4)||(num == 5)||(num == 6)||(num == 8)||(num == 9))
		{
			//segf
			bitmap[5]|=0x80;
		}
		else
		{
			bitmap[5]&=~0x80;
		}
	}
}


void disp_up(uint32_t num)
{
	uint8_t i;
	uint8_t n;
	if(num >999999999)
	{
		num=999999999;
	}
	for(i=0;i<8;i++)
	{
		if(num == 0)
		{
			dispnum(8-i,10);
		}
		else
		{
			n=num%10;
			dispnum(8-i,n);
		}
		
		num=num/10;
	}
	flush_bitmap();
}

void disp_down(uint32_t num)
{
	uint8_t i;
	uint8_t n;
	if(num >999999999)
	{
		num=999999999;
	}
	for(i=0;i<8;i++)
	{
		if(num == 0)
		{
			dispnum(16-i,10);
		}
		else
		{
			n=num%10;
			dispnum(16-i,n);
		}
		
		num=num/10;
	}
	flush_bitmap();
}
