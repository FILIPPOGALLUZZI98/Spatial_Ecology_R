# RS data
# This is a script to visualize satellite data
library(devtools) # packages in R are also called libraries
# install the imageRy package from GitHub
# devtools::install_github("ducciorocchini/imageRy")
library(imageRy)
library(terra)

#list the data
# im.list() --> This function produces a character vector of the names of files stored in the imageRy package directory.
# Adesso vogliamo importare le bande che vogliamo usare
# im.import() --> This function imports a chosen image stored in the imageRy package.

# IMPORT DIFFERENT BANDS
# "sentinel.dolomites.b2.tif" questo indica la banda 2 del satellite
b2<-im.import("sentinel.dolomites.b2.tif")
# le bande differiscono in base alla lunghezza d'onda di osservazione
b2 # per vedere le caratteristiche
cl<-colorRampPalette(c("darkgrey","grey","lightgrey"))(100)
plot(b2,col=cl)
# import the green band from sentinel-2 (band 3)
b3<-im.import("sentinel.dolomites.b3.tif")
plot(b3,col=cl)
# import the red band from Sentinel-2 (band 4)
b4 <- im.import("sentinel.dolomites.b4.tif") 
plot(b4, col=cl)
# import the NIR band from Sentinel-2 (band 8)
b8 <- im.import("sentinel.dolomites.b8.tif") 
plot(b8, col=cl)

# MULTIFRAME
par(mfrow=c(2,2))
plot(b2, col=cl)
plot(b3, col=cl)
plot(b4, col=cl)
plot(b8, col=cl)
# Plot in a multiframe the bands with different color ramps
par(mfrow=c(2,2))
clb <- colorRampPalette(c("dark blue", "blue", "light blue")) (100)
plot(b2, col=clb)
clg <- colorRampPalette(c("dark green", "green", "light green")) (100)
plot(b3, col=clg)
clr <- colorRampPalette(c("dark red", "red", "pink")) (100)
plot(b4, col=clr)
cln <- colorRampPalette(c("brown", "orange", "yellow")) (100)
plot(b8, col=cln)



# RGB space
# stack images
stacksent <- c(b2, b3, b4, b8) # creo un array con le varie componenti
# stacksent: 
# band2 blue element 1, stacksent[[1]] 
# band3 green element 2, stacksent[[2]]
# band4 red element 3, stacksent[[3]]
# band8 nir element 4, stacksent[[4]]
plot(stacksent, col=cl)
# plot(stacksent[[4]], col=cl) --> per plottare una sola delle componenti

im.plotRGB.user(stacksent, 3, 2, 1)  # plotta i primi tre layers in componenti RGB
# multiframe con i colori naturali e l'immagine con colori falsati
par(mfrow=c(1,2))
im.plotRGB.user(stacksent, 3, 2, 1)  # it plots the first three layers in the RGB components
im.plotRGB.user(stacksent, 4, 3, 2)  # it plots the first three layers in the RGB components



im.plotRGB(stacksent,r=3,g=2,b=1) # in questo modo sto plottando i dati nei giusti colori
im.plotRGB(stacksent,r=3,g=4,b=2) # in questo modo sto spostando le diverse bande, per esempio per visualizzare il NIR
im.plotRGB(stacksent,r=3,g=2,b=4) # metto il NIR nella componente blu: tutto quello che riflette NIR diventa blu


# Per capire quale delle componenti porta più informazioni
# pairs()--> produce una matrice di scatterplot
# serve per misurare la correlazione tra più variabili
pairs(stacksent)
# nella traccia ci sono le varie bande
# nei grafici fuori dalla traccia ci sono i coefficienti di pearson e le correlazioni tra le diverse bande
# le prime tre bande(quelle visibili) sono molto correlate
# una bassa correlazione significa che il NIR porta ulteriori informazioni, mentre le altre portano le stesse informazioni






