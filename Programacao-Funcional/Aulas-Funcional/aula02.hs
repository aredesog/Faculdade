--LISTAS EM HASKELL (EXECUTAR NO GHCI) Muitas anotações envolvidas em anotação.txt

-- ['h','a','s','k','e','l','l'] == "haskell" (Diz se a lista está correta em relação a atribuição (TRUE))      

-- "Hello" ++ " " ++ ['h','a','s','k','e','l','l'] (Adiciona uma string a string anterior)
-- 1:[2,3,4]  (Adiciona um valor a lista string)

-- Comparação [3,2,1] > [2,1,0] (TRUE) (<,>,=)
-- [3,2,1] > [2,10,100] (TRUE)


--Funções Basicas
    --head[5,4,3,2,1] -> 5 (Primeiro elemento da lista)
    --tail[5,4,3,2,1] -> [4,3,2,1] (Todos menos o primeiro)
    --init[5,4,3,2,1] -> [5,4,3,2] (Todos menos o ultimo)
    --last[5,4,3,2,1] -> 1 (Ultimo elemento da lista)


--Retorna a idade
    minhaIdade x = length [x..2025]

--Da uma sequencia de apenas os 10 numeros centrais
    sequencia = take 10 (drop 20 [1..50])    

--Inverte uma palavras
    palavra = reverse "haskell"

--Media das notas
    notas = sum[3,8,9,5,6]/5 
    nota x = if x >= 6
        then "Aprovado"
        else "Reprovado"

--Associar nome dos jogadores a numero na camisa
    jogadores = zip [10,7]["Neymar","Marquinhos"]

--Desafio
    dobreCadaOutro = (zipWith (*) [2,3,4,5,6,7,8] (cycle[1,2])) -- [2,6,4,10,6,14,8]

