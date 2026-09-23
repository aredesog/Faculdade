%{
#include "tree.c"
#define YYSTYPE ptno
#include "sintatico.h"
#include <stdlib.h>
void yyerror(char *);
%}

%%
"-"    { return MENOS; }
"+"    { return MAIS; }
"*"    { return MULT; }
"/"    { return DIV; }
"("    { return ABRE; }
")"    { return FECHA; }
"\n"   { return ENTER; }
[0-9]+ {
          yylval = criaNo('n', atoi(yytext));
          return T_NUM;
       }
[ \t]  /* faz nada */
.      yyerror("Erro léxico - símbolo desconhecido"); 

%%

int yywrap (void) { return 1; }