dice_set_a <- list(c(1, 2, 3, 4, 5, 6), c(1, 2, 3, 4, 5, 6))
dice_set_b <- "abcde"
n_a <- 5

test_that("dice_a should be a numeric vector", {
  expect_error(simulate_roll(dice_set_b, dice_set_a[[2]], n_a), "numeric")
})

test_that("dice_b should be a numeric vector", {
  expect_error(simulate_roll(dice_set_a[[1]], dice_set_b, n_a), "numeric")
})

test_that("simulate_roll should return a double", {
  expect_type(simulate_roll(dice_set_a[[1]], dice_set_a[[2]], n_a), "double")
})
