# Ana Sinicariello, Martín Blanco

#Actividad 3

#Ejercicio 1
#ggplot(data = mpg )+ geom_point(mapping = aes(x= hwy , y=cty))+theme(aspect.ratio = 1)+ labs(x= "Highway miles per gallon" , y= "City miles per gallon" , title= "Fuel economy") 

#Ejercicio 2
#ggplot(data = mpg )+ geom_point(mapping = aes(x= hwy , y=cty), alpha=1/3)+theme(aspect.ratio = 1)+ labs(x= "Highway miles per gallon" , y= "City miles per gallon" , title= "Fuel economy") 

# ggplot(data = mpg )+ geom_jitter(mapping = aes(x= hwy , y=cty))+theme(aspect.ratio = 1)+ labs(x= "Highway miles per gallon" , y= "City miles per gallon" , title= "Fuel economy")

# La que utiliza las transparencias mediante el factor alpha, porque es màs sencillo de leer y agradable a la vista

#Ejercicio 3
# ggplot(data = mpg )+ geom_jitter(mapping = aes(x= hwy , y=cty , color=class))+theme(aspect.ratio = 1)+ labs(x= "Highway miles per gallon" , y= "City miles per gallon" , title= "Fuel economy")

#ggplot(data = mpg )+ geom_jitter(mapping = aes(x= hwy , y=cty , color=class))+theme(aspect.ratio = 1)+ labs(x= "Highway miles per gallon" , y= "City miles per gallon" , title= "Fuel economy") + scale_colour_brewer(palette="Dark2")

#ggplot(data = mpg )+ geom_jitter(mapping = aes(x= hwy , y=cty))+theme(aspect.ratio = 1)+ labs(x= "Highway miles per gallon" , y= "City miles per gallon" , title= "Fuel economy") +  facet_wrap( ~ class)


