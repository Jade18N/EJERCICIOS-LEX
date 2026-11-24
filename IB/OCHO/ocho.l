%{
#include <stdio.h>
#include <ctype.h>
%}
%option noyywrap

%%
[A-Z]     { putchar(tolower(yytext[0])); }
.|\n      { ECHO; }
%%

int main(void)
{
    yylex();
    return 0;
}
