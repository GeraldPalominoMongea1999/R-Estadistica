#Nombre: Gerald Palomino Monge 20140372B
#Respuesta:
#a
# a muestra la comparacion primero para a=10 y 
# x de de 1 al 10
# a x son aleatorios del 1 al 50 
#b
#se ejecuta el comando y se toma que el tercer valor el tiempo 
# c 
# se obotien las longitudes y luego se las imprime 



#a
a<-10
a
x<-1:10
x
match(a,x)
min(which(x==a))
a%in%x


a<-abs(round(50*rnorm(1)))
a
x<-c(abs(round(rnorm(50)*50)),a)
x
match(a,x)
min(which(x==a))
a%in%x

#b


system.time( for(t in 1:100) y[t]<-exp(t))[3]
system.time( exp(1:100))[3]
system.time(sapply (1:100,exp))[3]



#c


sea_shells<-c(
"She", "sell", "sea", "shells", "by", "the", "seashore ",
"The" ,"shells" ,"she", "sells" ,"are", "surely", "seashells",
"So", "if", "she", "sell", "shells" ,"on", "the", "seashore",
"I'm", "sure", "she" ,"sells" ,"seashore" ,"shells")
longi=nchar(sea_shells)
longi
for (i in 1:length(sea_shells)){
  print(c("la palabra '" ,sea_shells[i],"'tiene",longi[i],"letras" ))
  
}