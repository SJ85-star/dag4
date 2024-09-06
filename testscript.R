#Testing for n't gang 

#Fabian

#Load tidyverse and modeldata (comment Fabian)
library(tidyverse)
library(modeldata)

#Load new packages lintr which provides static code analysis
install.packages("lintr")

# Load styler which formats the code according a style code
install.packages("styler")

library(lintr)
library(styler)

#Upload data called ames and show head
data(ames)
head(ames)

dim(ames) 

detchd_filter <- ames$Garage_Type == "Detchd"
detchd <- ames[
  detchd_filter,
  c("Longitude", "Latitude", "Sale_Price", "Garage_Type", "Paved_Drive")
]

a_price <- detchd$Sale_Price[
  detchd$Paved_Drive == "Dirt_Gravel"
]

b_price <- detchd$Sale_Price[
  detchd$Paved_Drive == "Paved"
]

t.test(a_price, b_price)