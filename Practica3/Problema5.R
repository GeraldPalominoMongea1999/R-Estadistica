#a
v<-2+3*(1:18)
tmpFn<-function(xVec){
  v<-xVec
  vec<-v-mean(v) #xi-X
  s<-sum(vec%*%vec)# terminoa de abajo 
  r1<-(vec[2:length(vec)]%*%vec[(2:length(vec))-1])/s
  r2<-(vec[3:length(vec)]%*%vec[(3:length(vec))-2])/s
  return(c(r1,r2))
}

tmpFn(v)
#b 
tmpFnGen<-function(xVec){
  v<-xVec
  vec<-v-mean(v) #xi-X
  s<-sum(vec%*%vec)# terminoa de abajo 
  r=(c(0:length(v)))*0
  longitud<-length(v)
  for(k in 1:length(v)-1 )
    r[k]<-vec[(k+1):longitud]%*%vec[1:(longitud-k)]/s
  #r2<-(vec[3:length(vec)]%*%vec[(2:length(vec))-2])/s
  return(c(1,r))
}

tmpFnGen(v)

