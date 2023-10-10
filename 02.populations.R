# LEZIONE 1
# Code related to population ecology

# A package is needed for point pattern analysis
#everytime we take something that is outside of R we need to use the brackets
install.packages("spatstat")
# quando si esce da R, come per il caso dell'installaazione dei pacchetti, dobbiamo usare ""
library(spatstat) # to check if it has been installed

#the dataset is called 'bei' and it's inside the package spatstat
# dataset bei--> tropical forest trees
# data description:
#aways put the link as a comment
# https://CRAN.R-project.org/package=spatstat

bei

# plotting the data
plot(bei)

# changing dimension - cex
plot(bei, cex=.2)

# changing the symbol - pch
plot(bei, cex=.2, pch=19)

# there's an additional datasets in the package
bei.extra
plot(bei.extra)

# let's use only part of the dataset: elev
plot(bei.extra$elev)
elevation <- bei.extra$elev
plot(elevation)

# second method to select elements
elevation2 <- bei.extra[[1]]
plot(elevation2)





# LEZIONE 3
# uinstall.pcakages("spatstat")
library(spatstat)
library(terra)
# vogliamo passare ad una funzione di densità
densitymap<-density(bei)
# we aren't dealing with points anymore, but with pixels
# vogliamo sovrapporre alla mappa di densità anche la mappa dei punti
# questa funzione si chiama points
points(bei,cex=.4)




