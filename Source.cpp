#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#include <stdlib.h>
#include <string>


extern "C" int __fastcall FUNC(int fLenght, int sLenght, char *firststring,  char *secondstring, int pos);


 
void main()
{
	char* string1, * string2;
	string1 = new char[200];
	string2 = new char[200];
	int pos = 0;
	printf("Enter first string:\n");
	scanf("%s", string1);
	printf("Enter second string:\n");
	scanf("%s", string2);

	pos = FUNC(strlen(string1), strlen(string2), string1, string2, pos);
	if (pos == -1)
	{
		printf("Incorrect input data.");
	}
	else
	{
		if (pos != 0)
		{
			printf_s("Result: %i", pos);
		}
		else
		{
			printf_s("All letters is including in string");
		}
		
	}
}
