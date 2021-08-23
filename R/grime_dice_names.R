#' Grime dice name generator
#'
#' Generates names of Dr. James Grime's set of nontransitive dice. It takes no parameters.
#'   It returns a vector of the five names of Grime dice, in length increasing order.
#'
#' @keywords generate
#'
#' @return Vectors of five strings, each representing one of the Grime dice.
#'
#' @examples
#' grime_dice_names()
#'
#' @export
grime_dice_names <- function() {
  output <- list("red", "blue", "olive", "yellow", "magenta")
  return(output)
}
