# I can use R as a calculator
2 + 3

# Assign to an object
a <- 2 + 3
a

b <- 5 + 3
b

final <- a * b
final

final^2

# array
# c(...) means "concatenate", I can use it to create arrays
sophi <- c(10, 20, 30, 50, 70) # microplastics 
# functions have parentheses and inside them there are arguments

paula <- c(100, 500, 600, 1000, 2000) # people

plot(paula, sophi)

plot(paula, sophi, xlab="number of people", ylab="microplastics")


people <- paula
microplastics <- sophi

plot(people, microplastics)
plot(people, microplastics, pch=19)
# https://www.google.com/search?client=ubuntu-sn&hs=yV6&sca_esv=570352775&channel=fs&sxsrf=AM9HkKknoSOcu32qjoErsqX4O1ILBOJX4w:1696347741672&q=point+symbols+in+R&tbm=isch&source=lnms&sa=X&ved=2ahUKEwia9brkm9qBAxVrQvEDHbEYDuMQ0pQJegQIChAB&biw=1760&bih=887&dpr=1.09#imgrc=lUw3nrgRKV8ynM

plot(people, microplastics, pch=19, cex=2)
plot(people, microplastics, pch=19, cex=2, col="blue")

#package sp
# sp: Classes and Methods for Spatial Data
#cran is where all the packages are stored
install.packages('sp')
library(sp)
