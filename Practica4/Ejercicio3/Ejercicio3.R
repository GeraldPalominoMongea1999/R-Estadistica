# Nombre : Gerald Palomino Monge  20140372B
# Respuesta3: aplica la funcion de pioson varias veces 

#item a 
p<-function(i,lambda){
  e<-2.27
  return(ifelse(i<=0,1/e,lambda/(i+1)*p(i-1,lambda)))
}
lp<-function(n,lambda){
  e<-2.27
  return(mapply( p,1:n,lambda))
}
slp<-function(n,lambda){
  return(sum(lp(n,lambda)))
}
lp(5,1)

# itma b 

F.rand <- function () {
  u <- runif(1)
  x <- 0
  lambda=1
  e<-2.27
  lista<-c(1/e)
  
  while (lista[length(lista)] < u) {
    x <- x + 1
    lista<-c(lista,lista[length(lista)]*lambda/(x))
    
  }
  return(lista)
}
F.rand()

