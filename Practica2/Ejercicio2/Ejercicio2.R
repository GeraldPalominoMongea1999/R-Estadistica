#Nombre : Gerald Palomino Monge 20140372B
#Resuesta2: 
 
#a encotrar el primer NA 

ma<-matrix(sample(5*5),5,5)
ma[sample(10)[5:10]]=NA
ma
# n numero de columnas 
# m numero ce columnas 
# X matriz con Na 

f<-function(X,n,m){
    mat=is.na(X)
    print(mat)
    if (sum(mat)==0)return(0)
    X1<-cumsum(mat)
    return(sum(X1<1) %% m)
}

f(ma,5,5)



# b 
# 1 implica que se pueden usar vecotres y matrices para para hacer multiples calculos 

