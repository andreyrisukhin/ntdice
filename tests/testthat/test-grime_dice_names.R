test_that("generates Grime dice names", {
  expect_equal(grime_dice_names(),
               list("red", "blue", "olive", "yellow", "magenta"))
})
