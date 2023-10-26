# RS data
# This is a script to visualize satellite data

library(devtools) # packages in R are also called libraries
# install the imageRy package from GitHub
devtools::install_github("ducciorocchini/imageRy")
library(imageRy)
library(terra)

#list the data
im.list()
# "sentinel.dolomites.b2.tif" questo indica la banda 2 del satellite
b2<-im.import("sentinel.dolomites.b2.tif")
# le bande differiscono in base alla lunghezza d'onda di osservazione
b2 # per vedere le caratteristiche

cl<-colorRampPalette(c("darkgrey","grey","lightgrey"))(100)
plot(b2,col=cl)

# import the green band from sentinel-2 (band 3)
b3<-im.import("sentinel.dolomites.b3.tif")
plot(b3,col=cl)
