/
Resolução de exercicios
/

/*EX1*/
maximo(A, [A]). % A é o maximo de uma lista que só tem A 
maximo(A, [A|B]) :- maximo(C, B), A > C. % A cabeça é maior que o maximo da cauda 
maximo(C, [A|B]) :- maximo(C, B), C >= A. % O maximo está na cauda da lista 

