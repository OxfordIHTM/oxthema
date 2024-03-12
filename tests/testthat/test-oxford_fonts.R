# Check oxford_fonts function --------------------------------------------------

testthat::expect_vector(check_oxford_fonts(), size = 2)
testthat::expect_message(check_oxford_fonts())
