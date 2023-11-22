# CODE TO VISUALIZE SATELLITE DATA

library(devtools)
library(imageRy)
library(terra)

# Nel caso di 'imageRy' dobbiamo usare questa funzione per vedere i dati
im.list() 
# im.import() --> This function imports a chosen image stored in the imageRy package.

# Lavoriamo sui dati 'sentinel'
# Vediamo che ce ne sono 4 e differiscono per i termini 'b2', 'b3','b4','b8'
# Queste sono le varie bande della lunghezza d'onda di osservazione (8==NIR)
b2<-im.import("sentinel.dolomites.b2.tif")
b3<-im.import("sentinel.dolomites.b3.tif")
b4<-im.import("sentinel.dolomites.b4.tif")
b8<-im.import("sentinel.dolomites.b8.tif")

# Se vogliamo vedere le informazioni
b2

# Vogliamo ora vedere tutte e 4 le bande
cl<-colorRampPalette(c("darkgrey","grey","lightgrey"))(100)
par(mfrow=c(2,2))
plot(b2, col=cl)
plot(b3, col=cl)
plot(b4, col=cl)
plot(b8, col=cl)

# Un altro modo è
stacksent <- c(b2, b3, b4, b8) # creo un array con le varie componenti 
plot(stacksent, col=cl)
# plot(stacksent[[4]], col=cl) --> per plottare una sola delle componenti

#####################################################################################
# Lavoriamo ora nello spazio RGB
# band2 blue element 1, stacksent[[1]] 
# band3 green element 2, stacksent[[2]]
# band4 red element 3, stacksent[[3]]
# band8 nir element 4, stacksent[[4]]

# Per plottare i primi tre layers in componenti RGB
# im.plotRGB(x, r = 1, g = 2, b = 3)
# r	= Position of the band to be used for the Red channell.
# g = Position of the band to be used for the Green channell.
# b = Position of the band to be used for the Blue channell.
im.plotRGB(stacksent,r=3,g=2,b=1)

# Per avere informazioni aggiuntive posso spostare il NIR in una delle altre tre bande
im.plotRGB(stacksent,r=3,g=2,b=4) # metto il NIR nella componente blu:
# tutto quello che riflette NIR diventa blu
im.plotRGB(stacksent,r=4,g=2,b=1) # metto il NIR nella componente rossa:
# tutto quello che riflette NIR diventa rosso


# Per capire quale delle componenti porta più informazioni
# pairs()--> produce una matrice di scatterplot
# Serve per misurare la correlazione tra più variabili
pairs(stacksent)
# Nella traccia ci sono le varie bande
# Nei grafici fuori dalla traccia ci sono i coefficienti di pearson e le correlazioni tra le diverse bande
# Le prime tre bande(quelle visibili) sono molto correlate
# Una bassa correlazione significa che il NIR porta ulteriori informazioni,
# mentre le altre portano la stessa quantità di informazioni





