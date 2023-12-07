# CLASSIFICAZIONE REMOTE SENSING DATA

library(terra)
library(imageRy)
library(ggplot2)
library(patchwork)

# Supponiamo di avere un'immagine satellitare e voglio capire quali zone sono
# coltivate,  quali sono acqua, vegetazione, etc.
# Costruisco allora un grafico con assi x=RED e y=NIR.
# A questo punto, proietto ogni pixel dell'immagine originale nel nuovo grafico, in 
# base ai valori di riflessione del pixel stesso con coordinate del pixel x: (x_RED,x_NIR).
# Ottengo quindi dei gruppi nel nuovo grafico, in base a come i pixel dell'immagine
# originale riflettono. Per esempio, le regioni di vegetazioni riflettono più NIR che RED,
# quindi saranno raggruppati con valori alti di NIR e bassi di RED.
# A questo punto, per capire nell'immagine originale quali zone sono vegetazione, acqua, coltivazioni
# prendo ogni pixel dell'immagine originale, calcolo la distanza tra questo pixel e i vari cluster
# e, in base a quale cluster è piu vicino, lo assegno al cluster specifico. Per esempio posso 
# classificare tre tipi di cluster ed assegnargli tre colori diversi: l'immagine originale
# sarà colorata con questi tre colori in base alla classificazione fatta.
# La funzione su 'imageRy' si chiama 'im.classify(nome_immagine, num_clusters=?)'
# The algorithm divides the pixels in clusters based on their similarities creating the number 
# of classes specified by the user.
# Quindi, usando questa funzione, posso vedere l'immagine satellitare con i colori alterati, in base
# al numero di classi specificate e posso vedere quali zone sono coltivate, vegetazione, acqua, ...


# ESEMPIO
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
m1992c <- im.classify(m1992, num_clusters=2)
m2006c <- im.classify(m2006, num_clusters=2)
# Le classi sono: agricultural areas=2 e forest=1
par(mfrow=c(1,2))
plot(m1992c[[1]])
plot(m2006c[[1]])

# freq() Frequency table of the values of a SpatRaster
# Conta quanti pixel sono nei vari cluster
freq2006 <- freq(m2006c[[1]])
freq2006
freq1992 <- freq(m1992c[[1]])
freq1992
# ncell() numero di celle dell'immagine
tot1992 = ncell(m1992)
perc1992 = freq1992 * 100 / tot1992
perc1992
# 83% cluster 1 --> forest; 17% cluster 2 --> agricultural
tot2006 = ncell(m2006)
perc2006 = freq2006 * 100 / tot2006
perc2006
# 55% cluster 1; 45% cluster 2
















