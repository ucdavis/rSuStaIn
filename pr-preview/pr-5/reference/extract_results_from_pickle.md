# Extract results from pickle file

Extract results from pickle file

## Usage

``` r
extract_results_from_pickle(
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
  ...
)
```

## Arguments

- n_s:

  number of latent subgroups; helps construct `picklename`

- dataset_name:

  root name of dataset

- output_folder:

  where to find the dataset

- rda_filename:

  name of rda file containing environment used to run analyses

- basename:

  base of pickle file name (without `.pickle` suffix)

- picklename:

  the name of the pickle file to open

- format_results:

  whether to format results before returning

- subtype_order:

  an [integer](https://rdrr.io/r/base/integer.html) vector of length
  `n_s`, indicating how to order the subtypes

- use_rds:

  [logical](https://rdrr.io/r/base/logical.html) whether to use
  previously cached results

- save_rds:

  a [logical](https://rdrr.io/r/base/logical.html) indicating whether to
  save new cached results

- verbose:

  whether to print messages

- ...:

  additional arguments (currently unused)

## Value

a list containing the extracted results

## Examples

``` r
if (FALSE) { # \dontrun{
output_path <-
  fs::path_package("extdata/sim_data", package = "rSuStaIn")
results <- extract_results_from_pickle(
  n = 3,
  output_folder = output_path, use_rds = FALSE
)
} # }
```
