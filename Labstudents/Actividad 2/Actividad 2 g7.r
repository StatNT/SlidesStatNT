#Francisco Bonora, Renzo Mutturro, Melina Gaona

#Ej.1
x<-c("bueno","muy bueno","exelente","bueno")
x<-factor(x,levels=c("malo","bueno","muy bueno","excelente"))
x<-rev(x)
x<-relevel(x,ref="excelente")
order_x<-factor(x,levels=c("excelente","muy bueno","bueno","malo"),labels=c("e","mb","b","m"))

#Ej.2
a<-array(c(1:6,10:15,20:25),c(3,2,3))
a[,,3]

#Ej.3
df<-data.frame(genero=c("F","M","F","F","M"),cPELO=c("rojo","amarillo","azul","negro","rojo"),edad=c(16,30,15,18,23),peso=c(60,66,53,58,70))
str(df)               
df<-cbind(df,altura=c(155,170,156,176,160))
rbind(df,c(genero="F",cPELO="negro",edad=28,peso=53,altura=165))


