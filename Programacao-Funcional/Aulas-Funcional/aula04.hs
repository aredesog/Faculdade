--Tipos de Programacao Funcional
    {-
    -> As linguagens funcionais modernas permite que o compilador verifique com mais constancia e segurança.
        -> Fortemente Tipada ( Mais segurança e previsibilidade)
        -> Tipagem Estática ( Erros detectados precocemente)
        -> Inferência de tipos ( não precisa declarar o tipo o tempo todo)
        -> Polimorfismo parametrico ( reultilização, generalização)
        -> Classes de tipos ( Permite criar tipos próprios)
        -> Imutabilidade ( evita efeito colaterais, facilita paralelismo sem conflitos de estados)
    -}
        
        
    somaCincoValores:: Int -> Int -> Int -> Int -> Int
    somCincoValores a b c d e = [1,2,3,4,5]

    saudar:: String -> String
    saudar a = "Ola," ++ a ++ "!"

    avaliarNOta:: INt -> String
    avaliarNOta 10 = "Escelente"
    avaliarNOta 7 = "Boa"
    avaliarNOta 5 = "Regular"
    avaliarNOta x = "Insuficiente"

    pegarTerceiro:: (a,b,c) -> c
    pegarTerceiro (_, _, x) = x

    retirarPrimeiro:: Int-> Int
    retirarPrimeiro (cabeca:cauda) = cabeca

    --Guardas (Guardas tornam o código mais limpo do que usar múltiplos IFs)

    classifica :: Int -> String
    classifica x
        | x < 0 = "Negativo"
        | x == 0 = "Zero"
        | otherwise = "Positivo"

    --