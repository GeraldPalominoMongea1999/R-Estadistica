# Nombre : Gerald Palomino Monge 20140372B
# Respuesta : a)b) evaluando  expresiones  c) encoteando el no NA   


#a 
f1<-function (x={y<- 1;2},y=0){
  x+y
}
f1()
# reotrna 3 
# la operacion y<-1 ademas de  asinar 1  a Y 
# tambien  retorna 1 
# pero  {y<-1;2}
# retorna el ultimo valor en este caso 2 
# apesar de que y por defecto vale 2 
# el otor valor por deeefcto lo sobrescribe 
# de sesta forma el resultdo de x+y es 3 
 

#b
trims<-c(0,0.1,0.2,0.5)
x<-rcauchy(100)
# genrar una distribucion de cauchy 
# crea un funcion con argumento trim 
# que ejecuata mean donde es el primer termino es el elemeto fijo x 
# con lapply lo ejejecuta sobre trims<------------------- 
lapply(trims,function(trim)mean (x,trim=trim))

#lapply ejecuta  mean sobre trims  <----
lapply(trims,mean,x=x)

col <-5
fila<-4
total<-20
x<-matrix(1:total,col,fila)
x[x[]<total/2]<-NA
x
#c 
# for 

for (i in 1:total)
  if (!is.na(x[i])){
    print(c("columna",(i-(i%%col))/col))
    print(c("fila",i%%col))
    break()
  }
# con appply 
i<-sum(apply(x[],function(x){return(is.na(x))}))
print(c("columna",(i-(i%%col))/col))
print(c("fila",i%%col))




