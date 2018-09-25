%{
	#include<stdio.h>
	int i=0;
%}

%%
[a-zA-Z]+ {if(yyleng>10)i++;}
%%

int main()
{
	yylex();
	printf("The number of words greater than 10 : %d\n",i);
	return 0;
}
