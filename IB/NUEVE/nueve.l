%{
#include <stdio.h>
int contador[10] = {0};
%}
%option noyywrap

%%
[0-9]     { contador[yytext[0] - '0']++; }
.|\n      { }
%%

int main(void)
{
    int i, total = 0;
    yylex();
    printf("+--------+-------+\n");
    printf("| Digito | Veces |\n");
    printf("+--------+-------+\n");
    for (i = 0; i < 10; i++) {
        printf("|   %d    | %5d |\n", i, contador[i]);
        total += contador[i];
    }
    printf("+--------+-------+\n");
    printf("| Total  | %5d |\n", total);
    printf("+--------+-------+\n");
    return 0;
}

