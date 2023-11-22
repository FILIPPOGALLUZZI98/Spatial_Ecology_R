# WHY POPULATION DISPERSE OVER THE LANDSCAPE IN A CERTAIN MANNER?
# Analisi della distribuzione spaziale della specie rana temporaria

library(sdm)
library(terra)

# C:\Users\filip\AppData\Local\R\win-library\4.3\sdm
# Ricordare di mettere "mostra nascosti"
# system.file() --> Trova il nome completo dei file nei pacchetti
# Con la funzione 'system.file' posso richiamare un file esterno ad R presente in un pacchetto
# I file .shp sono chiamati anche file vettoriali, ovvero sono serie di coordinate
# Esiste una funzione in 'terra' che fa passare dal nome del file ai punti
file<-system.file("external/species.shp",package="sdm")
rana<-vect(file)

rana
# Ottengo una descrizione del file: la variabile che contiene è 'Occurrence'
# Occurrence può assumere 1 (presenze) e 0 (assenze)

plot(rana)
# Ottengo un grafico dei punti di osservazione, non delle presenze!

# Per selezionare le presenze
pres<-rana[rana$Occurrence==1]
abse<-rana[rana$Occurrence==0]
plot(pres,col="red")
points(abse,col="yellow")

# Il pacchetto contiene anche altri dati, tra cui i predittori come: temperatura,
# altitudine, precipitazioni e vegetation cover
# Dato che sono file .asc, sono raster data e dobbiamo usare una funzione diversa da 'vect'

elev <- system.file("external/elevation.asc", package="sdm") 
elevmap<-rast(elev)
temp<-system.file("external/temperature.asc",package="sdm")
tempmap<-rast(temp)
prec<-system.file("external/precipitation.asc",package="sdm")
precmap<-rast(prec)
vege<-system.file("external/vegetation.asc",package="sdm")
vegemap<-rast(vege)

# A questo punto posso fare i grafici separati oppure:
preds <- c(elevmap, precmap, tempmap, vegemap)
cl <- colorRampPalette(c('blue','orange','red','yellow')) (100)
plot(preds, col=cl) 

# Se voglio sovrapporre le presenze
par(mfrow=c(2,2))
plot(elevmap)
points(pres,cex=1,col="black")
plot(tempmap)
points(pres,cex=1,col="black")
plot(precmap)
points(pres,cex=1,col="black")
plot(vegemap)
points(pres,cex=1,col="black")

