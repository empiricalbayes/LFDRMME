# LFDRMME

**LFDRMME** provides a simple yet efficient method for estimating local false discovery rates (LFDR) designed for genome-wide association data analysis, as proposed in:

> Karimnezhad, A. (2022). *A simple yet efficient method of local false discovery rate estimation designed for genome-wide association data analysis*. **Statistical Methods & Applications**, 31, 159–180. https://doi.org/10.1007/s10260-021-00560-y

The package aims to deliver accurate LFDR estimation at GWAS scale with minimal tuning and fast runtime.

## Installation

From CRAN:
```r
install.packages("LFDR.MME")
```

From GitHub (development):
```r
# install.packages("remotes")
remotes::install_github("empiricalbayes/LFDRMME")
```

## Quick start
```r
library(LFDR.MME)

# x: vector of test statistics or z-scores
# Example (toy):
set.seed(1)
z <- c(rnorm(900, 0, 1), rnorm(100, 3, 1))
fit <- lfdr_mme(z)      # replace with the package’s main API
head(fit$lfdr)
summary(fit)
```

## Reference
Karimnezhad, A. (2022). *A simple yet efficient method of local false discovery rate estimation designed for genome-wide association data analysis*. **Stat Methods Appl**, 31, 159–180. https://doi.org/10.1007/s10260-021-00560-y

## Citation
If you use this package, please cite the paper above and this software:

```
Karimnezhad, A. (2022). LFDRMME: Local False Discovery Rate Estimation via a Simple, Efficient Method (R package). GitHub: empiricalbayes/LFDRMME.
```

## License
MIT (see `LICENSE`).

## Contact
Questions or issues: open a GitHub issue or contact Ali Karimnezhad.
