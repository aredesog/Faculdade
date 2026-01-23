--Implemente uma função meuAbs que devolve o valor absoluto sem usar abs
    meuAbs x = if x < 0
        then -x
        else x

--Crie uma função que receba dois números e devolva o maior deles
    maiorDeDois x y = if x > y
        then x
        else y

--Escreva uma função que diga se um número é positivo, negativo ou zero.
    positivo x = if x>0
        then "Positivo"
        else if x<0
            then "Negativo"
            else "Zero"

--Crie uma funcao que classifique uam nota de 0 a 10 em conceitos (Excelente, Bom, Regular, Ruim)
    classificarnota x = if x >= 9.5
        then "Excelente"
        else if x >= 7.0
            then "Bom"
            else if x >= 5.5
                then "Regular"
                else "Ruim"

--Escreva funcoes que retornem o maior e o menor de tres números
    maior x y z = if x > y && x > z
        then x
        else if y > x && y > z
            then y
            else z

    menor x y z = if x < y && x < z
        then x
        else if y < x && y < z
            then y
            else z

--Crie uma calculadora simples que receba dois números e uma operação (+, -, *, /) e devolva o resultado da operação
    calculadora x y operacao = if operacao == "+"
        then x + y
        else if operacao == "-"
            then x - y
            else if operacao == "*"
                then x * y
                else if operacao == "/"
                    then x / y
                    else error "Operação inválida"