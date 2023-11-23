# Dopo aver scaricato l'immagine in una cartella:
# Percorso cartella --> "D:R_Studio/Immagini_Monitoring"
# SE HO SPOSTATO LA CARTELLA O L'HO RINOMINATA --> CONTROLLARE E CAMBIARE
# Se invece metto "D:\R_Studio/Immagini_Monitoring" non funziona, 
# quindi fare attenzione a '/' dopo 'D:'
# setwd --> set working directory
setwd("D:R_Studio/Immagini_Monitoring")

# rast() --> per importare l'immagine
img<-rast("NOME_FILE.ESTENSIONE")
# Su windows ricordare di aggiungere l'estensione alla fine perché la nasconde!!
