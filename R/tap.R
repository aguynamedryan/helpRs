#' Executes a callback function on an object before passing
#' the object along
#'
#' This is inspired by Ruby's Object#tap method which allows chaining calls like:
#' `something.tap { |o| puts o }.method`
#'
#' The idea is to use this function, or it's derivatives in a pipeline like:
#' `df %>% tap(print) %>% filter(...) %>% tap(print) %>% collect()`
#'
#' @param thing The object to pass to the callback and then return
#' @param callback The function that receives the object and does something with it
#' @return The object passed in to allow for method chaining
#' @export
tap <- function(thing, callback) {
  callback(thing)
  invisible(thing)
}
