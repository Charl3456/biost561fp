library(testthat)
library(tspSolver)

test_that("geneticAlgorithm returns a list with tour and distance", {
  distMatrix <- generateRandomDistMatrix(5)
  result <- geneticAlgorithm(distMatrix)
  expect_true(is.list(result))
  expect_true("tour" %in% names(result))
  expect_true("distance" %in% names(result))
})

test_that("geneticAlgorithm tour starts and ends at the first city", {
  distMatrix <- generateRandomDistMatrix(5)
  result <- geneticAlgorithm(distMatrix)
  expect_equal(result$tour[1], result$tour[length(result$tour)])
})

test_that("geneticAlgorithm tour visits each city exactly once", {
  distMatrix <- generateRandomDistMatrix(5)
  result <- geneticAlgorithm(distMatrix)
  expect_equal(length(unique(result$tour[-length(result$tour)])), nrow(distMatrix))
})

test_that("geneticAlgorithm calculates a non-negative distance", {
  distMatrix <- generateRandomDistMatrix(5)
  result <- geneticAlgorithm(distMatrix)
  expect_true(result$distance >= 0)
})

test_that("geneticAlgorithm works for a simple 3-city case", {
  distMatrix <- matrix(c(0, 1, 2, 1, 0, 3, 2, 3, 0), nrow = 3, byrow = TRUE)
  result <- geneticAlgorithm(distMatrix)
  expect_equal(result$tour[length(result$tour)], result$tour[1])
})
