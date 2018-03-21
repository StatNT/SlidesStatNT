#Maria Noel Blanco, Emiliano Barone

#Ejercicio 1

x = c("bueno", "muy bueno", "excelente", "bueno")
x= factor(x, levels = c("malo", "bueno", "muy bueno", "excelente"))
new_x= factor(x, levels= rev(levels(x)))
relevel(x, ref = "excelente")               
order_x=factor(levels = rev(levels(x)), labels= c("e", "mb", "b", "m"))

#Ejercicio 2

m= array (c(1:6, 10:15, 20:25), c(3,2,3))
m[1:3, 1:2, 3]

#Ejercicio 3

df= data.frame(genero= c("mujer", "mujer", "mujer", "hombre", "hombre"), colorDePelo= c("marron", "negro", "rubio", "colorado", "plateado"), edad= c(20,21,26,28,19), peso=c(60,65,55,62,58))

str(df)

df=cbind(df, altura=c(170,171,180,196,167))

rbind(df, c("mujer", "negro", 28,53,165))

str(df)
      
