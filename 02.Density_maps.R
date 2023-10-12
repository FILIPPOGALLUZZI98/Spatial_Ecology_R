library(spatstat)

bei
# vogliamo passare ad una funzione di densità
densitymap<-density(bei)

# we aren't dealing with points anymore, but with pixels
# vogliamo sovrapporre alla mappa di densità anche la mappa dei punti
# questa funzione si chiama points
points(bei,cex=.4)

# vogliamo cambiare i colori della mappa
# la funzione si chiama colorRampPalette
cl<-colorRampPalette(c("black","red","orange","yellow"))(100)
# devo usare "" altrimenti R non li riconosce
# ho bisogno di un array c() per usare tutti e 4 i colori
# (100) è il numero di colori che mi servono per passare da un colore all'altro
# per esempio, con (4), non c'è continuità tra un colore all'altro, non c'è un gradiente
# devo assegnarlo ad un oggetto che chiamo cl in modo da richiamarlo

plot(densitymap,col=cl)

# il giallo è il colore che impatta maggiormente, quindi va usato con cautela perché il primo che viene visto in una mappa
# va quindi messo in alto

elevation<-bei.extra[[1]]

# funzione par mi serve per mostrare due o piu grafici:multiframe
# (1,2) devo usare c() perché devo dire che è un array
# c(righe,colonne)
par(mfrow=c(1,2))
plot(densitymap)
plot(elevation)
points(bei,cex=.2)

# fare 3 grafici accanto
par(mfrow=c(1,3))
plot(bei,cex=.2)
plot(densitymap,col=cl)
plot(elevation,col=cl)









