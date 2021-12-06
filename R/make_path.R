#' Creates a directory and any necessary parent directories
#'
#' Just a simple wrapper around dir.create to avoid errors and having to
#' add extra arguments
#'
#' @param dir_path Path to the directory that should be created
#' @return Path to the directory created
#' @export
make_path <- function(dir_path) {
    if (!dir.exists(dir_path)) {
      dir.create(dir_path, recursive = TRUE)
    }
    return(dir_path)
  }
