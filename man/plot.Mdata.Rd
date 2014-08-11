\name{plot.Mdata}
\alias{plot.Mdata}
\title{Plotting M Competition data}
\description{
  plot.Mdata plots a time series from the M competition data sets.
}
\usage{
\method{plot}{Mdata}(x, xlim=c(tsp(x$x)[1],tsp(x$xx)[2]), ylim=range(x$x,x$xx),
                   main=x$sn, xlab="", ylab="", ...)

}
\arguments{
  \item{x}{A series of M-competition data}
  \item{xlim}{Limits on x-axis}
  \item{ylim}{Limits on y-axis}
  \item{main}{Main title}
  \item{xlab}{Label on x-axis}
  \item{ylab}{Label on y-axis}
  \item{...}{Other plotting arguments}
}

\value{None. The function produces a time series plot of the selected series.
}

\author{Muhammad Akram and Rob Hyndman}

\seealso{ \code{\link{M1}}}

\examples{
plot(M1[[1]])
plot(M1$YAF3)
plot(M3$N0647)
}

\keyword{hplot}
