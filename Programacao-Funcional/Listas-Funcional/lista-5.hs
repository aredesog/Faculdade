-- Lista Vazia, LIsta UNitaria e Lista Longa classificação
    classificaLista :: [Int] -> String
    classificaLista []       = "Lista Vazia"
    classificaLista [_]      = "Lista Unitária"
    classificaLista (_:_:_)  = "Lista Longa"


-- media de tres valores
    media3 x y z = (x + y + z) / 3

--dada uma lista de alunos alunos e notas , retorna os alunos com notas > media geral
    alunosAcimaMedia alunos = [ nome | (nome, nota) <- alunos, nota > mediaGeral ]
        where
            mediaGeral = mediaTotal / fromIntegral (length alunos)
            mediaTotal = sum [ nota | (_, nota) <- alunos ]

--Dada uma lista, retorna as diferenças entre elementos consecutivos.
    diferencas xs = zipWith (-) (tail xs) xs

--Escreva uma função que retorna o dígito de um número inteiro de acordo com a posição informada.


-- Escreva, em Haskell, a seguinte função:
    f1 x = if x >= 0 
              then(x + 4)/ (x + 2)
              else 2/x


--Faça uma solução para inverter os elementos de uma lista de Inteiros.
    inverteLista x = reverse x

--Dada uma lista de caracteres [Char], e um caractere a, retornar quantos caracteres da lista são iguais a a.
    contaChar xs a = length [ x | x <- xs, x == a ]