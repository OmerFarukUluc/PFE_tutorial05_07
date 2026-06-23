# Housing Affordability in the Netherlands

This repository contains the code and report for a study of housing affordability in the Netherlands between 2011 and 2024.

## Research question

How did housing affordability in the Netherlands develop between 2011 and 2024, and how did affordability differ between municipalities in 2024?

## Data sources

The project uses two public datasets from CBS StatLine:

* **83625NED:** Average selling prices of existing owner-occupied homes by region.
* **86161NED:** Disposable income of households by region.

The datasets are downloaded directly from CBS StatLine using the `cbsodataR` package. Therefore, an internet connection is required when the analysis is run.

## Required software

The analysis was created in R and RStudio.

The following R packages are required:

* `tidyverse`
* `rmarkdown`
* `cbsodataR`
* `sf`

A LaTeX installation is also required to create the PDF report. TinyTeX can be installed in R with:

```r
install.packages("tinytex")
tinytex::install_tinytex()
```

## Reproducing the analysis

1. Clone or download this GitHub repository.
2. Open the R project in RStudio.
3. Make sure that an internet connection is available.
4. Run the `run_all.R` script.

The script installs missing packages and renders the R Markdown report:

```r
source("run_all.R")
```

Alternatively, open `Template_Assignment.Rmd` in RStudio and select **Knit to PDF**.

## Project files

* `Template_Assignment.Rmd`: complete analysis and report.
* `run_all.R`: script that reproduces the report.
* `README.md`: explanation of the project and reproduction instructions.
* `.Rproj`: RStudio project file.

## Reproducibility

The datasets are not manually modified or synthetically generated. They are retrieved directly from CBS StatLine using their official table IDs. All cleaning, variable creation and visualisation steps are documented in the R Markdown file.

The analysis describes associations and observed patterns. It does not establish causal relationships.
