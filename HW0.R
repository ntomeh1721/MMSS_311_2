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
print(lm(formula = y ~ x))


#Question 2 

#a 
library(readr)
pums_chicago <- read.csv("Documents/GitHub/MMSS_311_2/pums_chicago.csv")

#b
dim(pums_chicago) #there are 204 variables 

#c 
mean(pums_chicago$PINCP[!is.na(pums_chicago$PINCP)])

#d 
PINCP_LOG <- log(!is.na(pums_chicago$PINCP))
#NaNs were produces because there were NA results for PINCP

#e 
GRAD.DUMMY <- ifelse(pums_chicago$SCHL>=18,
  "grad",
  "no grad")

#f 
pums_chicago$SERIALNO <- NULL

#g 
write.csv(pums_chicago, file = "pums_chicago.csv")

#h 
under_16 <- pums_chicago[is.na(pums_chicago$ESR), ]
employed <-  pums_chicago[pums_chicago$ESR == 1 | pums_chicago$ESR == 2, ]
unemployed <- pums_chicago[pums_chicago$ESR == 3, ]
af <- pums_chicago[pums_chicago$ESR == 4 | pums_chicago$ESR == 5, ]
nlf <- pums_chicago[pums_chicago$ESR == 6, ]

#i
employed_af <- rbind(employed, armed_forces)

#j 
employed_af[c(pums_chicago$AGEP, pums_chicago$RAC1P, pums_chicago$PINCP_LOG)]

#ki 
mean(na.omit(pums_chicago$JWMNP))
median(na.omit(pums_chicago$JWMNP))
quantile(na.omit(pums_chicago$JWMNP), 0.80)

#kii 
notna <- pums_chicago[!is.na(pums_chicago$JWMNP) & !is.na(pums_chicago$WAGP), ]
cor(notna$JWMNP, notna$WAGP)

#kiii 
plot(pums_chicago$AGEP, pums_chicago$PINCP_LOG)

#kiv 
pdf("Age and Inc")
plot(pums_chicago$AGEP, pums_chicago$PINCP_LOG)
dev.off()

#kv 
table(pums_chicago$ESR, pums_chicago$RAC1P)

#kvi 
wghrs.lm <- lm(pums_chicago$WAGP ~ pums_chicago$WKHP)

#kvii**** 
resids <- residuals(wghrs.lm)
wage.hat <- fitted.values(wghrs.lm)
plot(wage.hat, resids)
#This shows that there is heteroskedasticity: as the estimated wages increase, the 
# values of the residuals decrease.

#l
data(mtcars)

#li 
mpgwt.lm <- lm(mtcars$mpg ~ mtcars$wt)

#lii 
auto <- mtcars[mtcars$am == 0, ]
man <- mtcars[mtcars$am == 1, ]
mpgwt.auto.lm <- lm(auto$mpg ~ auto$wt)
mpgwt.man.lm <- lm(man$mpg ~ man$wt)

#liii 
log.hp <- log(mtcars$hp)
mpg.log.hp.lm <- lm(mtcars$mpg~log.hp)

#m 
install.packages("ggplot2")
library("ggplot2")

#m

#i
ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point(
    #ii
    color = ifelse(mtcars$am==1, "blue", "red"),
    #iii
    shape = mtcars$gear) + 
  #iv
  labs(x = "Weight", 
       y = "Miles Per Gallon") + 
  #v
  theme_minimal()












