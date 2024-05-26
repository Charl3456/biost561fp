library(testthat)
library(tspSolver)

test_that("generateRandomDistMatrix creates a matrix of the correct size", {
  numCities <- 5
  distMatrix <- generateRandomDistMatrix(numCities)
  expect_equal(dim(distMatrix), c(numCities, numCities))
})

test_that("generateRandomDistMatrix creates a symmetric matrix", {
  numCities <- 5
  distMatrix <- generateRandomDistMatrix(numCities)
  expect_equal(distMatrix, t(distMatrix))
})

test_that("generateRandomDistMatrix has zero diagonal", {
  numCities <- 5
  distMatrix <- generateRandomDistMatrix(numCities)
  expect_equal(diag(distMatrix), rep(0, numCities))
})

test_that("generateRandomDistMatrix generates positive distances", {
  numCities <- 5
  distMatrix <- generateRandomDistMatrix(numCities)
  expect_true(all(distMatrix[upper.tri(distMatrix)] > 0))
})

test_that("generateRandomDistMatrix respects maxDistance parameter", {
  numCities <- 5
  maxDistance <- 50
  distMatrix <- generateRandomDistMatrix(numCities, maxDistance)
  expect_true(all(distMatrix[upper.tri(distMatrix)] <= maxDistance))
})
