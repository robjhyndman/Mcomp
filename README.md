#Mcomp: Data from the M-Competitions
[![Travis-CI Build Status](https://travis-ci.org/robjhyndman/Mcomp.svg?branch=master)](https://travis-ci.org/robjhyndman/Mcomp)
[![Coverage Status](https://coveralls.io/repos/robjhyndman/Mcomp/badge.svg?branch=master&service=github)](https://coveralls.io/r/robjhyndman/Mcomp?branch=master)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/Mcomp)](https://cran.r-project.org/package=Mcomp)
[![Downloads](http://cranlogs.r-pkg.org/badges/Mcomp)](https://cran.r-project.org/package=Mcomp)
[![Rdoc](http://www.rdocumentation.org/badges/version/Mcomp)](http://www.rdocumentation.org/packages/Mcomp)
[![Pending Pull-Requests](http://githubbadges.herokuapp.com/robjhyndman/Mcomp/pulls.svg?style=flat)](https://github.com/robjhyndman/Mcomp/pulls)


The R package *Mcomp* the 1001 time series from the M-competition (Makridakis et al. 1982) and the 3003 time series from the IJF-M3 competition (Makridakis and Hibon, 2000).

Author: Rob J Hyndman

## Installation
You can install the **stable** version on
[R CRAN](https://cran.r-project.org/package=Mcomp).

```s
install.packages('Mcomp')
```

You can install the **development** version from
[Github](https://github.com/robjhyndman/Mcomp)

```s
# install.packages("devtools")
devtools::install_github("robjhyndman/Mcomp")
```

## Usage

```s
library(Mcomp)
M1
plot(M1$YAF2)
subset(M1,"monthly")
```

## License

This package is free and open source software, licensed under GPL (>= 2).
