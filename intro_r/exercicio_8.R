
# Exercício 8 ------------------------------------------------------------

# Questão 1
# Crie uma função chamada 'describe()' para descrever alguns parâmetros das colunas 
# numéricas de um dataframe. A função irá retornar um outro dataframe contendo
# a média, os valores mínimo e máximo, o número de ocorrências únicas de cada valor, 
# e o número de NAs de cada coluna. 

# Exemplo:
# Input:
# > describe(airquality)

# Output:
#             media   min  max    n_unique n_nas
# Ozone    42.129310  1.0 168.0       68    37
# Solar.R 185.931507  7.0 334.0      118     7
# Wind      9.957516  1.7  20.7       31     0
# Temp     77.882353 56.0  97.0       40     0
# Month     6.993464  5.0   9.0        5     0
# Day      15.803922  1.0  31.0       31     0










# Questão 2 

# Crie uma função que retorne uma lista de tamanho 2, contendo uma matriz em cada posição. A primeira matriz da 
# lista é uma matriz quadrada (o número de linhas é igual ao número de colunas) com cada posição da matriz 
# sendo um número sorteado de 1 a 1000. A segunda matriz terá as mesmas dimensões da primeira, mas irá atribuir 
# a cada posição o valor 0, se aquela posição na primeira matriz for par, ou 1, se aquela posição na primeria 
# matriz for ímpar. A função terá um único argumento, que determinará as dimensões da matriz.

# Input:
# > faz_matriz(2)

# Output:
# $matriz1
#      [,1] [,2]
# [1,]  354  121
# [2,]  580  422
# 
# $matriz2
#       [,1] [,2]
# [1,]    0    1
# [2,]    0    0










# Questão 3

# Crie uma função que receba como argumentos um vetor de números e um número-alvo e realize uma busca sequencial
# no vetor utilizando um laço. A função deve retornar a posição onde encontrar o número-alvo ou zero, caso não encontre.

# Input: 
vetor <- c(1.0, 5.0, 2.0, 3.0, 4.0) 
alvo <- 2.0

seq_search<-function(vetor, alvo){            # a funcao cria um objeto que recebe os valores

    cont <- 0
    posi <- 0
  
    tam <- length(vetor)
  
    for(i in 1:tam){
      if (alvo == vetor[i]){
        posi <- i
        cont <- cont + 1
      }
    }
    
    if (cont == 1){
      print(posi)
    }else{
      print("zero")
    }
}

seq_search(vetor, alvo)

# Output: 
# [1] 3




# Questão 4 

# Crie um laço while que imprime números aleatorios normais utilizando a funcao rnorm() mas que interrompe a execucao
# caso o numero sorteado seja maior que 1.

aleatorio <- 0.0

while(aleatorio <= 1){
  aleatorio <- rnorm(1)
  print(aleatorio)
}

# Questão 5

# Adapte o laço da questão anterior para que ele nao imprima numeros negativos.

while(aleatorio <= 1){
  aleatorio <- rnorm(1)
  if(aleatorio < 0){
    
  }else{
    print(aleatorio)
  }
}