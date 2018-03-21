#                   Bruno Zang - Matías Martínez

#   Ejercicio 1:

ggplot(data=mpg,aes(x=hwy,y=cty))+geom_point()+ labs(x="Millas en carretera",y="Millas ciudad",title=" Rendimiento en millas")


#   Ejercicio 2:

# 1.
ggplot(data=mpg,aes(x=hwy,y=cty))+geom_point(alpha=0.25)+ labs(x="Millas en carretera",y="Millas ciudad",title=" Rendimiento en millas")

# 2.
ggplot(data=mpg,aes(x=hwy,y=cty))+geom_jitter()+ labs(x="Millas en carretera",y="Millas ciudad",title=" Rendimiento en millas")

# 3.
# Consideramos más acorde el uso de transparencias para este caso; ya que jitter si bien muestra más claramente la concentracion de los datos, distorciona su ubicación y puede aparentar una distribución diferente.


#   Ejercicio 3:
# 1.
ggplot(data=mpg,aes(x=hwy,y=cty, colour=class))+geom_jitter()+ labs(x="Millas en carretera",y="Millas ciudad",title=" Rendimiento en millas")

# 2.
ggplot(data=mpg,aes(x=hwy,y=cty, colour=class))+geom_jitter()+ labs(x="Millas en carretera",y="Millas ciudad",title=" Rendimiento en millas")+scale_colour_brewer(palette="Dark2")

# 3.
ggplot(data=mpg,aes(x=hwy,y=cty, colour=class))+geom_jitter()+ labs(x="Millas en carretera",y="Millas ciudad",title=" Rendimiento en millas")+scale_colour_brewer(palette="Dark2")+facet_wrap(~class)

