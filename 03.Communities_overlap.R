library(overlap)
# quando lavoriamo nel tempo allora non usiamo multivariate analysis ma kernel density
# these are camera traps data
# dentro a overlap c'è il dataset kerinci-->from Kerinci-Seblat National Park in Sumatra,
# Indonesia (Ridout and Linkie, 2009)-->data from trap cameras

# per usare il dataset:
data(kerinci)

# per visualizzare i dati dentro al dataset allora posso fare: head(kerinci)
# oppure:
summary(kerinci)
# posso vedere che il dataset è diviso in zones, species (sps), time e rimerad
# l'unità di tempo è il giorno, quindi va da 0 (00:00) a 1 (24:00)
# dato che il pacchetto overlap lavora in radianti devo fare una conversione: kerinci$Time * 2 * pi
# aggiungiamo al dataset una nuova colonna e chiamiamo la variabile timeRad:
kerinci$timeRad <- kerinci$Time * 2 * pi


# per selezionare una specie, per esempio la tigre
tiger <- kerinci[kerinci$Sps=="tiger",]
# lo rinominiamo
timetig <- tiger$timeRad
# plot fitted kernel densities:
densityPlot(timetig, rug=TRUE)
# this indicates how much dense is in time


# usando un'altra specie-->macaque, per esempio:
kerinci$timeRad <- kerinci$Time * 2 * pi
macaque <- kerinci[kerinci$Sps=="macaque",]
timemac <- macaque$timeRad
densityPlot(timemac, rug=TRUE)


# per sovrapporre i due grafici e confrontarli
overlapPlot(timetig,timemac) 
legend('topright', c("Tigers", "Macaques"), lty=c(1,2), col=c("black","blue"), bty='n')       






