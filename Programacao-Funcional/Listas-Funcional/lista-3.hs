--Crie uma função que inverta os elementos de uma tupla 
    troca (x, y) = (y,x)

---Crie uma função que recebe duas tuplas, cada uma contendo o nome de uma
    media (m1, n1) (m2, n2) = (n1+n2)/2
    materias (m1, n1) (m2, n2)
        | m1 /= m2  = "materias diferentes"
        | media (m1, n1) (m2, n2) >= 6.0 = "Aprovado"
        | otherwise = "Reprovado"
    
--Dada uma lista de tuplas [(Nome, Idade)], defina a função maioresDeIdade
    maioresDeIdade pessoas = [ nome | (nome, idade) <- pessoas, idade >= 18]

--Crie uma função que recebe duas horas (hora, minuto) e devolve a diferença
    diferencaHoras (h1, m1) (h2, m2) = (abs (h1 * 60 + m1 - h2 * 60 - m2) `div` 60, abs (h1 * 60 + m1 - h2 * 60 - m2) `mod` 60)

--Defina a função primos n que retorna todos os números primos até n.
    primos n = [x | x <- [0..n], mod x n == 0]

--Dada uma lista de (cidade, temperatura), filtre as que estão acima de 30°C.
    temp temps = [(x,y) | (x,y) <- temps, y>30]

--Utilizando listas em compreensão, defina a função termina_em que recebe
    termina_em num = [x | x <- [0..100], mod x 10 == num]

--Defina a função divisivelPor que dado um inteiro (de 0 a 9) retorna uma lista
    divisivelPor num = [x | x <- [1..100], mod x num == 0]

--Sem usar a função length, defina a função comprimento que dada uma lista
    comprimento x = sum [1 | _ <- x]

--Defina a função quantos que dada uma lista e um elemento devolve o número de vezes que o elemento está na lista.
    quantos lista num = sum [1 | x <- lista, x == num]

--Defina a função repetidos que dada uma lista retorna uma lista com os
    conta x lista = length [y | y <- lista, y == x]

    removeDuplicados [] = []
    removeDuplicados (x:xs)
        | x `elem` xs = removeDuplicados xs
        | otherwise   = x : removeDuplicados xs

    repetidos xs = removeDuplicados [x | x <- xs, conta x xs > 1]