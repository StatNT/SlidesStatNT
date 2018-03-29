#ejercicio 1
x<-c("bueno","muy bueno","exelente","bueno")
new_x<-factor(x,levels = c("malo","bueno","muy bueno","exelente"))
new_x<-rev(new_x)
x<-relevel(new_x,ref = "exelente")
order_x<-factor(x,levels = c("exelente","muy bueno","bueno","malo"),labels = c("e","mb","b","m"))

#ejercicio 2
a<-array(c(1:6,10:15,20:25),c(3,2,3))
a[,,3]

#ejercicio 3
#1)
df<-data.frame(gen=c("f","m","f","m","m"),cp=c("negro","violeta","rubio","negro","fuxia"),edad=c(22,24,18,15,20),peso=c(60,72,53,62,50))
#2)
str(df)
#3)
new_df<-cbind(df,altura=c(152,160,155,163,161))
#4)
rbind(new_df,c(gen="m",cp="negro",edad=28,peso=53,altura=165))
#5)
str(new_df)
#6)
which.max(new_df$edad)
