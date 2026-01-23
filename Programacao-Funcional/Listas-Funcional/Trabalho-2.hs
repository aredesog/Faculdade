{-
TRABALHO 2 - FUNCIONAL
DATA: 03/12/2025 
ALUNOS:
    Guilherme de OLiveira Aredes - 2025.1.08.026
    Luiz Gabriel da SIlva Cabrera - 2024.1.08.047
-}

--EX 1

--1)
data Raridade = Comum | Incomum | Raro | Lendario deriving (Eq,Show,Ord)

--2)
verificarRaridade :: Raridade -> Raridade -> Raridade
verificarRaridade raridade1 raridade2  
    | raridade1 > raridade2 = raridade1
    | otherwise = raridade2

--3)
retirarAutoDescartados :: [Raridade] -> Raridade -> [Raridade]
retirarAutoDescartados raridades filtro =
    filter (\r -> r >= filtro) raridades

--4) 
contarRaridades :: [Raridade] -> Raridade -> Int 
contarRaridades raridades raridade =
    length (filter (== raridade) raridades)

--5) 
pontuacao :: Raridade -> Int
pontuacao Comum = 25
pontuacao Incomum =  50
pontuacao Raro = 75
pontuacao Lendario = 100
retornaPontuacaoRaridade :: [Raridade] -> [(String, Int)]
retornaPontuacaoRaridade lista =
    let unicos = filtraRepetidos lista
    in map (\r -> (show r, pontuacao r)) unicos

--EX 2
saiRepetido :: Eq a => [a] -> [a]
saiRepetido [] = []
saiRepetido [x] = [x]
saiRepetido (x:y:xs)
    | x == y    = saiRepetido (y:xs)
    | otherwise = x : saiRepetido (y:xs)

--EX 3

--EX 4
pokedex :: Int -> (String, Int, String)
pokedex id
  | id == 1 = ("Pikachu", 45, "Eletrico")
  | id == 2 = ("Bulbasaur", 60, "Grama")
  | id == 3 = ("Squirtle", 55, "Agua")
  | id == 4 = ("Charmander", 65, "Fogo")
  | id == 5 = ("Chikorita", 55, "Grama")
  | id == 6 = ("Jigglypuff", 30, "Normal")
  | id == 7 = ("Snorlax", 70, "Normal")
  | id == 8 = ("Onix", 80, "Pedra")
  | id == 9 = ("Psyduck", 25, "Agua")
  | id == 10 = ("Cyndaquil", 50, "Fogo")
  | id == 11 = ("Lugia", 100, "Psiquico")
  | otherwise = ("Pokemon nao encontrado", 0, "Nenhum")

--C) Crie uma função obterNomesTiopo que recebe o tipo do Pokemon e a lista de pokedex, e retorna uma lista contendo apenas os nomes dos pokemons daquele tipo 
obterNomesTipo :: String -> [Int] -> [String]
obterNomesTipo tipo ids = [nome | i <- ids, let (nome, _, tipoPokemon) = pokedex i, tipoPokemon == tipo]

