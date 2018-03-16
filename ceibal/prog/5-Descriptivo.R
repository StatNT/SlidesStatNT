rm(list=ls())
gc()
#install.packages("ggplot2")
library(ggplot2)
load("../RDatas/PredictiveBase16_17.RData")
load("../RDatas/CobStats2.RData")

length(unique(Predic_16_17$nro_doc_centro_educ))

colnames(Predic_16_17)
Predic_16_17<-Predic_16_17[,c(1,2,64,66,74,75,77,78,82:87,91:94)]
colnames(Predic_16_17)

addmargins(table(Predic_16_17$nombre_departamento))
str(Predic_16_17$`Fecha nacimiento`)


#Calculo la extraedad Leve
Predic_16_17$EE_Leve<-0
Predic_16_17[Predic_16_17$`Fecha nacimiento` < as.Date("2003-04-30"),]$EE_Leve<-1
addmargins(table(Predic_16_17$EE_Leve,useNA = "ifany"))
prop.table(table(Predic_16_17$EE_Leve,useNA = "ifany"))


#calculo la extraedad fuerte
Predic_16_17$EE_Fuerte<-0
Predic_16_17[Predic_16_17$`Fecha nacimiento` <as.Date("2002-04-30"),]$EE_Fuerte<-1
addmargins(table(Predic_16_17$EE_Fuerte,useNA = "ifany"))
prop.table(table(Predic_16_17$EE_Fuerte,useNA = "ifany"))






#calculo inasistencias relativas al total
Predic_16_17$inas_rel<-Predic_16_17$inasistencias/Predic_16_17$coberturaT
summary(Predic_16_17$inas_rel)

Predic_16_17$Abandono<-as.factor(Predic_16_17$Abandono)
Predic_16_17$EE_Fuerte<-as.factor(Predic_16_17$EE_Fuerte)
Predic_16_17$EE_Leve<-as.factor(Predic_16_17$EE_Leve)
Predic_16_17$cl<-as.factor(Predic_16_17$cl)
Predic_16_17$Sexo<-as.factor(Predic_16_17$Sexo)

#son independientes
chisq.test(Predic_16_17$Sexo,Predic_16_17$cl)


# # # Descriptivo de las variables a utilizar en el modelo # # #

table(Predic_16_17$nombre_departamento)

addmargins(table(Predic_16_17$Abandono))

addmargins(prop.table(table(Predic_16_17$Abandono)))

# en donde est?n los gurises que en 2017 est?n en el sistema p?blico
Predic_16_17$G17 <- substr(Predic_16_17$Grupo_UE_2017,1,3)
addmargins(table(Predic_16_17$G17, useNA="ifany"))
addmargins(table(Predic_16_17[Predic_16_17$Abandono == 0,]$G17, useNA="ifany"))

#analisis de la cobertura del pasaje de lista en l?nea
x11(8,8)
ggplot(COB_stats2, aes(Predominio)) +
  geom_histogram(bins = 50,col="grey",fill="red")+
  labs(title="m?xima frecuencia de la cobertura por grupo",x="frecuencia",y="cantidad")

dim(COB_stats2[COB_stats2$Predominio==1,])

summary(COB_stats2$Predominio)

dim(COB_stats2[COB_stats2$Predominio>=0.80,])
nrow(COB_stats2[COB_stats2$Predominio>=0.80,])/nrow(COB_stats2)
dim(COB_stats2[COB_stats2$Predominio<0.80,])


Centro<-COB_stats2[COB_stats2$Predominio>=0.80,]$Centro_Grupo
sum(COB_stats2[COB_stats2$Predominio>=0.80,]$unos)

x11(8,8)
boxplot(Predic_16_17[Predic_16_17$Centro_Grupo %in% Centro,]$coberturaT,col = "blue")

summary(Predic_16_17[Predic_16_17$Centro_Grupo %in% Centro,]$coberturaT)

summary(COB_stats2$Predominio)
dim(COB_stats2[COB_stats2$Predominio>0.8 & COB_stats2$CobPred>47, ])
Cg <- COB_stats2[COB_stats2$Predominio>0.8 & COB_stats2$CobPred>47, ]$Centro_Grupo
BC <- Predic_16_17[Predic_16_17$Centro_Grupo %in% Cg, ]
BC <- BC[BC$coberturaT>47, ]
summary(BC$coberturaT)
save(x=BC,file ="../RDatas/BC.RData")



# analisis segun covariables
addmargins(table(BC$Abandono))
prop.table(table(BC$Abandono))

prop.table(table(BC$Abandono,BC$Sexo),1)
prop.table(table(BC$Sexo))



prop.table(table(BC$cl,BC$Abandono),2)

prop.table(table(BC$cl,BC$Abandono),1)




A<-cbind(prop.table(table(BC$cl,BC$Abandono),2),prop.table(table(BC$cl)));colnames(A)<-c("No abandona","abandona","total")
barplot(A,col=heat.colors(length(rownames(A))),legend.text = TRUE)


prop.table(table(BC$EE_Fuerte,BC$Abandono),2)
B<-cbind(prop.table(table(BC$EE_Fuerte,BC$Abandono),2),prop.table(table(BC$EE_Fuerte)));colnames(B)<-c("No abandona","abandona","total")
colnames(B)<-c("No abandona","abandona","total")
rownames(B)<-c("Sin extra edad Fuerte", "Con extra edad Fuerte")
library(RColorBrewer)
coul = brewer.pal(3, "Pastel2") 
coul<-coul[1:2]

x11(10,10)
barplot(B,col=heat.colors(length(rownames(B))),main = "Extra edad fuerte y abandono",legend.text = TRUE,ylim = c(0,1.5),
        args.legend = list( inset=c(3,-17)) )



prop.table(table(BC$EE_Fuerte))
prop.table(table(BC$EE_Leve,BC$Abandono),2)
prop.table(table(BC$EE_Leve))

C<-cbind(prop.table(table(BC$EE_Leve,BC$Abandono),2),prop.table(table(BC$EE_Leve)));
colnames(C)<-c("No abandona","abandona","total")
rownames(C)<-c("Sin extra edad Leve", "Con extra edad Leve")

x11(10,10)
barplot(C,col=heat.colors(length(rownames(C))),main = "Extra edad leve y abandono",legend.text = TRUE,ylim = c(0,1.5),
        args.legend = list( inset=c(3,-17)) )



chisq.test(Predic_16_17$EE_Fuerte,Predic_16_17$EE_Leve)

x11(8,8)
d <- density(BC$inas_rel)
plot(d, main="Densidad de inasistencias relativas ")
polygon(d, col="red", border="black")

summary(BC$inas_rel)
nrow(BC[BC$inas_rel <= 0.3,])/nrow(BC)

fill="red"
line="black"
x11(8,8)
ggplot(BC,aes(x=Abandono,y=inas_rel))+geom_boxplot(fill=fill, colour=line)+ scale_y_continuous(name="inasistencias relativas")+ggtitle("inasistencias relativas seg?n abandono")

summary(BC[BC$Abandono==1,]$inas_rel)
summary(BC[BC$Abandono==0,]$inas_rel)






