%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
void yyerror(const char*s);
%}
%token A B
%%
S:
A S B
|/*epsilon*/
;
%%
void yyerror(const char*s)
{
printf("string rejected\n");
}
int main()
{
printf("grammar:S->aSb|epsilon\n");
printf("enter the input string:");
if(yyparse()==0)
printf("string accepted\n");
return 0;
}
