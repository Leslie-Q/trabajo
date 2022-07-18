#tercera modificacion

# Modificacion Luis

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
getwd()


library(readxl)
datos<-read_excel("opcional.xlsx")
datos=as.data.frame(datos)
names(datos)
fosforo<-factor(datos[,1])
riego<-factor(datos[,2])
variedad<-factor(datos[,3])
y<-datos[,4]


mod1<-lm(y~variedad+fosforo+riego);mod1
shapiro.test(rstandard(mod1))
round( 0.05566,4)

#ANVA
summary(aov(mod1))
