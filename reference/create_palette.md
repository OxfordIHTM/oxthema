# Create new palettes based on Oxford palettes

These functions apply a similar approach used and demonstrated by
[ColorBrewer](https://colorbrewer2.org) and has been patterned after the
syntax of the
[RColorBrewer](https://cran.r-project.org/web/packages/RColorBrewer/index.html)
package

## Usage

``` r
create_palette_sequential(n, name)

create_palette_divergent(n, name)

create_palette_qualitative(n, name)

create_brewer_palette(n, name, type = c("sequential", "divergent"))
```

## Arguments

- n:

  Number of colours desired/required. Oxford palettes have at least 5
  colours. All colour schemes are derived from the University of Oxford
  [visual identity
  guidelines](https://communications.web.ox.ac.uk/communications-resources/visual-identity/identity-guidelines).

- name:

  Name of Oxford palette to use

- type:

  A character value for type of palette to use. Can be either
  sequential, divergent, or qualitative.

## Value

A character vector of desired/required colours with length equivalent to
`n`

## Examples

``` r
create_palette_sequential(5, "blues")

create_palette_divergent(10, "brbg")

create_palette_qualitative(5, "dark")

create_brewer_palette(5, "blues")

```
