# Vegetation Index
library(imageRy)
library(terra)
library(ggplot2)
library(viridis)
im.list() # per le descrizioni dei dati andare sulla cartella 'imageRy' e data description
# per esempio, matogrosso: "An inland state of central Brazil, deep in the Amazon interior..."
m1992<-im.import("matogrosso_l5_1992219_lrg.jpg")

# Abbiamo 3 bande
# bands: 
# 1--> NIR; 
# 2--> red; 
# 3-->green
im.plotRGB(m1992,r=1,b=2,g=3) 
# im.plotRGB(m1992,1,2,3) # NIR on top of red--> tutto quello che riflette il NIR è mostrato con il rosso
# im.plotRGB(m1992,2,1,3) # NIR on top of green
# im.plotRGB(m1992,2,3,1) # NIR on top of blue
# import recent image
# Uso la funzione im.list() per vedere i file, e scelgo quello che voglio
m2006<-im.import("matogrosso_ast_2006209_lrg.jpg")

# Mostro le due immagini (1996 e 2006 una accanto all'altra)
par(mfrow=c(1,2))
im.plotRGB(m1992, 1, 2, 3)
im.plotRGB(m2006, 1, 2, 3)



# Calcolare il DVI
dvi1992 = m1992[[1]] - m1992[[2]]
dvi1992
cl <- colorRampPalette(c("darkblue", "yellow", "red", "black"))(100) # specifying a color scheme
plot(dvi1992, col=cl)

dvi2006 = m2006[[1]] - m2006[[2]]
dvi2006
cl <- colorRampPalette(c("darkblue", "yellow", "red", "black"))(100) # specifying a color scheme
plot(dvi2006, col=cl)

# DVI by imageRy
dvi1992i <- im.dvi(m1992, 1, 2)
dvi2006i <- im.dvi(m2006, 1, 2)


# NDVI
ndvi1992 = (m1992[[1]] - m1992[[2]]) / (m1992[[1]] + m1992[[2]])
ndvi2006 = (m2006[[1]] - m2006[[2]]) / (m2006[[1]] + m2006[[2]])
dev.off()
par(mfrow=c(1,2))
plot(ndvi1992, col=cl)
plot(ndvi2006, col=cl)


# ???
clvir <- colorRampPalette(c("violet", "dark blue", "blue", "green", "yellow"))(100) # specifying a color scheme
plot(ndvi2006, col=clvir)







