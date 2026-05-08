# Example likelihoods from SuStaIn models

A matrix of log-likelihoods from example SuStaIn models with 1-3
subtypes. Generated from simulated data using the pySuStaIn package.

## Usage

``` r
example_likelihoods
```

## Format

A numeric matrix with 100,000 rows (iterations) and 3 columns (one for
each model with 1, 2, or 3 subtypes). Each value represents the
log-likelihood of the model at that iteration.

## Source

Generated using `data-raw/example_likelihoods.R` from simulated data in
`inst/extdata/sim_data`.
