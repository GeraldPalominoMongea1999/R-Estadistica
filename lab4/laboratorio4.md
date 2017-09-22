---
title: "Ejecicicos"
author: "Gerald Palomino Monge"
date: "22 de septiembre de 2017"
output: pdf_document
---

##Ejercicios R Markdown


###Ejercicio 1:  


operaciones


```{r cars}

  1+2*(3+4)

  4**3+3**2+1

  sqrt((4+3)*(2+1))

  ((1+2)/(3+4))


```

desviacion estandar

```{r }

  sd(1:100)

```
demostracion de simbolos matematicos

```{r }

  demo(plotmath)

```

mil masotas

```{r }

  mascotas=sample(c("perro","gato","pollo","pez dorado"),1000,replace = TRUE)
  mascotas[1:10]
  sum(mascotas=="perro")
  sum(mascotas=="pollo")
  sum(mascotas=="gato")
  sum(mascotas=="pez dorado")

```

funciones

```{r }

  f<-function(n){
    if (n%%2==0)
      return(n/2)
    else
      return(3*n+1)
  }

  collats<-function(n){
    cont=0
    while (n>1){
      n=f(n)
      cont=1+cont
    }  
    return(cont)
  }
  
  
  collats2<-function(n){
    cont=0
    while (n>1){
      n=f(n)
      print(n)
      cont=1+cont
    }  
    return(cont)
  }
  
  numero=100
  
  cantidad=collats(numero)
  
  for (i in 100:200){
      if (collats(i)<cantidad){
        numero=i
        cantidad=collats(i)
      }
  }
  
  numero
  
  cantidad
  
  kk=collats2(numero)
  
```

algorimo de euclides 

```{r }

  a<-10**5+3
  b<-10**8+9
  while (b!=0){
    carry<-a%%b
    a<-b
    b<-carry
  }
  a
```





