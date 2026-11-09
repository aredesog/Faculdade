void yyerror(const char *);
extern int nlinha;

void erro_semantico(char *s){
    fprintf(stderr, "Erro semantico na linha %d,\n", nlinha );
    fprintf(stderr, "%s\n\n", s );
    exit(30);
}

enum {
    INT = 10,
    LOG = 20
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
    for (i = topotab - 1; i >= 0 && strcmp(elem.nome, tabsimb[i].nome); i--);
    
    if (i != -1 )
        erro_semantico("Identificador duplicado");

    tabsimb[topotab++] = elem;
}

int buscasimbolo(char *nome){
    int i;
    for (i = topotab - 1; i >= 0 && strcmp(nome, tabsimb[i].nome) != 0; i--);
    if (i == -1)
        erro_semantico("Identificador nao encontrado");
    return i;
}

void mostratabela(){
    printf("%10s %3s %3s\n", "Nome", "Tipo", "End");
    for(int i = 0; i < topotab; i ++){
        printf("%10s %3d %3d\n", tabsimb[i].nome, tabsimb[i].tipo, tabsimb[i].end);
    }
}

