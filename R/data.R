#'
#' Oxford colours based on University of Oxford's visual identity guidelines
#'
#' @format A data frame with 5 columns and 34 rows:
#'
#' | **Variable** | **Description** |
#' | :--- | :--- |
#' | *name* | Official Oxford colour name |
#' | *rgb* | Three integers for the red, green, blue components of the RGB colour model |
#' | *cmyk* | Four integers for the cyan, magenta, yellow, and black components of the CMYK colour model |
#' | *hex* | Hexadecimal codes for corresponding colour |
#' | *pantone* | Pantone colour name |
#'
#' @examples
#' oxford_colours
#'
#' @source https://communications.web.ox.ac.uk/communications-resources/visual-identity/identity-guidelines/colours
#'
"oxford_colours"


#'
#' Example map data for showing map plotting with Oxford colours
#'
#' @format An sf object with 12 columns and 15 rows:
#'
#' | **Variable** | **Description** |
#' | :--- | :--- |
#' | *stateID* | State identifier |
#' | *localityID* | Locality identifier |
#' | *state_name* | State name |
#' | *district* | District name |
#' | *muac_gam* | Prevalence of global acute malnutrition by MUAC |
#' | *muac_mam* | Prevalence of moderate acute malnutrition by MUAC |
#' | *muac_sam* | Prevalence of severe acute malnutrition by MUAC |
#' | *oedema* | Prevalence of severe acute malnutrition by oedema |
#' | *dia* | Period prevalence of childhood diarrhoea |
#' | *fev* | Period prevalence of childhood fever |
#' | *bf* | Prevalence of continued breastfeeding |
#' | *geom* | Geometry |
#'
#' @examples
#' nut_survey_map
#'
#'
"nut_survey_map"

