#' @importFrom graphics lines plot title
#' @importFrom stats frequency ts tsp start
#' @importFrom ggplot2 autoplot ggtitle xlab ylab scale_color_manual
#' @import forecast
NULL

#' M-Competition data
#'
#' The time series from the M1 and M3 forecasting competitions.
#'
#'
#' @name M1
#' @aliases M1 M3
#' @docType data
#' @format M1 is a list of 1001 series and M3 is a list of 3003 series. Each
#' list is of class \code{Mcomp}. Each series within \code{M1} and \code{M3} is
#' of class \code{Mdata} with the following structure: \describe{
#' \item{sn}{Name of the series} \item{st}{Series number and period. For
#' example "Y1" denotes first yearly series, "Q20" denotes 20th quarterly
#' series and so on.} \item{n}{The number of observations in the time series}
#' \item{h}{The number of required forecasts} \item{period}{Interval of the
#' time series. Possible values are "YEARLY", "QUARTERLY", "MONTHLY" &
#' "OTHER".} \item{type}{The type of series. Possible values for M1 are
#' "DEMOGR", "INDUST", "MACRO1", "MACRO2", "MICRO1", "MICRO2" & "MICRO3".
#' Possible values for M3 are "DEMOGRAPHIC", "FINANCE", "INDUSTRY", "MACRO",
#' "MICRO", "OTHER".} \item{description}{A short description of the time
#' series} \item{x}{A time series of length \code{n} (the historical data)}
#' \item{xx}{A time series of length \code{h} (the future data)} }
#' @author Muhammad Akram and Rob Hyndman
#' @seealso \code{\link{subset.Mcomp}}, \code{\link{plot.Mdata}}
#' @references Makridakis, S., A. Andersen, R. Carbone, R. Fildes, M. Hibon, R.
#' Lewandowski, J. Newton, E. Parzen, and R. Winkler (1982) The accuracy of
#' extrapolation (time series) methods: results of a forecasting competition.
#' \emph{Journal of Forecasting}, \bold{1}, 111--153.
#'
#' Makridakis and Hibon (2000) The M3-competition: results, conclusions and
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
#' M1
#' plot(M1$YAF2)
#' subset(M1,"monthly")
#'
NULL





#' M3-Competition forecasts of original competition participants
#'
#' The forecasts from all the original participating methods in the M3
#' forecasting competition.
#'
#'
#' @name M3Forecast
#' @docType data
#' @format M3Forecast is a list of data.frames. Each list element is the result
#' of one forecasting method. The data.frame then has the following structure:
#' Each row is the forecast of one series. Rows are named accordingly. In total
#' there are 18 columns, i.e., 18 forecasts. If fewer forecasts than 18 exist,
#' the row is filled up with NA values.
#' @author Christoph Bergmeir and Rob Hyndman
#' @references Makridakis and Hibon (2000) The M3-competition: results,
#' conclusions and implications. \emph{International Journal of Forecasting},
#' \bold{16}, 451-476.
#' @source
#' \url{http://forecasters.org/resources/time-series-data/m3-competition/}.
#'
#' Detailed results from M3 competition at
#' \url{http://www.insead.edu/facultyresearch/research/doc.cfm?did=1094}.
#' @keywords datasets
#' @examples
#'
#' M3Forecast[["NAIVE2"]][1,]
#'
#' \dontrun{
#' # calculate errors using the accuracy function
#' # from the forecast package
#'
#' errors <- lapply(M3Forecast, function(f) {
#'
#'       res <- NULL
#'
#'       for(x in 1:length(M3)) {
#'
#'         curr_f <- unlist(f[x,])
#'
#'         if(any(!is.na(curr_f))) {
#'           curr_res <- accuracy(curr_f, M3[[x]]$xx)
#'         } else {
#'           # if no results are available create NA results
#'           curr_res <- accuracy(M3[[x]]$xx, M3[[x]]$xx)
#'           curr_res <- rep(NA, length(curr_res))
#'         }
#'
#'         res <- rbind(res, curr_res)
#'
#'       }
#'
#'       rownames(res) <- NULL
#'       res
#'     })
#'
#' ind_yearly <- which(unlist(lapply(M3, function(x) {x$period == "YEARLY"})))
#' ind_quarterly <- which(unlist(lapply(M3, function(x) {x$period == "QUARTERLY"})))
#' ind_monthly <- which(unlist(lapply(M3, function(x) {x$period == "MONTHLY"})))
#' ind_other <- which(unlist(lapply(M3, function(x) {x$period == "OTHER"})))
#'
#' yearly_errors <- t(as.data.frame(lapply(errors, function(x) {colMeans(x[ind_yearly,])})))
#' quarterly_errors <- t(as.data.frame(lapply(errors, function(x) {colMeans(x[ind_quarterly,])})))
#' monthly_errors <- t(as.data.frame(lapply(errors, function(x) {colMeans(x[ind_monthly,])})))
#' other_errors <- t(as.data.frame(lapply(errors, function(x) {colMeans(x[ind_other,])})))
#'
#' yearly_errors
#' quarterly_errors
#' monthly_errors
#' other_errors
#' }
#'
NULL





#' Data from the M-competitions
#'
#' The 1001 time series from the M-competition (Makridakis et al. 1982), and
#' the 3003 time series and forecasts from the IJF-M3 competition (Makridakis
#' and Hibon, 2000).
#'
#'
#' @name Mcomp-package
#' @aliases Mcomp-package Mcomp
#' @docType package
#' @author Rob J Hyndman. \email{Rob.Hyndman@@monash.edu}, with assistance from
#' Muhammad Akram and Christoph Bergmeir.
#' @references Makridakis, S., A. Andersen, R. Carbone, R. Fildes, M. Hibon, R.
#' Lewandowski, J. Newton, E. Parzen, and R. Winkler (1982) The accuracy of
#' extrapolation (time series) methods: results of a forecasting competition.
#' \emph{Journal of Forecasting}, \bold{1}, 111--153.
#'
#' Makridakis and Hibon (2000) The M3-competition: results, conclusions and
#' implications. \emph{International Journal of Forecasting}, \bold{16},
#' 451-476.
#' @source
#' \url{http://forecasters.org/resources/time-series-data/m3-competition/}.
#'
#' Detailed results from M3 competition at
#' \url{http://www.insead.edu/facultyresearch/research/doc.cfm?did=1094}.
#' @keywords package
NULL



