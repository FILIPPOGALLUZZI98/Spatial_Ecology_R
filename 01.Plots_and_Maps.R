# CODE RELATED TO POPULATION ECOLOGY

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


#####################################################################################################
#####################################################################################################
# WHY POPULATION DISPERSE OVER THE LANDSCAPE IN A CERTAIN MANNER?

library(sdm)
library(terra)

# C:\Users\filip\AppData\Local\R\win-library\4.3\sdm
# Ricordare di mettere "mostra nascosti"
# system.file() --> finds the full file names of files in packages
file<-system.file("external/species.shp",package="sdm")
# "external/nomefile.shp" --> external perché sto cercando un file esterno ad R, 
# in questo caso interno al pacchetto "sdm"

# .shp are called vector files--> series of coordinates
# Fin'ora ho solamente richiamato il nome del file
# C'è una funzione in 'terra' per passare dal nome del file ai punti:
rana<-vect(file) # rana temporaria

rana$Occurrence # stare attenti alla maiuscola
# ottengo una stringa di zeri e uno, rappresentano presence or absence data
# se ci sono informazioni sull'abbondanza allora abundance data

plot(rana)

# selecting prensences 
# parentesi quadrate perché stiamo selezionando elementi
# inquesto caso vogliamo selezionare gli elementi con Occurrence 1
pres<-rana[rana$Occurrence==1,]
pres$Occurrence

# selecting absences
abse<-rana[rana$Occurrence==0,]
# posso anche usare
abse<-rana[rana$Occurrence!=1,]

par(mfrow=c(1,2))
plot(pres)
plot(abse)
# per chiudere il grafico uso
dev.off()

# voglio plottare i grafici sovrapposti
plot(pres,col="red")
points(abse,col="yellow")


# PREDICTORS

#elevation
elev <- system.file("external/elevation.asc", package="sdm") 
# in questo caso non sto importando vettori ma raster, quindi devo usare una funzione diversa da vect()
#.asc significa ASCII -->typical image file
elevmap<-rast(elev)
plot(elevmap)
points(pres,cex=1,col="black")
points(abse,cex=1,col="red")

# temperature
temp<-system.file("external/temperature.asc",package="sdm")
tempmap<-rast(temp)
plot(tempmap)
points(pres,cex=1,col="black")
points(abse,cex=1,col="red")

# precipitation
prec<-system.file("external/precipitation.asc",package="sdm")
precmap<-rast(prec)
plot(precmap)
points(pres,cex=1,col="black")
points(abse,cex=1,col="red")

# vegetation cover
vege<-system.file("external/vegetation.asc",package="sdm")
vegemap<-rast(vege)
plot(vegemap)
points(pres,cex=1,col="black")
points(abse,cex=1,col="red")

# VOGLIO VEDERE TUTTI E 4 I PREDICTORSI INSIEME
preds <- c(elevmap, precmap, tempmap, vegemap)
cl <- colorRampPalette(c('blue','orange','red','yellow')) (100)
plot(preds, col=cl) 

# VOGLIO VEDERE I PREDICTORS CON SOVRAPPOSTE LE PRESENCE
par(mfrow=c(2,2))
plot(elevmap)
points(pres,cex=1,col="black")
plot(tempmap)
points(pres,cex=1,col="black")
plot(precmap)
points(pres,cex=1,col="black")
plot(vegemap)
points(pres,cex=1,col="black")


#####################################################################################################
#####################################################################################################
library(spatstat)

bei
# vogliamo passare ad una funzione di densità
densitymap<-density(bei)

# we aren't dealing with points anymore, but with pixels
# vogliamo sovrapporre alla mappa di densità anche la mappa dei punti
# questa funzione si chiama points
points(bei,cex=.4)

# vogliamo cambiare i colori della mappa
# la funzione si chiama colorRampPalette
cl<-colorRampPalette(c("black","red","orange","yellow"))(100)
# devo usare "" altrimenti R non li riconosce
# ho bisogno di un array c() per usare tutti e 4 i colori
# (100) è il numero di colori che mi servono per passare da un colore all'altro
# per esempio, con (4), non c'è continuità tra un colore all'altro, non c'è un gradiente
# devo assegnarlo ad un oggetto che chiamo cl in modo da richiamarlo

plot(densitymap,col=cl)

# il giallo è il colore che impatta maggiormente, quindi va usato con cautela perché il primo che viene visto in una mappa
# va quindi messo in alto

elevation<-bei.extra[[1]]

# funzione par mi serve per mostrare due o piu grafici:multiframe
# (1,2) devo usare c() perché devo dire che è un array
# c(righe,colonne)
par(mfrow=c(1,2))
plot(densitymap)
plot(elevation)
points(bei,cex=.2)

# fare 3 grafici accanto
par(mfrow=c(1,3))
plot(bei,cex=.2)
plot(densitymap,col=cl)
plot(elevation,col=cl)















