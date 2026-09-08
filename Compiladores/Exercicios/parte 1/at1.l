identificador [a-zA-Z][a-zA-Z0-9]*
numero        [0-9]+
espaco        [ \t]+
novalinha     \n

%%

"programa"    { printf("%s: palavra reservada\n", yytext); }
"inicio"      { printf("%s: palavra reservada\n", yytext); }
"fimprograma" { printf("%s: palavra reservada\n", yytext); }

"leia"        { printf("%s: palavra reservada\n", yytext); }
"escreva"     { printf("%s: palavra reservada\n", yytext); }

"se"          { printf("%s: palavra reservada\n", yytext); }
"entao"       { printf("%s: palavra reservada\n", yytext); }
"senao"       { printf("%s: palavra reservada\n", yytext); }
"fimse"       { printf("%s: palavra reservada\n", yytext); }

"enquanto"    { printf("%s: palavra reservada\n", yytext); }
"faca"        { printf("%s: palavra reservada\n", yytext); }
"fimenquanto" { printf("%s: palavra reservada\n", yytext); }

"+"           { printf("%s: operador aritimetico soma\n", yytext); }
"-"           { printf("%s: operador aritimetico subtracao\n", yytext); }
"*"           { printf("%s: operador aritimetico multiplicacao\n", yytext); }
"/"           { printf("%s: operador aritimetico divisao\n", yytext); }

"<-"          { printf("%s: operador atribuicao\n", yytext); }
"("           { printf("%s: operador abre parenteses\n", yytext); }
")"           { printf("%s: operador fecha parenteses\n", yytext); }

"inteiro"     { printf("%s: palavra reservada\n", yytext); }
"logico"      { printf("%s: palavra reservada\n", yytext); }
"V"           { printf("%s: constante logica de verdade\n", yytext); }
"F"           { printf("%s: constante logica de falsidade\n", yytext); }

{identificador} { printf("%s: identificador\n", yytext); }
{numero}        { printf("%s: numero\n", yytext); }
{espaco}        /* ignora espacos em branco */
{novalinha}     /* ignora nova linha */
.               { printf("%s: simbolo nao reconhecido\n", yytext); }

%%

int yywrap(void) {
    return 1;
}

int main(void) {
    yylex();
    return 0;
}