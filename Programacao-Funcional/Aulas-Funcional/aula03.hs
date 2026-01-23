--Tuplas

--fst::(a,b) -> a 
--snd::(a,b) -> b

--Defina uma funcao que dado um mes, um dia e um ano retorna a data
    --date mes dia ano = (mes, dia, ano)

--Compreesnsao de Listas
    --testeInicial lista = [1| _ <- lista ]

--Retorna o quadrado dos itens
    --quadrados x = [x*x| x <- [1..5]]

--Retorna os numeros pares da lista
    --pares lista = [x| x <- lista, mod x 2 == 0]

--Crie uma funcao que retorne os quadrado dos elementos pares de uam lista
    --paresAoQuadrado lista = [x*x| x <- [1..10], mod x 2 == 0]

--Crie uma funcao que, dada uma lista de tuplas, retorne uma lista com os valores quadrados de cada elemento da tupla 
    --tuplasAoQuadrado tuplas = [(x*x , y*y)| (x,y) <- tuplas]

--Crie uma funcao que dada uma lista de entrada, retorne numeros maiores que 10 e impares
    --filtrar xs = [x | x <- xs, mod x 2 == 1, x > 10]

--Gere todas as combinacoes possiveis entre os jogadores e o numero das camisas
    --jogadoresCamisas = [(x,y)| x <- [10,11],y <-["Romario","Rivaldo"]]

--Como sera produzida a seguinte notacao em haskell {2x | x E N/ x < 5}
    --haskell lista = [2*x | x <- lista, x<5]

--Crie uma funcao triangulosEquilateros que, dado com intervalos [1..10] retorne todos os triangulos equilateros
    --triangulosEquilateros tuplas = [(x,y,z)| x <-[1..10], y<-[1..10], z<-[1..10]]

--Crie uma funcao triangulosRetangulos que, dado com intervalos [1..10] retorne todos os triangulos retangulos
    --triangulosRetangulos tuplas = [(x,y,z)| x <-[1..10], y<-[1..10], z<-[1..10], ((x*x)+(y*y) == (z*z))]

--Desafio -> Crie uma funcao triangulosRetangulos que, dado com intervalos [1..10] retorne todos os triangulos retangulos sem repeticao
    --triaguloRetngulo listas = [(x,y,z)| x <- [1..10], y <- [1..10], z <- [1..10], ((x*x)+(y*y) == (z*z)) &&  ]
