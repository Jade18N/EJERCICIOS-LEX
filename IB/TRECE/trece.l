%{
#include <stdio.h>
int lista = 1;
int errores = 0;
%}
%option noyywrap

%%
[a-zA-Z_][a-zA-Z0-9_]*   { printf("Lista %d: IDENTIFICADOR  %s\n", lista, yytext); }
[0-9]+                   { printf("Lista %d: ENTERO         %s\n", lista, yytext); }
","                      { }
[ \t]+                   { }
\n                       { lista++; }
.                        { printf("Lista %d: ERROR          token no valido '%s'\n", lista, yytext); errores++; }
%%

int main(void)
{
    yylex();
    printf("-----------------------------\n");
    printf("Total de errores: %d\n", errores);
    return 0;
}
