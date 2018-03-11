rm(list=ls())
#ARBOLES DE DECISIÓN
#install.packages("rpart")
library(rpart)
#install.packages("rpart.plot")
library(rpart.plot)

load("../RDatas/Prim_Dat.RData")

data <- subset(Prim_Dat,select=c(Abandono,Sexo,cl,inas_rel,EE_Fuerte,EE_Leve))


str(data)
#data$Abandono<-as.factor(data$Abandono)
#data$Sexo<-as.factor(data$Sexo)
#data$cl<-as.factor(data$cl)
#data$EE_Fuerte<-as.factor(data$EE_Fuerte)
#data$EE_Leve<-as.factor(data$EE_Leve)

#data$Abandono<-  as.character(data$Abandono)
#data$Sexo<-      as.character(data$Sexo)
#data$cl<-        as.character(data$cl)
#data$EE_Fuerte<- as.character(data$EE_Fuerte)
#data$EE_Leve<-   as.character(data$EE_Leve)
#str(data)


# se escoge una muestra para el entrenamiento
set.seed(42)   
N <- nrow(data)
train <- sample(N,0.7*N) 
test <-  setdiff(setdiff(seq_len(N),train), train) #  
form <- formula(Abandono ~ .)				# Describir el modelo
model <- rpart(formula=form,data=data[train,])	# Construye el modelo
summary(model)



rpart.plot(model, type=1, cex=0.7, extra=100, box.palette=c("aquamarine2", "darksalmon"),branch.lty=2)


a=predict(model,data[test,])
table(a)

#solo toma 4 valores posibles

