# rSuStaIn 0.1.0

## Major Changes - Refocused as General-Purpose Wrapper

* **Removed all FXTAS-specific code** to focus package as general-purpose pySuStaIn wrapper
  * Removed 193 FXTAS-specific R files (data cleaning, categorization, analysis functions)
  * Removed FXTAS-specific examples, tests, and data processing scripts
  * Removed `data-raw/`, `dev/`, and FXTAS analysis directories
  * Package now contains only 45 core SuStaIn wrapper and utility files

## New Features

* Added `run_ZscoreSustain()` wrapper for continuous biomarker data
* Added `run_MixtureSustain()` wrapper for event-based disease progression modeling
* Updated package description to reflect focus on general SuStaIn algorithms
* Streamlined documentation focusing on three main algorithm types

## Package Conversion (from previous commits)

* Renamed package from `fxtas` to `rSuStaIn`
* Updated DESCRIPTION with new name, description focusing on general SuStaIn wrapper functionality
* Updated URLs to point to ucdavis/rSuStaIn repository
* Renamed fxtas-package.R to rSuStaIn-package.R
* Updated README to focus on general pySuStaIn wrapper usage
* Added "Getting Started" vignette with examples
* Updated `install_pySuStaIn()` to use official ucl-pond/pySuStaIn repository
* Generalized `compute_prob_scores()` with `id_var` parameter
* Fixed Codecov slug reference in workflows

## Core Wrapper Functions

The package now exports focused set of pySuStaIn wrappers:
- `install_pySuStaIn()` - Install pySuStaIn Python package
- `run_OSA()` - Run Ordinal SuStaIn Algorithm  
- `run_ZscoreSustain()` - Run Z-score SuStaIn
- `run_MixtureSustain()` - Run Mixture Model SuStaIn
- `extract_results_from_pickle()` - Extract results from pickle files
- Plus utilities for probability computation, result formatting, and visualization

# fxtas 0.0.0.9000

* Added a `NEWS.md` file to track changes to the package.


## Manuscript

* Moved manuscript to `analyses/` (#69)
* Tons of polishing (#63, #64, #65)
* Added `gtsummary::bold_labels()` to `gtsummary` tables
* Added keywords
* Reduced title to under 100 characters, including spaces
* Removed numbers from headings.
* Incorporated coauthors' feedback up to 2024/11/18 draft
* Added additional line-graph comparison subfigures
for latent subtype clustering analysis
* Added more interpretation of subtype analysis results
* Removed repeated measures analysis
* Added description of findings to graphical abstract

## Analysis

* removed individual parkinsonian features from OS model (#106)
* added info about displayed statistics to rows for `compute_prob_correct()` (#56)

## Graphics

* added red reference line at 3 obs per stage in `stage_barplot()` (#91)
* added grayscale legend to PVDs (#83)
* added test for `pvd_lineplot()` (#68)
* added `biomarker_order` argument to `compact_pvd_data_prep()` 
(default behavior should be unchanged)
* added `shared_flextable_settings()` function to apply font, font size, and line spacing to all tables

## Data processing

* added tools for finding journals to submit to (#66)
* renamed `FXTAS Stage (0-5)*` to `FXTAS Stage`
* added columns to pre-processed data:
   - `Male`
   - `CGG 100-199`
   - `CGG 55-99`
* substituted ≤ instead of <= in dichotomized CANTAB variable value labels
* renamed SCID composite vars without capitalization (on Dr. Bourgeois's recommendation)
* added "label" attribute to `FX3*`
* added "Disorder" suffix to SCID composite variables, 
on Dr. Bourgeois's recommendation.
* fixed `create_any_tremor()` to handle NAs before or after `fix_factors()`.
* renamed "Any Autoimmune" to "any autoimmune disorder" and make it "Yes"/"No"
* decapitalized "MMSE Total Score" to "MMSE total score"
* decapitalized "Parkinsonian features" to "parkinsonian features"
* removed "Parkinsonian features: " prefix from:
  - "Masked faces",
  - "Increased tone",
  - "pill-rolling tremor exam",
  - "Stiff gait"
* Renamed "CGG (backfilled)" to CGG
* Renamed "ApoE (backfilled)" to ApoE
* Now using most recent ApoE value

## Package setup

* moved `analyses/` into `inst` (#120)
* updated test-coverage.yaml workflow
* updated readme to specify new location of manuscript source code 
in `analyses/`
* updated `WORDLIST`

## Linting

* configured .lintr (#74)

## Testing

- added test for `compile_biomarker_group_list()`

# fxtas 0.0.0.9000

* Added a `NEWS.md` file to track changes to the package.

