/*TRABALHO PROLOG NA UNHA*/

'ATIVIDADE 1 - A:'

lsort(ListaEntrada, ListaOrdenada) :-
    mapear_tamanhos(ListaEntrada, ListaComTamanhos),
    bubble_sort(ListaComTamanhos, ListaOrdenadaComTamanhos),
    remover_tamanhos(ListaOrdenadaComTamanhos, ListaOrdenada).

% Associa cada sublista ao seu tamanho
mapear_tamanhos([], []).
mapear_tamanhos([Sublista | Resto], [[Tamanho, Sublista] | RestoComTamanhos]) :-
    length(Sublista, Tamanho),
    mapear_tamanhos(Resto, RestoComTamanhos).

% Bubble Sort
bubble_sort(Lista, Ordenada) :-
    passagem(Lista, Lista1), !,
    bubble_sort(Lista1, Ordenada).
bubble_sort(Ordenada, Ordenada).

% Uma passagem - troca pares fora de ordem
passagem([[T1,S1],[T2,S2]|Resto], [[T2,S2],[T1,S1]|Resto]) :-
    T1 > T2.
passagem([Par|Resto], [Par|RestoPassagem]) :-
    passagem(Resto, RestoPassagem).

% Remove os tamanhos, ficando com as sublistas
remover_tamanhos([], []).
remover_tamanhos([[_Tamanho, Sublista] | Resto], [Sublista | RestoSemTamanhos]) :-
    remover_tamanhos(Resto, RestoSemTamanhos).


'ATIVIDADE 2 - B: '

