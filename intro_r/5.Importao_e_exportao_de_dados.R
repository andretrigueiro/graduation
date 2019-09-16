######################################
##        importacao de dados       ##
######################################

#rodando codigos de scripts
source(file = "Data/Exemplo.R")                 #source() roda um script do diretorioi indicado

#carregando objetos do R
load("Data/COGs.RData")                         #load() carrega arquivos R

#removendo objetos 
rm(cog.human.data, cogids)                      #função rm() remove objetos específicos do GE


#lendo arquivos tabulares de texto (.txt)
cluster11<-read.table("Data/cluster11.txt")    #read.table() le arquivos .txt econverte em data.frame 

args(read.table)                               #args() imprime os argumentos de uma funcao   
help(read.table)

HospData<-read.csv("Data/hospital-data.csv")   #read.csv() eh especifico para comma separeted value



#Ex. 1: carregue o arquivo "COG.mappings.v9.0.txt"e construa o data.frame "cogdata"






readLines("COG.mappings.v9.0.txt", 10)        #reaLines acessa o arquivo e le as linhas

scan(file='COG.mappings.v9.0.txt',nlines=10,what=character())   #scan() le cada posicao

cogdata<-read.table("COG.mappings.v9.0.txt", header = T, sep = "\t", 
                    comment.char = "", stringsAsFactors = F, quote = "")

aponer<-read.delim("clipboard")               #funciona como copy and paste no windows


###########   connections   ###################################################

#quando se vai acessar um arquivo externo ao R se abre uma coneccao

con<-gzfile("Data/COG.mappings.v9.0.txt.gz")     #gzfile() abre uma coneccao com arquivo .gz
cogdata1<-readLines(con, 10)                     #a coneccao eh passada para a funcao de leitura
cogdata1
close(con)                                       #eh conveniente fechar a ceneccao


con <- url("http://www.tribunadonorte.com.br/", "r", 10)  #url() abre uma coneccao com arquivo web
x<-readLines(con)
x[1:10]
close(con)

##########   arquivos xlxs #####################################################
# install.packages("xlsx")
# library("xlsx")                                #pacote para ler arquivos .xlsx
# 
# aponer<-read.xlsx("Aponer.xlsx", sheetIndex = 2, colIndex = 1:6, 
#                   header = T, as.data.frame = T)


#salvando objetos em arquivos do R
save(unido,biometria, esportes, file="unido.RData")    #save() salva os arquivos em binario  

#salvando txt
write.table(unido, file="unido.txt", sep="\t", row.names=FALSE)   #write.table() salva arquivos .txt
list.files()



