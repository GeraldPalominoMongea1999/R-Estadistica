# Nombre : Gerald Palomino Monge  20140372B
# Respuesta1: ejecicico 1  trabaja con ddata frame  y frafica alturas 
popular <- data.frame(m = rnorm(100, 160, 20), f = rnorm(100, 160, 20))
prox.gen <- function(popular) {
  popular$m <- sample(popular$m)
  popular$m <- apply(popular, 1, mean)
  popular$f <- popular$m
  return(popular)
}
# aplicar en una secuencia 
lista<-list()
lista[[1]]<-prox.gen(popular)
for( i in 2:9){
  lista[[i]]<-prox.gen(lista[[i-1]])
}
# limpiar las graficas 
graphics.off()
# dividir en 3 x 6 la pantalla para dibujar todas las grafias al mismo tiempo
par(mfrow = c(3, 3))


# grafica todas las distirbuciones 
for ( i in 1:9){
  hist(lista[[i]]$f,main = paste("genracion de varones numero ",toString(i)),xlab = "alturas")
}
