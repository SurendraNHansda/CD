%{
#include "y.tab.h"
%}
%%
"Abhisek"|"Pie"|"cricket"|"Ramesh"|"song" {return A;}
"eats"|"sings"|"plays" {return B;}
[ \t] {;}
\n {return 0;}
. {return yytext[0];}
%%

