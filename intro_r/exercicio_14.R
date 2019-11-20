
# Exercício ---------------------------------------------------------------

# Este exercício será feito com os pacotes vistos na última aula. Para instalá-los, use:
install.packages(c("dplyr", "tidyr", "ggplot2"))

# E carregue-os:
library(dplyr)
library(tidyr)
library(ggplot2)

# Use, de preferência, as funções vistas nos pacotes da aula.
# Questão 1 ---------------------------------------------------------------
# Com o dataset DNase, calcule a média e o desvio padrão da concentração de DNA e a média e o desvio padrão da densidade.
# Output (6 primeiras linhas):
#   Run   media_conc sd_conc media_dens sd_dens
#   <ord>      <dbl>   <dbl>      <dbl>   <dbl>
# 1 10          3.11    4.18      0.721   0.581
# 2 11          3.11    4.18      0.710   0.590
# 3 9           3.11    4.18      0.706   0.597
# 4 1           3.11    4.18      0.677   0.601
# 5 4           3.11    4.18      0.681   0.615
# 6 8           3.11    4.18      0.706   0.605

DNase %>%
  select(conc) %>% 
  summarise(mean = mean(conc, na.rm = T))



# Conte quantas ocorrências com valores de densidade maiores que 1 há em cada corrida.
# Output (6 primeiras linhas):
#   Run       n
#  <ord>   <int>
# 1 10        6
# 2 11        4
# 3 9         6
# 4 1         6
# 5 4         4
# 6 8         6


  


# Questão 2 ---------------------------------------------------------------
# O dataset 'diamonds' (carregue o pacote ggplot2), contém informações sobre qualidade e 
# preços de ~50 mil diamantes (Ver ?diamonds). 

# Calcule a média de preço de acordo com a qualidade do corte ('cut'). 
# Output:
#   <ord>     <dbl>
# 1 Fair      4359.
# 2 Good      3929.
# 3 Very Good 3982.
# 4 Premium   4584.
# 5 Ideal     3458.

diamonds %>%
  select(cut, price) %>% 
  group_by(cut) %>%
  summarise(mean = mean(price, na.rm = T))


# Quantos diamantes há por categoria de qualidade de corte?
# Output:
#  cut           n
#  <ord>     <int>
# 1 Fair       1610
# 2 Good       4906
# 3 Very Good 12082
# 4 Premium   13791
# 5 Ideal     21551

diamonds %>%
  select(cut) %>% 
  group_by(cut) %>%
  summarise(n = length(cut))


# Transforme os valores contidos nas 3 últimas colunas (x = comprimento, y = largura, z = profundidade) em 
# duas colunas de chave-valor (uma coluna contendo as variáveis x, y e z e outra coluna contendo seus respectivos valores)
# Output (6 primeiras linhas):
# carat cut       color clarity depth table price feature value
# <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <chr>   <dbl>
# 1 0.23  Ideal     E     SI2      61.5    55   326 x        3.95
# 2 0.21  Premium   E     SI1      59.8    61   326 x        3.89
# 3 0.23  Good      E     VS1      56.9    65   327 x        4.05
# 4 0.290 Premium   I     VS2      62.4    58   334 x        4.2 
# 5 0.31  Good      J     SI2      63.3    58   335 x        4.34
# 6 0.24  Very Good J     VVS2     62.8    57   336 x        3.94

diamonds %>%
  select(x, y, z) %>% 
  group_by(cut) %>%
  summarise(n = length(cut))



# Questão 3 ---------------------------------------------------------------
# Com o dataset iris, crie uma nova coluna para armazenar a razão entre Sepal.Length e Sepal.Width
# Output (6 primeiras linhas):
# Sepal.Length Sepal.Width Petal.Length Petal.Width Species proportion
# 1          5.1         3.5          1.4         0.2  setosa   1.457143
# 2          4.9         3.0          1.4         0.2  setosa   1.633333
# 3          4.7         3.2          1.3         0.2  setosa   1.468750
# 4          4.6         3.1          1.5         0.2  setosa   1.483871
# 5          5.0         3.6          1.4         0.2  setosa   1.388889
# 6          5.4         3.9          1.7         0.4  setosa   1.384615

iris %>%
  mutate(proportion = Sepal.Length / Sepal.Width)

# Questão 4 ---------------------------------------------------------------
# Com o dataset airquality, unifique as colunas Day e Month utilizando o separador "/"
# Output (6 primeiras linhas):
# Ozone Solar.R Wind Temp Data
# 1    41     190  7.4   67  1/5
# 2    36     118  8.0   72  2/5
# 3    12     149 12.6   74  3/5
# 4    18     313 11.5   62  4/5
# 5    NA      NA 14.3   56  5/5
# 6    28      NA 14.9   66  6/5




# Questão 5 ---------------------------------------------------------------
# Considere o seguinte data frame contendo as atuações de alguns jogadores do campeonato brasileiro 2019.
brasileirao <- data.frame(
  jogador = c("Gabigol", "Cebolinha", "Dudu", "D.Alves", "Arrascaeta", "Fábio"),
  time = c("FLARJ", "GRERS", "PALSP", "SAOSP", "FLARJ", "CRUMG"),
  scoreRodada1 = c("17.5","15.8","5.6","4.2","26.4","9.7"),
  scoreRodada2 = c("10.9","18.2","16.3","4.5","26.5","2.5")
)

# Utilize a função gather() para criar uma coluna chamada "rodada" como sendo a chave e outra coluna chamada "score" para armazenar os valores numéricos dos scores de
# cada jogador.
# Output:
# jogador  time       rodada score
# 1     Gabigol FLARJ scoreRodada1  17.5
# 2   Cebolinha GRERS scoreRodada1  15.8
# 3        Dudu PALSP scoreRodada1   5.6
# 4     D.Alves SAOSP scoreRodada1   4.2
# 5  Arrascaeta FLARJ scoreRodada1  26.4
# 6       Fábio CRUMG scoreRodada1   9.7
# 7     Gabigol FLARJ scoreRodada2  10.9
# 8   Cebolinha GRERS scoreRodada2  18.2
# 9        Dudu PALSP scoreRodada2  16.3
# 10    D.Alves SAOSP scoreRodada2   4.5
# 11 Arrascaeta FLARJ scoreRodada2  26.5
# 12      Fábio CRUMG scoreRodada2   2.5



# Agora separe a coluna "time" em 2 colunas: uma para apenas as iniciais do time e outra para a sigla do estado.
# Output:
# jogador Time Estado       rodada score
# 1     Gabigol  FLA     RJ scoreRodada1  17.5
# 2   Cebolinha  GRE     RS scoreRodada1  15.8
# 3        Dudu  PAL     SP scoreRodada1   5.6
# 4     D.Alves  SAO     SP scoreRodada1   4.2
# 5  Arrascaeta  FLA     RJ scoreRodada1  26.4
# 6       Fábio  CRU     MG scoreRodada1   9.7
# 7     Gabigol  FLA     RJ scoreRodada2  10.9
# 8   Cebolinha  GRE     RS scoreRodada2  18.2
# 9        Dudu  PAL     SP scoreRodada2  16.3
# 10    D.Alves  SAO     SP scoreRodada2   4.5
# 11 Arrascaeta  FLA     RJ scoreRodada2  26.5
# 12      Fábio  CRU     MG scoreRodada2   2.5

