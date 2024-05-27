# biost561fp

`biost561fp` is an R package that provides tools to solve the Traveling Salesperson Problem (TSP) using various heuristic methods.
- The URL to the GitHub (i.e., the source code) is: https://github.com/Charl3456/biost561fp
- The URL to the Pkgdown webpage is: [[https://Charl3456.github.io/biost561fp/](https://charl3456.github.io/biost561fp/)](https://charl3456.github.io/biost561fp/)
  
## Installation

You can install the development version of `biost561fp` from GitHub with:

```r
# Install devtools if you haven't already
install.packages("devtools")

# Install biost561fp from GitHub
devtools::install_github("Charl3456/biost561fp")
```


## Usage
Here is a basic example of how to use the biost561fp package to solve the TSP using different algorithms:


```r
library(biost561fp)

# Generate a random distance matrix
set.seed(123)
numCities <- 5
distMatrix <- generateRandomDistMatrix(numCities)

# Solve TSP using nearest neighbor algorithm
nn_result <- nearestNeighbor(distMatrix)
print(nn_result)

# Solve TSP using genetic algorithm
ga_result <- geneticAlgorithm(distMatrix)
print(ga_result)

# Find the best solution using all methods
best_solution <- solveTSP(distMatrix)
print(best_solution)

```
## Dependencies
The package depends on the following packages: GA and stats.

## Session info
This package was developed in the following environment


```r
> devtools::session_info()
─ Session info ─────────────────────────────────────────
 setting  value
 version  R version 4.4.0 (2024-04-24 ucrt)
 os       Windows 11 x64 (build 22631)
 system   x86_64, mingw32
 ui       RStudio
 language (EN)
 collate  English_United States.utf8
 ctype    English_United States.utf8
 tz       America/Los_Angeles
 date     2024-05-26
 rstudio  2024.04.1+748 Chocolate Cosmos (desktop)
 pandoc   3.1.11 @ C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools/ (via rmarkdown)

─ Packages ─────────────────────────────────────────────
 package     * version date (UTC) lib source
 cachem        1.1.0   2024-05-16 [1] CRAN (R 4.4.0)
 cli           3.6.2   2023-12-11 [1] CRAN (R 4.4.0)
 devtools      2.4.5   2022-10-11 [1] CRAN (R 4.4.0)
 digest        0.6.35  2024-03-11 [1] CRAN (R 4.4.0)
 ellipsis      0.3.2   2021-04-29 [1] CRAN (R 4.4.0)
 evaluate      0.23    2023-11-01 [1] CRAN (R 4.4.0)
 fastmap       1.2.0   2024-05-15 [1] CRAN (R 4.4.0)
 fs            1.6.4   2024-04-25 [1] CRAN (R 4.4.0)
 glue          1.7.0   2024-01-09 [1] CRAN (R 4.4.0)
 htmltools     0.5.8.1 2024-04-04 [1] CRAN (R 4.4.0)
 htmlwidgets   1.6.4   2023-12-06 [1] CRAN (R 4.4.0)
 httpuv        1.6.15  2024-03-26 [1] CRAN (R 4.4.0)
 knitr         1.46    2024-04-06 [1] CRAN (R 4.4.0)
 later         1.3.2   2023-12-06 [1] CRAN (R 4.4.0)
 lifecycle     1.0.4   2023-11-07 [1] CRAN (R 4.4.0)
 magrittr      2.0.3   2022-03-30 [1] CRAN (R 4.4.0)
 memoise       2.0.1   2021-11-26 [1] CRAN (R 4.4.0)
 mime          0.12    2021-09-28 [1] CRAN (R 4.4.0)
 miniUI        0.1.1.1 2018-05-18 [1] CRAN (R 4.4.0)
 pkgbuild      1.4.4   2024-03-17 [1] CRAN (R 4.4.0)
 pkgload       1.3.4   2024-01-16 [1] CRAN (R 4.4.0)
 profvis       0.3.8   2023-05-02 [1] CRAN (R 4.4.0)
 promises      1.3.0   2024-04-05 [1] CRAN (R 4.4.0)
 purrr         1.0.2   2023-08-10 [1] CRAN (R 4.4.0)
 R6            2.5.1   2021-08-19 [1] CRAN (R 4.4.0)
 Rcpp          1.0.12  2024-01-09 [1] CRAN (R 4.4.0)
 remotes       2.5.0   2024-03-17 [1] CRAN (R 4.4.0)
 rlang         1.1.3   2024-01-10 [1] CRAN (R 4.4.0)
 rmarkdown     2.27    2024-05-17 [1] CRAN (R 4.4.0)
 rstudioapi    0.16.0  2024-03-24 [1] CRAN (R 4.4.0)
 sessioninfo   1.2.2   2021-12-06 [1] CRAN (R 4.4.0)
 shiny         1.8.1.1 2024-04-02 [1] CRAN (R 4.4.0)
 stringi       1.8.4   2024-05-06 [1] CRAN (R 4.4.0)
 stringr       1.5.1   2023-11-14 [1] CRAN (R 4.4.0)
 urlchecker    1.0.1   2021-11-30 [1] CRAN (R 4.4.0)
 usethis       2.2.3   2024-02-19 [1] CRAN (R 4.4.0)
 vctrs         0.6.5   2023-12-01 [1] CRAN (R 4.4.0)
 xfun          0.44    2024-05-15 [1] CRAN (R 4.4.0)
 xtable        1.8-4   2019-04-21 [1] CRAN (R 4.4.0)

 [1] C:/Users/yunji/AppData/Local/R/win-library/4.4
 [2] C:/Program Files/R/R-4.4.0/library

────────────────────────────────────────────────────────

```
