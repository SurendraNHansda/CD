%{
#include <stdio.h>
int vow=0, con=0;
%}
VOW a|e|i|o|u|A|E|I|O|U
CON b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|y|z|B|C|D|F|G|H|J|K|L|M|N|P|Q|R|S|T|V|W|X|Y|Z
%%
{VOW} {vow++;}
{CON} {con++;}
%%
int main()
{
yylex();
printf("Vowels = %d\nConsonants = %d\n", vow, con);
return 0;
}
