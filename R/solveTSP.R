#' Solve TSP Using Multiple Methods
#'
#' This function solves the Traveling Salesperson Problem using multiple heuristic methods and returns the best solution found.
#'
#' @param distMatrix A distance matrix representing the distances between cities.
#' @return A list containing the best tour and the total distance of the best tour found by the algorithms.
#' @examples
#' distMatrix <- matrix(c(
#'   0, 29, 20, 21,
#'   29, 0, 15, 17,
#'   20, 15, 0, 28,
#'   21, 17, 28, 0
#' ), nrow = 4, byrow = TRUE)
#' result <- solveTSP(distMatrix)
#' print(result)
#' @export
solveTSP <- function(distMatrix) {
  nn_result <- nearestNeighbor(distMatrix)
  ga_result <- geneticAlgorithm(distMatrix)

  if (nn_result$distance < ga_result$distance) {
    return(nn_result)
  } else {
    return(ga_result)
  }
}
