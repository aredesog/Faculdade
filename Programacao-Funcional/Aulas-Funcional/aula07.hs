--Uso de lambda  \x -> x + y

--1: USe map e uma expressão lambda para converter uma lista de stringsem uma lista com seus respectivos tamanhos:
tamanhos :: [String] -> [Int]
tamanhos lista = map (\x -> length x) lista

--2 : Use filter e uma labda para encontrar todos os numeros em uma lsita [1..50] que sao multiplos de 3 e 5 ao mesmo tempo:
multiplos :: [Int]
multiplos = filter (\x -> x `mod` 3 == 0 && x `mod` 5 == 0) [1..50]

--3: Criee uma função que recebe uma lista de tuplas [string, Int] e usa filter com uma labda para reter apenas os pares cuja srting tenha mais de 5 caracteres:
filtra :: [(String, Int)] -> [(String, Int)]
filtra lista = filter (\(x, y) -> length x > 5) lista

--Classes de tipos
--Restringe as operações que podem ser realizadas em um tipo de dado

--Exemplo: Classe Eq

    --Define a operação de igualdade (==) e desigualdade (/=)
    --Tipos que pertencem a classe Eq podem ser comparados usando essas operações
    --Exemplo de função que usa a classe Eq
    
    --iguais :: Eq a => a -> a -> Bool
    --iguais x y = x == y

--Exemplo: Classe Data
    --Permite a conversão de valores para uma representação textual
    --Tipos que pertencem a classe Data podem ser convertidos em strings usando a função show
    --Exemplo de função que usa a classe Data
    
    --soamCoordenadas :: Ponto -> Int
    --soamCoordenadas (Ponto x y) = x + y

--Mix
data Tamanho = Pequeno | Medio | Grande deriving (Eq, Show, Ord)

temMesmoTamanho :: Tamanho -> Tamanho -> Bool
temMesmoTamanho t1 t2 = t1 == t2

ehMaior :: Tamanho -> Tamanho -> Bool
ehMaior t1 t2 = t1 > t2

--Estamos criando um sistema para classificar medalhas em uma competição. Precisamos que o computador saiba que o Ouro vale mais que Prata que vale mais que Bronze.
data Medalha = Bronze | Prata | Ouro deriving (Eq, Show, Ord)

comparaMedalhas :: Medalha -> Medalha -> String
comparaMedalhas m1 m2
    | m1 > m2   = show m1 ++ " é melhor que " ++ show m2
    | m1 < m2   = show m1 ++ " é pior que " ++ show m2
    | otherwise = show m1 ++ " é igual a " ++ show m2