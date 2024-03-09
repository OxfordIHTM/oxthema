# Tests for functions to create palette ----------------------------------------

xx <- create_palette_sequential(5, "blues")

testthat::expect_s3_class(xx, class = "palette")
testthat::expect_equal(length(xx), 5)

testthat::expect_warning(create_palette_sequential(2, "blues"))
testthat::expect_warning(create_palette_sequential(10, "blues"))
testthat::expect_error(create_palette_sequential(5, "brbg"))


xx <- create_palette_divergent(5, "brbg")

testthat::expect_s3_class(xx, class = "palette")
testthat::expect_equal(length(xx), 5)

testthat::expect_warning(create_palette_divergent(2, "brbg"))
testthat::expect_warning(create_palette_divergent(12, "brbg"))
testthat::expect_error(create_palette_divergent(5, "blues"))
