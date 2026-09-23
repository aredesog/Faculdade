%{
#include <stdio.h>
#include "lexico.c"
#define YYSTYPE ptno
ptno Raiz;
%}

%token ENTER
%token MAIS
%token MENOS
%token MULT
%token DIV
%token NUMERO
%token ABRE
%token FECHA
%token T_NUM

%start linha

%left MAIS MENOS
%left MULT DIV

%%

linha:
     linha expressao ENTER {printf ("Resultado: %d\n", $2);}
    ;

expressao:
      expressao MAIS expressao { $$ = $1 + $3; }
    | expressao MENOS expressao { $$ = $1 - $3; }
    | expressao MULT expressao { $$ = $1 * $3; }
    | expressao DIV expressao { $$ = $1 / $3; }
    | ABRE expressao FECHA { $$ = $2; }
    | T_NUM { $$ = $1; }
    ;

%%


void yyerror (char *msg) {
    printf("Erro: %s\n", msg);
} 

int main() {
    yyparse();
    return 0;
}
