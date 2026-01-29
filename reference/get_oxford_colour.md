# Get named Oxford colours vector

Get named Oxford colours vector

## Usage

``` r
get_oxford_colour(
  pattern = NULL,
  model = c("hex", "rgb", "cmyk", "pantone"),
  named = FALSE
)

get_oxford_colours(
  pattern = NULL,
  model = c("hex", "rgb", "cmyk", "pantone"),
  named = FALSE
)
```

## Arguments

- pattern:

  Optional. A character value or vector to use as a search term. Default
  is NULL in which case all the Oxford colours are returned.

- model:

  A character vector of colour model. Can be "rgb", "cmyk", "hex", or
  "pantone". Default is "hex".

- named:

  Logical. Should the output be a named character value or vector?
  Default is FALSE.

## Value

A character value or vector of Oxford colour/s as per `model`
specification. If `named` is TRUE, returns a named character value or
vector.

## Examples

``` r
get_oxford_colours()
#>  [1] "#002147" "#776885" "#E08D79" "#ED9390" "#C4A29E" "#D1BDD5" "#994636"
#>  [8] "#AA1A2D" "#7F055F" "#FE615A" "#D4CDF4" "#FB5607" "#E6007E" "#426A5A"
#> [15] "#789E9E" "#E2C044" "#E4F0EF" "#B9D6F2" "#A0AF84" "#15616D" "#1D42A6"
#> [22] "#00AAB4" "#65E5AE" "#95C11F" "#49B6FF" "#F7EF66" "#211D1C" "#61615F"
#> [29] "#89827A" "#D9D8D6" "#F1EEE9" "#F2F0F0" ""        ""       
get_oxford_colours(model = "rgb")
#>  [1] "0, 33, 71"     "119, 104, 133" "224, 141, 121" "237, 147, 144"
#>  [5] "196, 162, 158" "209, 189, 213" "153, 70, 54"   "127, 5, 95"   
#>  [9] "127, 5, 95"    "254, 97, 90"   "212, 205, 244" "251, 86, 7"   
#> [13] "230, 0, 126"   "66, 106, 90"   "120, 158, 158" "226, 192, 68" 
#> [17] "228, 240, 239" "185, 214, 242" "160, 175, 132" "21, 97, 109"  
#> [21] "29, 66, 166"   "0, 170, 180"   "101, 229, 174" "149, 193, 31" 
#> [25] "73, 182, 255"  "247, 239, 102" "33, 29, 28"    "97, 97, 95"   
#> [29] "137, 130, 122" "217, 216, 214" "241, 238, 233" "242, 240, 240"
#> [33] ""              ""             
get_oxford_colours(pattern = "lilac")
#> [1] "#D1BDD5"
get_oxford_colours(pattern = c("lilac", "sage green"))
#> [1] "#D1BDD5" "#A0AF84"
```
