#' Genetic Algorithm for TSP
#'
#' This function solves the Traveling Salesperson Problem using a genetic algorithm.
#'
#' @param distMatrix A distance matrix representing the distances between cities.
#' @param popSize The size of the population for the genetic algorithm. Default is 50.
#' @param maxGenerations The maximum number of generations for the genetic algorithm. Default is 100.
#' @return A list containing the best tour and the total distance of the tour.
#' @examples
#' distMatrix <- matrix(c(
#'   0, 29, 20, 21,
#'   29, 0, 15, 17,
#'   20, 15, 0, 28,
#'   21, 17, 28, 0
#' ), nrow = 4, byrow = TRUE)
#' result <- geneticAlgorithm(distMatrix)
#' print(result)
#' @export
geneticAlgorithm <- function(distMatrix, popSize = 50, maxGenerations = 100) {
  # Ensure GA package is loaded
  if (!requireNamespace("GA", quietly = TRUE)) {
    stop("The GA package is required but not installed.")
  }

  if (nrow(distMatrix) < 4) {
    stop("The genetic algorithm requires at least 4 cities.")
  }

  tspFitness <- function(tour, distMatrix) {
    tour <- c(tour, tour[1])
    total_distance <- sum(distMatrix[tour, c(tour[-1], tour[1])])
    return(-total_distance)
  }

  n <- nrow(distMatrix)
  GA <- GA::ga(type = "permutation", fitness = function(tour) tspFitness(tour, distMatrix),
               lower = 1, upper = n, popSize = popSize, maxiter = maxGenerations,
               pmutation = 0.2)
  bestTour <- GA@solution[1, ]
  bestTour <- c(bestTour, bestTour[1])
  bestDistance <- -GA@fitnessValue
  return(list(tour = bestTour, distance = bestDistance))
}

