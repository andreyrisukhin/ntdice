#' Win probability calculator
#'
#' This function calculates the probability of one dice rolling a higher digit
#'   than a second dice. This function works for any two dice, even of different
#'   lengths. The probability calculated is the first dice beating the second.
#'
#' @keywords probability
#'
#' @return A single numeric decimal, representing probability of first die beating
#'   the second die.
#'
#' @examples
#' prob_win(c(1, 2, 3, 4, 5, 6), c(1, 2, 3, 4, 5, 6))
#'
#' @export
prob_win <- function(dice_a, dice_b) {
  # Return errors if incorrect values passed as parameters
  if (!is.numeric(dice_a)) {
    # Return error for non-numeric vector a
    stop("dice_a must be numeric!")
  }
  if (!is.numeric(dice_b)) {
    # Return error for non-numeric vector b
    stop("dice_b must be numeric!")
  }

  # Get the number of faces for each dice
  len_a <- length(dice_a)
  len_b <- length(dice_b)

  # Create the matrix to store the outcomes of each face-off pairing
  win_matrix <- matrix(0, ncol = len_a, nrow = len_b)

  # Populate matrix with outcomes
  for (i in 1:len_a) { # for each face of a
    for (j in 1:len_b) { # for each face of b
      if (dice_a[i] > dice_b[j]) { # Only a strict win results in a 1
        win_matrix[i,j] <- 1
      }
      if (dice_a[i] == dice_b[j]) { # An equality results in tie, 0.5
        win_matrix[i,j] <- 0.5
      }
      # Else, left as 0 if a loss of a to b
    }
  }
  # Probability of a win is the sum of all entries divided by count of entries
  probability <- sum(win_matrix) / (len_a * len_b)
  return(probability)
}
