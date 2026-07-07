% Lista de Exercicios PROLOG





'''
forall - para cada X que satisfaz a condicao
between - gera numero entre
findall - colota os valores que satisfazem a condicao
maplist - aplica uym predicado a cada elemento
'''
% 1 -CONSULTA

?- forall(member(X,[1,2,3]),write(X)).
?- forall(between(1,5,I),(write(I*I),write(' '))).
?- forall(between(10,20,I),write(I:' ')).

123
1*1 2*2 3*3 4*4 5*5
10: 11: 12: 13: 14: 15: 16: 17: 18: 19: 20:


% 2 - RESULTADO

a:-a(0).
a(X):- X > 10,!.
a(X):- write(X),write(’ ’), X1 is X+1,a(X1).
?-a 

0 1 2 3 4 5 6 7 8 9 10

% 3 - PIRAMIDE em pé

wN(0):-write(0),!.
wN(N):-write(N),N1 is N-1, wN(N1),write(N).

% R:

xxx(0) :- nl, wN(0), nl.
xxx(N) :- N > 0, N1 is N-1, xxx(N1), wN(N), nl.


% 4 - ACUMULADOR DE EXPOENTE

% caso base: expoente 0, devolve o acumulador
pot(_, 0, Acc, Acc).

% caso recursivo: multiplica X pelo acumulador e decrementa Y
pot(X, Y, Acc, Result) :-
    Y > 0,
    Y1 is Y - 1,
    Acc1 is Acc * X,
    pot(X, Y1, Acc1, Result).

% predicado principal: chama com acumulador 1
pot(X, Y, Result) :-
    pot(X, Y, 1, Result).


% 5 - RESULTADO

d(0).
d(1).
?- findall([A,B], (d(A), d(B)), L).

L = [[0,0], [0,1], [1,0], [1,1]]

% 6 - PALINDROMO

palindromo([]).
palindromo([_]).
palindromo([H|T]) :-
    append(Meio, [H], T), 
    palindromo(Meio).

% 7 - METADE IGUAL

metIguais(L) :-
    append(Metade, Metade, L).


% 8 - INSERE ORDENADA/3

insOrd(X, [], [X]).
insOrd(X, [H|T], [X,H|T]) :- X <= H.
insOrd(X, [H|T], [H|R]) :- X > H, insOrd(X, T, R).

% Exercício 9 - PARTICIONA uma lista em duas
particiona([], [], []).
particiona([X], [X], []).
particiona([X,Y|T], [X|L1], [Y|L2]) :- particiona(T, L1, L2).

% Exercício 10 - merge/3 junta ord em um 3 ord
merge([], L, L).
merge(L, [], L).
merge([H1|T1], [H2|T2], [H1|R]) :- H1 <= H2, merge(T1, [H2|T2], R).
merge([H1|T1], [H2|T2], [H2|R]) :- H1 > H2, merge([H1|T1], T2, R).


'''JARRO/3'''
% CENÁRIO A: Cabe tudo (O de 8L esvazia e vira 0)
oper(despejar_8_em_5, j(X, Y, Z), j(0, NovoY, Z)) :-
    X > 0,              % Origem tem que ter água
    Y < 5,              % Destino não pode estar cheio
    X + Y <= 5,         % A soma cabe no destino
    NovoY is X + Y.     % Destino recebe tudo

% CENÁRIO B: Transborda (O de 5L enche até a boca e vira 5)
oper(despejar_8_em_5, j(X, Y, Z), j(NovoX, 5, Z)) :-
    X > 0,              % Origem tem que ter água
    Y < 5,              % Destino não pode estar cheio
    X + Y > 5,          % A soma estoura o destino
    NovoX is X - (5 - Y). % Origem fica com a sobra

'''JARRO/2'''
% CENÁRIO A: Cabe tudo (O Jarro 1 esvazia e vira 0)
transforma('transferir de 1 para 2', [X, Y], [0, NovoY]) :-
    X > 0,              % Jarro 1 tem água
    Y < 4,              % Jarro 2 não está cheio
    X + Y <= 4,         % Cabe tudo dentro do Jarro 2
    NovoY is X + Y.

% CENÁRIO B: Transborda (O Jarro 2 enche até a boca e vira 4)
transforma('transferir de 1 para 2', [X, Y], [NovoX, 4]) :-
    X > 0,              % Jarro 1 tem água
    Y < 4,              % Jarro 2 não está cheio
    X + Y > 4,          % Estoura a capacidade do Jarro 2
    NovoX is X - (4 - Y). % Jarro 1 fica com a sobra
