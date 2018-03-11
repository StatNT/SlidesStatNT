rm(list=ls())
#install.packages("aod")
#install.packages("ggplot2")
library(ggplot2)
library(aod)

#cargo los datos para hacer el logit
load("../RDatas/BC.RData")
colnames(BC)

#convierto algunas variables en factores
str(BC)
#convierto a factor las variables categ\'oricas que aparecen c\'omo num\'ericas
BC$Sexo = as.factor(BC$Sexo)
BC$cl = as.factor(BC$cl)
BC$Abandono = as.factor(BC$Abandono)

levels(BC$Abandono)
str(BC)

table(BC$Sexo,useNA = "ifany")
table(BC$cl,useNA = "ifany")
table(BC$Abandono,useNA = "ifany")

# Otro agrupamiento de la variable cluster. Esto se hace con el fin de probar
#si con esta codificación cambia la significación de las variables

#veo cuantas observaciones en cada cluster
prop.table(table(BC$cl))
#primero creo una nueva columna que se llame cluster 2
BC$cl2<-"-"
#a los primeros cluster los llamo des
BC[BC$cl %in% c("1","2","3"),]$cl2<-"+crit"
#a los ultimos cluster los llamo fav
BC[BC$cl %in% c("4","5"),]$cl2<-"-crit"
#veo como quedo la proporcione de alumnos en cada cluster reconfigurado
prop.table(table(BC$cl2))
#convierto la variable cluster a factor
BC$cl2<-as.factor(BC$cl2)

# Otro agrupmiento de la variable cluster (2).
BC$cl3<-"-"
#a los primeros cluster los llamo des
BC[BC$cl %in% c("1","2"),]$cl3<-"+crit"

#a los primeros cluster los llamo des
BC[BC$cl=="3",]$cl3<-"0crit"

#a los ultimos cluster los llamo fav
BC[BC$cl %in% c("4","5"),]$cl3<-"-crit"

#veo como quedo la proporcione de alumnos en cada cluster reconfigurado
prop.table(table(BC$cl3))

#convierto la variable cluster a factor
BC$cl3<-as.factor(BC$cl3)




# # # Modelo logistico para la clasificacion # # #
# clase positiva<- Abandona   
# clase negativa<- No abandona
set.seed(101)
alpha <- 0.7 #Porcentaje para el conjunto de entrenamiento

#armo set de entrenamiento y de testeo
inTrain   <- sample(1:nrow(BC), alpha * nrow(BC))
train.set <- BC[inTrain,]
test.set  <- BC[-inTrain,]

addmargins(table(train.set$Abandono))
addmargins(prop.table(table(train.set$Abandono)))

addmargins(table(test.set$Abandono))
addmargins(prop.table(table(test.set$Abandono)))


#armo el modelo con todas las variables menos EELeve
mylogit1 <-glm(Abandono ~ inas_rel +  cl + Sexo +  EE_Fuerte, data=train.set, family = "binomial")
summary(mylogit1)

#armo el modelo con todas las variables menos EEFuerte
mylogit2 <-glm(Abandono ~ inas_rel +  cl + Sexo + EE_Leve, data=train.set, family = "binomial")
summary(mylogit2)

#armo el modelo solo con la variable sexo
mylogit3 <-glm(Abandono ~ Sexo, data=train.set, family = "binomial")
summary(mylogit3)
#armo el modelo solo con la variable cluster
mylogit4 <-glm(Abandono ~ cl, data=train.set, family = "binomial")
summary(mylogit4)


# Ahora pruebo el modelo nuevamente utilizando la nueva codificación de
#la variable cluster
mylogit5 <-glm(Abandono ~ inas_rel +  cl2 + Sexo+  EE_Fuerte, data=BC, family = "binomial")
summary(mylogit5)

# Ahora pruebo el modelo nuevamente utilizando la nueva codificación de
#la variable cluster
mylogit6 <-glm(Abandono ~ inas_rel +  cl3 + Sexo+  EE_Fuerte, data=BC, family = "binomial")
summary(mylogit6)



#diagnostico
anova(object = mylogit5,test="LRT")

# ¿Como funciona el diagnostico?
mylogit00 <-glm(Abandono ~ 1 , data=BC, family = "binomial")
summary(mylogit00)

mylogit01 <-glm(Abandono ~ inas_rel , data=BC, family = "binomial")
summary(mylogit01)

mylogit02 <-glm(Abandono ~ inas_rel +  cl2 , data=BC, family = "binomial")
summary(mylogit02)

mylogit03 <-glm(Abandono ~ inas_rel +  cl2 + Sexo , data=BC, family = "binomial")
summary(mylogit03)

mylogit04 <-glm(Abandono ~ inas_rel +  cl2 + Sexo+  EE_Fuerte, data=BC, family = "binomial")
summary(mylogit04)


anova(mylogit00, mylogit01, test="LRT")
anova(mylogit01, mylogit02, test="LRT")
anova(mylogit02, mylogit03, test="LRT")
anova(mylogit03, mylogit04, test="LRT")



# Punto de corte

test.set$rankP <- predict(mylogit5, newdata = test.set , type = "response")
summary(test.set$rankP)

head(test.set)



TP=NULL
FP=NULL


L=seq(min(test.set$rankP),max(test.set$rankP),0.01)
L2=rev(L)

for (i in (L2)){
  test.set$Pred<-0  
  test.set[test.set$rankP>i,]$Pred<-1
  A=addmargins(table(test.set$Pred,test.set$Abandono))
  
  TP=c(TP,A[2,2]/A[3,2])
  FP=c(FP,A[2,1]/A[3,1])
}
x11(5,5)
plot(FP,TP)

cbind(L2,TP,FP)


test.set$Pred<-0  
test.set[test.set$rankP>=0.04,]$Pred<-1
addmargins(table(test.set$Pred,test.set$Abandono))

