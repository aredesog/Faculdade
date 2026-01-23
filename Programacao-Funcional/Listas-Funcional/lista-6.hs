-- lista6.hs
-- Integrantes: Guilherme Aredes e Luiz Cabreira

-- 1. Fatorial
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

-- 2. Fibonacci
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- 3. Inverte (sem usar reverse)
inverte :: [a] -> [a]
inverte [] = []
inverte (x:xs) = inverte xs ++ [x]

-- 4. Máximo de uma lista
maximo :: Ord a => [a] -> a
maximo [x] = x
maximo (x:xs)
  | x > resto = x
  | otherwise = resto
  where resto = maximo xs

-- 5. nRepetidos – caracteres repetidos e contagem
nrepetidos :: String -> [(Char, Int)]
nrepetidos [] = []
nrepetidos (x:xs)
  | conta x (x:xs) > 1 && notElem x (map fst (nrepetidos xs)) =
      (x, conta x (x:xs)) : nrepetidos xs
  | otherwise = nrepetidos xs
  where
    conta _ [] = 0
    conta c (y:ys)
      | c == y = 1 + conta c ys
      | otherwise = conta c ys

-- 6. contaQuantosDiferentes
contaQuantosDiferentes :: [Int] -> Int -> Int
contaQuantosDiferentes [] _ = 0
contaQuantosDiferentes (x:xs) n
  | x /= n = 1 + contaQuantosDiferentes xs n
  | otherwise = contaQuantosDiferentes xs n

-- 7. separa – separa ímpares e pares
separa :: [Int] -> ([Int], [Int])
separa [] = ([], [])
separa (x:xs)
  | odd x = (x:impares, pares)
  | otherwise = (impares, x:pares)
  where
    (impares, pares) = separa xs

-- 8. conta – quantos caracteres iguais a um dado
conta :: String -> Char -> Int
conta [] _ = 0
conta (x:xs) c
  | x == c = 1 + conta xs c
  | otherwise = conta xs c

-- 9. purifica – remove duplicatas em lista ordenada
purifica :: Eq a => [a] -> [a]
purifica [] = []
purifica [x] = [x]
purifica (x:y:xs)
  | x == y = purifica (y:xs)
  | otherwise = x : purifica (y:xs)
