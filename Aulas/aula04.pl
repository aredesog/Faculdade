/
Resolução de exercicios
/

/*EX1*/
maximo(A, [A]). % A é o maximo de uma lista que só tem A 
maximo(A, [A|B]) :- maximo(C, B), A > C. % A cabeça é maior que o maximo da cauda 
maximo(C, [A|B]) :- maximo(C, B), C >= A. % O maximo está na cauda da lista 

/*EX2*/
comprimento(0,[]).
comprimento(N,[_|B]) :-comprimento(N1,B) , N is N1 + 1.

/*EX3*/
nesimo(1, [X|_], X).
nesimo(N, [_|T], X) :-N > 1, N1 is N - 1, nesimo(N1, T, X).

/*EX4*/
total([], 0).
total([H|T], S) :- total(T, S1), S is H + S1.