%{
#include <stdio.h>
int ct = 0;
int xc = 0;
%}
%%
[a-zA-Z]*(ab) {
if(xc < 1)
{
xc++;
printf("\n");
}
printf("Word = %s\n", yytext); ct++;
}
%%
int main()
{
yylex();
printf("Word count = %d\n", ct);
return 0;
}
