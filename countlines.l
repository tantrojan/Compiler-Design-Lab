%{
	#include<stdio.h>
	int lines=0,ch=0;
%}

%%

\n { lines++; }
. { ch++; }

%%

int main()
{
	yylex();
	printf("The number of characters are %d \nThe number of lines are %d",ch,lines);
	return 0;
}