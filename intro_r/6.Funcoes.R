
# Funções anônimas --------------------------------------------------------

# f1
f1 <- function() {
  3
}
f1()

# Função anônima de f1
(function(x) {3}) ()

# f2
f2 <- function(x, y) {
  x + y
}
f2(2, 4)

# Função anônima de f2
( function(x, y) {x + y} ) (x = 2, y = 4)

environment( function(x, y) x + y )


# Exercícios --------------------------------------------------------------

# Escreva uma funcao chamada 'quadrante' que retorna em que quadrante do plano cartesiano 
# um dado angulo se encontra.
# Input: um vetor numerico com os valores dos angulos em graus.
# Output: 
# quadrante(c(910, 492,1900)) 
# > [1] 3 2 2




# Crie uma funcao para calcular o indice de massa corporal (imc)
# Input: dois argumentos com peso (em kilos) e altura (em metros)
# Output: 
# calcular_imc(massa = 60, altura = 1.7)
# > 20.76125




# -------------------------------------------------------------------------
# Leia o arquivo network.txt. Ele possui informações de uma rede de interação de proteínas. 

# Crie a função 'filtrar_rede' para selecionar as interações da rede com score combinado maior que 0.700. 
# Input: dataframe da rede 'network'.
# Output: dataframe filtrado com as interações maiores que 0.700 e contendo apenas 3 colunas (node1, node2 e combined_score)
# > nrow(filtrar_rede(network=network))
# [1] 948





# Crie a função 'vizinhos' que calcule a conectividade de um determinado nó da rede e quais são os nós que se conectam
# com ele. 
# Input: dois argumentos: nome da proteína e o dataframe onde será feita a operação
# Output: Imprimir no console a conectividade do nó escolhido e quais são seus vizinhos.
# > vizinhos(symbol = "NGF", network = network)
# O gene  NGF tem  16  vizinhos 
# PIK3R1 CASP6 IKBKB NTRK1 NFKBIA PIK3CB NFKB1 PIK3R2 BAD PIK3CA CASP3 MYD88 CHUK RELA IRAK1 IKBKG





# Crie uma funcao para calcular a proporção da conectividade de um nó com relação a conectividade total da rede. 
# Por exemplo, se o nó 'NGF' se conecta com 16 outros nós, qual a proporção disto em relação a conectividade total
# da rede?
# Input: dois argumentos: nome da proteína e o dataframe onde será feita a operação
# Output: o valor da proporcao da conectividade do nó na rede.
# > conectividade: conectividade("NGF", network)
# [1] 0.180791





# -------------------------------------------------------------------------
# Importe o arquivo 'COGs.RData', disponível no sigaa. Use o dataframe 'cog.human.data'

# Faça uma função que retorne o número de grupos de ortólogos (identificadores da coluna cog_id)
# determinada espécie (coluna spp_id)
# Input: dois argumentos: identificador da espécie e o dataframe
# Output: número de COGs do organismo.
# > contar_cogs(spp = 3702, df = cog.human.data)
# [1] 4367





