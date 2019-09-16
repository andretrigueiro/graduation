# Exercicio 6 -------------------------------------------------------------

# Questão 1 ---------------------------------------------------------------

# Jose e Paulo adoram jogar basquete nas suas horas livres. Eles mantem uma
# competicao entre si e por isso decidiram registrar todas as cestas que eles
# marcam durante as partidas.
# Ate agora foram 8 partidas e José fez 8, 10, 12, 9, 15, 16, 11, 7 cestas.
# Paulo fez 5, 11, 13, 14, 23, 14, 9, 10 cestas.
# Crie um data frame para armazenar todas essas informacoes numa unica estrutura de dados,
# em seguida, crie uma funcao que receba como argumento esse data frame e calcule:
# 1. A soma dos pontos de cada jogador, assumindo que ambos fizeram apenas cestas de 3 pontos;
# 2. A media de pontos de cada jogador;
# 3. A partida que teve o maior placar total (o placar total eh a soma das pontuacoes dos dois jogadores)
# OBSERVACAO: utilize as funcoes print() e/ou cat() para imprimir na tela do console os resultados.

# -------------------------------------------------------------------------
#Resposta Questao1

Jose <- c(8, 10, 12, 9, 15, 16, 11, 7)
Paulo <- c(5, 11, 13, 14, 23, 14, 9, 10)

data <- data.frame(Jose, Paulo)
data

cestas <- function(x){
  
  total_jose <- sum(x$Jose * 3)
  total_paulo <- sum(x$Paulo * 3)
  
  newdata <- rowsum.data.frame(x, group = 1:8)
  #Nao consegui utilizar a função rowsum para calcular a maior pontuação da partida, sendo assim, coloquei a maior quantidade de pontos dos dois juntos
  
  print("Total de pontos Jose - Cestas de 3 pontos:")
  print(total_jose)
  
  print("Total de pontos Paulo - Cestas de 3 pontos:")
  print(total_paulo)
  
  # Nao entendi porque a função "mean" nao funciona com as variaveis total_jose e total_paulo
  
  print("Media de pontos Jose:")
  print(mean(x$Jose * 3))
  
  print("Media de pontos Paulo:")
  print(mean(x$Paulo * 3))
  
  print("Maior pontuaçao:")
  print(max(total_jose)+max(total_paulo))
  
}

cestas(data)

# -------------------------------------------------------------------------

# Questão 2 ---------------------------------------------------------------

# Leia o arquivo network.txt disponível no sigaa. Ele possui informações de uma rede de interação de proteínas. 

# Crie uma funcao para calcular a proporção da conectividade de um nó com relação a conectividade total da rede. 
# Por exemplo, se o nó 'NGF' se conecta com 16 outros nós, qual a proporção disto em relação a conectividade total
# da rede?
# Input: dois argumentos: nome da proteína e o dataframe onde será feita a operação
# Output: o valor da proporcao da conectividade do nó na rede.
# > conectividade: conectividade("NGF", network)
# [1] 0.180791

# -------------------------------------------------------------------------
# Resposta Questao2

# -------------------------------------------------------------------------

# Questão 3 ---------------------------------------------------------------

# Escreva uma função que converta a temperatura em Fahrenheit (F) para Celsius (ºC).
# Input: Vetor numérico contendo a temperatura em F
# Output: O valor da temperatura em ºC.
# > conversor_temp(32)
# [1] 0

# -------------------------------------------------------------------------
# Resposta Questao 3

conversor_temp <- function(temp){
  temp = (temp - 32) * (5/9)
  
  print(temp)
}

conversor_temp(32)
conversor_temp(50)

# -------------------------------------------------------------------------

# Questão 4 ---------------------------------------------------------------

# Considere o dataset 'airquality', trabalhado em aulas passadas. Escreva uma função que 
# calcule a média, o desvio padrão e a variância das variáveis 'Ozone', 'Solar.R', 'Wind', 'Temp' 
# e retorne estes valores como um dataframe. Lembre-se de remover os NAs
# Input: 
# Output: dataframe contendo 3 linhas e 4 colunas
# > calcular_parametros(airquality)
# #            Ozone    Solar.R      Wind     Temp
# media   42.12931  185.93151  9.957516 77.88235
# sd      32.98788   90.05842  3.523001  9.46527
# var   1088.20052 8110.51941 12.411539 89.59133

# -------------------------------------------------------------------------
# Resposta Questao4

# -------------------------------------------------------------------------




