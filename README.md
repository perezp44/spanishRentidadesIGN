
<!-- README.md is generated from README.Rmd. Please edit that file -->
spanishRentidadesIGN
====================

El paquete `spanishRentidadesIGN` es simplemente un paquete de datos. Su propósito es facilitar el uso del Nomenclátor del IGN en R.

Descripción
===========

El Nomenclátor del IGN de MUNICIPIOS Y ENTIDADES DE POBLACIÓN tiene 5 tablas. He puesto cada una en un fichero .rda.

-   IGN\_nomencla\_muni

-   IGN\_nomencla\_prov

-   IGN\_nomencla\_entidades

-   IGN\_nomencla\_eatims

-   IGN\_nomencla\_condominios

Información detallada la encontrarás [aquí](http://www.ign.es/web/ign/portal/rcc-nomenclator-nacional). Descargaras los datos originales en un fichero .zip. Allí hay un pdf con toda la información.

Además generé un df con las capitales de provincia:

-   capitales\_prov

Uso
===

Solo hay que cargar el paquete en memoria y llamar a los objetos

``` r
devtools::install_github("perezp44/spanishRentidadesIGN")
library(spanishRentidadesIGN)
municipios <- IGN_nomencla_muni
```
