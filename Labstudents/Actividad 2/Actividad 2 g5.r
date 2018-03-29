#					Actividad Grupal 2

#           		   Bruno Zang, Matí­as Martínez




# 		EJERCICIO 1

x <- c("bueno","muy bueno","excelente","bueno")

# 1.
nx<-factor(x, levels=c("malo","bueno","muy bueno","excelente"))


# 2.
ordered(nx,rev(c("malo","bueno","muy bueno","excelente")))

# 3.
nx<-rev(table(nx))

# 4.
names(nx)<-c("e","mb","b","m")
order_x<-nx



#		EJERCIO 2:


# 1.
y<-array(c(c( 1:6), c( 10:15), c( 20:25)),c(3,2,3))
y


# 2.
y[,,3]



#		EJERCIO 3:


# 1.
df<-data.frame(edad=c(21,13,25,15,40), peso=c(69,76,79,80,71), gen=c("M","F","M","F","F"), cpelo=c("castaÃ±o","rubio","negro","pelirrojo","castaÃ±o"))
df

# 2.
str(df)

# 3.
df=cbind(df,altura=c(165,182,170,190,174))

# 4.
df=rbind(df,c(28,53,"F","negro",199))

# 5.
#Se le agrego una variable numÃ©rica y una observacion mas.

# 6.
which.max(df$edad)

