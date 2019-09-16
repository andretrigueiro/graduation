# Exercicio 1 da matéria de Probabilidade
# Aluno: André Trigueiro
# Professora: Ismenia Blavatsky 

#conferindo os dados
readLines("Data/adult.csv", 10)

#lendo o arquivo .csv e criando um data.frame
adult <- read.csv("Data/adult.csv")

#Atribuindo nomes as colunas
names(adult)<-c("age","workclass","fnlwgt","education","education-num","maritalstatus","
occupation","relationship","race","sex","capital-gain","capital-loss","hours-perweek","
native-country","class" )


