#' @title Run Mixture Model SuStaIn Algorithm
#'
#' @description
#' Wrapper for pySuStaIn's MixtureSustain class, which implements event-based 
#' modeling using Gaussian Mixture Models.
#'
#' @param data [matrix] or [data.frame] of biomarker measurements
#'   * rows = subjects, columns = biomarkers
#' @param biomarker_labels [character] vector of biomarker names
#' @param N_startpoints [integer] number of startpoints for optimization (typically 25)
#' @param N_S_max [integer] maximum number of subtypes
#' @param N_iterations_MCMC [integer] number of MCMC iterations (typically 1e5 or 1e6)
#' @param output_folder [character] where to save results
#' @param dataset_name [character] name for output files
#' @param use_parallel_startpoints [logical] whether to parallelize optimization
#' @param seed [integer] random seed for reproducibility
#' @param ... additional arguments passed to pySuStaIn$MixtureSustain()
#'
#' @returns a list containing SuStaIn results
#' @export
#'
#' @examples
#' \dontrun{
#' # Simulated mixture data
#' set.seed(123)
#' n_subjects <- 100
#' n_biomarkers <- 5
#' data <- matrix(rnorm(n_subjects * n_biomarkers, mean = 50, sd = 10), 
#'                nrow = n_subjects, ncol = n_biomarkers)
#' biomarker_labels <- paste0("Biomarker_", 1:n_biomarkers)
#' 
#' results <- run_MixtureSustain(
#'   data = data,
#'   biomarker_labels = biomarker_labels,
#'   N_startpoints = 10,
#'   N_S_max = 3,
#'   N_iterations_MCMC = 1000,
#'   output_folder = tempdir(),
#'   dataset_name = "mixture_example"
#' )
#' }
run_MixtureSustain <- function(
    data,
    biomarker_labels,
    N_startpoints = 25,
    N_S_max = 3,
    N_iterations_MCMC = 1e5L,
    output_folder = "output",
    dataset_name = "mixture_data",
    use_parallel_startpoints = FALSE,
    seed = 1L,
    ...) {
  
  # Convert data to matrix if needed
  if (is.data.frame(data)) {
    data <- as.matrix(data)
  }
  
  # Create MixtureSustain object
  sustain_input <- pySuStaIn$MixtureSustain(
    data = data,
    Z_vals = NULL,  # Will be computed automatically
    Z_max = NULL,   # Will be computed automatically
    biomarker_labels = biomarker_labels,
    N_startpoints = as.integer(N_startpoints),
    N_S_max = as.integer(N_S_max),
    N_iterations_MCMC = as.integer(N_iterations_MCMC),
    output_folder = output_folder,
    dataset_name = dataset_name,
    use_parallel_startpoints = use_parallel_startpoints,
    seed = as.integer(seed),
    ...
  )
  
  # Run the algorithm
  sustain_output <- sustain_input$run_sustain_algorithm()
  
  # Format output
  names(sustain_output) <- c(
    "samples_sequence",
    "samples_f",
    "ml_subtype",
    "prob_ml_subtype",
    "ml_stage",
    "prob_ml_stage",
    "prob_subtype_stage"
  )
  
  sustain_output <- sustain_output |> add_class("SuStaIn_output")
  
  return(sustain_output)
}
