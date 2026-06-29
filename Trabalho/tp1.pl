/*TRABALHO PROLOG - GUILHERME DE OLIVEIRA AREDES - 2025.1.08.026*/

% ATIVIDADE 1 - A:

lsort(ListaEntrada, ListaOrdenada) :-
    mapear_tamanhos(ListaEntrada, ListaComTamanhos),
    bubble_sort(ListaComTamanhos, ListaOrdenadaComTamanhos),
    remover_tamanhos(ListaOrdenadaComTamanhos, ListaOrdenada).

mapear_tamanhos([], []).
mapear_tamanhos([Sublista | Resto], [[Tamanho, Sublista] | RestoComTamanhos]) :-
    length(Sublista, Tamanho),
    mapear_tamanhos(Resto, RestoComTamanhos).

% Bubble Sort
bubble_sort(Lista, Ordenada) :-
    passagem(Lista, Lista1),
    bubble_sort(Lista1, Ordenada).
bubble_sort(Ordenada, Ordenada).

passagem([[T1,S1],[T2,S2]|Resto], [[T2,S2],[T1,S1]|Resto]) :-
    T1 > T2.
passagem([Par|Resto], [Par|RestoPassagem]) :-
    passagem(Resto, RestoPassagem).

remover_tamanhos([], []).
remover_tamanhos([[Tamanho, Sublista] | Resto], [Sublista | RestoSemTamanhos]) :-
    remover_tamanhos(Resto, RestoSemTamanhos).

% ATIVIDADE 2- B 

lfsort(ListaEntrada, ListaOrdenada) :-
    mapear_tamanhos(ListaEntrada, ListaComTamanhos),
    calcular_frequencias(ListaComTamanhos, ListaComFrequencias),
    bubblesort_freq(ListaComFrequencias, ListaOrdenadaComFreq),
    remover_extras(ListaOrdenadaComFreq, ListaOrdenada).

contar_frequencia(_, [], 0).
contar_frequencia(Tamanho, [[Tamanho, _] | Resto], Frequencia) :-
    contar_frequencia(Tamanho, Resto, FrequenciaResto),
    Frequencia is FrequenciaResto + 1.
contar_frequencia(Tamanho, [[OutroTamanho, _] | Resto], Frequencia) :-
    Tamanho \= OutroTamanho,
    contar_frequencia(Tamanho, Resto, Frequencia).

calcular_frequencias(Lista, ListaComFreq) :-
    calcular_frequencias(Lista, Lista, ListaComFreq). 
'''
Na primeira lisat ele vai removendo os elementos ja processados, na segunda lista ele contabiliza
da lista original quantas vezes aparece/freq
'''

calcular_frequencias([], _, []).
calcular_frequencias([[Tamanho, Sublista] | Resto], ListaToda, [[Frequencia, Tamanho, Sublista] | RestoComFreq]) :-
    contar_frequencia(Tamanho, ListaToda, Frequencia),
    calcular_frequencias(Resto, ListaToda, RestoComFreq).

bubblesort_freq(Lista, Ordenada) :-
    passagem_freq(Lista, Lista1),
    Lista \= Lista1,
    bubblesort_freq(Lista1, Ordenada).
bubblesort_freq(Ordenada, Ordenada).

passagem_freq([[F1,T1,S1],[F2,T2,S2]|Resto], [[F2,T2,S2],[F1,T1,S1]|Resto]) :-
    F1 > F2.
passagem_freq([Par|Resto], [Par|RestoPassagem]) :-
    passagem_freq(Resto, RestoPassagem).

remover_extras([], []).
remover_extras([[_Freq, _Tamanho, Sublista] | Resto], [Sublista | RestoSemExtras]) :-
    remover_extras(Resto, RestoSemExtras).


'''
Ótimas perguntas que eu faria:

"Por que você precisa passar a Lista duas vezes no calcular_frequencias? Não daria pra fazer com um só parâmetro?"
"Qual é a diferença entre o primeiro e o terceiro caso do contar_frequencia? Por que os dois são necessários?"
"Por que no bubblesort_freq você usa Lista \= Lista1 e no bubble_sort você não usa?"
"Como funciona a recursão no mapear_tamanhos? O que acontece em cada nível?"
"Se você remover o underscore _ das variáveis que não usa, o código deixa de funcionar ou só gera aviso?"
"Explica passo a passo o que acontece quando você chama lfsort([[a,b,c],[d,e],[o]], L)."

Essas seriam as principais!
'''

