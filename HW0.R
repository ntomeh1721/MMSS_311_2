#Question 1 

#a
avector <- c(1, 2, 3, 4, 5)

#b
Mindy <- 12  

#c 
cmatrix <- matrix(1:6, nrow=2, byrow=TRUE)

#d
dmatrix <- matrix(1:6, nrow=2, byrow=FALSE)

#e 
ematrix <- matrix(rep(1, 100), nrow=10, byrow=TRUE)

#f 
fvector <- c("THIS", "IS", "A", "VECTOR")

#g
gfunction <- function(x, y, z){x+y+z}

#h 
hfunction <- function(x){
  if(x <= 10){
    print("Yes")
  } else {
    print("No")
  }
}

#i 
g <- rnorm(1000, 10, 1)

#j 
y <- rnorm(1000, 5, 0.5)

#k 
x = NULL
for(i in 1:1000){
  x[i] <- mean(sample(g, 10, replace = T))
}

#l
print(lm(y ~ x, data=x))

