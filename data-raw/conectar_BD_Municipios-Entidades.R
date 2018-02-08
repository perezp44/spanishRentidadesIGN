#library(DBI)
# Connect to the default postgres database
#con <- dbConnect(RPostgres::Postgres())
#dbListTables(con)




## ----cargar_pkgs, echo = F-----------------------------------------------
library("personal.pjp")
library("xlsx")
library("readxl")
library("tidyverse")
library("RODBC")
library("stringr")
library(DBI)


fichero_q_uso <- "Nomenclator_Municipios_EntidadesDePoblacion.mdb"  #- tiene 1.132.560 registros y son todos las cosas q hay en ESp incluidos los glaciares
#datos <- odbcConnectAccess("./datos/Presupuestos2015.mdb") #- establece conexion con BdeD (32 bits)
#- 64 bits
#datos <-  odbcDriverConnect("Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=./datos/Presupuestos2016.mdb")
para_conexion <- paste0("Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=./data-raw/BD_Municipios-Entidades/", fichero_q_uso)
datos <-  odbcDriverConnect(para_conexion)

#-sqlTables(datos) # listado de todas las tablas que hay en la base de datos
tablas <- as.data.frame(sqlTables(datos, tableType = "TABLE")$TABLE_NAME) # listado de las tablas
names(tablas) <- 'Tablas'

#- cargamos las tablas en df's (ya no las cargo, solo fue para verlas y hacer el Diccionario)
df_muni <-  sqlQuery(datos, "SELECT * FROM MUNICIPIOS", as.is = TRUE) #  "SELECT * FROM" significa selección de todos los registros
df_prov <-  sqlQuery(datos, "SELECT * FROM PROVINCIAS", as.is = TRUE) #  "SELECT * FROM" significa selección de todos los registros
df_enti <-  sqlQuery(datos, "SELECT * FROM ENTIDADES", as.is = TRUE) #  "SELECT * FROM" significa selección de todos los registros
df_eatims <- sqlQuery(datos, "SELECT * FROM EATIMS", as.is = TRUE) #
df_condominios <- sqlQuery(datos, "SELECT * FROM CONDOMINIOS", as.is = TRUE) #
#aa <- names_v_df_pjp(df_muni) #-- good son numeric las q deben serlo

IGN_nomencla_muni <- df_muni
IGN_nomencla_prov <- df_prov
IGN_nomencla_entidades <- df_enti
IGN_nomencla_eatims <- df_eatims
IGN_nomencla_condominios <- df_condominios


library(usethis)
#---- Guardarlos en el paquete (los dejo tal cual)
# use_data(IGN_nomencla_muni) #- lo guarde con esta linea que usa el pkg usethis el 2018-02-06
# use_data(IGN_nomencla_prov) #- lo guarde con esta linea que usa el pkg usethis el 2018-02-06
# use_data(IGN_nomencla_entidades) #- lo guarde con esta linea que usa el pkg usethis el 2018-02-06
# use_data(IGN_nomencla_eatims) #- lo guarde con esta linea que usa el pkg usethis el 2018-02-06
# use_data(IGN_nomencla_condominios) #- lo guarde con esta linea que usa el pkg usethis el 2018-02-06




