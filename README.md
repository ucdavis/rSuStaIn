
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rSuStaIn

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/ucdavis/rSuStaIn/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ucdavis/rSuStaIn/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/ucdavis/rSuStaIn/graph/badge.svg)](https://app.codecov.io/gh/ucdavis/rSuStaIn)
<!-- badges: end -->

The `rSuStaIn` package provides an R wrapper for the
[pySuStaIn](https://github.com/ucl-pond/pySuStaIn) Python package, which
implements the Subtype and Stage Inference (SuStaIn) algorithm. SuStaIn
is an unsupervised learning algorithm that identifies disease subtypes
and stages from cross-sectional data.

## Features

This package provides R wrappers for the three main SuStaIn algorithms:

-   **Ordinal SuStaIn** (`run_OSA`): For ordinal/scored biomarker data
-   **Z-score SuStaIn** (`run_ZscoreSustain`): For continuous biomarker
    measurements
-   **Mixture Model SuStaIn** (`run_MixtureSustain`): For event-based
    disease progression modeling

## Installation

Install the R package from GitHub:

``` r
# install.packages("devtools")
devtools::install_github("ucdavis/rSuStaIn")
```

Then install the pySuStaIn Python package:

``` r
library(rSuStaIn)
install_pySuStaIn()
```

## Basic Usage

### Ordinal SuStaIn (for scored data)

``` r
library(rSuStaIn)

# For ordinal/scored biomarker data
results <- run_OSA(
  patient_data = your_data,
  biomarker_levels = biomarker_levels,
  SuStaInLabels = names(biomarker_levels),
  N_startpoints = 25,
  N_S_max = 3
)
```

### Z-score SuStaIn (for continuous data)

``` r
# For continuous biomarker measurements
results <- run_ZscoreSustain(
  data = your_biomarker_matrix,
  biomarker_labels = biomarker_names,
  N_startpoints = 25,
  N_S_max = 3
)
```

### Mixture Model SuStaIn (event-based)

``` r
# For event-based disease progression modeling
results <- run_MixtureSustain(
  data = your_biomarker_matrix,
  biomarker_labels = biomarker_names,
  N_startpoints = 25,
  N_S_max = 3
)
```

## Documentation

See the [Getting Started vignette](vignettes/getting-started.Rmd) for
detailed usage examples.

## References

Young, A. L., Vogel, J. W., Aksman, L. M., Wijeratne, P. A., Eshaghi,
A., Oxtoby, N. P., … & Alzheimer's Disease Neuroimaging Initiative.
(2021). Ordinal SuStaIn: Subtype and Stage Inference for Clinical
Scores, Visual Ratings, and Other Ordinal Data. *Frontiers in
Artificial Intelligence*, 4, 613261.
