# biost561fp

`biost561fp` is an R package that provides tools to solve the Traveling Salesperson Problem (TSP) using various heuristic methods.

## Installation

You can install the development version of `biost561fp` from GitHub with:

```r
# Install devtools if you haven't already
install.packages("devtools")

# Install biost561fp from GitHub
devtools::install_github("Charl3456/biost561fp")
```
##Usage
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
##Dependencies
The package depends on the following packages: GA and stats.

##Session info
This package was developed in the following environment


```r
devtools::session_info()

```
