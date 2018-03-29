#Nombres de los integrantes del grupo: Lorena Luraghi, Lucia Quintero, Carolina Rodriguez

# Ejercicio 1
library(ggplot2)
data(mpg)
?mpg
ggplot(data=mpg, aes(x=hwy,y=cty))+geom_point()+labs(x="highway miles per gallon", y="city miles per gallon", title="city vs highway miles per gallon")


#Ejercicio 2
#2.1
ggplot(data=mpg, aes(x=hwy,y=cty))+geom_point(alpha=1/5)+labs(x="highway miles per gallon", y="city miles per gallon", title="city vs highway miles per gallon")

#2.2
ggplot(data=mpg, aes(x=hwy,y=cty))+geom_jitter()+labs(x="highway miles per gallon", y="city miles per gallon", title="city vs highway miles per gallon")

#2.3 "alpha" y "jitter" son tècnicas para visualizar el problema de sobreploteo.La primer tecnica utiliza intensidades de colores para representar aquellos puntos donde hay mas o menos observaciones, por el otro lado "geom_jitter" añade un pequeño ruido a las observaciones para visualizarlas por separado (de forma que no queden superpuestas). Encontramos que la opcion mas apropiada es "alpha" porque es visualmente mas elegante y no distorciona los datos. En el caso de tener mucha densidad de datos "Geom_jitter" puede provocar una nube de puntos indistinguibles.  

#Ejercicio 3
#3.1
ggplot(data=mpg, aes(x=hwy,y=cty, colour=class))+geom_jitter()+labs(x="highway miles per gallon", y="city miles per gallon", title="city vs highway miles per gallon")

#☺3.2
ggplot(data=mpg, aes(x=hwy,y=cty, colour=class))+geom_jitter()+labs(x="highway miles per gallon", y="city miles per gallon", title="city vs highway miles per gallon")+scale_color_brewer(palette="Dark2")

#3.3
ggplot(data=mpg, aes(x=hwy,y=cty, colour=class))+geom_jitter()+labs(x="highway miles per gallon", y="city miles per gallon", title="city vs highway miles per gallon")+scale_color_brewer(palette="Dark2")+facet_wrap(~class)

