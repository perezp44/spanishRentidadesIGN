# Fri Feb 09 20:00:56 2018 ------------------------------
#- resulta que necesito saber las capitales de provincia
#- asi q creo un nuevo objeto


library(tidyverse)
library(spanishRentidadesIGN)
library(stringr)


#--- Capitales de Provincia
capi_prov <- IGN_nomencla_prov %>% select(CAPITAL) %>% distinct()
capi_prov_v <- capi_prov$CAPITAL

capitales_prov <- IGN_nomencla_muni %>%
  filter(NOMBRE_ACTUAL %in% capi_prov_v) %>%
  mutate(INECodMuni = str_extract(COD_INE, "^(.....)")) %>%
  select(INECodMuni, NOMBRE_ACTUAL, COD_PROV, PROVINCIA)

library(usethis)
# use_data(capitales_prov) #- lo guarde con esta linea que usa el pkg usethis el 2018-02-09
