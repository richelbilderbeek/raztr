#' Get the full path of a file in the \code{inst/extdata} folder
#' @param filename name of a file
#' @return the full path of the filename, if and only if
#'   the file is present. Will stop otherwise.
#' @examples
#' library(testthat)
#'
#' expect_true(file.exists(get_raztr_path("parameters.RDa")))
#' expect_error(get_raztr_path("abs.ent"))
#' @export
get_raztr_path <- function(filename) {
  full <- system.file("extdata", filename, package = "raztr")
  if (file.exists(full)) return(full)
  sub <- system.file(
    "extdata", "razzo_project", "data", "0.2-0.15-1-0.1", "1", filename,
    package = "raztr"
  )
  if (file.exists(sub)) return(sub)
  stop(
    "'filename' must be the name of a file in 'inst/extdata'. ",
    "'filename' value: ", filename
  )
}
