
# Exercício 12 ------------------------------------------------------------

# Questão 1
# Calcule a média das variáveis contidas em airquality por mês.

sapply(airquality[4,], mean)


# Questão 2
# Calcule a média das variáveis contidas em airquality por dia.

sapply(airquality[5,], mean)


# Questão 3
# Calcule a média das radiação solar por mês.


# Questão 4
# Imprima cada elemento do vetor 1:5 e 10:14 separados por uma letra. 
# Ex.: 1A10, 2B11, 3C12 ...


# Questão 5
# Use mapply para combinar as strings contidas nos vetores abaixo
v1 <- c("arq1", "arq2", "arq3", "arq4")
v2 <- c("analise1", "analise2", "analise3", "analise4")

# com os seguintes separadores abaixo:
v3 <- c("_", "-")

# E com a extensao abaixo:
v4 <- (".txt")


# Questão 6
# Use mapply para checar quais colunas do dataset iris possuem valores numéricos e quais não possuem.

