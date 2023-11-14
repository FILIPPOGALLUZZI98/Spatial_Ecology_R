# Time series analysis
# Dati da Sentinel
library(imageRy)
library(terra)


####################################################
#### NO2 over Europe during Covid
####################################################

im.list() #let's use the image: EN_01 (it means European Nitrogen, il numero si riferisce al periodo)
jan<-im.import("EN_01.png") # It's a representation in RGB of NO2 over Europe in january
mar<-im.import("EN_13.png") # The same in march (last time-interval)

par(mfrow=c(2,1))
plot(jan)
plot(mar)

# Un altro modo è: 
# par(mfrow=c(2,1))
# im.plotRGB.auto(jan)
# im.plotRGB.auto(mar)

# Using the first band of the two images 
dev.off()
diff=jan[[1]]-mar[[1]]
diff

cl_diff <- colorRampPalette(c("blue","white","red"))(100)
plot(diff,col=cl_diff) 
# Le parti rosse sono quelle in cui i valori sono alti in gennaio 
# E quelle blu quelle in cui valori sono alti a marzo




####################################################
#### GREENLAND
####################################################

cl<-colorRampPalette(c("yellow","blue","white","red"))(100)
g2000<-im.import("greenland.2000.tif") # Relative temperature in 2000 over Greenland Surface
plot(g2000,col=cl)

# Importiamo tutte le immagini
g2005<-im.import("greenland.2005.tif")
g2010<-im.import("greenland.2010.tif")
g2015<-im.import("greenland.2015.tif")

par(mfrow=c(2,2))
plot(g2000,col=cl)
plot(g2005,col=cl)
plot(g2010,col=cl)
plot(g2015,col=cl)
# Possiamo vedere dal confronto 2000 vs.2015 che le zone nere (quelle più fredde)
# sono diminuite in estensione
# 2000/2005 si osserva una diminuzione di T molto elevata

stackg<-c(g2000,g2005,g2010,g2015) 
plot(stackg,col=cl) 

# Fare differenza tra primo e ultimo elemento dello stack (tra 2000 e 2015)
cl2<-colorRampPalette(c("blue","white","red"))(100)
diffg=stackg[[1]]-stackg[[4]]
plot(diffg,col=cl2)


# Make an RGB plot using different years
im.plotRGB(stackg,r=1,g=2,b=3)
# In base ai colori posso capire la differenza di T tra i vari periodi:
# nelle regioni scure le T più alte sono nel periodo finale e viceversa





