# Andre Trigueiro

# Exercício 13 ------------------------------------------------------------

# Questão 1 ---------------------------------------------------------------

# Vamos usar novamente o dataset 'DNase'. O objetivo aqui é criar um gráfico de dispersão
# da densidade em função da concentração da dnase, das três primeiras corridas (Run). 

# Siga o seguinte exemplo:

# Fazendo o subset do dataset para as duas corridas
run1 <- DNase[DNase$Run == 1,]
run2 <- DNase[DNase$Run == 2,]

# Plotar primeiro a corrida 1 (run1)
plot(run1$conc, run1$density, col = "red",
     pch = 16, xlab = "Concentração", ylab = "Densidade")

# Adicionar título ao gráfico
title("Concentração x Densidade")

# Com a função points(), adicionar ao gráfico os pontos da corrida 2 (run2)
points(run2$conc, run2$density, col = "blue", 
       pch = 17, xlab = "Concentração", ylab = "Densidade")

# Adicionar a legenda
legend(x = "topleft", col = c("red", "blue"), pch = c(16, 17), 
       legend = c("Run 1", "Run 2"))

# Perceba que com a função 'plot', nós primeiramente plotamos o dataframe referente à corrida 1
# e com a função 'points', nós adicionamos os pontos referentes a corrida 2. O gráfico possui dois tipos
# de pontos diferentes, que são determinados pelo argumento 'pch'. o 'pch = 16' determina um ponto redondo
# enquanto 'pch = 17' determina um triângulo. A cor é determinada pelo argumento 'col'. Perceba que a legenda
# foi criada de acordo com os parâmetros passados nas funções anteriores. Para mais informações, veja 
# a documentação de cada função. 


# Vamos criar um outro grafico das corridas do dataset DNAse, agora incluindo
# tambem a corrida 3. Adicione os pontos correspondentes à corrida 3 no formato de 
# quadrados verdes (pch = 15). Organize a legenda de acordo com as modificações.

run3 <- DNase[DNase$Run == 3,]

points(run3$conc, run3$density, col = "green", 
       pch = 15, xlab = "Concentração", ylab = "Densidade")

legend(x = "topleft", col = c("red", "blue", "green"), pch = c(16, 17, 15), 
       legend = c("Run 1", "Run 2", "Run 3"))

# Questão 2 ---------------------------------------------------------------

# Com o dataset 'mtcars', crie um gráfico de barras com os pesos dos carros (mtcars$wt). 
# adicione uma linha horizontal que represente a mediana dos pesos. Utilize a linha 
# pontilhada de espessura 4 na cor vermelha (veja os argumentos 'lty' e 'lwd' da função 'par()').

#Grafico de Barra com o peso dos carros
cars_peso <- mtcars$wt
barplot(cars_peso)

#Linha da mediana dos pesos
linha <- median(cars_peso)
abline(h = linha, lty = 3, lwd = 4, col = "red")

#Titulo do grafico
title("Peso dos carros")

# Questão 3 ---------------------------------------------------------------

# Crie um boxplot comparando a distribuicao de peso (mtcars$wt) de acordo com cada
# cilindradas dos carros (mtcars$cyl)

#Dados dos carros
cars_peso <- mtcars$wt
cars_cilindradas <- mtcars$cyl

#Bloxplot
boxplot(cars_peso ~ cars_cilindradas, col = "yellow", xlab = "Cilindradas", ylab = "Peso")

title("Peso x Cilindradas")

# Questão 4 ---------------------------------------------------------------

# Crie um histograma da distribuicao da variavel 'incidencia solar' (airquality$Solar.R). 
# Adicione uma linha de referencia para marcar a media da distribuicao.

#Plot do histograma
hist(airquality$Solar.R, xlab = "incidencia solar", ylab = "frequencia") 

linha2 <- mean(airquality$Solar.R, na.rm = TRUE)
abline(v = linha2, lty = 3, lwd = 4, col = "red")


