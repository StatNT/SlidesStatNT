# victoria silveira , Thiago guevara
#Ejercicio 1
ggplot2::mpg
library(ggplot2)

ggplot(data=mpg,aes(x=hwy,y=cty))+  geom_point()+
  labs(x="milla/galon carretera",y="milla/galon ciudad",title="milla/galon carretera vs ciudad")

#Ejercicio 2

#1)
ggplot(data=mpg,aes(x=hwy,y=cty))+  geom_point(alpha=1/3)+
  labs(x="milla/galon carretera",y="milla/galon ciudad",title="milla/galon carretera vs ciudad")
#2)
ggplot(data=mpg,aes(x=hwy,y=cty))+  geom_jitter(alpha=1/3)+
  labs(x="milla/galon carretera",y="milla/galon ciudad",title="milla/galon carretera vs ciudad")
#3)Nos resulta mas apropiado usar el geom_jitter ya que nos muestras mayor cantidad de datos sobreploteados, porque de la otra manera los agrupa. 

#Ejercicio 3

#1)
ggplot(data=mpg,aes(x=hwy,y=cty,color=class))+  geom_jitter()+
  labs(x="milla/galon carretera",y="milla/galon ciudad",title="milla/galon carretera vs ciudad")
#2)
ggplot(data=mpg,aes(x=hwy,y=cty,color=class))+ geom_jitter()+
  labs(x="milla/galon carretera",y="milla/galon ciudad",title="milla/galon carretera vs ciudad")+scale_colour_brewer(palette="Dark2")
#3)
ggplot(data=mpg,aes(x=hwy,y=cty,color=class))+ geom_jitter()+
  labs(x="milla/galon carretera",y="milla/galon ciudad",title="milla/galon carretera vs ciudad")+scale_colour_brewer(palette="Dark2")+facet_wrap("class")

