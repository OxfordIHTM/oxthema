# Oxford core and additional fonts

Oxford core and additional fonts

Check whether Oxford fonts (core and theme) are installed and available

## Usage

``` r
oxford_fonts

check_oxford_fonts()
```

## Format

An object of class `list` of length 7.

## Value

A list of available and not available fonts and a message indicating
availability status of Oxford fonts.

## Examples

``` r
check_oxford_fonts()
#> None of the Oxford fonts (Roboto, Noto Serif, Marcellus, Montserrat, Noto Serif Display, Bebas Neue, Phuduare installed in your system. Please download and install at least one of them.
#> $available_fonts
#> NULL
#> 
#> $not_available_fonts
#> $not_available_fonts$oxford_roboto
#> [1] "Roboto"
#> 
#> $not_available_fonts$oxford_noto_serif
#> [1] "Noto Serif"
#> 
#> $not_available_fonts$oxford_marcellus
#> [1] "Marcellus"
#> 
#> $not_available_fonts$oxford_montserrat
#> [1] "Montserrat"
#> 
#> $not_available_fonts$oxford_noto_serif_display
#> [1] "Noto Serif Display"
#> 
#> $not_available_fonts$oxford_bebas_neue
#> [1] "Bebas Neue"
#> 
#> $not_available_fonts$oxford_phudu
#> [1] "Phudu"
#> 
#> 

```
