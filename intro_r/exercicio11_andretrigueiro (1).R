# Andre de Oliveira
# Exercício 11 ------------------------------------------------------------

setwd("D:/TI/IMD/intro_r")

best <- function(estado, resultado) {
  
  # Escreva as operações da função aqui
  
  # Leitura dos dados

  
  dataset <- read.csv("outcome-of-care-measures.csv")
  
  
  # Testanto os dados
  
  
  if(estado %in% dataset$State == FALSE){
    print("estado invalido")
    stop()
  }
  
  
  # Caso 1 : Heart Attack
  # Caso 2 : Heart Failure
  # Caso 3 : Pneumonia
  
  
  if(resultado == "heart attack"){
    
    dataset <- subset(dataset, State == estado & Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack != "Not Available")
    
    dataset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack <- as.numeric(as.character(dataset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack))
    
    dataset <- data.frame(dataset$Hospital.Name, dataset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
    
    idx <- which.min(dataset$dataset.Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
    
    idx <- as.numeric(idx)
    
    print(as.character(dataset$dataset.Hospital.Name[idx]))
    
  }else if (resultado == "heart failure"){
    
    dataset <- subset(dataset, State == estado & Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure != "Not Available")
    
    dataset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure <- as.numeric(as.character(dataset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure))
    
    dataset <- data.frame(dataset$Hospital.Name, dataset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
    
    idx <- which.min(dataset$dataset.Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
    
    idx <- as.numeric(idx)
    
    print(as.character(dataset$dataset.Hospital.Name[idx]))
    
  }else if (resultado == "pneumonia"){
    
    dataset <- subset(dataset, State == estado & Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia != "Not Available")
    
    dataset$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia <- as.numeric(as.character(dataset$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia))
    
    dataset <- data.frame(dataset$Hospital.Name, dataset$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
    
    idx <- which.min(dataset$dataset.Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
    
    idx <- as.numeric(idx)
    
    print(as.character(dataset$dataset.Hospital.Name[idx]))
    
  }else {
    
    print("resultado invalido")
    stop()
    
  }
  
  
} #end function



# A chamada da função deve retornar os seguintes valores:

best("TX", "heart attack")
# [1] "CYPRESS FAIRBANKS MEDICAL CENTER"

best("TX", "heart failure")
# [1] "FORT DUNCAN MEDICAL CENTER"

best("MD", "heart attack")
# [1] "JOHNS HOPKINS HOSPITAL, THE"

best("MD", "pneumonia")
# [1] "GREATER BALTIMORE MEDICAL CENTER"

best("BB", "heart attack")
# Error in best("BB", "heart attack"): estado inválido

best("NY", "hert attack")
# Error in best("NY", "hert attack"): resultado inválido