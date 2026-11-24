%{
#include <stdio.h>
#include <stdlib.h>
%}
%option noyywrap

DIGITO   [0-9]
LETRA    [a-zA-Z]

%%
{DIGITO}+                                          { printf("NUMERO          %s\n", yytext); }
[+-]?{DIGITO}+(\.{DIGITO}+)?([eE][+-]?{DIGITO}+)?  { printf("NUMERO REAL     %s\n", yytext); }
{LETRA}({LETRA}|{DIGITO})*                         { printf("IDENTIFICADOR   %s\n", yytext); }
[ \t\n]+                                           { }
.                                                  { printf("NO RECONOCIDO   %s\n", yytext); }
%%

int main(void)
{
    yylex();
    return 0;
}
