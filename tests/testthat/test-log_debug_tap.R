test_that("log_debug_tap calls works with vectors", {
  og_threshold <- logger::log_threshold()
  logger::log_threshold(logger::DEBUG)
  withr::defer(logger::log_threshold(og_threshold))
  log_debug_tap(list("hey", c(1,2)))
  succeed()
})
