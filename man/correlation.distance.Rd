% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distance_functions.R
\name{correlation.distance}
\alias{correlation.distance}
\title{Correlation distance}
\usage{
correlation.distance(x, y = NULL, method = c("spearman", "pearson",
  "kendall"), use = "everything")
}
\arguments{
\item{x}{A numeric matrix or data frame with \emph{M} rows (one per sample) and \emph{P} columns (one per feature).}

\item{y}{\code{NULL} (default) or a numeric matrix or data frame with \emph{N} rows (one per sample) and \emph{P} columns (one per feature).}

\item{method}{A character string indicating which correlation coefficient (or covariance) is to be computed. One of \code{"pearson"}, \code{"kendall"}, or \code{"spearman"}.}

\item{use}{See \code{\link[stats]{cor}}.}
}
\value{
An \emph{M}-by-\emph{M} (if \code{y} is \code{NULL}) or an \emph{M}-by-\emph{N} (otherwise) matrix containing the correlation distances between the given sets of samples.
}
\description{
\code{correlation.distance} calculates the (pairwise) correlation distances between one or two sets of samples.
}
\examples{
## Generate two matrices with 50 and 100 samples
x <- matrix(rnorm(50*10, mean=0, sd=1), ncol=10)
y <- matrix(rnorm(100*10, mean=1, sd=2), ncol=10)
dist <- correlation.distance(x, y, method="spearman")

## Compare with the standard correlation function
dist2 <- cor(t(x), t(y), method="spearman")
plot(dist, dist2)
}

