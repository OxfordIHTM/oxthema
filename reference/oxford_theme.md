# A generic/base [ggplot2::ggplot2](https://ggplot2.tidyverse.org/reference/ggplot2-package.html) theme for the oxthema package

This generic/base
[ggplot2::ggplot2](https://ggplot2.tidyverse.org/reference/ggplot2-package.html)
theme is the template from which all other themes in the
[oxthema](https://oxford-ihtm.io/oxthema/reference/oxthema.md) package
is built on. This theme is inspired by Bob Rudis'
[hrbrthemes](https://github.com/hrbrmstr/hrbrthemes) package drawing
heavily on its typography-centric focus. This function uses the *Roboto*
Google font which is the core Oxford san serif font. It is freely
downloadable and easily installed on any system.

## Usage

``` r
theme_oxford(
  base_family = "Roboto",
  base_size = 11.5,
  plot_title_family = base_family,
  plot_title_size = 16,
  plot_title_face = "bold",
  plot_title_colour = get_oxford_colour("Oxford blue"),
  plot_title_margin = 10,
  subtitle_family = base_family,
  subtitle_size = 12,
  subtitle_face = "plain",
  subtitle_colour = get_oxford_colour("ash"),
  subtitle_margin = 15,
  strip_text_family = base_family,
  strip_text_size = 12,
  strip_text_face = "plain",
  caption_family = base_family,
  caption_size = 9,
  caption_face = "italic",
  caption_colour = get_oxford_colour("ash"),
  caption_margin = 10,
  axis_text_size = base_size,
  axis_title_family = subtitle_family,
  axis_title_size = 9,
  axis_title_colour = get_oxford_colour("ash"),
  axis_title_face = "plain",
  axis_title_just = "rt",
  legend_title_family = subtitle_family,
  legend_title_colour = get_oxford_colour("ash"),
  legend_text_family = subtitle_family,
  legend_text_colour = get_oxford_colour("ash"),
  plot_margin = ggplot2::margin(30, 30, 30, 30),
  plot_background_fill = NULL,
  grid_col = get_oxford_colour("umber"),
  grid = TRUE,
  axis_col = get_oxford_colour("umber"),
  axis = FALSE,
  ticks = FALSE
)
```

## Arguments

- base_family:

  Base font family set to Roboto by default.

- base_size:

  Base font size. Default is 11.5.

- plot_title_family:

  Font family to use for the plot title. Default is `base_family`.

- plot_title_size:

  Plot title text size in pts. Default is 16.

- plot_title_face:

  Font face ("plain", "italic", "bold", "bold.italic") for plot title.
  Default is "bold".

- plot_title_colour:

  Colour of the plot title text. Default is Oxford Blue.

- plot_title_margin:

  Margin at the bottom of the plot title. Default set at 10.

- subtitle_family:

  Font family to use for the plot subtitle. Default is `base_family`.

- subtitle_size:

  Plot subtitle text size in pts. Default is 12.

- subtitle_face:

  Font face ("plain", "italic", "bold", "bold.italic") for plot
  subtitle. Default is "plain".

- subtitle_colour:

  Colour of the subtitle text. Default is Oxford ash grey.

- subtitle_margin:

  Margin at the bottom of the plot subtitle. Default set at 15.

- strip_text_family:

  Font family to use for the facet label. Default is `base_family`.

- strip_text_size:

  Facet label text size in pts. Default is 12.

- strip_text_face:

  Font face ("plain", "italic", "bold", "bold.italic") for facet label.
  Default is "plain".

- caption_family:

  Font family to use for the caption text. Default is `base_family`.

- caption_size:

  Caption text size in pts. Default is 9.

- caption_face:

  Font face ("plain", "italic", "bold", "bold.italic") for caption text.
  Default is "plain".

- caption_colour:

  Colour of the caption text. Default is Oxford ash grey.

- caption_margin:

  Margin at the top of the plot caption text. Default is set at 10.

- axis_text_size:

  Axis text size in pts. Default is `base_size`.

- axis_title_family:

  Font family to use for the axis title. Default is `subtitle_family`.

- axis_title_size:

  Axis title text size in pts. Default is 9.

- axis_title_colour:

  Colour of the axis title text. Default is Oxford ash grey.

- axis_title_face:

  Font face ("plain", "italic", "bold", "bold.italic") for axis title.
  Default is "plain".

- axis_title_just:

  Axis title font justification, one of "bl" (bottom-left), "m"
  (middle), "rt" (right-top). Default is "rt".

- legend_title_family:

  Font family to use for the legend title. Default is `subtitle_family`.

- legend_title_colour:

  Colour of the legend title text. Default is Oxford ash grey.

- legend_text_family:

  Font family to use for the legend text. Default is `subtitle_family`.

- legend_text_colour:

  Colour of the legend text. Default is Oxford ash grey.

- plot_margin:

  Plot margins (specify with
  [`ggplot2::margin()`](https://ggplot2.tidyverse.org/reference/element.html)).

- plot_background_fill:

  Fill colour for the plot background. Default is NULL.

- grid_col:

  Grid colour. Default to Oxford umber.

- grid:

  Panel grid. Either `TRUE`, `FALSE`, or a combination of `X` (major x
  grid), `x` (minor x grid), `Y` (major y grid), and/or `y` (minor y
  grid). Default is TRUE.

- axis_col:

  Axis colours. Default to Oxford umber.

- axis:

  Add x or y axes? `TRUE`, `FALSE`, "`xy`". Default is FALSE.

- ticks:

  Logical. Should ticks be added? Default is FALSE.

## Value

A
[ggplot2::ggplot2](https://ggplot2.tidyverse.org/reference/ggplot2-package.html)
theme.
