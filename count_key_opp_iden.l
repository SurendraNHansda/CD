%{
#include <stdio.h>
int key=0, id=0, op=0;
%}
KEY auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while
%%
{KEY}+ { printf("Keyword = %s\n", yytext); key++;}
(\+|-|\*|\/|\%)+ { printf("Operator = %s\n", yytext); op++;}
(_?[a-zA-Z])+[a-zA-Z0-9]* { printf("Identifier = %s\n", yytext); id++;}
. { ;}
%%
int main()
{
yylex();
printf("Keywords = %d\nOperators = %d\nIdentifiers = %d\n", key, op, id);
return 0;
}
