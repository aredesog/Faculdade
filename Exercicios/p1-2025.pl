/*compara*/
compara([], []).
compara([_|X], [_|Y]) :- 
    compara(X, Y).

/*penultimo*/
penultimo ([A,_], A) :-!.
penultimo ([_|B], C) :- penultimo (B, C).

resolucao
nono([a,b,c], [a,a|Y]).
nono([b,c], [b,b|Y]).
nono([c], [c,c|Y]).
nono([],[]).
nono([a,b,c],L)