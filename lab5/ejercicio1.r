# 4 usa diag 
#subarreglo puede saltarse posiciones 
#subsecuencias 
#
v <- c(95,-43,-59,10,-80,20,-92,75,61,-50)

S <- v

S <- cumsum(S)

l <- -1
r <- -1
maximo <- -10000000
for (i in 1:length(v)){ # i <= j
  for (j in i:length(v)){
    suma <- S[j]
    if(i > 1) suma <- suma - S[i-1]
    if(maximo < suma){
      l <- i
      r <- j
      maximo <- suma
    }
  }
}
Subarray <- v[l:r]
LIS <- replicate(length(Subarray),0)
padres <- replicate(length(Subarray),0)
LIS[1] = 1
padres[1] = -1
maxlen = 1
start = 1
for(i in 2:length(Subarray)){
  LIS[i] = 1
  padres[i] = -1
  for(j in 1:(i-1)){
    if(v[j] < v[i] && LIS[j]+1 > LIS[i]){
      padres[i] = j
      LIS[i] = LIS[j]+1
    }
  }
  if(maxlen < LIS[i]){
    start = i
    maxlen = LIS[i]
  }
}
SCML <- NULL
while(start!=-1){
  SCML <- c(Subarray[start],SCML)
  start <- padres[start]
}
SCML

DSUB <- replicate(length(Subarray)+2,0)
MaxAbs <- max(abs(max(v)),abs(min(v)))
MaxAbs

last <- replicate(2*MaxAbs+2,-1)

DSUB[1] <- 1

for(i in 2:(length(Subarray)+1)){
  DSUB[i] = (2*DSUB[i-1])
  if(last[Subarray[i-1]+MaxAbs+1]!=-1){
    DSUB[i] = DSUB[i] - DSUB[last[Subarray[i-1]+MaxAbs+1]]
  }
  last[Subarray[i-1]+MaxAbs+1] = i-1
}
DSUB[(length(Subarray)+1)]
