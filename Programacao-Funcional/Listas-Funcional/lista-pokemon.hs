-- Atividade de Recuperacao
-- GUilherme de Oliveira Aredes - 2025.1.08.026

pokedex :: Int -> (String, Int, String)
pokedex identificador
     | identificador == 1 = ("Pikachu", 45, "Eletrico")
     | identificador == 2 = ("Bulbasaur", 60, "Grama")
     | identificador == 3 = ("Squirtle", 55, "Agua")
     | identificador == 4 = ("Charmander", 65, "Fogo")
     | identificador == 5 = ("Chikorita", 55, "Grama")
     | identificador == 6 = ("Jigglypuff", 30, "Normal")
     | identificador == 7 = ("Snorlax", 70, "Normal")
     | identificador == 8 = ("Onix", 80, "Pedra")
     | identificador == 9 = ("Psyduck", 25, "Agua")
     | identificador == 10 = ("Cyndaquil", 50, "Fogo")
     | identificador == 11 = ("Lugia", 100, "Psiquico")
     | otherwise = ("Pokemon nao encontrado", 0, "Nenhum")


-- A) retornaNomesPokemons: nomes de todos os pokémons até um determinado registro (sem o "Pokemon nao encontrado")
retornaNomesPokemons :: Int -> [String]
retornaNomesPokemons limite = [ nome | (nome,_,_) <- registros limite ]

-- B) retornaPokemonMaiorHpTipo: retorna o NOME do pokémon que tem maior HP e é do tipo informado
retornaPokemonMaiorHpTipo :: String -> String
retornaPokemonMaiorHpTipo tipo =
  let todosTipo = [ (nome,pv,tipoPok) | i <- [1..11]
                                      , let (nome,pv,tipoPok) = pokedex i
                                      , nome /= "Pokemon nao encontrado"
                                      , tipoPok == tipo ]
  in if null todosTipo
       then "Pokemon nao encontrado"
       else let (nomeMaximo,_,_) = maximumBy (comparing (\(_,pv,_) -> pv)) [(n,p,t) | (n,p,t) <- todosTipo]
            in nomeMaximo

-- C) retornaQuantidadePokemons: quantidade de pokémons do tipo informado até um dado registro
retornaQuantidadePokemons :: Int -> String -> Int
retornaQuantidadePokemons limite tipo = length [ () | (nome,_,tipoPok) <- registros limite, tipoPok == tipo ]

-- D) retornaPokemonMaiorHp: retorna (NOME, HP) do Pokémon com maior HP geral até um determinado registro
retornaPokemonMaiorHp :: Int -> (String, Int)
retornaPokemonMaiorHp limite =
  let registrosLista = registros limite
  in if null registrosLista
       then ("Pokemon nao encontrado", 0)
       else let (nomeMaximo, pvMaximo, _) = maximumBy (comparing (\(_,pv,_) -> pv)) registrosLista
            in (nomeMaximo, pvMaximo)

-- E) retornaIdPokemon: retorna o ID do Pokémon com o menor HP e que seja do tipo "Normal"
retornaIdPokemon :: Int
retornaIdPokemon =
  let listaNormal = [ (i, nome, pv) | i <- [1..11], let (nome,pv,tipoPok) = pokedex i, tipoPok == "Normal" ]
  in if null listaNormal
       then -1
       else let (idMinimo, _, _) = minimumBy (comparing (\(_,_,pv) -> pv)) listaNormal
            in idMinimo


