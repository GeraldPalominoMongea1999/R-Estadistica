
#a
mtcars[1:4,]
mtcars[mtcars$cyl<=5,]
mtcars[mtcars$cyl==4 | mtcars$cyl==6,]
#b
# por que x tiene 5 
# al evaluar en cada uno NA  retorna NA

# c 
# mtcars es de tipo data frame 
# esta requiere de 2 entradas para un element 
# si se introduce una netrada por defecto reotrna una columna 
# dado que mtcars tiene menos de 20 se esta pidiendo un valor que no exite 
# d 
# reottna erro  df es una funcion por lo que no acepta el uso de "[] "
# is.na es na funcion para saber si un valor es NA  
# is.na(df) dado que una funcion no es NA 
# is.na retoan falso 
