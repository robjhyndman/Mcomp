#' M3-Competition forecasts of original competition participants
#'
#' The forecasts from all the original participating methods in the M3
#' forecasting competition.
#'
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
#'       res <- NULL
#'       for(x in 1:length(M3)) {
#'         curr_f <- unlist(f[x,])
#'         if(any(!is.na(curr_f))) {
#'           curr_res <- accuracy(curr_f, M3[[x]]$xx)
#'         } else {
#'           # if no results are available create NA results
#'           curr_res <- accuracy(M3[[x]]$xx, M3[[x]]$xx)
#'           curr_res <- rep(NA, length(curr_res))
#'         }
#'         res <- rbind(res, curr_res)
#'       }
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
"M3Forecast"
