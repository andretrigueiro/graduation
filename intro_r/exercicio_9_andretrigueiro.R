# Exercício 9 ------------------------------------------------------------

# Vamos voltar ao nosso exemplo das partidas entre os amigos Jose e Paulo para exercitar o uso da funcao apply().
# A funcao apply() eh uma alternativa aos loops, atraves da aplicacao de uma funcao a colunas, linhas 
# ou valores individuais de um vetor ou matriz. A estrutura da funcao apply() eh:
#
# apply(X, MARGIN, FUN, ...)
#
# Os amigos Jose e Paulo registraram todas as suas partidas numa matriz que esta definida logo abaixo.
# Cada linha da matriz representa uma partida, na primeira coluna estao as pontuacoes de Jose, enquanto a segunda
# coluna contem as pontuacoes de Paulo.
# Utilizaremos essa mesma matriz para todas as questoes.

datasetPartidas <- cbind(pontosJose = round(abs(rnorm(10) * 20)), pontosPaulo = round(abs(rnorm(10) * 20)))

# Questao 1
# Imprima na tela do console as colunas da matriz usando a funcao apply().


apply(datasetPartidas, 2, print)


# Questao 2
# Usando apply() imprima na tela o tamanho das colunas da matriz.


apply(datasetPartidas, 2, length)


# Questao 3
# Use a funcao apply() para descobrir a qual foi a maior e menor pontuacao de cada um dos amigos, considerando todas as partidas.


apply(datasetPartidas, 2, max)
apply(datasetPartidas, 2, min)


# Questao 4
# Usando a funcao apply() calcule a media das linhas da matriz.


apply(datasetPartidas, 1, mean)


# Questao 5
# Usando a funcao apply() calcule a soma das colunas da matriz.


apply(datasetPartidas, 2, sum)


# Questao 6
# Use apply() para ordenar as colunas da matriz.


apply(datasetPartidas, 2, function(x) {x[order(x)]} )


# Questao 7
# Utilizando apply() calcule o produto das linhas da matriz.

f <- function(x) {
  x[1] * x[2]
}

apply(datasetPartidas, 1, f)


# Questao 8
# Use apply() para aplicar a "minha_funcao" definida abaixo nas linhas da matriz.

minha_funcao <- function(x) {
  exp(x) - exp(x - 1)
}

apply(datasetPartidas, 1, minha_funcao)


# Questao 9
# Reescreva a questao anterior utilizando uma funcao anonima diretamente no apply() ao inves da "minha_funcao"
# O resultado devera ser o mesmo da questao anterior.


apply(datasetPartidas, 2, minha_funcao <- function(x) {exp(x) - exp(x - 1)} )


# Questao 10
# Reescreva a questao anterior, agora arredondando o resultado para conter apenas 3 casas decimais.

apply(datasetPartidas, 2, minha_funcao <- function(x) { round(exp(x) - exp(x - 1), 3) })



