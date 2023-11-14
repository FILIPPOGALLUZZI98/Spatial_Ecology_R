# Time series analysis
library(imageRy)
library(terra)

im.list() #let's use the image: EN_01 (it means European Nitrogen)
jan<-im.import("EN_01.png") # It's a representation in RGB of NO2 over Europe in january
mar<-im.import("EN_13.png") # The same in march (last time interval)

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



##########################
#### GREENLAND
##########################





















