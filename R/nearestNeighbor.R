#' Nearest Neighbor TSP Algorithm
#'
#' This function solves the Traveling Salesperson Problem using the nearest neighbor heuristic.
#'
#' @param distMatrix A distance matrix representing the distances between cities.
#' @return A list containing the tour and the total distance of the tour.
#' @examples
#' distMatrix <- matrix(c(
#'   0, 29, 20, 21,
#'   29, 0, 15, 17,
#'   20, 15, 0, 28,
#'   21, 17, 28, 0
#' ), nrow = 4, byrow = TRUE)
#' result <- nearestNeighbor(distMatrix)
#' print(result)
#' @export
nearestNeighbor <- function(distMatrix) {
  n <- nrow(distMatrix)
  visited <- rep(FALSE, n)
  tour <- numeric(n + 1)
  tour[1] <- 1
  visited[1] <- TRUE

  for (i in 2:n) {
    last <- tour[i - 1]
    next_city <- which.min(ifelse(visited, Inf, distMatrix[last, ]))
    tour[i] <- next_city
    visited[next_city] <- TRUE
  }
  tour[n + 1] <- tour[1]
  return(list(tour = tour, distance = sum(distMatrix[tour, c(tour[-1], tour[1])])))
}
