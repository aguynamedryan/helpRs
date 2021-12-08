test_that("browser_tap calls browser", {
  run_test <- function() {
    og_browser <- browser
    rlang::env_bind(globalenv(), browser = function() succeed())
    withr::defer(rlang::env_bind(globalenv(), browser = og_browser))
    browser_tap("something")
  }
  run_test()
})
