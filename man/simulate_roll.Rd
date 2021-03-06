% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate_roll.R
\name{simulate_roll}
\alias{simulate_roll}
\title{Dice simulator}
\usage{
simulate_roll(dice_a, dice_b, n)
}
\arguments{
\item{dice_a}{The first dice, which we calculate the probability of winning
against \code{dice_b}.}

\item{dice_b}{The second dice, which we use to calculate the probability that
\code{dice_a} beats.}

\item{n}{An integer representing the number of simulated trials.}
}
\value{
A decimal representing percentage of the \code{n} rolls \code{dice_a}
won.
}
\description{
Simulates results of n trials between two dice. It takes the number of trials,
and the two dice to simulate trials for.
}
\examples{
simulate_roll(c(1,2,3), c(1,2,3), 5)

}
\keyword{simulate}
