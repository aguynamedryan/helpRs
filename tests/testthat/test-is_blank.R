testthat::test_that("is_blank works with NULL", {
  testthat::expect_true(is_blank(NULL))
})

testthat::test_that("is_blank works with NA", {
  testthat::expect_true(is_blank(NA))
})

testthat::test_that("is_blank works with empty array", {
  testthat::expect_true(is_blank(c()))
})

testthat::test_that("is_blank works with empty list", {
  testthat::expect_true(is_blank(list()))
})

testthat::test_that("is_blank works with empty env", {
  testthat::expect_true(is_blank(new.env()))
})

testthat::test_that("is_blank works with empty string", {
  testthat::expect_true(is_blank(""))
})

testthat::test_that("is_blank doesn't blow up with a string", {
  testthat::expect_false(is_blank("a"))
})
