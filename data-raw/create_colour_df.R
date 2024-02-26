# Create table for Oxford colours from branding toolkit ------------------------

oxford_colours <- data.frame(
  rbind(
    c(Name="blue",    Pantone=282,            C=100, M=80,  Y=0,   K=60, R=0,   G=33,  B=71),
    c(Name="blue1",   Pantone=279,            C=69,  M=35,  Y=0,   K=0,  R=72,  G=145, B=220),
    c(Name="blue2",   Pantone=291,            C=36,  M=7,   Y=2,   K=0,  R=158, G=206, B=235),
    c(Name="blue3",   Pantone=5405,           C=78,  M=51,  Y=37,  K=13, R=68,  G=104, B=125),
    c(Name="blue4",   Pantone=549,            C=65,  M=27,  Y=25,  K=1,  R=95,  G=155, B=175),
    c(Name="blue5",   Pantone=551,            C=36,  M=12,  Y=14,  K=0,  R=161, G=196, B=208),
    c(Name="blue6",   Pantone=562,            C=88,  M=34,  Y=57,  K=14, R=0,   G=119, B=112),
    c(Name="blue7",   Pantone=624,            C=55,  M=23,  Y=43,  K=1,  R=123, G=162, B=150),
    c(Name="blue8",   Pantone=559,            C=27,  M=7,   Y=25,  K=0,  R=188, G=210, B=195),
    c(Name="green1",  Pantone=576,            C=64,  M=25,  Y=100, K=7,  R=105, G=145, B=59),
    c(Name="green2",  Pantone=578,            C=30,  M=6,   Y=51,  K=0,  R=185, G=207, B=150),
    c(Name="green3",  Pantone=580,            C=20,  M=4,   Y=37,  K=0,  R=206, G=219, B=175),
    c(Name="green4",  Pantone=583,            C=39,  M=17,  Y=100, K=1,  R=170, G=179, B=0),
    c(Name="green5",  Pantone=585,            C=16,  M=3,   Y=69,  K=0,  R=219, G=222, B=114),
    c(Name="green6",  Pantone=587,            C=12,  M=2,   Y=51,  K=0,  R=227, G=229, B=151),
    c(Name="orange1", Pantone=7412,           C=16,  M=59,  Y=96,  K=2,  R=207, G=122, B=48),
    c(Name="orange2", Pantone=129,            C=4,   M=16,  Y=84,  K=0,  R=245, G=207, B=71),
    c(Name="orange3", Pantone=127,            C=6,   M=8,   Y=66,  K=0,  R=243, G=222, B=116),
    c(Name="red1",    Pantone=202,            C=31,  M=95,  Y=67,  K=31, R=135, G=36,  B=52),
    c(Name="red2",    Pantone=200,            C=18,  M=100, Y=83,  K=8,  R=190, G=15,  B=52),
    c(Name="red3",    Pantone=196,            C=6,   M=25,  Y=10,  K=0,  R=235, G=196, B=203),
    c(Name="gray1",   Pantone="Warm Gray 6",  C=36,  M=35,  Y=38,  K=1,  R=167, G=157, B=150),
    c(Name="gray2",   Pantone="Warm Gray 3",  C=22,  M=19,  Y=23,  K=0,  R=199, G=194, B=188),
    c(Name="gray3",   Pantone="Warm Gray 1",  C=11,  M=9,   Y=12,  K=0,  R=224, G=222, B=217),
    c(Name="gold",    Pantone="872 (Gold)",   C=0,   M=21,  Y=60,  K=30, R=NA,  G=NA,  B=NA),
    c(Name="silver",  Pantone="877 (Silver)", C=51,  M=40,  Y=39,  K=4,  R=NA,  G=NA,  B=NA)
  )
) |>
  dplyr::mutate(dplyr::across(.cols = C:B, .fns = as.integer))


oxford_colours$hex <- c(
  with(
    oxford_colours[1:(nrow(oxford_colours) - 2), ],
    rgb(R, G, B, maxColorValue = 255)
  ),
  NA_character_, NA_character_
)



## Colours from https://communications.web.ox.ac.uk/communications-resources/visual-identity/identity-guidelines/colours

### Create session with colours URL ----
session <- rvest::session("https://communications.web.ox.ac.uk/communications-resources/visual-identity/identity-guidelines/colours")

### Process text ----
oxford_colours <- session |>
  rvest::html_elements(".layout-row p") |>
  rvest::html_text() |>
  (\(x) x[c(1:3, 5:6, 9:15, 17:19, 21:23, 25:31, 33:35, 37:39, 41:42)])() |>
  stringr::str_split(pattern = "\n", simplify = TRUE) |>
  (\(x) { x[32:33, 5] <- x[32:33, 2]; x[32:33, 2] <- ""; x })() |>
  data.frame() |>
  (\(x) { names(x) <- c("name", "rgb", "cmyk", "hex", "pantone"); x })()

### Add Oxford blue ----
oxford_colours <- rbind(
  cbind(name = "Oxford blue", rgb = "RGB 0, 33, 71", cmyk = "CMYK 100, 87, 42, 51", hex = "#002147", pantone = "Pantone: 282"),
  oxford_colours
)

### Process fields ----

oxford_colours <- oxford_colours |>
  dplyr::mutate(
    rgb = stringr::str_remove_all(rgb, pattern = "RGB "),
    cmyk = stringr::str_remove_all(cmyk, pattern = "CMYK "),
    pantone = stringr::str_remove_all(pantone, pattern = "Pantone: |Pantone ")
  )

usethis::use_data(oxford_colours, overwrite = TRUE, compress = "xz")
