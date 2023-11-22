# CODE RELATED TO POPULATION ECOLOGY
# All'interno del pacchetto 'spatstat' c'è il dataset 'bei' che contiene
# la posizione di 3605 alberi; vogliamo studiare il pattern spaziale

library(spatstat)
data() # Vediamo i vari dataset contenuti in 'spatstat'

# Cerchiamo il dataset 'bei' interno al pacchetto spatstat
# Ci sono due 'bei', e possiamo vedere le caratteristiche:
?bei
# The dataset bei gives the positions of 3605 trees of the species Beilschmiedia 
# pendula (Lauraceae) in a 1000 by 500 metre rectangular sampling region in the 
# tropical rainforest of Barro Colorado Island.
# The accompanying dataset bei.extra gives information about the altitude (elevation)
# in the study region. It is a list containing two pixel images, 
# elev (elevation in metres) and grad (norm of elevation gradient).

# Per osservare la disposizione degli alberi nello spazio
plot(bei, cex=.2, pch=19) # Abbiamo modificato dimensione e forma dei punti per chiarezza

# Facciamo lo stesso con 'bei.extra'
plot(bei.extra)
# Si vedono due grafici uno accanto all'altro: elev e grad
# Se vogliamo usare solo una parte del dataset
elev<-bei.extra$elev
grad<-bei.extra$grad
plot(grad)

# Possiamo sovrapporre ai due grafici di elev e grad la posizione degli alberi
plot(elev)
points(bei,cex=.2,pch=19)


# Possiamo trasformare il grafico a dispersione in un grafico di densità:
density_map<-density(bei)
# Con questo non lavoriamo più con punti, ma con pixel
# Come per il caso precedente, possiamo sovrapporre alla mappa di densità 
# la posizione degli alberi
cl<-colorRampPalette(c("black","red","orange","yellow"))(100)
plot(density_map,col=cl)
points(bei,cex=.2,pch=19)

# Se voglio confrontare 'density_map' ed 'elev'
par(mfrow=c(1,2))
plot(density_map, col=cl)
plot(elev)
points(bei,cex=.2,pch=19)



