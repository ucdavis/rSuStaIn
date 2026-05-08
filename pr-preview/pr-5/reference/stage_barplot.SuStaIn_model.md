# Plot estimated stage counts

Plot estimated stage counts

## Usage

``` r
# S3 method for class 'SuStaIn_model'
stage_barplot(object, ...)
```

## Arguments

- object:

  a `SuStaIn_model` object

- ...:

  Arguments passed on to
  [`stage_barplot.default`](https://ucdavis.github.io/rSuStaIn/reference/stage_barplot.default.md)

  `xmax`

  :   largest x-value to display

  `include_type_0`

  :   [logical](https://rdrr.io/r/base/logical.html) whether to include
      Type 0 in the plot

## Value

a [ggplot2::ggplot](https://ggplot2.tidyverse.org/reference/ggplot.html)

## Examples

``` r
output_path <-
  fs::path_package("extdata/sim_data", package = "rSuStaIn")

results <-
  extract_results_from_pickle(
    output_folder = output_path,
    use_rds = TRUE,
    n_s = 3
  )
#> Registered S3 methods overwritten by 'readr':
#>   method                    from 
#>   as.data.frame.spec_tbl_df vroom
#>   as_tibble.spec_tbl_df     vroom
#>   format.col_spec           vroom
#>   print.col_spec            vroom
#>   print.collector           vroom
#>   print.date_names          vroom
#>   print.locale              vroom
#>   str.col_spec              vroom

results |>
  stage_barplot()
```
