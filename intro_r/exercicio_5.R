# Exercício - Regras de Escopo ----------------------------

# Questão 1 ---------------------------------------------------------------

# Um ambiente no R pode ser imaginado como uma coleção de objetos (funções, variáveis, etc.) que existe a 
# partir do momento que inciamos o interpretador do R. Qualquer variável ou função que definirmos está agora
# nesse ambiente.

# O ambiente de mais alto nível disponível é o ambiente global, chamado R_GlobalEnv, ele também pode ser referenciado
# como .GlobalEnv nos códigos em R que escrevemos.

# Vimos na aula que podemos usar a função ls() para mostrar quais variáveis e funções estão definidas no ambiente atual.
# Além disso, podemos usar a função environment() para saber qual o ambiente atual:
environment()

# Também vimos a sintaxe para criar funções simples, e ainda funções dentro de funções!
# Observando as sintaxes vistas na aula, crie uma função que possua uma outra função dentro dela. 
# A função interna deve imprimir na tela do console qual o ambiente atual usando a função environment() e imprimir a
# lista dos objetos presentes no ambiente usando a função ls(). 
# A função externa deve chamar a função interna e em seguida imprimir o ambiente atual usando a função environment() e
# também imprimir a lista dos objetos presentes no ambiente usando a função ls().
# Chame a função externa e responda: os ambientes exibidos são os mesmos? Por quê?



# Questão 2 ---------------------------------------------------------------

# Com base nas regras de escopo do R, justifique o resultado das chamadas das funções abaixo:
# Ex.:1
x <- 12
f1 <- function(y) {
  x <- 10
  f2 <- function() {
    print(x + y)
  }
  f2()
}
f1(4)



# Ex.:2
z <- 10
f3 <- function(x, y) {
  x * y * z
}
f3(1, 2)



