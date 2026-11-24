%{
#include <stdio.h>
%}
%option noyywrap

DIGITO   [0-9]
LETRA    [a-zA-Z_]

%%
"if"|"else"|"while"|"int"      { printf("PALABRA RESERVADA   %s\n", yytext); }
{LETRA}({LETRA}|{DIGITO})*     { printf("IDENTIFICADOR       %s\n", yytext); }
{DIGITO}+                      { printf("NUMERO ENTERO       %s\n", yytext); }
[ \t\n]+                       { }
.                              { printf("OTRO SIMBOLO        %s\n", yytext); }
%%

int main(void)
{
    yylex();
    return 0;
}
