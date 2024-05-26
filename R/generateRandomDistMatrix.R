#' Generate Random Distance Matrix
#'
#' This function generates a random symmetric distance matrix for the Traveling Salesperson Problem.
#'
#' @param numCities The number of cities.
#' @param maxDistance The maximum distance between cities. Default is 100.
#' @return A symmetric matrix of distances between cities.
#' @examples
#' set.seed(123)
#' distMatrix <- generateRandomDistMatrix(5)
#' print(distMatrix)
#' @export
generateRandomDistMatrix <- function(numCities, maxDistance = 100) {
  distMatrix <- matrix(stats::runif(numCities * numCities, min = 1, max = maxDistance), nrow = numCities)
  distMatrix[lower.tri(distMatrix)] <- t(distMatrix)[lower.tri(distMatrix)]
  diag(distMatrix) <- 0
  return(distMatrix)
}
