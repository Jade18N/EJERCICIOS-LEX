%{
#include <stdio.h>
int mayusculas = 0;
int minusculas = 0;
int digitos    = 0;
int espacios   = 0;
int otros      = 0;
%}
%option noyywrap

%%
[A-Z]      { mayusculas++; }
[a-z]      { minusculas++; }
[0-9]      { digitos++; }
[ \t\n]    { espacios++; }
.          { otros++; }
%%

int main(void)
{
    yylex();
    printf("===== CLASIFICACION DE CARACTERES =====\n");
    printf("Letras mayusculas : %d\n", mayusculas);
    printf("Letras minusculas : %d\n", minusculas);
    printf("Digitos           : %d\n", digitos);
    printf("Espacios en blanco: %d\n", espacios);
    printf("Otros caracteres  : %d\n", otros);
    printf("Total             : %d\n", mayusculas + minusculas + digitos + espacios + otros);
    return 0;
}
