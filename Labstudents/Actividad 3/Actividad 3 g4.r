#Emiliano Barone y ??
#Actividad 3



#Ejercicio 1

install.packages("ggplot2")
library("ggplot2")
ggplot(data=mpg, aes(x=cty, y= hwy))+
        labs(x="Millas por galon ciudad",y="Millas por galon carretera", title="Millas por galon ciudad vs carretera")+
  geom_point()
        

#Ejercicio 2

ggplot(data=mpg, aes(x=cty, y= hwy))+
  labs(x="Millas por galon ciudad",y="Millas por galon carretera", title="Millas por galon ciudad vs carretera")+
  geom_point(alpha=1/3)

ggplot(data=mpg, aes(x=cty, y= hwy))+
  labs(x="Millas por galon ciudad",y="Millas por galon carretera", title="Millas por galon ciudad vs carretera")+
  geom_jitter()

# Creemos que es mas adecuado utilizar geom_point con el argumento alpha para eliminar el problema de sobreploteo y obtener una visualizacion mas sencilla para el ojo humano

#Ejercicio 3

ggplot(data=mpg, aes(x=cty, y= hwy, colour=class))+
  labs(x="Millas por galon ciudad",y="Millas por galon carretera", title="Millas por galon ciudad vs carretera")+
  geom_jitter()

ggplot(data=mpg, aes(x=cty, y= hwy, colour=class))+
  labs(x="Millas por galon ciudad",y="Millas por galon carretera", title="Millas por galon ciudad vs carretera")+
  geom_jitter()+
  scale_color_brewer(palette = "Dark2")

ggplot(data=mpg, aes(x=cty, y= hwy, colour=class))+
  labs(x="Millas por galon ciudad",y="Millas por galon carretera", title="Millas por galon ciudad vs carretera")+
  geom_jitter()+
  scale_color_brewer(palette = "Dark2")+
  facet_wrap("class")




