% Lista de Exercicios PROLOG

% 1

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


% 2

a:-a(0).
a(X):- X > 10,!.
a(X):- write(X),write(’ ’), X1 is X+1,a(X1).
?-a 

0 1 2 3 4 5 6 7 8 9 10

% 3 


