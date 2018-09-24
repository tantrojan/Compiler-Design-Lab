%{
	#include<stdio.h>
	int lines=0,ch=0;
%}

newline \n
all .

%%

{newline} {lines++;}
{all}	{ch++;}

%%

int main()
{
	yyin = fopen("sample.txt","r");
	yylex();
	printf("The number of characters are %d \nThe number of lines are %d\n",ch,lines);
	return 0;
}