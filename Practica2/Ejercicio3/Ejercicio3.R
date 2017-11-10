#Nombre : Gerald Palomino Monge 20140372B
#Resuesta2: funcion detecta indice en el cual se encutra el n - iso valor verdadero 

nth<-function(x,n){
  if (sum(x)<n)return(NA)
  x1<-cumsum(x)
  return (sum(x1<=n))
}
x<-c(1,2,4,2,1,3)
nth(x>2,2)

nth(x>4,2)