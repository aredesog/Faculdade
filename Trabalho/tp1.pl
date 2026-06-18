/*TRABALHO PROLOG - GUILHERME DE OLIVEIRA AREDES - 2025.1.08.026 */

/*Atv 1- Parte A: Ordenção de Listas de Listas*/

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

/* Atv 1 - Parte B: Ordenação pela frequência dos comprimentos */

lfsort(X, Y) :-
    mapear_tamanhos(X, Z),            % Reutiliza seu predicado: gera [Tam-Sublista]
    extrair_tamanhos(Z, ListaTans),   % Extrai apenas os números dos tamanhos
    mapear_frequencias(Z, ListaTans, W), % Transforma em [Freq-Sublista]
    keysort(W, K),                    % Ordena pela frequência crescente
    remover_chaves(K, Y).             % Reutiliza seu predicado: limpa e entrega as sublistas


extrair_tamanhos([], []).
extrair_tamanhos([Tam-_Sub | T1], [Tam | T2]) :-
    extrair_tamanhos(T1, T2).


contar_ocorrido(_, [], 0).
contar_ocorrido(X, [H|T], Qtd) :-
    X =:= H,
    contar_ocorrido(X, T, QtdResto),
    Qtd is QtdResto + 1.
contar_ocorrido(X, [H|T], Qtd) :-
    X =\= H,
    contar_ocorrido(X, T, Qtd).

mapear_frequencias([], _, []).
mapear_frequencias([Tam-Sub | T1], ListaTans, [Freq-Sub | T2]) :-
    contar_ocorrido(Tam, ListaTans, Freq),
    mapear_frequencias(T1, ListaTans, T2).
     