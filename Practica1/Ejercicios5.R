
#Nombre: Gerald Palomino Monge 20140372B
#Respuesta:
# la probbabilidad de cara y sello s un medio 
#sea X  R.v. de la ganancia
# P(X>15)=sum(p^(i)*(1-p)) donde i parte de 5 ya que 2^4=16>15
# p=1-p=1/2
# -> sum(1/2^i+1) con i desde 4 hasta 1000
sum((1/2)^(5:1001))
