#' M-Competition data
#'
#' The time series from the M1 forecasting competition.
#'
#' @format M1 is a list of 1001 series of class \code{Mcomp}.
#' Each series within \code{M1} is of class \code{Mdata} with the following structure:
#' \describe{
#'   \item{sn}{Name of the series}
#'   \item{st}{Series number and period. For example "Y1" denotes first yearly series,
#'   "Q20" denotes 20th quarterly series and so on.}
#'   \item{n}{The number of observations in the time series}
#'   \item{h}{The number of required forecasts}
#'   \item{period}{Interval of the time series.
#'             Possible values are "YEARLY", "QUARTERLY", "MONTHLY" & "OTHER".}
#'   \item{type}{The type of series.
#'             Possible values are "DEMOGR", "INDUST", "MACRO1", "MACRO2",
#'             "MICRO1", "MICRO2" & "MICRO3".}
#'   \item{description}{A short description of the time series}
#'   \item{x}{A time series of length \code{n} (the historical data)}
#'   \item{xx}{A time series of length \code{h} (the future data)}
#' }
#' @author Muhammad Akram and Rob Hyndman
#' @seealso \code{\link{M3}}, \code{\link{subset.Mcomp}}, \code{\link{plot.Mdata}}
#' @references Makridakis, S., A. Andersen, R. Carbone, R. Fildes, M. Hibon, R.
#' Lewandowski, J. Newton, E. Parzen, and R. Winkler (1982) The accuracy of
#' extrapolation (time series) methods: results of a forecasting competition.
#' \emph{Journal of Forecasting}, \bold{1}, 111--153.
#'
#' @source
#' \url{http://forecasters.org/resources/time-series-data/m-competition/}.
#'
#' @keywords datasets
#' @examples
#'
#' M1
#' plot(M1$YAF2)
#' subset(M1,"monthly")
"M1"
