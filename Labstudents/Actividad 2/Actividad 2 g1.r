##Actividad grupal 2

#Bruno Bellagamba , Ana Sinicariello
#Ejercicio 1

x <- c("bueno","muy bueno","exelente","bueno")
x_fact <- factor(x, levels = c("malo", "bueno", "muy bueno","exelente"))

?ordered
new_x <- factor(x_fact,levels = c("exelente","muy bueno","bueno","malo"), ordered = is.ordered(x_fact))

?relevel
x_rel <- relevel(x_fact,ref="exelente")

order_x <- factor(x_fact,levels = c("exelente","muy bueno","bueno","malo"), ordered = is.ordered(x_fact),labels = c("e","mb","b","m"))
?labels


#Ejercicio 2
z1 <- array(c(1:6,10:15,20:25),c(3,2,3))
z1[,,3]

#Ejercicio 3

df <- data.frame(genero=c("f","f","f","m","m"),cp=c("negro","negro","rubio","pelirrojo","negro"),edad=c(15,23,17,24,18),peso=c(60,70,56,68,65))
class(df[,1])
class(df[,2])
class(df[,3])
class(df[,4])
df <- cbind(df,altura=c(160,170,155,180,200))
df <- rbind(df,c("f","negro",28,53,165))
str(df)#Cambio los elementos numericos por caracteres

which.max(df$edad)#La 6ta persona es la mas vieja
