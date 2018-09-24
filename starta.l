%{
	#include<stdio.h>
	int a=0;

%}


%%
^(a|A)[a-zA-Z]* {a++;}
[" "](a|A)[a-zA-Z]* {a++;}
%%

int main()
{
	yyin = fopen("starta.txt","r");
	yylex();
	printf("No of words starting with a : %d\n",a);
	return 0;
}