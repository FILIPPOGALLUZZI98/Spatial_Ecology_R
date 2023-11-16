# AVAILABLE DATA:

## Earth Observatory (NASA):
https://earthobservatory.nasa.gov/
## Sentinel-2 data (10m, ESA):
https://www.youtube.com/watch?v=KA2L4bDmo98
## Landsat (30m) and MODIS (>500m) data (NASA):
https://www.youtube.com/watch?v=JN-P04Dkx48
## Copernicus (ESA):
https://land.copernicus.vgt.vito.be/PDF/portal/Application.html



###########################
###### IMMAGINI DI PROVA
###########################

library(terra)

# Dopo aver scaricato l'immagine in una cartella:
# Percorso cartella --> "D:Immagini_Monitoring/Immagini_Prova"
# SE HO SPOSTATO LA CARTELLA O L'HO RINOMINATA --> CONTROLLARE E CAMBIARE
# Se invece metto "D:\Immagini_Monitoring" non funziona, quindi fare attenzione a "/"
# setwd --> set working directory
setwd("D:Immagini_Monitoring/Immagini_Prova")

# rast() --> per importare l'immagine, come 'im.import'
img1<-rast("Naja_City_May_20_2003.jpg")
img2<-rast("Naja_City_Ago_07_2023.jpg")
# Su windows ricordare di aggiungere l'estensione alla fine perché la nasconde!!

# In 'terra' invece di usare 'im.plotRGB' possiamo usare:
plotRGB(img1,r=1,g=2,b=3)
# Confronto immagini
par(mfrow=c(1,2))
plot(img1)
plot(img2)

# Differenza primo layer tra le due immagini (red component)
diff=img1[[1]] - img2[[1]]
cl<-colorRampPalette(c("brown","grey","orange"))(100)
plot(diff,col=cl)

# IMMAGINI PROVA 2
img3<-rast("Klamath_Basin_June_14_2000.jpg")
img4<-rast("Klamath_Basin_June_17_2001.jpg")
par(mfrow=c(1,2))
plot(img3)
plot(img4)
dev.off()
diff2=img3[[1]]-img4[[1]]
plot(diff2,col=cl)
















