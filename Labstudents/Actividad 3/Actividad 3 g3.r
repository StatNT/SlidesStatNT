#Micaela Echeverria, Luciabril Rodriguez

#EJERCICIO 1
library(ggplot2)
ggplot(data=mpg, aes(x = hwy, y = cty))+
  geom_point()+
  theme(aspect.ratio = 1)+
  labs(x="Km/h en carretera", y="km/h en ciudad", title="scatter km/h en carretera vs km/h en ciudad")

#EJERCICIO 2
#1.
ggplot(data=mpg, aes(x = hwy, y = cty))+
  geom_point(alpha = 1/3)+
  theme(aspect.ratio = 1)+
  labs(x="Km/h en carretera", y="km/h en ciudad", title="scatter km/h en carretera vs km/h en ciudad")

#2.
ggplot(data=mpg, aes(x = hwy, y = cty))+
geom_jitter()+
  theme(aspect.ratio = 1)+
  labs(x="Km/h en carretera", y="km/h en ciudad", title="scatter km/h en carretera vs km/h en ciudad")

#3.Es mejor el geom_jitter ya que en una variable continua nos permite ver la dispersion de los datos y podemos tener mayor idea de cuantos de estos hay aporximadamente


#EJERCICO 3
#1.
ggplot(data=mpg, aes(x = hwy, y = cty, colour= class))+
  geom_jitter()+
  theme(aspect.ratio = 1)+
  labs(x="Km/h en carretera", y="km/h en ciudad", title="scatter km/h en carretera vs km/h en ciudad")

#2.
ggplot(data=mpg, aes(x = hwy, y = cty, colour= class, ))+
  scale_colour_brewer(type = "seq", palette = "Dark2", direction = 1) +
  geom_jitter()+
  theme(aspect.ratio = 1)+
  labs(x="Km/h en carretera", y="km/h en ciudad", title="scatter km/h en carretera vs km/h en ciudad")

#3.
ggplot(data=mpg, aes(x = hwy, y = cty, colour= class, ))+
  scale_colour_brewer(type = "seq", palette = "Dark2", direction = 1) +
  geom_jitter()+
  theme(aspect.ratio = 1)+
  labs(x="Km/h en carretera", y="km/h en ciudad", title="scatter km/h en carretera vs km/h en ciudad")+
  facet_wrap(~class)

       
       
