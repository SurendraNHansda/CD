%{
#include <stdio.h>
#include <ctype.h>
%}
KEY auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while
%%
{KEY} {
int i=0;
for(i=0;i<yyleng;i++)
printf("%c", toupper(yytext[i]));
}
%%
int main()
{
yylex();
return 0;
}
