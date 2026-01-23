-- Gere os primeiros n números ímpares a partir de 1.
    primeirosImpares x = take x [n | n <- [1..], mod n 2 /= 0]

-- Crie uma sequência infinita de um caractere c e devolva os primeiros n caracteres.
    repeticaoChar c n = take n (repeat c)

-- Defina a função oDoMeio3 que, dados 3 inteiros, devolve o inteiro do meio (ou seja, a mediana).
    minVal x y z =  minimum [x,y,z]
    maxVal x y z = maximum [x,y,z]
    oDoMeio3 x y z = head [n | n <- [x,y,z], n /= minVal x y z, n /= maxVal x y z]

-- Defina a função quantosAcimaDaMedia que, dados 3 inteiros, retorna o
    media x y z =  (x + y + z) `div` 3
    quantosAcimaDaMedia x y z = length [n | n <- [x,y,z], n > media x y z]

-- Defina a função numero2 que, dados dois caracteres, retorna um inteiro em
    numero2 x y
        | x `elem` ['0'..'9'] && y `elem` ['0'..'9'] = read [x, y]
        | otherwise = 0

-- Defina a função anoBissexto que, dado um ano (um inteiro), devolve True se
    anoBissexto x 
        | mod x 400 == 0  && mod x 100 /= 0 = True
        | mod x 4 == 0  && mod x 100 /= 0 = True
        | otherwise = False

-- Crie uma função que divida uma lista ao meio e devolva as duas partes (como
    quant lista = length lista
    metade lista 
        | mod (quant lista) 2 == 0 = [take (quant lista `div` 2) lista, drop (quant lista `div` 2) lista]
        | otherwise = [take ((quant lista `div` 2) + 1) lista, drop ((quant lista `div` 2) + 1) lista]

-- Crie uma função que elimine o primeiro e o último elemento de uma lista.
    semExtremos lista
        | length lista < 2 = []
        | otherwise = init (tail lista)

-- Dadas duas extremidades, produza a lista com todos os valores entre elas,
    intervalo x y
        | x <= y = enumFromTo x y --[x..y]
        | otherwise = [x,x-1..y]

--Dada uma lista, divida-a ao meio e inverta a ordem das duas metades.
    quantMet lista = length lista
    metadeLista lista  = drop (quant lista `div` 2) lista ++ take (quant lista `div` 2) lista


-- Defina uma função que insere um elemento em uma posição dada,
    inserePos pos elemento lista = take pos lista ++ [elemento] ++ drop pos lista

-- Defina uma função que dado um inteiro troca o algarismo das unidades com o
    trocaPosicao x = resto * 100 + u * 10 + d
        where
            u = x `mod` 10
            d = (x `div` 10) `mod` 10
            resto = x `div` 100

-- -Escreva, em Haskell, a função invertInt::Int->Int que inverta os dígitos de um
    invertInt x = read (reverse (show x)) :: Int


-- Crie uma função que determine se um número é palíndromo (igual quando invertido).
    palindromo n = n == (read (reverse (show n)) :: Int)

-- Defina a função dezenas que, dado um inteiro, retorna o dígito das dezenas.
    dezenas x = (x `div` 10) `mod` 10