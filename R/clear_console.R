#' Clears the console when run
#'
#' Found this trick on https://stackoverflow.com/a/16084793 and it works
#' a treat!
#'
#' @return Nothing, but clears the console
#' @export
clear_console <- function() {
  cat("\014")
}
