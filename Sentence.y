%{
#include<stdio.h>
%}
%token A B
%%
stmt : S
        ;
S : A B A
|
;
%%
void main()
{
        printf("enter\n");
        yyparse();
        printf("valid \n");
        exit(0);
}
void yyerror()
{
        printf("invalid \n ");
        exit(0);
}



