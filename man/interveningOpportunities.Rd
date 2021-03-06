% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/movement.R
\name{interveningOpportunities}
\alias{interveningOpportunities}
\title{Intervening opportunities}
\usage{
interveningOpportunities(theta = 0.001, L = 1e-05)
}
\arguments{
\item{theta}{Model parameter with default value and the limits theta = [0, Inf].}

\item{L}{Model parameter with default value and the limits L = [0, Inf].}
}
\value{
A flux model object with the \code{intervening opportunities flux} function and a set of starting
parameters.
}
\description{
The intervening-opportunities model (IO) assumes that the number of persons going a given distance
is directly proportional to the number of opportunities at that distance and inversely proportional
to the number of intervening opportunities (Stouffer 1940):
\deqn{T_{ij} = \frac{N_j}{d_{ij} + N_i} }{ T_ij = N_j / (d_ij + N_j) }
Where \eqn{N_i} is the population in location \eqn{i}, and \eqn{(d_{ij} + N_j)}{(d_ij + N_j)} is
the population in all locations between \eqn{ij}. From there we apply a stochastic approach to
derive a probability that a trip will terminate in location \eqn{i} is equal to the probability
that \eqn{i} contains an acceptable destination and that the acceptable destination is closer to
the origin \eqn{i} has not been found. Following Simini et al. 2012 the connectivity between \eqn{i}
and \eqn{j} becomes:
\deqn{T_{ij} =  e^{ -\lambda (s_{ij} + N_i)^{\alpha}} - e^{ -\lambda (s_{ij} + N_i + N_j)^{\alpha}} }{%
T_ij = exp(-\lambda * (s_ij + N_i)^\alpha ) - exp(-\lambda * (s_ij + N_i + N_j)^\alpha )
}
Where \eqn{e^(-\lambda)}{exp(-\lambda)} is the probability that a single opportunity is not
sufficiently attractive as destination, and \eqn{\lambda} and \eqn{\alpha} are fitting parameters.
}
\note{
Limits \eqn{0} and \eqn{Inf} will be changed internally to the numerically safe approximations
\eqn{0 -> sqrt(.Machine$double.eps)} and \eqn{Inf -> sqrt(.Machine$double.xmax)}, respectively.
}
\references{
Simini, F., Gonzalez, M. C., Maritan, A. & Barabasi (2012), A.-L. A universal model for mobility and migration
patterns. \emph{Nature}, 484, 96-100.
Stouffer S. A. (1940). Intervening opportunities: a theory relating mobility and distance. \emph{Am.
Sociol. Rev.} 5, 845-867.
}
\seealso{
\code{\link{movement}}, \code{\link{originalRadiation}}, \code{\link{radiationWithSelection}},
\code{\link{uniformSelection}}, \code{\link{gravity}}, \code{\link{gravityWithDistance}}
}

