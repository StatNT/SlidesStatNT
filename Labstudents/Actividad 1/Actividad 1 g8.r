#              Bruno Zang - Matías Martínez



# Ejercicio 1:

# 1. Numeric o double, debido a que posee número y lógico, por lo cual el númerico es más flexible.

# 2. Caracter.

# 3. Caracter.

# 4. Interger.

# 5. Numeric.


# Ejercicio 2: 

# 1.
x<-c( 3, 2, 2, 4, 5)
y<-c( 1, 6, 5, 7, 8)

# 2.

sum(y)

# 3.

2*x[1]-3*(y[2])

# 4.

x[1]+x[5]-y[3]

# 5.

mean(x)
8*(mean(y))


# Ejercicio 3:

# 1.
n1<-sample(10:20,4)

# 2.
c2<- "Estadística"

# 3.
c3<- c( "Datos", "Análisis", "Probabilidad", "Inferencia")

# 4:
l4<- c(T,F,T)

# 5:
mil<- c(1000)

### LISTA###
ll<- list(n1,c2,c3,l4,mil)

# 6:
ll[3]

# 7:

(ll[[1]][3])*8

# 8:

ll[[4]][2]
