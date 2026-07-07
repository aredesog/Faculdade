'''
1 - Qual é o resultado da seguinte consulta prolog?
'''
?- length (A,3), maplist (=('a'),A).

length(A,3) cria uma lista com 3 elementos. maplist(=('a'),A) unifica cada elemento com 'a'.
Resposta: A = [a,a,a]

'''
2 - Implementar xxx/3 sem length e maplist:
'''
xxx(0, _, []).
xxx(N, X, [X|T]) :-
    N > 0,
    N1 is N-1,
    xxx(N1, X, T).


'''
3 - Qual o resultado da consulta?
'''
ap([], L, L).
ap([A|B], C, [A|D]) :- ap(B, C, D).
nonono(U, L) :- ap(_, [U], L).

'''
a) ?- nonono(X, [1,2,3,4]) → X = 4
b) Nome do predicado: ultimo elemento
'''

'''
4 - Modificar emordem para mostrar só nós intermediários (exceto folhas):
'''
emordem([]).
emordem(no(I, E, D)) :-
    emordem(E),
    (E \= [] ; D \= []),
    write(I), nl,
    emordem(D).

'''
5 - Despejar jarro de 8 litros no de 5:
'''

% caso 1: nao sobra nada no jarro de 8
oper(despejar8em5, j(A,B,C), j(0,B1,C)) :-
    A =< 5-B,
    B1 is B+A.

% caso 2: sobra agua no jarro de 8
oper(despejar8em5, j(A,B,C), j(A1,5,C)) :-
    A > 5-B,
    TransF is 5-B,
    A1 is A-TransF.