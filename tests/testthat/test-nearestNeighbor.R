if (!requireNamespace("testthat", quietly = TRUE)) {
  stop("The testthat package is required but not installed.")
}
library(testthat)
test_that("nearestNeighbor tour starts and ends at the first city", {
  distMatrix <- generateRandomDistMatrix(5)
  result <- nearestNeighbor(distMatrix)
  expect_equal(result$tour[1], result$tour[length(result$tour)])
})

test_that("nearestNeighbor tour visits each city exactly once", {
  distMatrix <- generateRandomDistMatrix(5)
  result <- nearestNeighbor(distMatrix)
  expect_equal(length(unique(result$tour[-length(result$tour)])), nrow(distMatrix))
})

test_that("nearestNeighbor calculates a non-negative distance", {
  distMatrix <- generateRandomDistMatrix(5)
  result <- nearestNeighbor(distMatrix)
  expect_true(result$distance >= 0)
})

test_that("nearestNeighbor works for a simple 3-city case", {
  distMatrix <- matrix(c(0, 1, 2, 1, 0, 3, 2, 3, 0), nrow = 3, byrow = TRUE)
  result <- nearestNeighbor(distMatrix)
  expected_tour <- c(1, 2, 3, 1)
  expected_distance <- sum(distMatrix[cbind(expected_tour[-4], expected_tour[-1])])
  expect_equal(result$tour, expected_tour)
  expect_equal(result$distance, expected_distance)
})
