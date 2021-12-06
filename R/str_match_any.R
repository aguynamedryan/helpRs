#' Compare strings against one or more regex patterns and return TRUE
#' for each string that matches at least one pattern
#'
#' @param strings Strings to match against the patterns
#' @param patterns Regexes to match against each string
#' @return logical representing if a string matched at least one pattern
#' @export

str_match_any <- function(strings, patterns) {
  pattern <- paste0("(", patterns, ")", collapse = "|")
  result <- stringr::str_detect(strings, pattern)
  logger::log_debug("Any match using ", pattern)
  logger::log_debug("Found ", paste0(strings[result], collapse = ", "))
  result
}
