# Exercício - Importação e Exportação de dados ----------------------------

# Este exercício será feito usando o arquivo happiness.csv disponibilizado no sigaa. 

# Questão 1 ---------------------------------------------------------------

# Neste exercício, vamos importar uma tabela (em arquivo de texto) como um dataframe, fazer algumas operações
# e em seguida vamos salvar o resultado em um outro arquivo de texto.
# Antes de importar o arquivo, verifique sua estrutura (como as colunas estão separadas, se tem cabeçalho, etc.)

#----------------------------------------------------------------------------------------------------------------

#Andre Trigueiro: Professor, gostaria de salientar que não consegui abrir o arquivo diretamente atraves do read.csv,
#provavelmente porque o arquivo continha vírgulas e tabs. Sendo assim, consegui achar no StackOverflow uma maneira
#de manipular o arquivo de modo que, primeiramente, usa-se um vetor e, após a manipulação, é possível criar um data.frame
#que será utilizado para analise.

#Lendo as 10 primeiras linhas para verificar o arquivo
readLines("Data/happiness_2015.csv", 10)

#Importanto os dados para um vetor "dat"
dat <- readLines("Data/happiness_2015.csv")




dat <- read.csv("Data/happiness_2015.csv", skip = 3, header = TRUE, sep = "\t", dec = "," )







#Removendo as 3 primeiras linhas de comentários para facilitar a manipulação do arquivo
dat <- dat[-c(1, 2, 3)]

#Conferindo os dados do vetor
head(dat)
tail(dat)

#Separando os headers
headers <- strsplit(dat[1], "\t")[[1]]

#Verificando a quantidade de headers
length(headers)

#No caso, 12 headers

#Removendo a linha de headers para facilitar a manipulação do arquivo
dat <- dat[-c(1)]

#----------------------------------------------------------------------------------------------------------------

# Importe o arquivo corretamente e o armazene em uma variável. Obs.: A tabela possui alguns campos numéricos
# onde o separador decimal é uma vírgula. Importe a tabela de modo que as vírgulas sejam transformadas
# em pontos (procure ajuda na documentação das funções de importação vistas na aula).

#----------------------------------------------------------------------------------------------------------------


#Transformando o vetor em uma textConnection para poder ser lido pelo read.csv e criar um data.frame
dat_2 <- read.csv(textConnection(paste0(dat, sep="\t")),
                  header=FALSE, stringsAsFactors=TRUE)

str(dat_3)











#Processamento e tratamento dos dados para poder manipula-los

#Fix grep errors
Sys.setlocale('LC_ALL','C')

#Filtrando repetições
dat_2 <- grep("Node Name,RTC_date", dat, invert=TRUE, value=TRUE)



# Verifique se a classe das colunas do dataframe condizem com o tipo de dado armazenado. Por exemplo, 
# a coluna dos países é um vetor de caracter?


# Crie um subset do dataframe contendo apenas as informações dos países da América Latina e Caribe.


# De acordo com o rank de felicidade, qual país da América Latina é o mais feliz?


# Crie um outro subset contendo apenas os países europeus. Calcule a média de felicidade (baseando-se
# no score de felicidade) dos países europeus e dos países da América Latina. Em qual região as 
# pessoas são mais felizes?


# Salve o dataframe com as informações da América Latina em um arquivo de texto. Ele deve utilizar como
# separador o ';'. 




