testthat::test_that("is_present works with NULL", {
  testthat::expect_false(is_present(NULL))
})

testthat::test_that("is_present works with NA", {
  testthat::expect_false(is_present(NA))
})

testthat::test_that("is_present works with empty array", {
  testthat::expect_false(is_present(c()))
})

testthat::test_that("is_present works with empty list", {
  testthat::expect_false(is_present(list()))
})

testthat::test_that("is_present works with empty env", {
  testthat::expect_false(is_present(new.env()))
})

testthat::test_that("is_present works with empty string", {
  testthat::expect_false(is_present(""))
})

testthat::test_that("is_present doesn't blow up with a string", {
  testthat::expect_true(is_present("a"))
})
