# Principal Component Analysis
library(imageRy)
library(viridis)
library(terra)

sent<-im.import("sentinel.png")
pairs(sent)  ## Possiamo vedere che il NIR è poco correlato alle altre bande,
  ##  mentre le prime due sono molto correlate
# Faccio la decomposizione in PCs
sentpc<-im.pca2(sent)  ##  'im.pca2' con la vecchia versione

# Plot PC1
pc1<-sentpc$PC1
cl<-colorRampPalette(viridis(7))(255)
plot(pc1,col=cl)

# Measuring variability in the first PC:
pc1sd3<-focal(pc1, matrix(1/9, 3, 3), fun=sd)
plot(pc1sd3, col=cl)
# In questo caso abbiamo fatto la variabilità di una variabile scelta non arbitrariamente
# come nel caso del NIR
pc1sd7<-focal(pc1, matrix(1/49, 7, 7), fun=sd)
plot(pc1sd7, col=cl)




# Plot an image with all the plots
# Questi sono presi dal file '405.Variability.R'
nir<-sent[[1]]
sd3<-focal(nir, matrix(1/9,3,3), fun=sd)
sd7<-focal(nir, matrix(1/49,7,7), fun=sd)

par(mfrow=c(2,3))
im.plotRGB(sent, 2,1,3)
plot(sd3, col=cl)
plot(sd7, col=cl)
plot(pc1, col=cl)
plot(pc1sd3, col=cl)
plot(pc1sd7, col=cl)
# Un altro metodo è il seguente
sdstack<-c(sd3,sd7,pc1sd3,pc1sd7)
namestack<-c("sd3","sd7","pc1sd3","pc1sd7")
plot(sdstack,main=namestack, col=cl)









