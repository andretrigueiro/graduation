
# Exercício - Dataframes --------------------------------------------------

# Vamos usar alguns datasets modelo que o pacote 'datasets' dispõe. Para informações
# sobre cada dataset usado, rode ?<nome_do_dataset> no console.

# Questão 1 ---------------------------------------------------------------
peso <- data.frame("Nomes" = c("Pedro", "Maria","Jose",
                               "Airton", "Paulo", "Daniela", 
                               "Fatima"),
                   "Peso" = c(56,50,70,69,80,77,65), stringsAsFactors = F)

altura <- data.frame("Nomes" = c("Pedro", "Ricardo","Joao","Jose",
                                 "Airton", "Denise", "Paulo", "Daniela", 
                                 "Fatima"),
                     "Altura" = c(178,150,158,169,189,184,172,162,159), stringsAsFactors = F)

# Verifique quantas pessoas possuem ambas as informacoes de peso e altura. 
nomes1 <-peso$Nomes
nomes2 <- altura$Nomes

intersect(nomes1, nomes2)

#Resposta = 6 pessoas

# Questão 2 ---------------------------------------------------------------
# Carregue os dataframes contidos no arquivo .RData fornecido. 
load("COGs.RData")
# Obs.: O comando acima irá carregar o arquivo apenas se este estiver na sua pasta de trabalho.
# Caso não consiga carregar desta maneira, clique duas vezes no arquivo e ele será importado.

# Verifique se todos os "cog_id" do objeto cogids estão contidos no objeto cog.human.data.

cog.human.data<-cog.human.data[with(cog.human.data, order(cog_id)), ]
which(is.na(cog.human.data$cog_id))

# Nenhum valor NA encontrado

# O arquivo cog.human.data contem 3 tipos de OG: COG, NOG e KOG. Construa tres
# dataframes contendo cada um somente um tipo de OG (i.e. COG, NOG e KOG). 

cog_id_cog <- cog.human.data$cog_id[ grepl("COG") ]
cog_id_nog <- cog.human.data$cog_id[ grepl("NOG") ]
cog_id_kog <- cog.human.data$cog_id[ grepl("KOG") ]

COG <- data.frame(cog_id_cog)
NOG <- data.frame(cog_id_nog)
KOG <- data.frame(cog_id_kog)


unido<-merge(biometria, esportes, by="nomes", all.x=T)#com todos presentos no primeiro

# Verifique qual dos tres apresenta maior numero de OG diferentes.


# Questão 3 ---------------------------------------------------------------
# O R possui alguns conjuntos de dados salvos na sua versao basica.
# Um deles eh o 'airquality', que eh uma tabela contendo informacoes 
# sobre a qualidade do ar em Nova Iorque durante o periodo de maio a 
# setembro de 1973. 

# Digite 'airquality' no console e visualize os dados contidos nele.
# Guarde este em uma outra variavel com um nome de sua preferencia.


# Renomeie as colunas do dataframe. Use os nomes em portugues. 


# Quantas linhas e quantas colunas essa tabela possui?


# Qual a temperatura maxima entre os meses de maio a julho (meses 5 a 7)?


# Crie um outro dataframe contendo todas as observaçoes com valores de radiacao
# solar maiores que 100. 


# Ordene o dataframe anterior de acordo com os valores descrescentes
# da concentracao de ozonio no ar.



# Questão 4 ---------------------------------------------------------------
# Carregue o arquivo 'musicals.RData'. Ele contem informaçoes gerais sobre musicais
# famosos. 

# Crie um dataframe que combine TODAS as informações contidas nos dataframes 'shows',
# 'composers' e 'stage_writers', ou seja, o dataframe final deve conter todas as observações do
# dos dataframes mencionados. Certifique-se que as informaçoes estão indexadas corretamente.








