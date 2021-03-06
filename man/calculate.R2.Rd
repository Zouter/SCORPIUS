% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/outliers.R
\name{calculate.R2}
\alias{calculate.R2}
\title{Unsupervised feature importance}
\usage{
calculate.R2(dist, x, k = ceiling(nrow(x)/10))
}
\arguments{
\item{dist}{A numeric matrix, data frame or "\code{dist}" object.}

\item{x}{A numeric matrix or data frame with \emph{M} rows (one per sample) and \emph{P} columns (one per feature).}

\item{k}{The maximum number of nearest neighbours to search.}
}
\value{
R2 values of how well KNN predictions of \code{x} match the original values in \code{x}.
}
\description{
Calculates an unsupervised feature importance for each of the columns in \code{x}.
}
\examples{
dataset <- generate.dataset(type="poly", num.genes=500, num.samples=200, num.groups=4)
dist <- correlation.distance(dataset$expression)
R2 <- calculate.R2(dist, dataset$expression)
plot(density(R2))
}

