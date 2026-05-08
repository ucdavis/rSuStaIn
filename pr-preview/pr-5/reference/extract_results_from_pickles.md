# Extract results from multiple pickle files

Vectorized version of
[`extract_results_from_pickle()`](https://ucdavis.github.io/rSuStaIn/reference/extract_results_from_pickle.md)

## Usage

``` r
extract_results_from_pickles(
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

  vector of numbers of latent subgroups

- dataset_name:

  root name of dataset

- output_folder:

  where to find the dataset

- rda_filename:

  name of rda file containing environment used to run analyses

- basename:

  base of pickle file name (without `.pickle` suffix)

- picklename:

  vector of pickle file names

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

a list of results, one for each pickle file
