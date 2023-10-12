# why population disperse over the landscape in a certain manner?
# ricordare che se voglio prendere dei dati da una cartella o da qualche altra parte
# ho bisogno di mettere le "..."

library(sdm)
# sdm=species distribution model
library(terra) # per analisi spaziale

# system.file() --> Finds the full file names of files in packages
file<-system.file("external/species.shp",package="sdm")
# "external/nomefile.shp" --> external perché sto cercando un file esterno ad R, in questo caso interno al pacchetto "sdm"

# .shp are called vector files--> series of coordinates
# c'è una funzione in terra per passare dal nome del file ai punti:
rana<-vect(file) # rana temporaria
# WGS --> world geodetic system

rana$Occurrence # stare attenti alla maiuscola
ottengo una stringa di zeri e uno, rappresentano presence or absence data
# se ci sono informazioni sull'abbondanza allora abundance data

plot(rana)
