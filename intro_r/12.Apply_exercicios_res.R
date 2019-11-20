first = matrix(38:67, 3)
second = matrix(56:91, 3)
third = matrix(82:147, 3)
fourth = matrix(46:95, 5)
listobj = list(first, second, third, fourth)

# Lista de matrizes: com uma das funcoes de apply, selecione a segunda coluna das matrizes
# contidas em 'listobj'.
lapply(listobj, function (i) i[, 2])


# Selecione agora a terceira linha de cada matriz, usando novamente uma funcao de apply

lapply(listobj, function (i) i[3, ])


#organize os arquivos .txt disponibilizados pelo SIGAA em um diretorio.
#os arquivos representam matrizes de expressao, onde as 3 primeiras colunas
#sao do grupo controle e as 3 ultimas sao do grupo tratado tratado.
#construa uma funcao que leia os arquivos e, para cada um, faca a media das 
#amostras do grupo controle e do grupo tatado e calcule o logaritimo da divisao 
#tratado/controle para cada um dos 5 arquivos disponibilizados
#seu resultado devera ser uma matrix onde cada coluna representa o resultado de um dos arquivos.

logfc<-function(directory=""){
  arquivos<-list.files()
  sapply(arquivos, function(i){
    x<-read.table(i)
    control_mean<-rowMeans(x[,1:3])
    treated_mean<-rowMeans(x[,4:6])
    log(treated_mean/control_mean)
  })
}

res<-logfc() 

airquality<-airquality
