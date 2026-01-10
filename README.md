
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rSuStaIn

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/ucdavis/rSuStaIn/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ucdavis/rSuStaIn/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/ucdavis/rSuStaIn/graph/badge.svg)](https://app.codecov.io/gh/ucdavis/rSuStaIn)
<!-- badges: end -->

The goal of `rSuStaIn` is to provide an R wrapper for the
[pySuStaIn](https://github.com/ucl-pond/pySuStaIn) Python package, which
implements the Subtype and Stage Inference (SuStaIn) algorithm (Young et
al. (2021)). SuStaIn is an unsupervised learning algorithm that
identifies disease subtypes and stages from cross-sectional data.

This package includes:

- Wrapper functions for installing and running pySuStaIn from R
- Utilities for working with SuStaIn results
- FXTAS (fragile X-associated tremor/ataxia syndrome) specific analysis
  functions

## Installation

You can install the development version of rSuStaIn from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ucdavis/rSuStaIn")
```

## Installing pySuStaIn

After installing the R package, you need to install the pySuStaIn Python
package:

``` r
library(rSuStaIn)
install_pySuStaIn()
```

## Basic Usage

``` r
library(rSuStaIn)

# Run Ordinal SuStaIn Algorithm
results <- run_OSA(
  patient_data = your_data,
  prob_correct = your_prob_correct,
  SuStaInLabels = biomarker_names,
  N_startpoints = 25,
  N_S_max = 3
)
```

## FXTAS Analysis

This package also includes analysis functions specific to fragile
X-associated tremor/ataxia syndrome (FXTAS), as described in Morrison et
al (not yet published), "Progression of fragile X-associated
tremor/ataxia syndrome revealed by subtype and stage inference".

The FXTAS manuscript is implemented in the file `ordinal-sustain.qmd` in
the `analyses` subfolder.

# References

<div id="refs" class="references csl-bib-body hanging-indent"
entry-spacing="0">

<div id="ref-young2021ordinal" class="csl-entry">

Young, Alexandra L, Jacob W Vogel, Leon M Aksman, Peter A Wijeratne,
Arman Eshaghi, Neil P Oxtoby, Steven CR Williams, Daniel C Alexander,
and Alzheimer's Disease Neuroimaging Initiative. 2021. "Ordinal SuStaIn:
Subtype and Stage Inference for Clinical Scores, Visual Ratings, and
Other Ordinal Data." *Frontiers in Artificial Intelligence* 4: 613261.
<https://doi.org/10.3389/frai.2021.613261>.

</div>

</div>
