%{
#include <stdio.h>
%}
%option noyywrap

%%
[01]+          {
                   unsigned long long valor = 0;
                   int i;
                   for (i = 0; yytext[i] != '\0'; i++)
                       valor = valor * 2 + (yytext[i] - '0');
                   printf("BINARIO %-12s -> DECIMAL %llu\n", yytext, valor);
               }
[a-zA-Z0-9]+   { printf("NO ES BINARIO %s\n", yytext); }
[ \t\n]+       { }
.              { printf("NO ES BINARIO %s\n", yytext); }
%%

int main(void)
{
    yylex();
    return 0;
}
