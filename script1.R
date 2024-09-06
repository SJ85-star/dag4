

# Beskrivelse av hva scriptet er om
#Forfatter
#Dato det ble laget
#Dato sist oppdatert
#Kontaktinfo

library(tidyverse)
library(modeldata)

#installerer modeldata f??rs
install.packages("modeldata")
install.packages("Rtools")

library(modeldata)

#All data
data(ames)

#se data
ames

#6 f??rste
head(ames)
"sum rader og kolonner"
dim(ames)


#Ser p?? samtlig punkt ved variabel garage type
#Gir beskrivelse True dersom har svaret "detchd"
detchd_filter <- ames$Garage_Type == "Detchd"
detchd_filter


#Kaller nytt objekt detchd. 
#Bruker koden fra over hvor det er filtrert datapunkt som er "detchd"
#Ses da p?? i variabelene som er nevnt
detchd <- ames[
  detchd_filter,
  c("Longitude", "Latitude", "Sale_Price", "Garage_Type", "Paved_Drive")
]
detchd

#Ser p?? alle salgspriser, men filtrer ut ifra de som har paved drive i variablen "dirt gravel"
a_price <- detchd$Sale_Price[
  detchd$Paved_Drive == "Dirt_Gravel"
]

# se p?? utvalget
a_price

b_price <- detchd$Sale_Price[
  detchd$Paved_Drive == "Paved"
]
	
t.test(a_price, b_price)

library(lintr)
library(styler)
library(tidyverse)
library(modeldata)

View(ames)
head(ames)

#Ser p?? samtlig punkt ved variabel garage type
#Gir beskrivelse True dersom har svaret "detchd"
detchd_filter <- ames$Garage_Type == "Detchd"
detchd_filter

#finding a subgroup and rename
newtibble <- ames[
  detchd_filter,
  c("Longitude", "Latitude", "Sale_Price", "Garage_Type", "Paved_Drive")
]

newtibble

#Ser p?? samtlig punkt ved variabel garage type
#Gir beskrivelse True dersom har svaret "detchd"
detchd_filter <- ames$Garage_Type == "Detchd"
detchd_filter

#finding a subgroup and rename
newtibble <- ames[
  detchd_filter,
  c("Longitude", "Latitude", "Sale_Price", "Garage_Type", "Paved_Drive")
]

newtibble
