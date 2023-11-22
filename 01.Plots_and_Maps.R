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




