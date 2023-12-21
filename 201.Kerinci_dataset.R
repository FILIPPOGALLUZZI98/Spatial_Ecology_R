# KERNEL DENSITY ANALYSIS
# Usiamo i dati del Kerinci-Seblat National Park in Sumatra,
# Indonesia (Ridout and Linkie, 2009)-->data from trap cameras
# I dati si trovano all'interno del pacchetto 'overlap'

library(overlap)
?overlap
# The times recorded on camera trap photos provide information on the period during
# the day that a species is most active. Species active at the same periods may interact
# as predator and prey, or as competitors. The functions in this package allow the 
# overlap to be quantified, and provide means of estimating confidence intervals with
# bootstraps. In particular, note that all times are measured in radians. If your original
# data use 0-24 hours or 0-1 days, convert to radians: see the example in kerinci. 
# If you need fitted densities in other units, use the output from densityPlot or overlapPlot.

data()
# troviamo che all'interno di 'overlap' c'è il dataset 'kerinci' (insieme ad altri)
summary(kerinci)
# Le variabili del dataset sono: (Zone, Sps, Time)
# A sua volta si trova che le specie osservate sono: (macaque,tiger,muntjac,tapir,...)
kerinci
# Si vede l'elenco di tutte le osservazioni delle specie con relativa zona e tempo 

# Come scritto nelle informazioni del pacchetto, dobbiamo convertire il tempo
# Aggiungiamo una nuova variabile 'kerinci$TimeRad' a partire dalla variabile 'kerinci$Time'
kerinci$TimeRad<-kerinci$Time*2*pi
kerinci
# Da qui si vede l'elenco di tutte le variabili, con l'aggiunta di 'TimeRad'

# Vogliamo selezionare una specie (tigre)
tiger <- kerinci[kerinci$Sps=="tiger",]
tiger
# Vediamo tutti i tempi e le zone in cui è stata osservata
# Per selezionare i tempi, e quindi fare una densità nel tempo
timetig<-tiger$TimeRad
# A questo punto possiamo fare una mappa di densità (nel tempo)
densityPlot(timetig, rug=TRUE)
# Ed osserviamo quindi l'andamento nel tempo delle osservazioni

# Possiamo fare lo stesso anche per le altre specie, per esempio il 'tapir'
tapir<-kerinci[kerinci$Sps=="tapir",]
timetap<-tapir$TimeRad
densityPlot(timetap,rug=TRUE)

# Possiamo sovrapporre i grafici di tigre e tapiro
overlapPlot(timetig,timetap,linecol = c("black", "red"), olapcol = "yellow")
legend('topright',c("Tigers","Tapir"),lty=C(2,1),col=c("black","red"),bty='n')
# Per avere info sulla funzione 'overlapPlot'
?overlapPlot








