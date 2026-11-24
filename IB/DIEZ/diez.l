%{
#include <stdio.h>
int validos = 0;
int invalidos = 0;
%}
%option noyywrap

USUARIO   [a-zA-Z0-9._-]+
PARTE     [a-zA-Z0-9-]+
CORREO    {USUARIO}@{PARTE}(\.{PARTE})*\.[a-zA-Z]{2,}

%%
{CORREO}                    { printf("CORREO VALIDO     %s\n", yytext); validos++; }
[a-zA-Z0-9.@-]*@[a-zA-Z0-9.@-]*   { printf("CORREO INVALIDO   %s\n", yytext); invalidos++; }
[a-zA-Z0-9._-]+             { }
.|\n                        { }
%%

int main(void)
{
    yylex();
    printf("-----------------------------\n");
    printf("Correos validos  : %d\n", validos);
    printf("Correos invalidos: %d\n", invalidos);
    return 0;
}
