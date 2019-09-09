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

#Dimensao do data.frame
dim(adult)

#Conferindo os 6 primeiros dados
head(adult)

summary(adult)
table(adult$class)
table(adult$sex)
table(adult$race)
table(adult$relationship)
table(adult$class,adult$sex)
boxplot(adult$age~adult$class,col=c(3,4),main="Idade vs class",sub="class")
boxplot(adult$hours-perweek~adult$class, col=c(3,4), main="Horas por semana vs class",sub="class")
boxplot(adult$age~adult$sex,col=c(3,4),main="Age vs class",sub="class")
hist(adult$hours-perweek)
hist(adult$age)
plot(table(adult$education))
plot(table(adult$race))
plot(table(adult$relationship))
pie(table(adult$class))
pie(table(adult$sex))
hist(adult$`capital-gain`-adult$`capital-loss`)
summary(adult$`capital-gain`-adult$`capital-loss`)
