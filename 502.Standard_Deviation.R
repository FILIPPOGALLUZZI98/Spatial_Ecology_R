# Measurement of RS-based variability
library(imageRy)
library(terra)
library(viridis)
im.list()

# Band1=NIR; Band2=RED; Band3=GREEN
img<-im.import("sentinel.png")  ## La quarta banda è di controllo
im.plotRGB(img,r=1,g=2,b=3)
# Red is pasture and blue is bare soil (rocks)
im.plotRGB(img,r=2,g=1,b=3)  ## NIR in top of RED
# The bare soil (rocks) is violet and green is pasture

nir<-img[[1]]
plot(nir)
# Green parts are vegetations and orange is bare soil

# Moving Window --> To calculate the STD of a raster image
# Calcola la STD di una cella considerando le celle adiacenti e spostando la 
# "finestra" pixel dopo pixel --> 'focal()'
sd3<-focal(nir, matrix(1/9,3,3), fun=sd)  ##  'matrix' descrive la dimensione della moving window
cl<-colorRampPalette(viridis(7))(255)  ## 255 perché sono i diversi valori possibili dei pixel
plot(sd3, col=cl)





