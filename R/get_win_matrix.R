#' Win matrix calculator
#'
#' This function takes a list of a set of dice, and outputs a data frame representing
#'   the probabilities of games between the dice. The interpretation of entry (i,j)
#'   is the probability that dice i beats dice j.
#'
#' @keywords probability
#'
#' @return A single numeric decimal, representing probability of first die beating
#'   the second die.
#'
#' @examples
#' get_win_matrix(list(c(1, 2, 3, 4, 5, 6), c(1, 2, 3, 4, 5, 6)), c("dice_a", "dice_b"))
#'
#' @export
get_win_matrix <- function(dice_set, dice_ids) {
  # Check that length of dice set == dice_ids
  if (length(dice_set) != length(dice_ids)) {
    stop("lengths of dice_set and dice_ids must match!")
  }
  # Check that dice_ids is a vector
  if (!is.vector(dice_ids)) {
    stop("dice_ids must be a vector!")
  }
  # Check that nonempty vector passed in (also checks length of dice_set)
  if (length(dice_ids) == 0) {
    stop("function only sensible with nonzero lengths!")
  }
  # Check that dice_set is a list of vectors
  if (!(is.list(dice_set) & is.vector(dice_set[1]))) {
    stop("dice_set must be a list of vectors!")
  }

  # Store count of dice in set
  dice_count <- length(dice_set)

  # Create the dataframe (square), initialized to zero
  wm <- data.frame(matrix(0, nrow = dice_count, ncol = dice_count))
  # Assign dice ids to the rows and columns
  colnames(wm) <- dice_ids
  rownames(wm) <- dice_ids

  # Iterate through all dice in the set
  for (i in 1:dice_count) {
    for (j in 1:dice_count) {
      # Populate only triangular entries, because others are 0 or are 1 - entry
      if (i < j) {
        # Interpretation: prob dice i beats dice j
        wm[i,j] <- prob_win(dice_set[[i]], dice_set[[j]])
        wm[j,i] <- 1 - wm[i,j]
      }
    }
  }
  return(wm)
}
