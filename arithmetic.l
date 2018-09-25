%{
	#include<stdio.h>
	int OPERAND=0;
	int OPERATOR=0;
	int flag=0;
%}


operator [+-*/]
numbers [0-9]+
identifiers [a-zA-Z]([a-zA-Z]|[0-9])*

%%

{operator} {OPERATOR++;}
{identifiers} {OPERAND++;}
\n {
		if(OPERAND!=(OPERATOR+1))
	{
		flag=1;
	}
	if(flag==0)
	{
		printf("VALID\n");
	}
	else
	{
		printf("NOT VALID\n");
	}
	flag=0;
	OPERAND=0;
	OPERATOR=0;
}
%%

int main()
{
	yyin =fopen("arithmetic.txt","r");
	yylex();

	return 0;
}
