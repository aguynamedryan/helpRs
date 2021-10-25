#' Log an object via debug
#'
#' @param thing The object to log to debug
#' @return The object passed in to allow for method chaining
#' @export
ldtap <- function(thing) {
  f <- logger::log_debug
  tap(thing, f)
}
