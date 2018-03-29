#Melina,Francisco

#Ejercicio 1
library(ggplot2)

ggplot(data = mpg, aes(x = hwy, y = cty))+geom_point()+
        theme(aspect.ratio = 1)
?mpg

ggplot(data = mpg, aes(x = hwy, y = cty))+geom_point()+
  theme(aspect.ratio = 1)+
  labs(x="highway miles per gallon",y="city miles per gallon",title="Grafico de puntos hwy vs cty")

#Ejercicio2

#Parte1
ggplot(data = mpg, aes(x = hwy, y = cty))+geom_point(alpha=1/3)+
  theme(aspect.ratio = 1)+
  labs(x="highway miles per gallon",y="city miles per gallon",title="Grafico de puntos hwy vs cty")

#Parte2
ggplot(data = mpg, aes(x = hwy, y = cty))+geom_jitter(alpha=1/3)+
  theme(aspect.ratio = 1)+
  labs(x="highway miles per gallon",y="city miles per gallon",title="Grafico de puntos hwy vs cty")

#Parte3 
#Nos parece más apropiado usar geom_jitter porque los datos quedan en una posición mas natural, se ve con mayor claridad donde hay más acumulación de datos

#Ejercicio3
 
#Parte1
?class
ggplot(data = mpg, aes(x = hwy, y = cty,color="class"))+geom_jitter(alpha=1/3)+
  theme(aspect.ratio = 1)+
  labs(x="highway miles per gallon",y="city miles per gallon",title="Grafico de puntos hwy vs cty")
 
#Parte2
?scale_color_brewer
ggplot(data = mpg, aes(x = hwy, y = cty,color="class"))+geom_jitter(alpha=1/3)+
  theme(aspect.ratio = 1)+
  labs(x="highway miles per gallon",y="city miles per gallon",title="Grafico de puntos hwy vs cty")+scale_color_brewer(palette="Dark2")

#Parte3
ggplot(data = mpg, aes(x = hwy, y = cty))+geom_jitter(alpha=1/3)+
  theme(aspect.ratio = 1)+
  labs(x="highway miles per gallon",y="city miles per gallon",title="Grafico de puntos hwy vs cty")+scale_color_brewer(palette="Dark2")+facet_wrap("class")
?class

