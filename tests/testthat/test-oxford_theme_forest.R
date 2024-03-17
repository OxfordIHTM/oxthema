# Test forestploter themes -----------------------------------------------------

# ## Set dependencies ----
# library(forestploter)
# library(grid)
# library(showtext)
# library(sysfonts)
#
# font_add_google("Roboto")
# font_add_google("Marcellus")
# font_add_google("Montserrat")
# font_add_google("Noto Serif Display")
# font_add_google("Bebas Neue")
# font_add_google("Phudu", db_cache = FALSE)
#
# ## Set up dataset for forest plotting ----
#
# # Read and process example data from forestploter package
#
# ## Read example data from forestploter package
# dt <- read.csv(
#   system.file("extdata", "example_data.csv", package = "forestploter")
# )
#
# ## Indent the subgroup if there is a number in the placebo column
# dt$Subgroup <- ifelse(
#   is.na(dt$Placebo), dt$Subgroup, paste0("   ", dt$Subgroup)
# )
#
# ## NA to blank
# dt$Treatment <- ifelse(is.na(dt$Treatment), "", dt$Treatment)
# dt$Placebo   <- ifelse(is.na(dt$Placebo), "", dt$Placebo)
# dt$se        <- (log(dt$hi) - log(dt$est)) / 1.96
#
# ## Add a blank column for the forest plot to display CI.
# ## Adjust the column width with space.
# dt$` ` <- paste(rep(" ", 20), collapse = " ")
#
# ## Create confidence interval column to display
# dt$`HR (95% CI)` <- ifelse(
#   is.na(dt$se), "",
#   sprintf("%.2f (%.2f to %.2f)", dt$est, dt$low, dt$hi)
# )
#
#
# ## Create forest plot
# p <- forest(dt[ , c(1:3, 20:21)],
#             est = dt$est,
#             lower = dt$low,
#             upper = dt$hi,
#             sizes = dt$se,
#             ci_column = 4,
#             ref_line = 1,
#             arrow_lab = c("Placebo Better", "Treatment Better"),
#             xlim = c(0, 4),
#             ticks_at = c(0.5, 1, 2, 3),
#             title = "This title is in Roboto plain font in Oxford blue",
#             footnote = "Footnote is in Roboto plain font\nin Oxford royal blue",
#             theme = theme_oxford_forest())
#
# testthat::expect_s3_class(p, "gtable")


## Create themes ----

testthat::expect_type(theme_oxford_forest(), "list")
testthat::expect_type(theme_heritage_forest(), "list")
testthat::expect_type(theme_contemporary_forest(), "list")
testthat::expect_type(theme_celebratory_forest(), "list")
testthat::expect_type(theme_corporate_forest(), "list")
testthat::expect_type(theme_innovative_forest(), "list")

