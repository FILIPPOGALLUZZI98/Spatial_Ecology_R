# code related to population ecology

# A package is needed for point pattern analysis
install.packages("spatstat")
# we need the quotes because we exit from R (perché?)

library(spatstat)
# let's use the bei data:
# data description:
# htttps://CRAN.R-project.org/package=spatstat

bei
plot(bei)
#changing dimension - cex
plot(bei,cex=.1)
# R pch (simboli dei punti)
# changing the symbol
plot(bei,cex=.2, pch=19)
bei.extra

plot(bei.extra)


# usiamo solo una parte del dataset
plot(bei.extra$elev)
# questo plotta solo elev
# il dollaro si usa per collegare il paccehtto a elev

elevation<-bei.extra$elev
plot(elevation)

elevation2<-bei.extra[[1]]
# con le parentesi quadrate e inserisco il numero della posizione dell'elemento
plot(elevation2)







