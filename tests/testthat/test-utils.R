# Tests for utility functions --------------------------------------------------

## CMYK converter ----

testthat::expect_named(cmyk2rgb(100, 80, 0, 60))
testthat::expect_type(cmyk2rgb(100, 80, 0, 60), "integer")
testthat::expect_vector(cmyk2rgb(100, 80, 0, 60), size = 3)


## Print palette ----

## Test print function ----
testthat::expect_silent(
  print(structure(oxford_theme_palettes()$heritage, class = "palette"))
)
