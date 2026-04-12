/*
To executando tudo pelo SWI-PROLOG, aqui so deixo rtegistrado o conteudo de cada aula gravada.
*/

/*
Lista   |     Cabeca    |   Cauda
[a, b, c]       a           [b, c]
[coisa]         coisa       []
[]              indefinido  indefinido
[[1, 3], [2, 3, 4], []] [1, 3] [[2, 3, 4], []]
*/


pertence(X,[X|Y]).
pertence(X,[Primeiro|Resto]) :- pertence(X,Resto).

apaga(X, [X|Y], Y).
apaga(X, [Y|Z], [Y|Z1]) :- apaga (X, Z, Z1).
