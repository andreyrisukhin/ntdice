
# ntdice

<!-- badges: start -->
[![R-CMD-check](https://github.com/andreyrisukhin/ntdice/workflows/R-CMD-check/badge.svg)](https://github.com/andreyrisukhin/ntdice/actions)
[![codecov](https://codecov.io/gh/andreyrisukhin/ntdice/branch/master/graph/badge.svg?token=A8SJV4ZEJW)](https://codecov.io/gh/andreyrisukhin/ntdice)
<!-- badges: end -->

The goal of ntdice is to simulate, visualize, and generate sets of non-transitive dice. 

## Grime Dice

One impressive set of non-transitive dice was discovered by Dr. James Grime. This set has several cycles:
- Alphabetical: blue, magenta, olive, red, yellow
- Length (increasing): red, blue, olive, yellow, magenta
- Reverse Length (decreasing): magenta, yellow, olive, blue, red

Each of the dice in this set has six faces.

## Installation

You can install the released version of ntdice from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("ntdice")
```
To view vignettes, run the following code:

``` r
devtools::install_github("andreyrisukhin/ntdice", build_vignette = TRUE, build_opts = c())
library(ntdice)
# Use this to view the vignette in the ntdice HTML help
help(package = "ntdice", help_type = "html")
# Use this to view the vignette as an isolated HTML file
utils::browseVignettes(package = "ntdice")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ntdice)
## basic example code
```

