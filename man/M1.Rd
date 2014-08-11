\name{M1}
\alias{M1}
\alias{M3}
\docType{data}
\title{M-Competition data}
\description{
  The time series from the M1 and M3 forecasting competitions.
}
\usage{data(M1)
data(M3)}
\format{M1 is a list of 1001 series and M3 is a list of 3003
series. Each list is of class \code{Mcomp}. Each series within
\code{M1} and \code{M3} is of class \code{Mdata} with the following structure:
   \describe{
    \item{sn}{Name of the series}
    \item{st}{Series number and period. For example "Y1" denotes
             first yearly series, "Q20" denotes 20th quarterly series and so on.}
    \item{n}{The number of observations in the time series}
    \item{h}{The number of required forecasts}
    \item{period}{Interval of the time series. Possible values are "YEARLY", "QUARTERLY",
                "MONTHLY" & "OTHER".}
    \item{type}{The type of series. Possible values for M1 are "DEMOGR", "INDUST",
"MACRO1", "MACRO2", "MICRO1", "MICRO2" & "MICRO3". Possible
values for M3 are "DEMOGRAPHIC", "FINANCE", "INDUSTRY", "MACRO",
"MICRO", "OTHER".}
    \item{description}{A short description of the time series}
    \item{x}{A time series of length \code{n} (the historical data)}
    \item{xx}{A time series of length \code{h} (the future data)}
   }
}

\source{
  \url{http://forecasters.org/resources/time-series-data/m3-competition/}.

  Detailed results from M3 competition at
  \url{http://www.insead.edu/facultyresearch/research/doc.cfm?did=1094}.
}

\author{Muhammad Akram and Rob Hyndman}

\seealso{\code{\link{subset.Mcomp}}, \code{\link{plot.Mdata}}}

\references{
  Makridakis, S., A. Andersen, R. Carbone, R. Fildes, M. Hibon, R.
Lewandowski, J. Newton, E. Parzen, and R. Winkler (1982) The accuracy of
extrapolation (time series) methods: results of a forecasting competition.
\emph{Journal of Forecasting}, \bold{1}, 111--153.

  Makridakis and Hibon (2000) The M3-competition: results,
  conclusions and implications. \emph{International Journal of Forecasting}, \bold{16}, 451-476.
}
\examples{
M1
plot(M1$YAF2)
subset(M1,"monthly")
}
\keyword{datasets}

