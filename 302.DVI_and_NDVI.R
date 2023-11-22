# NORMALIZED VEGETATION INDEX
# The DVI is computed as the difference between NIR and Red reflectance

library(imageRy)
library(terra)
library(ggplot2)
library(viridis)

# Lavoriamo con i dati 'matogrosso'
im.list()
m1992<-im.import("matogrosso_l5_1992219_lrg.jpg")
m1992
# Possiamo vedere le 3 bande: 1-->NIR; 2-->Red; 3-->Green

im.plotRGB(m1992,1,2,3) # NIR on top of red--> tutto quello che riflette il NIR è rosso
im.plotRGB(m1992,2,1,3) # NIR on top of green
im.plotRGB(m1992,2,3,1) # NIR on top of blue

# Importo l'immagine del 2006
m2006<-im.import("matogrosso_ast_2006209_lrg.jpg")
# Mostro le due immagini (1996 e 2006 una accanto all'altra)
par(mfrow=c(1,2))
im.plotRGB(m1992, 1, 2, 3)
im.plotRGB(m2006, 1, 2, 3)

# Calcoliamo il DVI
cl <-colorRampPalette(c("darkblue", "yellow", "red", "black"))(100) 
par(mfrow=c(1,2))
plot(m1992[[1]]) # questa è la prima banda --> NIR
plot(m1992[[2]]) # questa è la seconda banda --> RED
dvi1992 = m1992[[1]] - m1992[[2]]
# faccio lo stesso per l'immagine del 2006
dvi2006 = m2006[[1]] - m2006[[2]]
par(mfrow=c(1,2))
plot(dvi1992, col=cl)
plot(dvi2006, col=cl)

# NDVI --> (NIR-RED)/(NIR+RED)
ndvi1992 = (m1992[[1]] - m1992[[2]]) / (m1992[[1]] + m1992[[2]])
ndvi2006 = (m2006[[1]] - m2006[[2]]) / (m2006[[1]] + m2006[[2]])
dev.off()
par(mfrow=c(1,2))
plot(ndvi1992, col=cl)
plot(ndvi2006, col=cl)


