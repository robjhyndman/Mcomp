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

