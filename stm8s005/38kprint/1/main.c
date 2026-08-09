#include<stdio.h>
#include<inttypes.h>

int main(void)
{
	uint16_t temp=0;
	temp|=0x0001;
	temp = temp << 1;
	uint8_t high=(temp&0xff00)>>8;
	uint8_t low=(int8_t)(temp&0x00ff);
	printf("0x%04x,0x%02x,0x%02x\r\n",temp,high,low);
	return 0;
}
