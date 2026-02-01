library(readxl)
library(dplyr) # Parte del ecosistema tidyverse
library(purrr)
library(readr)

ser_estudiante <- read_delim("ser_estudiante.csv", 
                             delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(ser_estudiante)

diccionario_ineval <- read_excel("diccionario_ineval.xlsx", sheet = "Diccionario")
View(diccionario_ineval)

ser_estudiante1 <- ser_estudiante

'ser_estudiante1 <-ser_estudiante1|>
  rename(Región =  nm_regi)' 
#elaborar un diccionario de nombres
mapas_nombres<-setNames(diccionario_ineval[[1]],
           diccionario_ineval[[2]])
head(mapas_nombres)
names(diccionario_ineval)
#renombrar las columnas del dataset
ser_estudiante1 <- ser_estudiante1 |>
  rename(all_of(mapas_nombres))