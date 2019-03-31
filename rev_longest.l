%{
#include <stdio.h>
#include <string.h>
char* longest;
%}
longest [a-zA-Z]+
%%
{longest} {
if (yyleng > strlen(longest))
{
longest = (char*)realloc(longest, yyleng + 1);
strcpy(longest, yytext);
}
}
<*>.|\n /* skip all unrecognized text */
%%
int main()
{
longest = (char*)malloc(1);
longest[0] = '\0';
yylex();
printf("Longest string is '%s'\n", longest);
int n = strlen(longest);
char* rlongest = (char*)malloc(n+1);
int i=0;
for(i=0;i<n;i++)
rlongest[i] = longest[n-1-i];
rlongest[n] = '\0';
printf("Longest reverse string is '%s'\n", rlongest);
free(longest);
free(rlongest);
return 0;
}
