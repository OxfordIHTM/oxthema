# Create example map -----------------------------------------------------------


## Load libraries ----
library(sf)


## Read data ----

### Read map data ----
district_map <- st_read(dsn = "data-raw/country_map.gpkg", layer = "districts")

### Read data ----
nut_dat <- read.csv("https://github.com/OxfordIHTM/oxford-ihtm-forum/files/14256522/nut_data.csv")


## Process data ----

### Recode variables to be able to perform proportion calculation ----
nut_dat$muac_gam <- with(nut_dat, ifelse(muac < 12.5, 1, 0))
nut_dat$muac_mam <- with(nut_dat, ifelse(muac < 12.5 & muac >= 11.5, 1, 0))
nut_dat$muac_sam <- with(nut_dat, ifelse(muac < 11.5, 1, 0))
nut_dat$oedema <- with(nut_dat, ifelse(oedema == 2, 0, 1))
nut_dat$dia <- with(nut_dat, ifelse(dia == 2, 0, 1))
nut_dat$fev <- with(nut_dat, ifelse(fev == 2, 0, 1))
nut_dat$bf <- with(nut_dat, ifelse(bf == 2, 0, 1))

### Get proportion of each indicator by district ----
district_results <- lapply(
  X = nut_dat[ , c("muac_gam", "muac_mam", "muac_sam", "oedema", "dia", "fev", "bf")],
  FUN = function(x) tapply(X = x, INDEX = list(nut_dat$district_name), FUN = function(x) mean(x, na.rm = TRUE))
)

district_results <- do.call(cbind, district_results)
district_results <- data.frame(district = row.names(district_results), district_results)
row.names(district_results) <- NULL

### Merge with map data ----
district_results_sf <- cbind(district_map, district_results)

nut_survey_map <- district_results_sf

usethis::use_data(nut_survey_map, overwrite = TRUE, compress = "xz")


ggplot(data = district_results_sf) +
  geom_sf(mapping = aes(fill = muac_gam)) +
  scale_fill_gradientn(colours = create_palette_divergent(n = 3, name = "piylgn"))
