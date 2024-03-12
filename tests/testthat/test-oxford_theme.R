# Test paleta ------------------------------------------------------------------

library(ggplot2)

## test theme_paleta() ----

## scatterplot
p <- ggplot(data = mtcars, mapping = aes(x = mpg, y = disp, colour = factor(cyl))) +
  geom_point(size = 3) +
  scale_colour_manual(
    name = "Cylinders",
    values = oxford_theme_palettes()$heritage
  )

### Test main plotting api ----
testthat::expect_silent(p + theme_oxford())

### Test grid ----
testthat::expect_silent(p + theme_oxford(grid = "X"))
testthat::expect_silent(p + theme_oxford(grid = "Xx"))
testthat::expect_silent(p + theme_oxford(grid = "Y"))
testthat::expect_silent(p + theme_oxford(grid = "Yy"))
testthat::expect_silent(p + theme_oxford(grid = "XxYy"))
testthat::expect_silent(p + theme_oxford(grid = FALSE))

### Test axis ----
testthat::expect_silent(p + theme_oxford(axis = TRUE))
testthat::expect_silent(p + theme_oxford(axis = "x"))
testthat::expect_silent(p + theme_oxford(axis = "y"))
testthat::expect_silent(p + theme_oxford(axis = "xy"))

### Test ticks ----
testthat::expect_silent(p + theme_oxford(ticks = TRUE))




