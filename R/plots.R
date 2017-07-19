#' Plotting M Competition data
#'
#' Functions to plot a time series from the M competition data sets, showing
#' both the training and test sections of the series.
#'
#'
#' @aliases plot.Mdata autoplot.Mdata
#' @param x A series of M-competition data
#' @param xlim Limits on x-axis
#' @param ylim Limits on y-axis
#' @param main Main title
#' @param xlab Label on x-axis
#' @param ylab Label on y-axis
#' @param ... Other plotting arguments passed to \code{plot}. Ignored for
#' \code{autoplot}.
#' @return \code{autoplot.Mdata} returns a ggplot2 object, while
#' \code{plot.Mdata} returns nothing. Both functions produce a time series plot
#' of the selected series.
#' @author Rob Hyndman
#' @seealso \code{\link{M1}}
#' @keywords hplot
#' @examples
#'
#' library(ggplot2)
#' plot(M1[[1]])
#' autoplot(M1$YAF3)
#' autoplot(M3[["N0647"]])
#' @export
plot.Mdata <- function(x, xlim=c(tsp(x$x)[1],tsp(x$xx)[2]), ylim=range(x$x,x$xx),
                       main=x$sn, xlab, ylab="", ...)
{
  freq <- frequency(x$x)
  if(missing(xlab))
  {
    if(start(x$x)[1] > 1900)
      xlab <- "Year"
    else
      xlab <- "Time"
  }
  plot(ts(c(x$x, rep(NA, x$h)), end = tsp(x$x)[2] + x$h/freq, frequency = freq),
    ylim=ylim, xlim=xlim, ylab=ylab, xlab=xlab, main=main, ...)
  lines(ts(x$xx, start = tsp(x$x)[2] + 1/freq, frequency = freq),lt=1,col=2)
}

#' @export
autoplot.Mdata <- function(x, ...)
{
  freq <- frequency(x$x)
  df <- cbind(
    Training=ts(c(x$x, rep(NA, x$h)), end = tsp(x$x)[2] + x$h/freq, frequency = freq),
    Test=ts(x$xx, start = tsp(x$x)[2] + 1/freq, frequency = freq))
  p <- autoplot(df) + ggtitle(x$sn) + ylab("")
  if(start(x$x)[1] > 1900)
    p <- p + xlab("Year")
  # Set up colours: black = training, red = test
  p <- p + scale_color_manual(values=c("black","red"), name="")
  return(p)
}

