%{
#include <stdio.h>
%}
%option noyywrap

%%
"+"	{ printf("%-3s ARITMETICO  suma\n", yytext); }
"-"     { printf("%-3s ARITMETICO  resta\n", yytext); }
"*"     { printf("%-3s ARITMETICO  multiplicacion\n", yytext); }
"/"     { printf("%-3s ARITMETICO  division\n", yytext); }
"<="     { printf("%-3s RELACIONAL  menor o igual que\n", yytext); }
">="     { printf("%-3s RELACIONAL  mayor o igual que\n", yytext); }
"=="     { printf("%-3s RELACIONAL  igual a\n", yytext); }
"!="     { printf("%-3s RELACIONAL  distinto de\n", yytext); }
"<"     { printf("%-3s RELACIONAL  menor que\n", yytext); }
">"     { printf("%-3s RELACIONAL  mayor que\n", yytext); }
[a-zA-Z0-9_]+	{}
[ \t\n]+	{}
.	{ printf("%-3s NO ES OPERADOR\n", yytext); }
%%

int main(void)
{
	yylex();
	return 0;
}









