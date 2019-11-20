######################################
##        Funções de laco           ##
######################################

###   for loop

for (i in 1:10){            # a funcao imprime os resultados subsequentemente
      print(i)
}

f<-function(x){            # a funcao cria um objeto que recebe os valores
      res<-c()
      for(i in 1:x){
            res[i]<-i
      }
        res   
}

f(3)

#Ex. 1: Faca uma funcao para calcular a media das colunas de uma matrix
#       retornando os valores em um vetor

set.seed(1)
mt<-matrix(rnorm(100*100), 100, 100)


  
  
    
 
 


getcolmed(mt)


#Ex. 2: Faca uma funcao para calcular IMC, onde o resultado sera a categoria
#       e a entrada e um data.frame com dados de varias pessoas

# A primeira lina da resposta serah: 90   1.86 26.01457        Acima do peso

dt<-data.frame(peso=c(90, 75, 45, 60, 131),
               altura=c(1.86, 1.72, 1.80, 1.65, 1.79))



  
  
  
  
  
    
    




















IMC(dt)

#Ex.3: Faca uma funcao "maxCars" para identificar qual carro tem o valor maximo de cada caracteristica
#     no dataset mtcars

# Obs.: a primeira linha do resultado sera: mpg Toyota Corolla  33.9

mtcars<-mtcars













maxCars(mtcars)



###   while

z <- 0               #executa o loop ate a condicao ser atendida
while(z < 5) { 
      z <- z + 2
      print(z)  
}

x<-1:10
y<-1:10

while(sample(x, 1)!=sample(y, 1)){
  print("ainda nao!")
}
  

#Ex.4: Faca uma funcao para calcular quantos sorteios deve haver para seu 
#      numero ser sorteado na loteria













  



loteria(c(1, 3, 6, 9, 2, 12), dezenas=15)


# Eh conveniente ter certeza que o loop nao serah infinito

loteria1<-function(jogo, dezenas=60){
      if(max(jogo)>dezenas){
            stop("Erro: numero jogado maior que numeros possiveis de serem sorteados")
      } else  {
            universo<-1:dezenas
            sorteio<-sample(universo, size = length(jogo), replace = FALSE)
            match<-sorteio%in%jogo
            tentativas<-1
            while (sum(match)!=length(jogo)){
                  tentativas<-tentativas+1
                  sorteio<-sample(universo, size = length(jogo), replace = FALSE)
                  match<-jogo%in%sorteio      
            } 
            tentativas   
      }
      
}

loteria1(c(1, 3, 6, 9, 2, 18), dezenas=18)

