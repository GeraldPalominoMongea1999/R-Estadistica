#Nombre : Gerald Palomino Monge 20140372B
#Resuesta1: sumatoria  
# con for , con col y con outer 
# item a 
f<-function(n){
  suma=0;
  for (i in (1:n))
    for (s in (1:i)){
      suma<-suma+s**2/(10+4*i**3)
      }
  return(suma)  
}
f(1)


# itema b 
funB<-function(n){
  ma2<-matrix(c(1:n)**2,n,n)
  ma3<-matrix(1/(10+4*(1:n)**3),n,n)
  return(sum((ma2 * ma3)[matrix(1:n,n,n)>=col(matrix(1:n,n,n))]))# busca argarrar la triagular 
}


funB(1)
# item c 
funC<-function(n){
  ma<-(c(1:n)**2)
  ma2<-c(1/(10+4*(1:n)**3))
  return (sum(outer(ma,ma2,"*")[matrix(1:n,n,n)>=col(matrix(1:n,n,n))]))
}
funC(1)