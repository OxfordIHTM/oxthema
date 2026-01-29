# oxthema: Oxford Colours, Palettes, Fonts, and Themes

Colours, palettes, fonts, and themes based on [University of
Oxford](https://ox.ac.uk)’s [visual identity
guidelines](https://communications.web.ox.ac.uk/communications-resources/visual-identity/identity-guidelines).

## What does the package do?

[oxthema](https://oxford-ihtm.io/oxthema/) aims to provide templates,
themes, and theme components for colour palettes, typography, and layout
compliant with [University of Oxford](https://ox.ac.uk)’s [visual
identity
guidelines](https://communications.web.ox.ac.uk/communications-resources/visual-identity/identity-guidelines)
for use in the R language for statistical computing graphics and
publishing ecosystem.

The package provides colours, palettes, and fonts consistent with the
university visual identity guidelines. The package also includes themes
for specific packages and functionalities that make use of colours,
palettes, and fonts. The package currently has themes for
[ggplot2](https://ggplot2.tidyverse.org) and for
[forestploter](https://github.com/adayim/forestploter) packages.

To see a list of features that we are either actively working on, are
considering, or need help on, visit our [GitHub
issues](https://github.com/OxfordIHTM/oxthema/issues) page.

[oxthema](https://oxford-ihtm.io/oxthema/) is currently in pre-release
(alpha release) to allow for alpha testing of current functionalities.

## Installation

[oxthema](https://oxford-ihtm.io/oxthema/) is not yet available on
[CRAN](https://cran.r-project.org) but can be installed through the
[Oxford iHealth R Universe](https://oxfordihtm.r-universe.dev)
repository as follows:

``` r
install.packages(
  "oxthema", 
  repos = c('https://oxfordihtm.r-universe.dev', 'https://cloud.r-project.org')
)
```

## Usage

The following vignettes provide details on how to make full use of the
[oxthema](https://oxford-ihtm.io/oxthema/) package:

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

If you use the [oxthema](https://oxford-ihtm.io/oxthema/) in your work,
please cite using the suggested citation provided by a call to the
`citation` function as follows:

``` r
citation("oxthema")
#> To cite oxthema in publications use:
#> 
#>   Ernest Guevarra, Greco Malijan (2026). _oxthema: Oxford Palette,
#>   Theme, and Theme Components._. doi:10.5281/zenodo.10721129
#>   <https://doi.org/10.5281/zenodo.10721129>, R package version 0.1.0,
#>   <https://oxford-ihtm.io/oxthema/>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {oxthema: Oxford Palette, Theme, and Theme Components.},
#>     author = {{Ernest Guevarra} and {Greco Malijan}},
#>     year = {2026},
#>     note = {R package version 0.1.0},
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
