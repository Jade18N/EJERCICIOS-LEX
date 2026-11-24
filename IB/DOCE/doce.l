%{
#include <stdio.h>
#include <stdlib.h>
%}
%option noyywrap

HEX   [0-9a-fA-F]

%%
0[xX]{HEX}+    {
                   unsigned long long valor = strtoull(yytext, NULL, 16);
                   printf("HEXADECIMAL %-16s -> DECIMAL %llu\n", yytext, valor);
               }
[a-zA-Z0-9]+   { printf("NO ES HEXADECIMAL %s\n", yytext); }
[ \t\n]+       { }
.              { printf("NO ES HEXADECIMAL %s\n", yytext); }
%%

int main(void)
{
    yylex();
    return 0;
}
