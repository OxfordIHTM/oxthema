# Oxford theme for [forestploter::forestploter](https://rdrr.io/pkg/forestploter/man/forestploter-package.html) package

Oxford theme for
[forestploter::forestploter](https://rdrr.io/pkg/forestploter/man/forestploter-package.html)
package

## Usage

``` r
theme_oxford_forest(
  base_size = 11.5,
  base_family = "Roboto",
  bg_col = get_oxford_colour("cool"),
  ci_col = get_oxford_colour("Oxford blue"),
  ci_fill = ci_col,
  refline_col = get_oxford_colour("red"),
  vertline_col = get_oxford_colour("ash"),
  summary_col = get_oxford_colour("ash"),
  summary_fill = summary_col,
  footnote_cex = 0.7,
  footnote_fontface = "plain",
  footnote_col = get_oxford_colour("royal"),
  title_col = get_oxford_colour("Oxford blue"),
  title_fontfamily = base_family,
  arrow_fill = get_oxford_colour("Oxford blue"),
  arrow_col = arrow_fill
)

theme_heritage_forest(
  base_size = 11,
  base_family = "Roboto",
  bg_col = get_oxford_colour("sage"),
  ci_col = get_oxford_colour("Oxford blue"),
  ci_fill = ci_col,
  refline_col = get_oxford_colour("sienna"),
  vertline_col = get_oxford_colour("peach"),
  summary_col = get_oxford_colour("green"),
  summary_fill = summary_col,
  footnote_cex = 0.8,
  footnote_fontface = "plain",
  footnote_col = get_oxford_colour("green"),
  title_col = get_oxford_colour("Oxford blue"),
  title_fontfamily = "Marcellus",
  arrow_fill = get_oxford_colour("Oxford blue"),
  arrow_col = arrow_fill
)

theme_contemporary_forest(
  base_size = 10.5,
  base_family = "Roboto",
  bg_col = get_oxford_colour("cool"),
  ci_col = get_oxford_colour("Oxford blue"),
  ci_fill = ci_col,
  refline_col = get_oxford_colour("coral"),
  vertline_col = get_oxford_colour("potters"),
  summary_col = get_oxford_colour("aqua"),
  summary_fill = summary_col,
  footnote_cex = 0.7,
  footnote_fontface = "plain",
  footnote_col = get_oxford_colour("aqua"),
  title_col = get_oxford_colour("Oxford blue"),
  title_fontfamily = "Montserrat",
  arrow_fill = get_oxford_colour("Oxford blue"),
  arrow_col = arrow_fill
)

theme_celebratory_forest(
  base_size = 10.5,
  base_family = "Roboto",
  bg_col = get_oxford_colour("lavender"),
  ci_col = get_oxford_colour("Oxford blue"),
  ci_fill = ci_col,
  refline_col = get_oxford_colour("plum"),
  vertline_col = get_oxford_colour("mauve"),
  summary_col = get_oxford_colour("viridian"),
  summary_fill = summary_col,
  footnote_cex = 0.7,
  footnote_fontface = "plain",
  footnote_col = get_oxford_colour("viridian"),
  title_col = get_oxford_colour("Oxford blue"),
  title_fontfamily = "Noto Serif Display",
  arrow_fill = get_oxford_colour("Oxford blue"),
  arrow_col = arrow_fill
)

theme_corporate_forest(
  base_size = 10.5,
  base_family = "Roboto",
  bg_col = get_oxford_colour("sky"),
  ci_col = get_oxford_colour("Oxford blue"),
  ci_fill = ci_col,
  refline_col = get_oxford_colour("orange"),
  vertline_col = get_oxford_colour("sky"),
  summary_col = get_oxford_colour("royal"),
  summary_fill = summary_col,
  footnote_cex = 0.7,
  footnote_fontface = "plain",
  footnote_col = get_oxford_colour("royal"),
  title_col = get_oxford_colour("Oxford blue"),
  title_fontfamily = "Bebas Neue",
  arrow_fill = get_oxford_colour("Oxford blue"),
  arrow_col = arrow_fill
)

theme_innovative_forest(
  base_size = 10.5,
  base_family = "Roboto",
  bg_col = get_oxford_colour("lavender"),
  ci_col = get_oxford_colour("Oxford blue"),
  ci_fill = ci_col,
  refline_col = get_oxford_colour("Oxford pink"),
  vertline_col = get_oxford_colour("vivid"),
  summary_col = get_oxford_colour("viridian"),
  summary_fill = summary_col,
  footnote_cex = 0.7,
  footnote_fontface = "plain",
  footnote_col = get_oxford_colour("viridian"),
  title_col = get_oxford_colour("Oxford blue"),
  title_fontfamily = "Phudu",
  arrow_fill = get_oxford_colour("Oxford blue"),
  arrow_col = arrow_fill
)
```

## Arguments

- base_size:

  The size of text

- base_family:

  The font family to use for the text. Default to main Oxford font
  *Roboto*

- bg_col:

  Background colour for alternating rows. Default to *Oxford cool grey*.

- ci_col:

  Colour of the CI. A vector of colour should be provided for the
  grouped forest plot. Default set to *Oxford blue*

- ci_fill:

  Colour fill the point estimation. A vector of colour should be
  provided for the grouped forest plot. Default to value of `ci_col`.

- refline_col:

  Line colour for the reference line. Default set to *Oxford red*.

- vertline_col:

  Line colour for the extra vertical line. Default set to *Oxford ash
  grey*.

- summary_col:

  Colour for borders of the summary diamond shape. Default set to
  *Oxford ash grey*

- summary_fill:

  Colour for filling the summary diamond shape. Default set to value of
  `summary_col`.

- footnote_cex:

  Multiplier applied to font size for footnote.

- footnote_fontface:

  The font face for footnote. Default to *plain*.

- footnote_col:

  Colour of the footnote. Default set to *Oxford royal blue*.

- title_col:

  Colour of title. Default set to *Oxford blue*

- title_fontfamily:

  Font family of title. Default set to value of `base_family`.

- arrow_fill:

  Filling colour of the arrow head. Default set to *Oxford blue*.

- arrow_col:

  Line and text colour of the arrow. Default set to value of
  `arrow_fill`.

## Value

A list of specified theme parameters.

## Author

Ernest Guevarra and Greco Malijan

## Examples

``` r
theme_oxford_forest()
#> refline_lwd, refline_col will be deprecated, use refline_gp instead.
#> footnote_cex, footnote_fontface, footnote_col will be deprecated, use footnote_gp instead.
#> title_col, title_fontfamily will be deprecated, use title_gp instead.
#> arrow_lwd, arrow_fill, arrow_col will be deprecated, use arrow_gp instead.
#> $legend
#> $legend$gp
#> $fontsize
#> [1] 11.5
#> 
#> $fontfamily
#> [1] "Roboto"
#> 
#> $cex
#> [1] 1
#> 
#> 
#> $legend$name
#> [1] "Group"
#> 
#> $legend$position
#> [1] "right"
#> 
#> $legend$label
#> [1] ""
#> 
#> $legend$ncol
#> [1] 1
#> 
#> $legend$byrow
#> [1] TRUE
#> 
#> 
#> $ci
#> $ci$pch
#> [1] 15
#> 
#> $ci$col
#> [1] "#002147"
#> 
#> $ci$fill
#> [1] "#002147"
#> 
#> $ci$lty
#> [1] 1
#> 
#> $ci$alpha
#> [1] 1
#> 
#> $ci$lwd
#> [1] 1
#> 
#> $ci$t_height
#> NULL
#> 
#> 
#> $xaxis
#> $fontsize
#> [1] 11.5
#> 
#> $fontfamily
#> [1] "Roboto"
#> 
#> $lwd
#> [1] 0.6
#> 
#> $cex
#> [1] 1
#> 
#> 
#> $footnote
#> $footnote$gp
#> $fontsize
#> [1] 11.5
#> 
#> $fontfamily
#> [1] "Roboto"
#> 
#> $cex
#> [1] 0.7
#> 
#> $col
#> [1] "#1D42A6"
#> 
#> $font
#> plain 
#>     1 
#> 
#> 
#> $footnote$parse
#> [1] TRUE
#> 
#> 
#> $title
#> $title$just
#> [1] "left"
#> 
#> $title$gp
#> $cex
#> [1] 1.2
#> 
#> $col
#> [1] "#002147"
#> 
#> $fontfamily
#> [1] "Roboto"
#> 
#> $font
#> bold 
#>    2 
#> 
#> 
#> 
#> $arrow
#> $arrow$type
#> [1] "open"
#> 
#> $arrow$label_just
#> [1] "start"
#> 
#> $arrow$length
#> [1] 0.05inches
#> 
#> $arrow$gp
#> $fontsize
#> [1] 11.5
#> 
#> $fontfamily
#> [1] "Roboto"
#> 
#> $lwd
#> [1] 1.25
#> 
#> $fill
#> [1] "#002147"
#> 
#> $col
#> [1] "#002147"
#> 
#> 
#> 
#> $refline
#> $lwd
#> [1] 1.25
#> 
#> $lty
#> [1] "dashed"
#> 
#> $col
#> [1] "#AA1A2D"
#> 
#> 
#> $vertline
#> $lwd
#> [1] 1
#> 
#> $lty
#> [1] "dashed"
#> 
#> $col
#> [1] "#61615F"
#> 
#> $fontsize
#> [1] 11.5
#> 
#> $fontfamily
#> [1] "Roboto"
#> 
#> 
#> $xlab
#> $xlab$just
#> [1] "refline"
#> 
#> $xlab$gp
#> $fontsize
#> [1] 11.5
#> 
#> $fontfamily
#> [1] "Roboto"
#> 
#> $cex
#> [1] 1
#> 
#> $font
#> plain 
#>     1 
#> 
#> 
#> 
#> $summary
#> $col
#> [1] "#61615F"
#> 
#> $fill
#> [1] "#61615F"
#> 
#> 
#> $tab_theme
#> $tab_theme$core
#> $tab_theme$core$fg_fun
#> function (label, parse = FALSE, col = "black", fontsize = 12, 
#>     cex = 1, fontfamily = "", fontface = 1L, lineheight = 1.2, 
#>     alpha = 1, rot = 0, check.overlap = FALSE, name = NULL, vp = NULL, 
#>     just = "centre", hjust = 0.5, vjust = 0.5, x = 0.5, y = 0.5, 
#>     default.units = "npc") 
#> {
#>     if (parse) {
#>         label <- tryCatch(parse(text = label), error = function(e) label)
#>     }
#>     textGrob(label = label, x = x, y = y, just = just, hjust = hjust, 
#>         vjust = vjust, rot = rot, check.overlap = check.overlap, 
#>         default.units = default.units, name = name, vp = vp, 
#>         gp = gpar(col = col, cex = cex, fontfamily = fontfamily, 
#>             fontface = fontface, fontsize = fontsize, lineheight = lineheight, 
#>             alpha = alpha))
#> }
#> <bytecode: 0x557d13144420>
#> <environment: namespace:gridExtra>
#> 
#> $tab_theme$core$fg_params
#> $tab_theme$core$fg_params$parse
#> [1] FALSE
#> 
#> $tab_theme$core$fg_params$col
#> [1] "black"
#> 
#> $tab_theme$core$fg_params$fontsize
#> [1] 11.5
#> 
#> $tab_theme$core$fg_params$fontfamily
#> [1] "Roboto"
#> 
#> $tab_theme$core$fg_params$hjust
#> [1] 0
#> 
#> $tab_theme$core$fg_params$x
#> [1] 0.05
#> 
#> 
#> $tab_theme$core$bg_fun
#> function (fill = "white", col = "black", lty = "solid", lwd = 1, 
#>     cex = 1, alpha = 1, lineend = "round", linejoin = "round", 
#>     linemitre = 10, lex = 1, name = NULL, vp = NULL, just = "centre", 
#>     hjust = 0.5, vjust = 0.5, width = unit(1, "npc") - unit(2, 
#>         "scaledpts"), height = unit(1, "npc") - unit(2, "scaledpts"), 
#>     x = 0.5, y = 0.5, default.units = "npc") 
#> {
#>     rectGrob(x = x, y = y, just = just, hjust = hjust, vjust = vjust, 
#>         width = width, height = height, default.units = default.units, 
#>         name = name, vp = vp, gp = gpar(col = col, fill = fill, 
#>             alpha = alpha, lty = lty, lwd = lwd, lex = lex, lineend = lineend, 
#>             linejoin = linejoin, linemitre = linemitre, cex = cex))
#> }
#> <bytecode: 0x557d1310a448>
#> <environment: namespace:gridExtra>
#> 
#> $tab_theme$core$bg_params
#> $tab_theme$core$bg_params$fill
#> [1] "#E4F0EF" "#FFFFFF"
#> 
#> $tab_theme$core$bg_params$col
#> [1] NA
#> 
#> 
#> $tab_theme$core$padding
#> [1] 4mm 3mm
#> 
#> 
#> $tab_theme$colhead
#> $tab_theme$colhead$fg_fun
#> function (label, parse = FALSE, col = "black", fontsize = 12, 
#>     cex = 1, fontfamily = "", fontface = 1L, lineheight = 1.2, 
#>     alpha = 1, rot = 0, check.overlap = FALSE, name = NULL, vp = NULL, 
#>     just = "centre", hjust = 0.5, vjust = 0.5, x = 0.5, y = 0.5, 
#>     default.units = "npc") 
#> {
#>     if (parse) {
#>         label <- tryCatch(parse(text = label), error = function(e) label)
#>     }
#>     textGrob(label = label, x = x, y = y, just = just, hjust = hjust, 
#>         vjust = vjust, rot = rot, check.overlap = check.overlap, 
#>         default.units = default.units, name = name, vp = vp, 
#>         gp = gpar(col = col, cex = cex, fontfamily = fontfamily, 
#>             fontface = fontface, fontsize = fontsize, lineheight = lineheight, 
#>             alpha = alpha))
#> }
#> <bytecode: 0x557d13144420>
#> <environment: namespace:gridExtra>
#> 
#> $tab_theme$colhead$fg_params
#> $tab_theme$colhead$fg_params$parse
#> [1] FALSE
#> 
#> $tab_theme$colhead$fg_params$col
#> [1] "black"
#> 
#> $tab_theme$colhead$fg_params$fontface
#> [1] 2
#> 
#> $tab_theme$colhead$fg_params$fontsize
#> [1] 11.5
#> 
#> $tab_theme$colhead$fg_params$fontfamily
#> [1] "Roboto"
#> 
#> $tab_theme$colhead$fg_params$hjust
#> [1] 0
#> 
#> $tab_theme$colhead$fg_params$x
#> [1] 0.05
#> 
#> 
#> $tab_theme$colhead$bg_fun
#> function (fill = "white", col = "black", lty = "solid", lwd = 1, 
#>     cex = 1, alpha = 1, lineend = "round", linejoin = "round", 
#>     linemitre = 10, lex = 1, name = NULL, vp = NULL, just = "centre", 
#>     hjust = 0.5, vjust = 0.5, width = unit(1, "npc") - unit(2, 
#>         "scaledpts"), height = unit(1, "npc") - unit(2, "scaledpts"), 
#>     x = 0.5, y = 0.5, default.units = "npc") 
#> {
#>     rectGrob(x = x, y = y, just = just, hjust = hjust, vjust = vjust, 
#>         width = width, height = height, default.units = default.units, 
#>         name = name, vp = vp, gp = gpar(col = col, fill = fill, 
#>             alpha = alpha, lty = lty, lwd = lwd, lex = lex, lineend = lineend, 
#>             linejoin = linejoin, linemitre = linemitre, cex = cex))
#> }
#> <bytecode: 0x557d1310a448>
#> <environment: namespace:gridExtra>
#> 
#> $tab_theme$colhead$bg_params
#> $tab_theme$colhead$bg_params$fill
#> [1] "white"
#> 
#> $tab_theme$colhead$bg_params$col
#> [1] NA
#> 
#> 
#> $tab_theme$colhead$padding
#> [1] 4mm 4mm
#> 
#> 
#> $tab_theme$rowhead
#> $tab_theme$rowhead$fg_fun
#> function (label, parse = FALSE, col = "black", fontsize = 12, 
#>     cex = 1, fontfamily = "", fontface = 1L, lineheight = 1.2, 
#>     alpha = 1, rot = 0, check.overlap = FALSE, name = NULL, vp = NULL, 
#>     just = "centre", hjust = 0.5, vjust = 0.5, x = 0.5, y = 0.5, 
#>     default.units = "npc") 
#> {
#>     if (parse) {
#>         label <- tryCatch(parse(text = label), error = function(e) label)
#>     }
#>     textGrob(label = label, x = x, y = y, just = just, hjust = hjust, 
#>         vjust = vjust, rot = rot, check.overlap = check.overlap, 
#>         default.units = default.units, name = name, vp = vp, 
#>         gp = gpar(col = col, cex = cex, fontfamily = fontfamily, 
#>             fontface = fontface, fontsize = fontsize, lineheight = lineheight, 
#>             alpha = alpha))
#> }
#> <bytecode: 0x557d13144420>
#> <environment: namespace:gridExtra>
#> 
#> $tab_theme$rowhead$fg_params
#> $tab_theme$rowhead$fg_params$parse
#> [1] FALSE
#> 
#> $tab_theme$rowhead$fg_params$col
#> [1] "black"
#> 
#> $tab_theme$rowhead$fg_params$fontface
#> [1] 3
#> 
#> $tab_theme$rowhead$fg_params$fontsize
#> [1] 12
#> 
#> $tab_theme$rowhead$fg_params$fontfamily
#> [1] ""
#> 
#> $tab_theme$rowhead$fg_params$hjust
#> [1] 1
#> 
#> $tab_theme$rowhead$fg_params$x
#> [1] 0.95
#> 
#> 
#> $tab_theme$rowhead$bg_fun
#> function (fill = "white", col = "black", lty = "solid", lwd = 1, 
#>     cex = 1, alpha = 1, lineend = "round", linejoin = "round", 
#>     linemitre = 10, lex = 1, name = NULL, vp = NULL, just = "centre", 
#>     hjust = 0.5, vjust = 0.5, width = unit(1, "npc") - unit(2, 
#>         "scaledpts"), height = unit(1, "npc") - unit(2, "scaledpts"), 
#>     x = 0.5, y = 0.5, default.units = "npc") 
#> {
#>     rectGrob(x = x, y = y, just = just, hjust = hjust, vjust = vjust, 
#>         width = width, height = height, default.units = default.units, 
#>         name = name, vp = vp, gp = gpar(col = col, fill = fill, 
#>             alpha = alpha, lty = lty, lwd = lwd, lex = lex, lineend = lineend, 
#>             linejoin = linejoin, linemitre = linemitre, cex = cex))
#> }
#> <bytecode: 0x557d1310a448>
#> <environment: namespace:gridExtra>
#> 
#> $tab_theme$rowhead$bg_params
#> $tab_theme$rowhead$bg_params$fill
#> [1] NA
#> 
#> $tab_theme$rowhead$bg_params$col
#> [1] NA
#> 
#> 
#> $tab_theme$rowhead$padding
#> [1] 4mm 4mm
#> 
#> 
#> 
```
