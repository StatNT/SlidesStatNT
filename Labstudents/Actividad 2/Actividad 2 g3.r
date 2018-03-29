#Lorena Luraghi, Carolina Rodriguez y Lucia Quintero

#Ejercicio 1

x <- c("Bueno","Muy Bueno","Excelente","Bueno")

new_x <- factor(x, levels = c("Malo","Bueno","Muy Bueno","Excelente"))

new_x2 <- ordered(new_x,rev(c("Malo","Bueno","Muy Bueno","Excelente")))

new_x3 <- relevel(new_x,"Excelente")

order_x <- factor(new_x2, levels = c("Malo","Bueno","Muy Bueno","Excelente"), labels = c("E","MB","B","M"))

#Ejercicio 2

A <- array(c(1:6,10:15,20:25),c(3,2,3))

A[,,3]

#Ejercicio 3

df <- data.frame(genero=c("f","m","f","f","m"),color_de_pelo=c("rojo","marron","negro","rubio","negro"),edad=c(18,28,24,45,36),peso_kg=c(45,60,75,68,85),stringsAsFactors = FALSE)

str(df)

df <- cbind(df,altura=c(150,160,165,170,173))

df <- rbind(df,c("f","negro",28,53,165))

#Al ver la estructura de los datoas observamos que todas las variables son de clase "character". Esto sucede porque agregamos un vector con los nuevos datos y como ya sabemos un vector permite ser de una sola clase y criterio utilizado es el de mayor flexibilidad. En este caso trabajamos con clases numericas y caracter, siendo el caracter el mas flexible.

which.max(df$edad)

  
