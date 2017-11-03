#Nombre: Gerald Palomino Monge 20140372B
#Respuesta:
# Se muestra la funcio 
# luego la version que funcion con vectores 

tst4<-function (x){
  if (x<2)"muy negativo"
  else if (x<1) "cercano a cero"
  else if (x<3) "in [1,3)"
  else "large"
} 

tst4(0)
tst4(Inf)



Tst4<-function (x){
  p<-c()
  for (i in 1:length(x)){
    #p<-c(p,tst4(x[i]))
    if (x[i]<2)p<-c(p,"muy negativo")
    else if (x[i]<1) p<-c(p,"cercano a cero")
    else if (x[i]<3) p<-c(p,"in [1,3)")
    else p<-c(p,"large")
  }
  return(p)
} 
Tst4(1:10)

Tst4(c(Inf,3:5))
