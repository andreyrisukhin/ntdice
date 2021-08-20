dice_set_a <- list(c(1, 2, 3, 4, 5, 6), c(1, 2, 3, 4, 5, 6))
dice_ids_a <- c("Dice One")
dice_ids_b <- c("Dice One", "Dice Two")

test_that("lengths must match", {
  expect_error(get_win_matrix(dice_set_a, dice_ids_a))
})

