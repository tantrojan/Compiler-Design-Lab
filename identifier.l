%{
	#include<stdio.h>
	int i=0;
%}

%%

[a-zA-Z]([a-zA-Z]|[0-9])* {i++;}
.* {}
%%

int main()
{
	yyin = fopen("identifier.txt","r");
	yylex();
	printf("The number of identifiers are : %d\n",i);
	return 0;
}
