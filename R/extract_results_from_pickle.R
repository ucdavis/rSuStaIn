#' Extract results from pickle file
#'
#' @param n_s
#' number of latent subgroups; helps construct `picklename`
#' @param dataset_name root name of dataset
#' @param output_folder where to find the dataset
#' @param picklename the name of the pickle file to open
#' @param rda_filename
#' name of rda file containing environment used to run analyses
#' @param format_results
#' whether to format results before returning
#' @param verbose whether to print messages
#' @param basename base of pickle file name (without `.pickle` suffix)
#' @param use_rds [logical] whether to use previously cached results
#' @param save_rds a [logical] indicating whether to save new cached results
#' @param subtype_order an [integer] vector of length `n_s`,
#' indicating how to order the subtypes
#' @param ... additional arguments (currently unused)
#' @returns a list containing the extracted results
#' @export
#' @examples
#' \dontrun{
#' output_path <-
#'   fs::path_package("extdata/sim_data", package = "rSuStaIn")
#' results <- extract_results_from_pickle(
#'   n = 3,
#'   output_folder = output_path, use_rds = FALSE
#' )
#' }
extract_results_from_pickle <- function(
    n_s = 1,
    dataset_name = "sample_data",
    output_folder = "output",
    rda_filename = "data.RData",
    basename = paste0(dataset_name, "_subtype", n_s - 1),
    picklename = paste0(basename, ".pickle"),
    format_results = FALSE,
    subtype_order = seq_len(n_s),
    use_rds = TRUE,
    save_rds = FALSE,
    verbose = FALSE,
    ...) {
  rds_path <- build_rds_path(
    dataset_name = basename,
    output_folder = output_folder
  )

  if (use_rds && file.exists(rds_path)) {
    if (verbose) {
      cli::cli_inform(
        c(
          "i" = "loading {basename} results from RDS file:",
          rds_path
        )
      )
    }
    results <- readr::read_rds(rds_path)
  } else {
    if (verbose) {
      cli::cli_inform(
        c(
          "i" = "loading {basename} results from pickle file:",
          picklename
        )
      )
    }

    results <-
      fs::path(output_folder, "pickle_files", picklename) |>
      py_load_object(convert = TRUE) |>
      force()

    if (save_rds) {
      results |> saveRDS(file = rds_path)
    }
  }

  return(results)
}

#' Extract results from multiple pickle files
#'
#' Vectorized version of [extract_results_from_pickle()]
#'
#' @inheritParams extract_results_from_pickle
#' @param n_s vector of numbers of latent subgroups
#' @param picklename vector of pickle file names
#' @returns a list of results, one for each pickle file
#' @export
#'
extract_results_from_pickles <-
  extract_results_from_pickle |>
  Vectorize(vectorize.args = c("n_s", "picklename"), SIMPLIFY = FALSE)
