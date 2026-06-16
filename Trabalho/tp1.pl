/*TRABALHO PROLOG - GUILHERME DE OLIVEIRA AREDES - 2025.1.08.026 */

/*Atv 1 - Ordenção de Listas de Listas*/

% Predicado principal
lsort(X, Y) :-
    mapear_tamanhos(X, Z),
    keysort(Z, W),
    remover_chaves(W, Y).

% Garante que cada sublista gere exatamente um par N-H
mapear_tamanhos([], []).
mapear_tamanhos([H | T], [N-H | R]) :-
    length(H, N),
    mapear_tamanhos(T, R).

% Garante que apenas o elemento V seja extraído do par N-V
remover_chaves([], []).
remover_chaves([_N-V | T1], [V | T2]) :-
    remover_chaves(T1, T2).

