#' Grime dice generator
#'
#' Generates Dr. James Grime's set of nontransitive dice. It takes no parameters.
#'   It returns a list of five vectors, representing the Grime dice.
#'
#' @keywords generate
#'
#' @return List of five numeric vectors, each representing one of the Grime dice.
#'
#' @examples
#' grime_dice()
#'
#' @export
grime_dice <- function() {
  red <- c(4, 4, 4, 4, 4, 9)
  blue <- c(2, 2, 2, 7, 7, 7)
  olive <- c(0, 5, 5, 5, 5, 5)
  yellow <- c(3, 3, 3, 3, 8, 8)
  magenta <- c(1, 1, 6, 6, 6, 6)
  output <- list(red, blue, olive, yellow, magenta)
  return(output)
}
