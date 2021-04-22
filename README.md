# ggsu

`ggplot2` theme following the [visual identity of SU](https://www.su.se/medarbetare/kommunikation/grafisk-manual)

## Install package

``` r
#install.packages("devtools")
devtools::install_github("borstell/ggsu")
library(ggsu)
library(scales)
```

## Color palettes

``` r
show_col(su_palettes$su_basic, labels = TRUE)
```

![](examples/su_basic.png)

``` r
show_col(su_palettes$su_expanded, labels = FALSE)
```

![](examples/su_expanded.png)


``` r
show_col(su_palettes$su_dark, labels = FALSE)
```

![](examples/su_dark.png)

``` r
show_col(su_palettes$su_olive, labels = FALSE)
```

![](examples/su_olive.png)

``` r
show_col(su_palettes$su_sky, labels = FALSE)
```

![](examples/su_sky.png)

``` r
show_col(su_palettes$su_fire, labels = FALSE)
```

![](examples/su_fire.png)


``` r
show_col(su_palettes$su_water, labels = FALSE)
```

![](examples/su_water.png)
