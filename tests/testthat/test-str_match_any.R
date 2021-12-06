library(testthat)

testthat::test_that("can compare multiple strings with multiple patterns", {
  strs <- c(
    "hi",
    "hello",
    "hey"
  )

  patterns <- c(
    ".*i$",
    "hel.*"
  )
  expect_equal(str_match_any(strs, patterns), c(TRUE, TRUE, FALSE))

  patterns <- c(
    "o"
  )
  expect_equal(str_match_any(strs, patterns), c(FALSE, TRUE, FALSE))
})
