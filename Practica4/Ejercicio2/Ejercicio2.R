# Nombre : Gerald Palomino Monge  20140372B
# Respuesta2: ejecicico 2 leee archivo , es necesario que la direccion sea escrita en la variable var 


# importante se asume que No hay un espacios entre N y K  
# se asume que la "cinta" de unos y ceros no estan separadas por espacio  es decir 1
# solo hay saltos de linea
#es nesario introduccir la direecion del archivo 

direccion="/home/gerald/estadistica/github2/R-Estadistica/Practica4/Ejercicio2"

direccion=paste(direccion,"/Entrada_problema_1.txt",sep="")
archivo = readLines(file(direccion,open="r"))

#probabilidad de que un i y j sea 1 
# N1:numero de 1 en la cadena 
# N0:numero de 0 en la cadena 
#P(si=1)=N1/(N1+N0)
#P(sj=1)=N1/(N1+N0)
#P(si=1 ^ sj=1)=(N1/(N1+N0))^2

# calculado P((|i-j|<=k) /(si=1 ^ sj=1))

#P((|i-j|<=k) /(si=1 ^ sj=1))=1-P((|i-j|>k) /(si=1 ^ sj=1))

#|i-j|<k
# caso
# 1) i-j<=k --> i<=k+j 
# 2) j-i<=k es analogo 
# para el caso 1 
# P((i-j>k) /(si=1 ^ sj=1))=P((i>k+j) /(si=1 ^ sj=1))=|A|/|Espacio de eventos|
#|Espacio de eventos|=N1^2
#|A|: casos favorables 
#para  k y j fijos 
# i va desde  k+j hasta N1
# si k+j>=N1 hay 0 casos favorables es decir un total de N1-k-j
#luego se aplica eso al total para k=Dato   y j=1:N1

# Nota:  aqui sum( a(b) , b =x:y) se refiera a sumatoria 
#de la expresion "a" en funcion de "b" que va desde "x" hasta "y"
# N =N1 + N0

#total de casos faborables : para un k dado   sum(N1-k-j,j=1:(N1-K-1)) = (N1-k)*(N1-k-1)/2
#j-i<k
#analogamente 
#sum(N1-k-i,i=1:(N1-K-1)) = (N1-k)*(N1-k-1)/2
#P((|i-j|>k) /(si=1 ^ sj=1))=2*|A|/|Espacio de eventos|=(N1-k)*(N1-k-1)/(N1*N1)

#P((|i-j|<=k) /(si=1 ^ sj=1))=2*|A|/|Espacio de eventos|=(N1*N1-(N1-k)*(N1-k-1))/(N1*N1)

# P((|i-j|<k) ^ (si=1 ^ sj=1))=P(|i-j|<k/(si=1 ^ sj=1)) * P(si=1 ^ sj=1)
#P((|i-j|<k) ^ (si=1 ^ sj=1))=(N1*N1-(N1-k)*(N1-k-1))/(N1*N1) *(N1/(N1+N0))^2
#P((|i-j|<k) ^ (si=1 ^ sj=1))=(N1*N1-(N1-k)*(N1-k-1))/(N1+N0)^2

# suma de cifras 
sumaCifras<-function (n){return(sum(lapply((strsplit(n,"")),as.integer)[[1]]))}
# probabilidad 
p<-function(k,N,N1){return(c((N1*N1-(N1-k)*(N1-k-1)),((N)^2)))}
# es 0 

# indisible 
# mcd 
mcd <- function(x,y) {
  if (x<y){
    a<-x
    x<-y
    y<-a
  }
  r <- x%%y;
  if (r==0)return(y)else return(mcd(y,r))
}
# imprimir 
printear<-function(a,b){
   print(paste(paste(toString(a),"/"),toString(b)))
  return (a/b)
}

# toma 3 elemtos y les devielve 
#ejecutar 
T<-as.numeric(archivo[[1]])
datos1<-archivo[2+((0:(T-1))*2)]
datos2<-archivo[3+((0:(T-1))*2)]
datos<-matrix(c(datos1,datos2),ncol=2)#data.frame(datos1,datos2)
# obtener k 
# separa N y K 
separar<-function(nk,c){
  N<-nchar(c)
  gg<-as.integer(log10(N)+1)
  
  K<-as.numeric(nk)%%(10^(nchar(nk)-gg))
  #print(10^(N-gg))
  #print(gg)
  #print(N)
  return(c(N,K))
}
dividir<-function(D,d,m){
  return(c(D/m,d/m))
}
nk<-t(mapply(separar,datos[,1],datos[,2]))
sumas<-lapply(FUN=sumaCifras,datos[,2])
resultado<-t(mapply(p,nk[,2],nk[,1],sumas))#matriz(datos[,2])))
divisores<-t(mapply(mcd, resultado[,1],resultado[,2]))
partes<-t(mapply(dividir,resultado[,2],resultado[,1],divisores))
t(mapply(printear,partes[,2],partes[,1]))
