#' Check object to see if it is NOT emptyish/blankish
#'
#' This is literally the inverse of \code{is_blank}
#'
#' @param ... An object to test
#' @return TRUE if object is NOT: NA, NULL, an empty array/list, or empty string
#' @export
is_present <- Negate(is_blank)
