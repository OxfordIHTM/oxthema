
<!-- README.md is generated from README.Rmd. Please edit that file -->

# oxthema: Oxford Colours, Palettes, Fonts, and Themes <img src="man/figures/logo.png" width="200" align="right" />

<!-- badges: start -->

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R-CMD-check](https://github.com/OxfordIHTM/oxthema/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/OxfordIHTM/oxthema/actions/workflows/R-CMD-check.yaml)
[![Test
R-universe](https://github.com/OxfordIHTM/oxthema/actions/workflows/r-universe-test.yml/badge.svg)](https://github.com/OxfordIHTM/oxthema/actions/workflows/r-universe-test.yml)
[![test-coverage](https://github.com/OxfordIHTM/oxthema/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/OxfordIHTM/oxthema/actions/workflows/test-coverage.yaml)
[![Codecov test
coverage](https://codecov.io/gh/OxfordIHTM/oxthema/graph/badge.svg)](https://app.codecov.io/gh/OxfordIHTM/oxthema)
[![CodeFactor](https://www.codefactor.io/repository/github/oxfordihtm/oxthema/badge)](https://www.codefactor.io/repository/github/oxfordihtm/oxthema)
[![DOI](https://zenodo.org/badge/711630340.svg)](https://zenodo.org/doi/10.5281/zenodo.10721129)
<!-- badges: end -->

Colours, palettes, fonts, and themes based on [University of
Oxford](https://ox.ac.uk)’s [visual identity
guidelines](https://communications.web.ox.ac.uk/communications-resources/visual-identity/identity-guidelines).

## What does the package do?

`{oxthema}` aims to provide templates, themes, and theme components for
colour palettes, typography, and layout compliant with [University of
Oxford](https://ox.ac.uk)’s [visual identity
guidelines](https://communications.web.ox.ac.uk/communications-resources/visual-identity/identity-guidelines)
for use in the R language for statistical computing graphics and
publishing ecosystem.

The package provides colours, palettes, and fonts consistent with the
university visual identity guidelines. The package also includes themes
for specific packages and functionalities that make use of colours,
palettes, and fonts. The package currently has themes for `{ggplot2}`
and for `{forestploter}` packages.

To see a list of features that we are either actively working on, are
considering, or need help on, visit our [GitHub
issues](https://github.com/OxfordIHTM/oxthema/issues) page.

`{oxthema}` is currently in pre-release (beta release) to allow for beta
testing of current functionalities.

## Installation

`{oxthema}` is not yet available on [CRAN](https://cran.r-project.org)
but can be installed through the [Oxford iHealth R
Universe](https://oxfordihtm.r-universe.dev) repository as follows:

``` r
install.packages(
  "oxthema", 
  repos = c('https://oxfordihtm.r-universe.dev', 'https://cloud.r-project.org')
)
```

`{oxthema}` can also be installed from
[GitHub](https://github.com/OxfordIHTM/oxthema) using the `{pak}`
package with:

``` r
if (!require("pak")) install.packages("pak")
pak::pak("OxfordIHTM/oxthema")
```

## Usage

The following vignettes provide details on how to make full use of the
`{oxthema}` package:

- [Oxford
  colours](https://oxford-ihtm.io/oxthema/articles/oxford-colours.html)

- [Oxford
  palettes](https://oxford-ihtm.io/oxthema/articles/oxford-palettes.html)

- [Oxford
  fonts](https://oxford-ihtm.io/oxthema/articles/oxford-fonts.html)

- [Oxford ggplot2
  themes](https://oxford-ihtm.io/oxthema/articles/oxford-ggplot2-themes.html)

- [Oxford forestploter
  themes](https://oxford-ihtm.io/oxthema/articles/oxford-forestploter-themes.html)

## Citation

If you use the `{oxthema}` in your work, please cite using the suggested
citation provided by a call to the `citation` function as follows:

``` r
citation("oxthema")
#> To cite oxthema in publications use:
#> 
#>   Ernest Guevarra, Greco Malijan (2026). _oxthema: Oxford Palette,
#>   Theme, and Theme Components._. doi:10.5281/zenodo.10721129
#>   <https://doi.org/10.5281/zenodo.10721129>, R package version
#>   0.0.9002, <https://oxford-ihtm.io/oxthema/>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {oxthema: Oxford Palette, Theme, and Theme Components.},
#>     author = {{Ernest Guevarra} and {Greco Malijan}},
#>     year = {2026},
#>     note = {R package version 0.0.9002},
#>     url = {https://oxford-ihtm.io/oxthema/},
#>     doi = {https://doi.org/10.5281/zenodo.10721129},
#>   }
```

## Community guidelines

Feedback, bug reports and feature requests are welcome; file issues or
seek support [here](https://github.com/OxfordIHTM/oxthema/issues). If
you would like to contribute to the package, please see our
[contributing
guidelines](https://oxford-ihtm.io/oxthema/CONTRIBUTING.html).

This project is released with a [Contributor Code of
Conduct](https://oxford-ihtm.io/oxthema/CODE_OF_CONDUCT.html). By
participating in this project you agree to abide by its terms.

If you are interested in [Oxford iHealth](https://oxford-ihtm.io)’s work
and would like to join the community or contribute to it’s various
projects, visit the [Oxford iHealth website](https://oxford-ihtm.io) and
its [community page](https://oxford-ihtm.io/community/) to learn more.

 

[![This is a project under the Oxford iHealth initiative of the MSc in
International Health and Tropical Medicine of the Nuffield Department of
Medicine, University of
Oxford](https://github.com/OxfordIHTM/ihealth-images/blob/main/ihealth/ihealth_footer.png?raw=true)](https://oxford-ihtm.io)
