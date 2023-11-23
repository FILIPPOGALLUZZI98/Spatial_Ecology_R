# Dopo aver scaricato l'immagine in una cartella:
# Percorso cartella --> "D:R_Studio/Immagini_Monitoring/Immagini_Prova"
# SE HO SPOSTATO LA CARTELLA O L'HO RINOMINATA --> CONTROLLARE E CAMBIARE
# Se invece metto "D:\R_Studio/Immagini_Monitoring/Immagini_Prova" non funziona, 
# quindi fare attenzione a '/' dopo 'D:'
# setwd --> set working directory
setwd("D:R_Studio/Immagini_Monitoring/Immagini_Prova")

# rast() --> per importare l'immagine, come 'im.import'
img1<-rast("Naja_City_May_20_2003.jpg")
img2<-rast("Naja_City_Ago_07_2023.jpg")
# Su windows ricordare di aggiungere l'estensione alla fine perché la nasconde!!
