dice_set_a <- list(c(1, 2, 3, 4, 5, 6), c(1, 2, 3, 4, 5, 6))
dice_set_b <- c(1, 2, 3, 4, 5, 6)
dice_set_c <- list(c(1, 2, 3, 4, 5, 6))

dice_ids_a <- c("Dice One")
dice_ids_b <- c("Dice One", "Dice Two")
dice_ids_c <- "should be vector"
dice_ids_d <- c()

test_that("lengths of dice_set, dice_ids must match", {
  expect_error(get_win_matrix(dice_set_a, dice_ids_a))
})

test_that("dice_set should be a list of vectors", {
  expect_error(get_win_matrix(dice_set_b, dice_ids_a))
})

test_that("dice_ids should be vector", {
  expect_error(get_win_matrix(dice_set_c, dice_ids_b))
})

test_that("dice_ids should be a nonempty vector", {
  expect_error(get_win_matrix(dice_set_a, dice_ids_d))
})

test_that("dice_set should be a list of vectors", {
  expect_error(get_win_matrix(dice_set_b, dice_ids_a))
})

test_that("get_win_matrix should return a dataframe coded as a list", {
  expect_type(get_win_matrix(dice_set_a, dice_ids_b), "list")
})

# Todo: Check returned dataframe dimensions make sense
