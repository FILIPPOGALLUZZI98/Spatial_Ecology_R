# Vegetation Index
library(imageRy)
library(terra)
library(ggplot2)
library(viridis)
im.list() # per le descrizioni dei dati andare sulla cartella 'imageRy' e data description
# per esempio, matogrosso: "An inland state of central Brazil, deep in the Amazon interior..."
m1992<-im.import("matogrosso_l5_1992219_lrg.jpg")

# Abbiamo solo 3 bande
# bands: 1--> NIR; 2--> red; 3-->green
im.plotRGB(m1992,r=1,b=2,g=3) 
im.plotRGB(m1992,1,2,3) # NIR on top of red
im.plotRGB(m1992,2,1,3) # NIR on top of green


