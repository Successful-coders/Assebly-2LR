#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>



extern "C" 
{
	void __fastcall FUNC(char* string1, char* string2 );
	int VAL = 0;
}

//extern void sayHello();
void main()
{
	char* string1, * string2;
	string1 = new char[200];
	string2 = new char[200];
	int pos, num;
	printf("Enter first string:\n");
	scanf("%s", string1);
	printf("Enter second string:\n");
	scanf("%s", string2);

	FUNC(string1, string2);

}
