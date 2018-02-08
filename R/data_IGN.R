#------------------------------ This file documents IGN datasets
#-- Nomenclator del IGN de municipios y entidades de poblacion
#- La base de datos en formato Acces tiene 5 tablas (las he puesto cada una en un df)

#' Nomenclator del IGN de MUNICIPIOS
#'
#' Tabla que contiene toda la información descriptiva de los municipios. La fuente de datos de
#' referencia es el Registro de Entidades Locales, completada con información procedente del
#' Instituto Nacional de Estadística y el Instituto Geográfico Nacional.
#' Codigos y nombres de los municipios. tambien hay altitud, perimetro, superficie y algo mas
#'
#' @source \url{http://www.ign.es/web/ign/portal/rcc-nomenclator-nacional}
#'
#' @format A data frame with 8.124 rows y 17 variables:
#' \itemize{
#'   \item CODIGOINE: Código de 11 digitos (del INE, unico para cada entidad poblacional)
#'   \item ID_REL: Identificador dado por el Registro de Entidades Locales. No todas las unidades poblacionales disponen de este identificador. Este campo esta en permanecen actualización.
#'   \item CODPROV: Código de la provincia.
#'   \item NOMBRE_PROVINCIA: Nombre de la provincia.
#'   \item NOMBRE: Nombre actual del municipio tal y como aparece inscrito en el REL
#' }
#'
#' @examples
#' \dontrun{
#'  df <- IGN_nomencla_muni
#' }
#'
"IGN_nomencla_muni"


#' Nomenclator del IGN de ENTIDADES
#'
#' Tabla que contiene toda la información descriptiva de las entidades de población.
#' La fuente de referencia son los datos publicados por el Instituto Nacional de Estadística a través
#' de su nomenclátor poblacional completada con información procedente del Registro de
#' Entidades Locales y del Instituto Geográfico Nacional.
#'
#' @source \url{http://www.ign.es/web/ign/portal/rcc-nomenclator-nacional}
#'
#' @format A data frame with 153.210 rows y 15 variables:
#' \itemize{
#'   \item CODIGOINE: Código de 11 digitos (del INE, unico para cada entidad poblacional)
#'   \item NOMBRE: Nombre de la unidad poblacional.
#'   \item CODPROV: Código de la provincia.
#'   \item NOMBRE_PROVINCIA: Nombre de la provincia.
#'   \item TIPO: Clasificación interna de los tipos de entidad
#' }
#'
#' @examples
#' \dontrun{
#'  df <- IGN_nomencla_entidades
#' }
#'
"IGN_nomencla_entidades"




#' Nomenclator del IGN de PROVINCIAS
#'
#' Tabla que contiene las denominaciones de las provincias españolas, junto a su código
#' provincial y la comunidad autónoma a la que pertenecen.
#' Tiene la capital de Provincia (good)
#'
#' @source \url{http://www.ign.es/web/ign/portal/rcc-nomenclator-nacional}
#'
#' @format A data frame with 52 rows y 5 variables:
#' \itemize{
#'   \item CODPROV: Código de la provincia.
#'   \item NOMBRE_PROVINCIA: Nombre de la provincia.
#'   \item CAPITAL: Nombre de la capitalidad de la provincia.
#' }
#'
#' @examples
#' \dontrun{
#'  df <- IGN_nomencla_prov
#' }
#'
"IGN_nomencla_prov"





#' Nomenclator del IGN de EATIMS
#'
#' Esta tabla contiene la relación de Entidades de Ámbito Territorial Inferior al Municipio. La
#' fuente de datos de referencia en este caso es el Registro de Entidades Locales, completada con
#' información procedente del Instituto Nacional de Estadística y el Instituto Geográfico Nacional.
#'
#' @source \url{http://www.ign.es/web/ign/portal/rcc-nomenclator-nacional}
#'
#' @format A data frame with 3.708 rows y 13 variables:
#' \itemize{
#'   \item CODINSCRIP: Número de inscripción de la EATIM en el Registro de Entidades Locales
#'   \item CODPROV: Numeración correspondiente a la provincia en la que se encuentra la EATIM
#' }
#'
#' @examples
#' \dontrun{
#'  df <- IGN_nomencla_eatims
#' }
#'
"IGN_nomencla_eatims"


#' Nomenclator del IGN de Condominios o COMUNIDADES JURISDICCIONLES
#'
#' Esta tabla contiene aquellos territorios con superficie propia que cuya gestión es llevada a
#' cabo por varios municipios, provincias o es directamente estatal.
#'
#' @source \url{http://www.ign.es/web/ign/portal/rcc-nomenclator-nacional}
#'
#' @format A data frame with 81 rows y 12 variables:
#' \itemize{
#'   \item IdCon:Identificador del Comunidad Jurisdiccional.
#'   \item NOMBRE_ACTUAL: Nombre de la Comunidad Jurisdiccional.
#' }
#'
#' @examples
#' \dontrun{
#'  df <- IGN_nomencla_condominios
#' }
#'
"IGN_nomencla_condominios"


