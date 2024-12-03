#Skrypt dzien pierwszy
#Zaladuj biblioteki/paczki
library(tidyverse)
#Dane z internetu
dane_internetowe <- readr::read_csv("https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv")
dane_dysk_01 <-  readr::read_csv("C:/Git_hub/projekt_01/R/data/annual-enterprise-survey-2023-financial-year-provisional (1).csv")
#Dane z dysku sciezka wzgledna
dane_dysk_02 <- readr::read_csv("R/data/annual-enterprise-survey-2023-financial-year-provisional (1).csv")
#Zmiana kolumny tekst na liczbe
dane_dysk_02$Value <- as.numeric(dane_dysk_02$Value)

#Prasowanie tekstu na liczbe
dane_dysk_01$Value <- readr::parse_number

#Sprawdzenie wiersza 748
dane_internetowe[748,"Value"]
