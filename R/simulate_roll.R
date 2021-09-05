#' Dice simulator
#'
#' Simulates results of n trials between two dice. It takes the number of trials,
#'   and the two dice to simulate trials for.
#'
#' @param dice_a The first dice, which we calculate the probability of winning
#'   against \code{dice_b}.
#' @param dice_b The second dice, which we use to calculate the probability that
#'   \code{dice_a} beats.
#' @param n An integer representing the number of simulated trials.
#'
#' @keywords simulate
#'
#' @return A decimal representing percentage of the \code{n} rolls \code{dice_a}
#'   won.
#'
#' @examples
#' simulate_roll(c(1,2,3), c(1,2,3), 5)
#'
#' @export
simulate_roll <- function(dice_a, dice_b, n) {
  # Return errors if incorrect values passed as parameters
  if (!is.numeric(dice_a)) {
    # Return error for non-numeric vector a
    stop("dice_a must be numeric!")
  }
  if (!is.numeric(dice_b)) {
    # Return error for non-numeric vector b
    stop("dice_b must be numeric!")
  }
  # Keep track of a wins
  wins <- 0
  for (i in 1:n) {
    # Uniformly choose a dice face for each
    roll_a <- sample(1:length(dice_a), size = 1)
    roll_b <- sample(1:length(dice_b), size = 1)
    # Get the face values
    face_a <- dice_a[roll_a]
    face_b <- dice_b[roll_b]
    # Compare the face values
    if (face_a > face_b) {
      # If dice a beat dice b, increment wins
      wins <- wins + 1
    }
  }
  output <- wins / n
  return(output)
}
