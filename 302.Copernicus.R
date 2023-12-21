## Copernicus (ESA):
# https://land.copernicus.vgt.vito.be/PDF/portal/Application.html
# Estensione dei dati è '.nc'

library(terra)
library(ncdf4)
setwd("D:R_Studio/Immagini_Prova_Monitoring")

soil_moist<-rast("Soil_Moisture.nc")
plot(soil_moist)
# Ci sono due variabili, ssm (surface soil moisture) e ssm noise
cl<-colorRampPalette(c("red","orange","yellow"))(100)
plot(soil_moist[[1]], col=cl)

# Voglio vedere solo una parte dell'immagine
ext<-c(25.5,26,41,41)
soil_moist_crop<-crop(soil_moist[[1]],ext)
plot(soil_moist_crop,col=cl)








