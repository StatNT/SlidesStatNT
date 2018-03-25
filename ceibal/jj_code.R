#Histograma
ggplot(data = tus_datos, aes(x = cobertura)) +
  +   geom_histogram(bins = 30,col = "grey", fill = "yellow") +
  labs(x = "etiqueta de  x", y = "etiqueta de y")

#boxplot amarillo
ggplot(data = tus_datos, aes(x = grados, y = cobertura)) +
  geom_boxplot(fill = "yellow") +  labs(x = "etiqueta de  x", y = "etiqueta de y")


#boxplot segun consejo
ggplot(data = tus_datos, aes(x = grado, y = porcentaje, fill = consejo)) +
  geom_boxplot() +  labs(x = "etiqueta de  x", y = "etiqueta de y")