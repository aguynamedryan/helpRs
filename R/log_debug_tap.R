#' Log an object via debug
#'
#' @param thing The object to log to debug
#' @return The object passed in to allow for method chaining
#' @export
log_debug_tap <- function(thing) {
  f <- function(thing) logger::log_debug(.makeMessage(thing))
  tap(thing, f)
}
