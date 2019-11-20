# Exercício 10 ------------------------------------------------------------

# Vimos na última aula mais algumas funções da família dos apply():

# -- lapply(): Aplica uma função a uma lista e sempre retorna uma nova lista de mesmo tamanho da lista de entrada.
# SINTAXE:
#         lapply(X, FUN, ...)

# -- sapply(): Aplica uma função a uma lista e tenta retornar um objeto o mais simplificado possível.
# SINTAXE:
#         sapply(X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE)

# -- tapply(): é usado para aplicar uma função de agregação em uma variável principal, baseado nos fatores de uma 
# variável agrupadora.
# SINTAXE:
#         tapply(VARIAVEL_PRINCIPAL, VARIAVEL_AGRUPADORA(Factor), FUNCAO)


# Questão 1 ---------------------------------------------------------------

# Usando o dataset mtcars, calcule   o valor maximo de consumo (mpg) 
# agrupando por transmissão (am) e por número de cilindros (cyl)

# Output:
# 0    1
# 4 24.4 33.9
# 6 21.4 21.0
# 8 19.2 15.8


# Questão 2 ---------------------------------------------------------------


# Usando o dataset DNase, calcule a média da concentração de DNase e a 
# média da densidade agrupando por corrida do experimento.

# Output:
# média - concentração

# 10       11        9        1        4        8        5        7        6        2 
# 3.106689 3.106689 3.106689 3.106689 3.106689 3.106689 3.106689 3.106689 3.106689 3.106689 
# 3 
# 3.106689

# média - densidade
# 10        11         9         1         4         8         5         7         6 
# 0.7206250 0.7098750 0.7058750 0.6770625 0.6806250 0.7057500 0.7046250 0.7330000 0.7460625 
# 2         3 
# 0.7527500 0.7745000


# Questão 3 ---------------------------------------------------------------

# Usando o dataset Iris, calcule a média do comprimento das pétalas
# agrupando por espécies.

# Output:
# setosa versicolor  virginica 
# 1.462      4.260      5.552 


# Questão 4 ---------------------------------------------------------------

# Usando tapply(), calcule a mediana da circunferência das arvóres no dataset Orange.

# Output:
# 3   1   5   2   4 
# 108 115 125 156 167



# Questão 5 ---------------------------------------------------------------

# Obtenha o mesmo resultado da questão anterior, agora usando uma combinação de sapply() e split().

