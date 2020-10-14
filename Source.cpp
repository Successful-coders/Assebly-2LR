#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>


extern "C"
{
	void _copy();
	int _val = 0;
}

 
void main()
{
	_copy();
	printf("VAL = %d\n", _val);
	printf("VAL = %d\n", 4);
}
