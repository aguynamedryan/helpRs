#' Call browser if given condition is TRUE
#'
#' I often found myself wrapping a call to \code{browser} in an if
#' statement.
#'
#' This function takes a logical expression and, if it evaluates to true,
#' calls \code{browser}.
#'
#' This is defined as a macro so that when \code{browser} is invoked, it
#' have the context of the place where \code{browser_if} was called
#'
#'
#' @param truth An epression that evaluates to a logical value
#' @return Nothing
#' @export
browser_if <- gtools::defmacro(truth, expr = {
  if (truth) {
    browser()
  }
})
