%{
#include <stdio.h>
#include <ctype.h>
%}
%token DIGIT
%%
line:E '\n' {printf("%d", $1);};
E:E E'+' {$$ = $1 + $2;}
|E E'*' {$$ = $1 * $2;}
|E E'-' {$$ = $1 - $2;}
|E E'/' {$$ = $1 / $2;}
|DIGIT
;
%%
yylex()
{
	char c = getchar();
	if(isdigit(c))
	{
		yylval = c - '0';
		return DIGIT;
	}
	return c;
}
int yyerror()
{
	return 1;
}

