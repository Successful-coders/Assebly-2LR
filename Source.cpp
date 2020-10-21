#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#include <stdlib.h>
#include <string>


extern "C" int __fastcall FUNC(char *firststring, int fLenght, char *secondstring,int sLenght, int pos);

void Error()
{

}
int FUNCx(char* firststring, int fLengh, char* secondstring, int sLengh, int pos)
{

	firststring;
	if (fLengh == 0)
	{
		return -1;
	}
	if (sLengh == 0)
		return -1;
	if (sLengh < fLengh)
		return -1;
	int k = 0;
	for (int i = 0; i <= fLengh; i++)
	{
		k = 0;
		for (int j = 0; j <= sLengh; j++)
		{
			if (firststring[i] == secondstring[j])
			{
				k++;
			}

		}
		if (k == 0)
		{
			pos = i + 1;
			return pos;
		}
	}
	return pos;
}
 
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

	pos = FUNC(string1, strlen(string1), string2, strlen(string2), pos);
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
			printf_s("All letter in first string including in second string");
		}
	}
}
