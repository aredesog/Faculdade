% Lista de Exercicios PROLOG

% 1 -CONSULTA

'''
forall - para cada X que satisfaz a condicao
between - gera numero entre
findall - colota os valores que satisfazem a condicao
maplist - aplica uym predicado a cada elemento
'''

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

% 3 - PIRAMIDE

wN(0):-write(0),!.
wN(N):-write(N),N1 is N-1, wN(N1),write(N).

% R:

xxx(0) :- nl, wN(0), nl.
xxx(N) :- N > 0, N1 is N-1, xxx(N1), wN(N), nl.

'''
xxx(3):
  N=3 > 0, N1=2, chama xxx(2)...
    xxx(2):
      N=2 > 0, N1=1, chama xxx(1)...
        xxx(1):
          N=1 > 0, N1=0, chama xxx(0)...
            xxx(0):
              nl, wN(0) → imprime "0", nl
          wN(1) → imprime "101", nl
        xxx(1) terminou
      wN(2) → imprime "21012", nl
    xxx(2) terminou
  wN(3) → imprime "3210123", nl
xxx(3) terminou
'''

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

'''
pot(3, 4, Result)        → wrapper, chama pot(3, 4, 1, Result)
pot(3, 4, 1, Result)     → 1*3=3,   chama pot(3, 3, 3, Result)
pot(3, 3, 3, Result)     → 3*3=9,   chama pot(3, 2, 9, Result)
pot(3, 2, 9, Result)     → 9*3=27,  chama pot(3, 1, 27, Result)
pot(3, 1, 27, Result)    → 27*3=81, chama pot(3, 0, 81, Result)
pot(3, 0, 81, Result)    → caso base! devolve Result = 81
'''

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

    '''
    qual lista Meio, que quando juntada com [a], forma [b,b,a]?" —
    ou seja, ele remove o último elemento a e devolve o Meio.

    ?- append(Meio, [a], [b,b,a]).
    Meio = [b,b].
    '''

% 7 - METADE IGUAL

metIguais(L) :-
    append(Metade, Metade, L).

'''
append(Metade, Metade, [a,b,c,a,b,c])
→ tenta Metade=[] → [] + [] = [] ≠ [a,b,c,a,b,c] → falha
→ tenta Metade=[a] → [a]+[a] = [a,a] ≠ [a,b,c,a,b,c] → falha
→ tenta Metade=[a,b] → falha
→ tenta Metade=[a,b,c] → [a,b,c]+[a,b,c] = [a,b,c,a,b,c] ✓ → sucesso!
'''  

% 8 - INSERE ORDENADA

