void yyerror(const char *);
extern int nlinha;

void erro_semantico(char *s){
    fprintf(stderr, "Erro semantico na linha %d,\n", nlinha );
    fprintf(stderr, "%s\n\n", s );
    exit(30);
}

enum {
    INT = 10;
    LOG = 20;
};

#define TAMPILHA 100
int pilha[TAMPILHA];
int topo = -1;

void empilha (int v){
    if (topo == TAMPILHA - 1)
        yyerror("Pilha cheia");
    pilha[++topo] = v;
}

int desempilha(){
    if (topo == -1)
        yyerror("Pilha vazia");
    return pilha[topo--];
}

#define TAMTAB 100
typedef struct{
    char nome[30];
    int tipo;
    int end; //deslocamento ou endereço
} tiptab;

tiptab elemtab, tabsimb[TAMTAB];
int topotab = 0;

void inseresimbolo(tiptab elem){
    int i;
    for (i = 0; i < topotab && strcmp(elem.nome, tabsimb[i].nome) != 0; i++);
    if (i < topotab)
        erro_semantico("Identificador duplicado");
    if (topotab == TAMTAB)
        erro_semantico("Tabela de simbolos cheia");
    tabsimb[topotab++] = elem;
}

int buscasimbolo(char *nome){
    int i;
    for (i = topotab - 1; i >= 0 && strcmp(nome, tabsimb[i].nome) != 0; i--);
    if (i < 0)
        erro_semantico("Identificador nao encontrado");
    return i;
}
