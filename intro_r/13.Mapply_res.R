#mapply
#multivariada que aceiata argumentos variaveis para uma funcao

str(mapply)

#os argumentos "x" e "y" variam
mapply(function(x,y){x^y},x=c(2,3),y=c(3,4))

#aqui somente o argumento "x" varia
mapply(function(x,y){x^y},x=c(2,3),y=c(4))


#construindo uma lista
list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))
mapply(rep, 1:4, 4:1)


noise <- function(n, mean, sd) {
    rnorm(n, mean, sd)
}

noise(5, 1, 2)

noise(1:5, 1:5, 2)

list(noise(1, 1, 2), noise(2, 2, 2),
     noise(3, 3, 2), noise(4, 4, 2),
     noise(5, 5, 2))

mapply(rnorm, 1:5, 1:5, 2)


# Create a 4x4 matrix
Q1 <- matrix(c(rep(1, 4), rep(2, 4), rep(3, 4), rep(4, 4)),4,4)

Q1

#Ex.: 1. Crie a mesma matrix acima usando `mapply()`
Q2 <- mapply(rep,1:4,4)
Q2


#####################################################################
# Aggregate
mtcars<-mtcars

help("aggregate")

# USO: aggregate(objeto, list('fator de agrupamento'), funcao)
agg_max <- aggregate(mtcars$mpg, list(mtcars$cyl), max)

# Com formula:
agg_max1 <- aggregate(mpg ~ cyl, data = mtcars, FUN = max)

# Eh equivalente ao tapply 
tap_max <- tapply(mtcars$mpg, INDEX = mtcars$cyl, max)

# O aggregate retorna um dataframe, enquanto o tapply retorna um array.
class(agg_max)
class(tap_max)

# Ex. 2: verifique a media das colunas "conc" e "density" 
#        usando a coluna "run" como indexador 

DNase <- as.data.frame(DNase)
aggregate(DNase, list(DNase$Run), mean)








# o tapply aplica uma funcao em um vetor e nao em dataframes
tapply(DNase, DNase$Run, mean)
tapply(DNase$conc, DNase$Run, mean)

#Ex.: 3
# Faca uma funcao "OGanalyzer" que receberah como argumento o dataframe cogdata
# a funcao deverah calcular, para cada especie, quantas proteinas ha em cada orthologous_group
# a saida deverah ser um data.frame de tres colunas: 
# (1) o codigo da especie, (2) o orthologous_group (3) o numero de proteinas daquela especie contida no respectivo orthologous_group 
# lembre-se que para cada especie ha diversos orthologous_group, cada um com diversas proteinas

load("cogdata.RData")
cogdata<-cogdata[1:10000,]

#a saida da sua funcao deve ter o formato abaixo

# ssp orthologous_group protein
# 1 100226           COG0001       2
# 2 100226           COG0002       1
# 3 100226           COG0003       3
# 4 100226           COG0004       1
# 5 100226           COG0005       3
# 6 100226           COG0006       5

#ou

# ssp orthologous_group protein
# 1 100226           COG0001       2
# 2 101510           COG0001       2
# 3 103690           COG0001       2
# 4 106370           COG0001       3
# 5 110662           COG0001       1
# 6   1140           COG0001       1
