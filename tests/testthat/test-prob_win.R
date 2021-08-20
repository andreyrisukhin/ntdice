test_a <- c(1, 2, 3)
test_b <- c(0, 0, 0)

test_that("incorrect dice a errors", {
  expect_error(prob_win(dice_a = "a", dice_b = test_b))
})

test_that("incorrect dice b errors", {
  expect_error(prob_win(dice_a = test_a, dice_b = "b"))
})
