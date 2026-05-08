# Changelog

## rSuStaIn 0.1.0

### Major Changes - Refocused as General-Purpose Wrapper

- **Removed all FXTAS-specific code** to focus package as
  general-purpose pySuStaIn wrapper
  - Removed 193 FXTAS-specific R files (data cleaning, categorization,
    analysis functions)
  - Removed FXTAS-specific examples, tests, and data processing scripts
  - Removed `data-raw/`, `dev/`, and FXTAS analysis directories
  - Package now contains only 45 core SuStaIn wrapper and utility files

### New Features

- Added
  [`run_ZscoreSustain()`](https://ucdavis.github.io/rSuStaIn/reference/run_ZscoreSustain.md)
  wrapper for continuous biomarker data
- Added
  [`run_MixtureSustain()`](https://ucdavis.github.io/rSuStaIn/reference/run_MixtureSustain.md)
  wrapper for event-based disease progression modeling
- Updated package description to reflect focus on general SuStaIn
  algorithms
- Streamlined documentation focusing on three main algorithm types

### Package Conversion (from previous commits)

- Renamed package from `fxtas` to `rSuStaIn`
- Updated DESCRIPTION with new name, description focusing on general
  SuStaIn wrapper functionality
- Updated URLs to point to ucdavis/rSuStaIn repository
- Renamed fxtas-package.R to rSuStaIn-package.R
- Updated README to focus on general pySuStaIn wrapper usage
- Added “Getting Started” vignette with examples
- Updated
  [`install_pySuStaIn()`](https://ucdavis.github.io/rSuStaIn/reference/install_pySuStaIn.md)
  to use official ucl-pond/pySuStaIn repository
- Generalized
  [`compute_prob_scores()`](https://ucdavis.github.io/rSuStaIn/reference/compute_prob_scores.md)
  with `id_var` parameter
- Fixed Codecov slug reference in workflows

### Core Wrapper Functions

The package now exports focused set of pySuStaIn wrappers: -
[`install_pySuStaIn()`](https://ucdavis.github.io/rSuStaIn/reference/install_pySuStaIn.md) -
Install pySuStaIn Python package -
[`run_OSA()`](https://ucdavis.github.io/rSuStaIn/reference/run_OSA.md) -
Run Ordinal SuStaIn Algorithm  
-
[`run_ZscoreSustain()`](https://ucdavis.github.io/rSuStaIn/reference/run_ZscoreSustain.md) -
Run Z-score SuStaIn -
[`run_MixtureSustain()`](https://ucdavis.github.io/rSuStaIn/reference/run_MixtureSustain.md) -
Run Mixture Model SuStaIn -
[`extract_results_from_pickle()`](https://ucdavis.github.io/rSuStaIn/reference/extract_results_from_pickle.md) -
Extract results from pickle files - Plus utilities for probability
computation, result formatting, and visualization
