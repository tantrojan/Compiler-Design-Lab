%{
	#include<stdio.h>
	int single_comments=0;
	int multi_comments=0;
	int c=0;
%}

%%

"//" { single_comments++; c=1;}

. { if (c==0){ printf("%s",yytext);}}

\n {if(c==1)c=0;printf("%s",yytext);}

"/*" { multi_comments++; c=2;}

"*/" { multi_comments++; c=0;}

%%

int main()
{
	; extern FILE* yyin;
	yyin = fopen("comments.txt","r");
	yylex();
	printf("The number of single line comments are %d \nThe number of multi line comments are %d\n",single_comments,multi_comments/2);
	return 0;
}