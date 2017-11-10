#Nombre : Gerald Palomino Monge 20140372B
#Resuesta4: 
#a version simple 
# retornar los valores k esimos esde el final y el ultimo
primero <-function(x,k){
  if (k>length(x))return(0)
 return(x[1:k]) 
}
primero <-function(x){
  
  return(x[1]) 
}
ultimo <-function(x,k){
  if (k>length(x))return(0)
  return(x[k:length(x)]) 
}
ultimo <-function(x){
  
  return(x[length(x)]) 
}
ultimo(1:9)