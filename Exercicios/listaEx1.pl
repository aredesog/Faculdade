/*EX-1* - analisa/1 */
analisa_lista([]) :- write('Lista vazia').
analisa_lista([X|Y]) :- write('A cabeça é '), 
    write(X), write(' Cauda: '), write(Y).

/*EX-2 - remove/2 */
remove_duplicados([],[]).

remove_duplicados([X|Y], R) :- member(X, Y),
    remove_duplicados(Y, R).

remove_duplicados([X|Y], [X|R]) :- \+ member(X, Y),
    remove_duplicados(Y, R).

/*EX-3 - troca/4 */
troca([],_,_,[]).
troca([X|Y], A, B, [B|R]) :- X ==
 A, troca(Y, A, B, R).
troca([X|Y], A, B, [X|R]) :- X \= A,
    troca(Y, A, B, R).

/*EX-4 - potencia */
potencia([], [[]]).
potencia([H|T], P) :-
    potencia(T, PT),
    adiciona(H, PT, P1),
    append(P1, PT, P).

adiciona(_, [], []).
adiciona(H, [X|Xs], [[H|X]|Ys]) :-
    adiciona(H, Xs, Ys).

