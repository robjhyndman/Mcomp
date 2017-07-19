#' M3-Competition data
#'
#' The time series from the M3 forecasting competition.
#'
#' @format M3 is a list of 3003 series of class \code{Mcomp}. Each series within \code{M3} is
#' of class \code{Mdata} with the following structure:
#' \describe{
#'   \item{sn}{Name of the series}
#'   \item{st}{Series number and period. For example "Y1" denotes first yearly series,
#'   "Q20" denotes 20th quarterly series and so on.}
#'   \item{n}{The number of observations in the time series}
#'   \item{h}{The number of required forecasts}
#'   \item{period}{Interval of the time series.
#'             Possible values are "YEARLY", "QUARTERLY", "MONTHLY" & "OTHER".}
#'   \item{type}{The type of series.
#'             Possible values for M3 are "DEMOGRAPHIC", "FINANCE", "INDUSTRY",
#'             "MACRO", "MICRO", "OTHER".}
#'   \item{description}{A short description of the time series}
#'   \item{x}{A time series of length \code{n} (the historical data)}
#'   \item{xx}{A time series of length \code{h} (the future data)}
#' }
#' @author Muhammad Akram and Rob Hyndman
#' @seealso \code{\link{subset.Mcomp}}, \code{\link{plot.Mdata}}
#' @references Makridakis and Hibon (2000) The M3-competition: results, conclusions and
#' implications. \emph{International Journal of Forecasting}, \bold{16},
#' 451-476.
#' @source
#' \url{http://forecasters.org/resources/time-series-data/m3-competition/}.
#'
#' Detailed results from M3 competition at
#' \url{http://www.insead.edu/facultyresearch/research/doc.cfm?did=1094}.
#' @keywords datasets
#' @examples
#'
#' M3
#' plot(M3[[32]])
#' subset(M3,"monthly")
"M3"
