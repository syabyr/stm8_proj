#include "htlcd.h"


uint8_t bitmap[16];

int32_t up;
int32_t down;


void start_ht1621()
{
	GPIOB->ODR|=GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2;
	Delay(1);
	GPIOB->ODR&=~(GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2);
}

void init_bitmap()
{
	int i=0;
	for(i=0;i<16;i++)
	{
		bitmap[i]=0;
	}

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
	send_bit(adr<<3,5);
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
		Delay(5000);
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

void setup_ht1621b()
{
	send_cmda(BIAS);
	send_cmda(RC256);
	send_cmda(SYSEN);
	Delay(1);
	send_cmda(LCDON);
	send_cmda(WDTDIS1);
	send_cmda(TIMERDIS);
}