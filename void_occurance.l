%{
#include<stdio.h>
int count=1;	
%}

%%
\n {count++;}
void {printf("Void Found at line %d .\n",count);}
.	{}
%%

int yywrap()
{
return 1;
}
int main()
{
yylex();
return 0;
}

