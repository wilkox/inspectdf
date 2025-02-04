context("helpers")

# load in some example data
data("starwars", package = "dplyr")
# example data frame
zx <- data.frame(x = rnorm(100, sd = 0.00001), y = 1, z = 1:100)

test_that("format_size", {
  expect_equal(format_size(2.1245), "2.1")
  expect_equal(format_size(0.0004), "4e-04")
})

test_that("sumna", {
  expect_equal(sapply(starwars, sumna), colSums(sapply(starwars, is.na)))
})

test_that("check_variance", {
  expect_warning(check_variance(zx))
})

test_that("check_dfs", {
  x <- list(a = c(1, 2), b = c("a", "b"))
  expect_error(check_df_cols(x))
  expect_silent(check_df_cols(mtcars))
  y <- data.frame()
  expect_error(check_df_cols(y))
})
