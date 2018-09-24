%{
	#include<stdio.h>
	int sp=0;
%}

special [!|@|#|$|%|^|&|*]

%%


{special} {sp++;}

%%

int main()
{
	yyin = fopen("special.txt","r");
	yylex();
	printf("The number of special characters are %d \n",sp);
	return 0;
}