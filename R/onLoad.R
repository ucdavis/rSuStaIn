pySuStaIn <- NULL # nolint: object_name_linter

#' @title Actions taken when `rSuStaIn` is loaded
#' @description
#' based on https://rstudio.github.io/reticulate/articles/package.html
#' #delay-loading-python-modules
#'
#' @param ... not used
#'
#' @returns [`NULL`], invisibly
.onLoad <- function(...) {
  reticulate::use_virtualenv("r-pySuStaIn", required = FALSE)

  pySuStaIn <<- # nolint: object_name_linter
    reticulate::import(
      module = "pySuStaIn",
      delay_load = TRUE
    )

  invisible(NULL)
}
