# Convert CMYK to RGB

Convert CMYK to RGB

## Usage

``` r
cmyk2rgb(C, M, Y, K)
```

## Arguments

- C:

  An integer value for cyan

- M:

  An integer value for magenta

- Y:

  An integer value for yellow

- K:

  An integer value for key (black)

## Value

A named vector for R, G, and B for RGB

## Examples

``` r
cmyk2rgb(100, 80, 0, 60)
#>   R   G   B 
#>   0  21 102 
```
