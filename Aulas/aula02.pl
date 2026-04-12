/*
Aula sobre clausulas e programacao logica(sintaxe)
*/ 

/*
m = 1 ; n = 0 (FATO) | A  <-
m = 1 ; n > 0 (REGRA) | A <- b1,b2...bn
m = 0 ; n > 0 (PERGUNTA) | <- b1,b2 ... bn
m = 0 ; n = 0 (NULA) | <-

Uso muito comum na regra po refutação!


Na sintaxe Prolog:

    CLAUSULAS

    Conjunção (A , B)
    Disjunção (A ; B)
    Condicional (A :- B)

*/

/* fatos */

pai(joao, joaquim).
pai(joao, lucas).
pai(pedro, silvia).
pai(joaquim, bruno).

mae(maria,joaquim).
mae(maria,lucas).
mae(laura, silvia).
mae(silvia, bruno).

/*regras* /

esposa(X,Y) :- pai(Y,Z),mae(X,Z).
avo(A,C) :- pai(A,B), pai(B,C).
avo(A,C) :- pai(A,B), mae(B,C).

antecessor(X,Y) :- pai(X,Y).
antecessor(X,Y) :- mae(X,Y).
antecessor(X,Y) :- pai(X,Z), antecessor(Z,Y).
antecessor(X,Y) :- mae(X,Z), antecessor(Z,Y).
