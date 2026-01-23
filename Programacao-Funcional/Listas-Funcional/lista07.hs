-- Lista 7 - Funções de Alta Ordem e Funções Anônimas

-- Exercício 1
listComp :: (a -> b) -> [a] -> (a -> Bool) -> [b]
listComp f xs p = map f (filter p xs)

exemplo1 :: [Int]
exemplo1 = map (+7) (filter odd [1..10])

-- Exercício 2
proliferaInt :: [Int] -> [Int]
proliferaInt = concatMap (\x -> replicate x x)

-- Exercício 3
dec2int :: [Int] -> Int
dec2int = foldl (\acc x -> acc * 10 + x) 0

-- Exercício 4
evenCubes :: Int -> [Int]
evenCubes n = map (^3) (filter even [1..n])

-- Exercício 5
separa :: [Int] -> ([Int], [Int])
separa xs = (filter odd xs, filter even xs)

-- Exercício 6
uniao :: [Int] -> [Int] -> [Int]
uniao xs ys = foldr (\x acc -> if x `elem` acc then acc else x : acc) [] (xs ++ ys)

-- Exercício 7
conta :: String -> Char -> Int
conta str c = length (filter (== c) str)

-- Exercício 8
moda :: [Int] -> [Int]
moda xs = 
  let contagens = map (\x -> (x, length (filter (== x) xs))) (nub xs)
      maxFreq = maximum (map snd contagens)
  in map fst (filter (\(_, freq) -> freq == maxFreq) contagens)
  where
    nub [] = []
    nub (x:xs) = x : nub (filter (/= x) xs)

-- Exercício 9
base :: Int -> (Int, String, String, Char)
base x
  | x == 0 = (1793, "Pedro Paulo", "MESTRE", 'M')
  | x == 1 = (1797, "Joana Silva Alencar", "MESTRE", 'M')
  | x == 2 = (1534, "João de Medeiros", "DOUTOR", 'F')
  | x == 3 = (1267, "Cláudio César de Sá", "DOUTOR", 'M')
  | x == 4 = (1737, "Paula de Medeiros", "MESTRE", 'F')
  | x == 5 = (1888, "Rita de Matos", "MESTRE", 'F')
  | x == 6 = (1698, "Tereza Cristina Andrade", "MESTRE", 'F')
  | x == 10 = (0, "", "", '0')

todosProfs :: [(Int, String, String, Char)]
todosProfs = map base [0..6]

numDoutores :: Int
numDoutores = length (filter (\(_, _, titulo, _) -> titulo == "DOUTOR") todosProfs)

numMulheres :: Int
numMulheres = length (filter (\(_, _, _, sexo) -> sexo == 'F') todosProfs)

numMestresM :: Int
numMestresM = length (filter (\(_, _, titulo, sexo) -> titulo == "MESTRE" && sexo == 'M') todosProfs)

profMaisAntigo :: String
profMaisAntigo = let (id, nome, _, _) = minimum todosProfs in nome