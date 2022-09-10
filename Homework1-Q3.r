b1=b1=matrix(c(2,1), nrow = 1)
b2=matrix(c(1,1), nrow = 1)
b3=matrix(c(6,3), nrow = 1)
b4=matrix(c(3,3), nrow = 1)

x <- rbind(b1, b2,b3,b4)
x 
Dist(x)

## compute dist with 8 threads
#Dist(x,nbproc=8)


Dist(x,method="pearson")
#Dist(x,method="kendall")matrix(c(2,1), nrow = 1)
b2=matrix(c(1,1), nrow = 1)
b3=matrix(c(6,3), nrow = 1)
b4=matrix(c(3,3), nrow = 1)

x <- rbind(b1, b2,b3,b4)
x 
Dist(x)

## compute dist with 8 threads
#Dist(x,nbproc=8)


Dist(x,method="pearson")
#Dist(x,method="kendall")
