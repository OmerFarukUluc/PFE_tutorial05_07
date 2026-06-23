required_packages <- c(
  "tidyverse",
  "rmarkdown",
  "yaml",
  "cbsodataR",
  "sf"
)

missing_packages <- required_packages[
  !vapply(
    required_packages,
    requireNamespace,
    logical(1),
    quietly = TRUE
  )
]

if (length(missing_packages) > 0) {
  renv::install(missing_packages)
}

rmarkdown::render(
  input = "PFE_report.Rmd",
  output_format = "pdf_document",
  clean = TRUE
)