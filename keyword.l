%{
	#include<stdio.h>

%}

keyword "for"|"if"|"else"|"switch"|"goto"

%%

{keyword} {}
. {printf("%s",yytext);}


%%

int main()
{
	yyin = fopen("keyword.txt","r");
	yylex();
	printf("\n");
	return 0;
}