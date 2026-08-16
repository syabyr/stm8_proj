#include <stdio.h>
#include "getdiff.h"

int main()
{
	int i=0;
	uint16_t result;
	for(i=0;i<1024;i++)
	{
		result=GetTemp(i);
		printf("%d\r\n",result);
	}
}
