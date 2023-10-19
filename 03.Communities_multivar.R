# Installare pacchetto "vegan" --> vegetation analysis, community ecology package
# install.package("vegan")

library(vegan)
data() #ci fa vedere le descrizioni dei datasets contenuti dei vari pacchetti installati
data(dune) #ci fa vedere il contenuto del dataset "dune"
head(dune) #ci fa vedere la prima parte del dataset
tail(dune) # ci fa vedere l'ultima parte del dataset

# decorana() -->Detrended Correspondence Analysis and Basic Reciprocal Averaging
decorana(dune)
ord<-decorana(dune)
#l'informazione che vogliamo è la lunghezza degli assi
ord #possiamo leggere axis lenghts delle 4 coordinate:
# assegnamo la lunghezza a 4 variabili
ldc1<-3.7004
ldc2<-3.1166
ldc3<-1.30055
ldc4<-1.47888

#per calcolare la percentuale
total=ldc1+ldc2+ldc3+ldc4
pldc1=ldc1*100/total
pldc2=ldc2*100/total
pldc3=ldc3*100/total
pldc4=ldc4*100/total

#dato che ldc1 e ldc2 hanno il 71 percento della explained variability possiamo plottare solo quelli
plot(ord)
# mostra soltanto i primi due assi ed i nomi delle specie











