--Para compilar qualquer um dos programas, usar o ghci, comentar os demais, e chamar a funçao com seus respectivos paramentros.


--Declaração de Função
        dobro x = x + x
        triplo x = x + x + x

--Declaração de print
    meuPrimeiroCodigo = "Programar em haskel é legal"

--If e Else
    verificalidade x = if x >= 18 
        then "vc é maior de idade e pode ser respondavel por seus atos"
        else "ta tudo certo"

--Outra forma de usar o If e Else em haskel

        positivo::Int->Bool  (recebe um inteiro e retorna um booleano)
        positivo x
        | x>= 0 = True
        | otherwise = False

--Media entre dois Numeros
    media x y = (x + y) `div` 2 

--Escreva uma função que receba um numero e diga se ele é par ou impar
    vericabilidade x = if x `mod` 2 == 0
        then "e par"
        else "e impar"

--EScreva uma função que diga se uma pessoa pode votar
    idade x = if x >= 16
        then "Pode votar"
        else "nao pode votar"





