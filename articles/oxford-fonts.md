# Oxford Fonts

The `oxthema` package uses the fonts prescribed by Oxford’s visual
identity guidelines.

## Core fonts

The core University fonts are *Roboto* (san serif font) and *Noto Serif*
(serif font). These fonts are installed in all managed staff desktop
(CONNECT and Orchard) machines. Hence, they should be readily available
when using R from these machines. Also, both are Google fonts and as
such are downloadable from the [Google Fonts
website](https://fonts.google.com/).

### Roboto

![](oxford-fonts_files/figure-html/roboto-show-1.png)

### Noto Serif

![](oxford-fonts_files/figure-html/noto-serif-show-1.png)

## Complementary display fonts

In addition to the core University fonts, there are currently
alternative complementary display fonts that are suggested/recommended
as part of the University [theme
packs](https://communications.admin.ox.ac.uk/communications-resources/visual-identity/identity-guidelines/theme-packs).
These fonts include *Marcellus*, *Montserrat*, *Bebas Neue*, and
*Phudu*. Display fonts are meant to be used sparingly alongside *Roboto*
and *Noto Serif*. They are also installed on managed staff desktop
(CONNECT and Orchard) machines. They are also [Google
Fonts](https://fonts.google.com/) hence freely available to download
from the [Google Fonts website](https://fonts.google.com/).

### Marcellus

![](oxford-fonts_files/figure-html/marcellus-show-1.png)

### Monserrat

![](oxford-fonts_files/figure-html/montserrat-show-1.png)

### Noto Serif Display

![](oxford-fonts_files/figure-html/noto-serif-dp-show-1.png)

### Bebas Neue

![](oxford-fonts_files/figure-html/bebas-show-1.png)

### Phudu

![](oxford-fonts_files/figure-html/phudu-show-1.png)

## Checking availability of core fonts and complementary display fonts

The `oxthema` package has the
[`check_oxford_fonts()`](https://oxford-ihtm.io/oxthema/reference/oxford_font.md)
function which checks the availability of the core and complementary
display fonts in your machine as follows:

``` r
check_oxford_fonts()
```

and returns a message on which of the fonts are available and not
available. An example output is shown below:

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

If the font check function indicates that some or all of the Oxford
fonts are not available, we recommend taking note of the missing fonts
and then downloading and installing them from the [Google Fonts
website](https://fonts.google.com/).

Guidance on downloading, installing, and managing fonts, including
Google Fonts, can be found
[here](https://fonts.google.com/knowledge/using_type/installing_and_managing_fonts).

## Usage of Oxford fonts in the `oxthema` package

In the `oxthema` package, we use by default *Roboto* and *Noto Serif*
accordingly in the various base themes.

In addition to the base themes, we have developed theme variations based
on the University [theme
packs](https://communications.admin.ox.ac.uk/communications-resources/visual-identity/identity-guidelines/theme-packs)
that use the associated complementary display fonts in addition to
*Roboto* and *Noto Serif* core fonts.

| **Theme name** | **Complementary display font** |
|:---------------|:-------------------------------|
| Heritage       | Marcellus                      |
| Contemporary   | Montserrat                     |
| Celebratory    | Noto Serif Display             |
| Corporate      | Bebas Neue                     |
| Innovative     | Phudu                          |

## Ensuring that Oxford fonts show appropriately

Installing the Oxford fonts into your system is half of the battle in
ensuring that your outputs that use the `oxthema` themes will use the
appropriate fonts.

There are times that even with the fonts installed, outputs as viewed in
RStudio viewer or as PDF, Postscript, or HTML still do not show the
appropriate fonts even when the fonts are already installed. The
following steps are what you can do to ensure that the appropriate fonts
are what gets used in your outputs.

### Set RStudio graphics device to AGG

In RStudio, go to `Global Options** -> General -> Graphics` and then for
the `Backend` dropdown menu select `AGG` as shown in the image below.

![](https://www.cararthompson.com/posts/2024-01-12-using-fonts-in-r-for-dataviz/images/fonts-device.png)

The appropriate fonts should now render nicely within the RStudio plot
viewer pane. Once the fonts are working with the RStudio plot viewer,
you should be able to save your plots into a file with the appropriate
fonts.

### Making fonts work with `.Rmd` and `.qmd` files

Because plots created within an `.Rmd` or `.qmd` are generated within
its own environment, it would be essential to be able to set the
graphics device to `AGG` within that knitting environment. This can be
set as a `knitr` option in the setup code chunk as follows:

```` markdown
```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  dev = "ragg_png"
)
```
````
