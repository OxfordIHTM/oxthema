# Tests for get_colours functions ----------------------------------------------

## Test get colours function ----
testthat::expect_equal(get_oxford_colours() |> length(), nrow(oxford_colours))
testthat::expect_equal(get_oxford_colour() |> length(), nrow(oxford_colours))
testthat::expect_named(get_oxford_colour(named = TRUE))
testthat::expect_named(get_oxford_colour(pattern = "Blue", named = TRUE))
testthat::expect_named(get_oxford_colour(pattern = "Blue", named = TRUE))
testthat::expect_type(get_oxford_colours(pattern = "Blue"), "character")
testthat::expect_type(get_oxford_colours(pattern = "Blue", named = TRUE), "character")
