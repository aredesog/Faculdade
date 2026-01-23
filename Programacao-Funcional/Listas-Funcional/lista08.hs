-- Lista 8 - Classes de Tipos e Tipos Algébricos

-- Exercício 1
data Nivel = Estagiario | Junior | Pleno | Senior deriving (Show, Eq, Ord)

podeAcessar :: Nivel -> Nivel -> Bool
podeAcessar cracha andar = cracha >= andar

saoDoMesmoTime :: Nivel -> Nivel -> Bool
saoDoMesmoTime n1 n2 = n1 == n2

-- Exercício 2
data Forma = Circulo Double | Retangulo Double Double deriving (Show)

area :: Forma -> Double
area (Circulo r) = pi * r^2
area (Retangulo l a) = l * a

-- Exercício 3
data Classificacao = Livre | DezAnos | DozeAnos | QuatorzeAnos | DezoitoAnos 
  deriving (Show, Eq, Ord)

acessoPermitido :: Classificacao -> Classificacao -> Bool
acessoPermitido filme idade = filme <= idade

-- Exercício 4
data Prioridade = Baixa | Media | Alta deriving (Show, Eq, Ord)

apenasUrgentes :: [Prioridade] -> [Prioridade]
apenasUrgentes = filter (> Baixa)

-- Exercício 5
data Ataque = Soco | Chute deriving (Show, Eq)

calcularDanoTotal :: [Ataque] -> Int
calcularDanoTotal = sum . map dano
  where
    dano Soco = 10
    dano Chute = 20

-- Exercício 6
foiFatality :: [Ataque] -> String
foiFatality ataques = if calcularDanoTotal ataques >= 100 
                      then "Game Over" 
                      else "You're alive!"