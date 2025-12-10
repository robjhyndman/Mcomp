# Plotting M Competition data

Functions to plot a time series from the M competition data sets,
showing both the training and test sections of the series.

## Usage

``` r
# S3 method for class 'Mdata'
plot(
  x,
  xlim = c(tsp(x$x)[1], tsp(x$xx)[2]),
  ylim = range(x$x, x$xx),
  main = x$sn,
  xlab,
  ylab = "",
  ...
)

# S3 method for class 'Mdata'
autoplot(object, ...)
```

## Arguments

- x, object:

  A series of M-competition data

- xlim:

  Limits on x-axis

- ylim:

  Limits on y-axis

- main:

  Main title

- xlab:

  Label on x-axis

- ylab:

  Label on y-axis

- ...:

  Other plotting arguments passed to `plot`. Ignored for `autoplot`.

## Value

`autoplot.Mdata` returns a ggplot2 object, while `plot.Mdata` returns
nothing. Both functions produce a time series plot of the selected
series.

## See also

[`M1`](http://pkg.robjhyndman.com/Mcomp/reference/M1.md),
[`M3`](http://pkg.robjhyndman.com/Mcomp/reference/M3.md)

## Author

Rob Hyndman

## Examples

``` r
library(ggplot2)
plot(M1[[1]])

autoplot(M1$YAF3)

autoplot(M3[["N0647"]])
```
