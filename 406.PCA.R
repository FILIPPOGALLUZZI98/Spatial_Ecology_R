# Principal Component Analysis
library(imageRy)
library(viridis)
library(terra)

sent<-im.import("sentinel.png")
pairs(sent)  ## Possiamo vedere che il NIR è poco correlato alle altre bande,
  ##  mentre le prime due sono molto correlate
sentpc<-im.pca2(sent)  ##  'im.pca2' con la vecchia versione

# Measuring variability in the first PC:
pc1<-sentpc$PC1
sd3pc<-focal(pc1, matrix(1/9, 3, 3), fun=sd)
viridis<-colorRampPalette(viridis(7))(255)
plot(sd3pc, col=viridis)

















