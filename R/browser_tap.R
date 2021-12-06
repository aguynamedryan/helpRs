#' Call \code{browser} with \code{thing} set to the \code{tap}'d object so
#' it can be inspected
#'
#' @param thing The object to inspect during a call to \code{browser}
#' @return The object passed in to allow for method chaining
#' @export
browser_tap <- function(thing) {
  tap(thing, function(thing) { browser() })
}
