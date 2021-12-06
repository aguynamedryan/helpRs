#' Check object to see if it's emptyish/blankish
#'
#' @param thing An object to test
#' @return TRUE if object is: NA, NULL, an empty array/list, or empty string
#' @export
is_blank <- function(thing) {
  if (class(thing) == "environment") {
    return(length(thing) == 0)
  } else {
    all(is.na(thing)) || all(is.null(thing)) || all(length(thing) == 0) || all(thing == "")
  }
}
