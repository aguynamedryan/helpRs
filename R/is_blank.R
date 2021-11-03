#' Check object to see if it's emptyish/blankish
#'
#' @param thing An object to test
#' @return TRUE if object is: NA, NULL, an empty array/list, or empty string
#' @export
is_blank <- function(thing) {
  UseMethod("is_blank")
}

is_blank.environment <- function(thing) {
  length(thing) == 0
}

is_blank.default <- function(thing) {
  is.na(thing) || is.null(thing) || length(thing) == 0 || thing == ""
}
