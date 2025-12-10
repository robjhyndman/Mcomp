# Subset of time series from the M Competitions

`subset.Mcomp` returns a subset of the time series data from the M
Competitions. Subsets can be for specific periods, or specific types of
data or both.

## Usage

``` r
# S3 method for class 'Mcomp'
subset(x, cond1, cond2, ...)
```

## Arguments

- x:

  M-competition data or a subset of M-competition data

- cond1:

  Type or period of the data. Type is a character variable and period
  could be character or numeric.

- cond2:

  Optional second condition specifying type or period of the data,
  depending on `cond1`. If `cond1` denotes type then `cond2` would
  denote period, but if `cond1` denotes period then `cond2` would denote
  type.

- ...:

  Other arguments.

## Value

An object of class `Mcomp` consisting of the selected series.

## Details

Possible values for `cond1` and `cond2` denoting period are 1, 4, 12,
"yearly", "quarterly", "monthly" and "other".

If `cond1` or `cond2` equals 111, then the 111 series used in the
extended comparisons in the 1982 M-competition are selected.

Possible values for `cond1` and `cond2` denoting type are "macro",
"micro", "industry", "finance", "demographic", "allother", "macro1",
"macro2", "micro1", "micro2", "micro3". These correspond to the
descriptions used in the competitions. See the references for details.

Partial matching used for both conditions.

## References

Makridakis, S., A. Andersen, R. Carbone, R. Fildes, M. Hibon, R.
Lewandowski, J. Newton, E. Parzen, and R. Winkler (1982) The accuracy of
extrapolation (time series) methods: results of a forecasting
competition. *Journal of Forecasting*, **1**, 111–153.

Makridakis and Hibon (2000) The M3-competition: results, conclusions and
implications. *International Journal of Forecasting*, **16**, 451-476.

## See also

[`M1`](http://pkg.robjhyndman.com/Mcomp/reference/M1.md)

## Author

Muhammad Akram and Rob Hyndman

## Examples

``` r
M3.quarterly <- subset(M3,4)
M1.yearly.industry <- subset(M1,1,"industry")
```
