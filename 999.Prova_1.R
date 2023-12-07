# IMMAGINE KLAMATH BASIN CONFRONTO 2003/2023
library(terra)
library(imageRy)
library(ggplot2)
setwd("D:R_Studio/Immagini_Prova_Monitoring")
img1<-rast("Klamath_Basin_June_14_2000.jpg")
img2<-rast("Klamath_Basin_June_17_2001.jpg")
# Faccio la classificazione per cluster delle due immagini
img1c<-im.classify(img1,num_clusters=3)
img2c<-im.classify(img2,num_clusters=3)
par(mfrow=c(1,2))
plot(img1c)
plot(img2c)

freq1<-freq(img1c)
tot1<-ncell(img1)
perc1<-freq1*100/tot1
freq2<-freq(img2c)
tot2<-ncell(img2)
perc2<-freq2*100/tot2
perc1
perc2

class <- c("classe 1", "classe 2","classe 3") 
y2000 <- c(24,47,29)
y2001 <- c(42,28,30)
tab <- data.frame(class, y2000, y2001)
p1 <- ggplot(tab, aes(x=class, y=y2000, color=class)) + geom_bar(stat="identity", fill="white")
p2 <- ggplot(tab, aes(x=class, y=y2001, color=class)) + geom_bar(stat="identity", fill="white")
p1+p2
