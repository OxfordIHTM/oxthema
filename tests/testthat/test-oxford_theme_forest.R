# Test forestploter themes -----------------------------------------------------

## Create themes ----

testthat::expect_type(theme_oxford_forest(), "list")
testthat::expect_type(theme_heritage_forest(), "list")
testthat::expect_type(theme_contemporary_forest(), "list")
testthat::expect_type(theme_celebratory_forest(), "list")
testthat::expect_type(theme_corporate_forest(), "list")
testthat::expect_type(theme_innovative_forest(), "list")

