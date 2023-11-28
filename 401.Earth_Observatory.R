## Earth Observatory (NASA):
# https://earthobservatory.nasa.gov/

####################################################
# Upload immagine Naja City

library(terra)
setwd("D:R_Studio/Immagini_Monitoring/Earth_Observatory")

img1<-rast("Naja_City_May_20_2003.jpg")
img2<-rast("Naja_City_Ago_07_2023.jpg")
img1
# Le immagini sono formate da 3 componenti, che corrispondono alle bande RGB

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

####################################################
# Upload 2nd image 

img3<-rast("Klamath_Basin_June_14_2000.jpg")
img4<-rast("Klamath_Basin_June_17_2001.jpg")
par(mfrow=c(1,2))
plot(img3)
plot(img4)
dev.off()
diff2=img3[[1]]-img4[[1]]
plot(diff2,col=cl)
















