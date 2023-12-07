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


# Esempio
sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")
sunc <- im.classify(sun)
plotRGB(sun, 1, 2, 3)
plot(sunc)

# Esempio 2















