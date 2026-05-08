# Run Mixture Model SuStaIn Algorithm

Wrapper for pySuStaIn's MixtureSustain class, which implements
event-based modeling using Gaussian Mixture Models.

## Usage

``` r
run_MixtureSustain(
  data,
  biomarker_labels,
  N_startpoints = 25,
  N_S_max = 3,
  N_iterations_MCMC = 100000L,
  output_folder = "output",
  dataset_name = "mixture_data",
  use_parallel_startpoints = FALSE,
  seed = 1L,
  ...
)
```

## Arguments

- data:

  [matrix](https://rdrr.io/r/base/matrix.html) or
  [data.frame](https://rdrr.io/r/base/data.frame.html) of biomarker
  measurements

  - rows = subjects, columns = biomarkers

- biomarker_labels:

  [character](https://rdrr.io/r/base/character.html) vector of biomarker
  names

- N_startpoints:

  [integer](https://rdrr.io/r/base/integer.html) number of startpoints
  for optimization (typically 25)

- N_S_max:

  [integer](https://rdrr.io/r/base/integer.html) maximum number of
  subtypes

- N_iterations_MCMC:

  [integer](https://rdrr.io/r/base/integer.html) number of MCMC
  iterations (typically 1e5 or 1e6)

- output_folder:

  [character](https://rdrr.io/r/base/character.html) where to save
  results

- dataset_name:

  [character](https://rdrr.io/r/base/character.html) name for output
  files

- use_parallel_startpoints:

  [logical](https://rdrr.io/r/base/logical.html) whether to parallelize
  optimization

- seed:

  [integer](https://rdrr.io/r/base/integer.html) random seed for
  reproducibility

- ...:

  additional arguments passed to pySuStaIn\$MixtureSustain()

## Value

a list containing SuStaIn results

## Examples

``` r
if (FALSE) { # \dontrun{
# Simulated mixture data
set.seed(123)
n_subjects <- 100
n_biomarkers <- 5
data <- matrix(rnorm(n_subjects * n_biomarkers, mean = 50, sd = 10), 
               nrow = n_subjects, ncol = n_biomarkers)
biomarker_labels <- paste0("Biomarker_", 1:n_biomarkers)

results <- run_MixtureSustain(
  data = data,
  biomarker_labels = biomarker_labels,
  N_startpoints = 10,
  N_S_max = 3,
  N_iterations_MCMC = 1000,
  output_folder = tempdir(),
  dataset_name = "mixture_example"
)
} # }
```
