#Micaela Echeverria, Luciabril Rodriguez

#EJERCICIO 1
#1.
x<- c("bueno","muy bueno","excelente","bueno")
new_x<- factor(c("malo","bueno","muy bueno","excelente"))

#2.
new_X<-ordered(new_x, rev(c("malo","bueno","muy bueno","excelente")))

#3.
new_x<- relevel(new_x, ref= "excelente")

#4.
x <- factor(x, levels = c("excelente", "muy bueno", "bueno", "malo"),labels = c("e", "mb", "b","m"))

#Ejercicio 2

#1.
A <- array(c((1:6),(10:15),(20:25)), c(3, 2, 3))

#2.
A[1:3,1:2,3]

#EJERCICIO 3

#1.

df<-data.frame(genero= c("M","M","F","M","F"), col_pelo= c("rojo","rubio","morocho","morocho","rubio"), edad= c(19,25,23,31,39), peso_kg= c(49,44,56,64,55))

#2.
class(df$genero)
class(df$col_pelo)               
class(df$edad)
class(df$peso_kg)

#3.
altura_cm<- c(180,165,163,174,171)
df<-cbind(df, altura_cm)

#4.
a<-c("F","negro",28,53,165)
df<-rbind(df,a)

#5.La estructura de la ultima fila ingresada es diferente ya que hay un dato no disponible

#6.
which.max(df$edad)
