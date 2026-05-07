output_path <-
  fs::path_package("extdata/sim_data", package = "rSuStaIn")

if (dir.exists(output_path)) {
  figs <- extract_figs_from_pickle(
    output_folder = output_path,
    n = 3
  )

  figs
}
