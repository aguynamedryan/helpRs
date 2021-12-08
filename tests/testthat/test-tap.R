testthat::test_that("tap works", {
  # The result from the callback function should be ignored.
  # The goal is for `tap` to return exactly what it was passed
  vars <- tap(c(1, 2), function(thing) { sum(thing) })
  expect_equal(c(1,2), vars)
})
