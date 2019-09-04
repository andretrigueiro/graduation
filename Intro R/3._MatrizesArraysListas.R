######################################
##             matrix               ##
######################################

#matrizes sao vetores com o atributo dimensao
x<-1:20
x
attributes(x)

m<-matrix(x, 4, 5)
m
attributes(m)          

dim(x)<-c(4,5)
x
identical(x, m)

#OBS.: como sao vetores, matrizes comportam somente uma classe de elementos
a<-1:5
b<--1:-5
c<-c(3, 6, 4, 9, 1)

m<-cbind(a, b, c)       #funcao cbind() concatena colunas
m1<-rbind(a, b, c)      #funcao rbind() concatena linhas

#Acesso a matrizes
m[1,3]                  #endereco das duas dimencoes [linha,coluna]
m[1, ]
m[2:3, ]
m[1,]<-NA
m

######################################
##              array               ##
######################################

ar<-array(1:200, c(5, 10, 4))    #vetores multidimensionais
ar
ar[,,1]                          #[linha, coluna, matrix]

######################################
##              list                ##
######################################
# listas sao tipos especiais de vetores, que comportam elementos de deferentes classes
a <- c(1, 3, NA, 7, 9)
b<-matrix(1:200, 20,10)
c<-"Gol do Gremio"
z<-factor(c("alto", "baixo", "medio"))

ls<-list(a, b, c, z)
ls                      #cada elemento da lista aparece com [[]]

ls1<-vector("list", 5)   #funcao vector pode criar listas vazias
ls1


######################################
##        acessando listas          ##
######################################
ls[1]              #[] extrei uma lista
ls[[1]]            #[[]]extrai o objeto interno


class(ls[1])
class(ls[[1]])

ls[[c(1,2)]]      #posicao na lista e posicao no elemento
ls[[2]][2,]       
names(ls)<-c("Arilson", "Roger", "Paulo Nunes", "Jardel")
ls$Roger