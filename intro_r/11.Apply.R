######################################
##        funcoes de loop           ##
######################################

#####   split  ###########

x <- c(rnorm(10), runif(10), rnorm(10,1))
f <- gl(3,10)                            #gl() cria fatores
split(x, f)                              #funcao split divide um data.frame por um fator

lapply(split(x, f), mean)

airquality<-airquality

s <- split(airquality, airquality$Month)
lapply(s, function(x) colMeans(x[, c("Ozone","Solar.R","Wind")]))  #retorna uma lista

sapply(s, function(x) colMeans(x[, c("Ozone","Solar.R","Wind")]))  #retorna uma matrix

sapply(s, function(x) colMeans(x[, c("Ozone","Solar.R","Wind")], na.rm = TRUE)) 

#Ex.1: Identifique o parâmetro onde houve maior numero de dados faltantes no dataset airquality
apply(sapply(airquality, is.na), 2, sum)


#Ex.2: Faca uma funcao "maxCars" para identificar qual carro tem o valor maximo de cada caracteristica
#     no dataset mtcars usando apply

mtcars<-mtcars








#tapply aplica uma funcao por um fator
dt<-data.frame(altura=c("carlos", "jorge", "maria", "denise", "claudia"),
               peso=c(75, 87, 50, 67, 60), genero=c("m", "m", "f", "f", "f"),
               stringsAsFactors = F)
dt$genero<-as.factor(dt$genero)

tapply(X = dt$peso, INDEX = dt$genero , FUN = mean)


#Ex.3: Verifique a media de ozonio por mes no dataset airquality



