#'
#' A generic/base [ggplot2] theme for the oxthema package
#'
#' This generic/base [ggplot2] theme is the template from which all other
#' themes in the [oxthema] package is built on. This theme is inspired by
#' Bob Rudis' [hrbrthemes](https://github.com/hrbrmstr/hrbrthemes) package
#' drawing heavily on its typography-centric focus. This function uses the
#' *Roboto* Google font which is the core Oxford san serif font. It is freely
#' downloadable and easily installed on any system.
#'
#' @param base_family Base font family set to Roboto by default.
#' @param base_size Base font size. Default is 11.5.
#' @param plot_title_family Font family to use for the plot title. Default is
#'   `base_family`.
#' @param plot_title_face Font face ("plain", "italic", "bold", "bold.italic")
#'   for plot title. Default is "bold".
#' @param plot_title_size Plot title text size in pts. Default is 16.
#' @param plot_title_margin Margin at the bottom of the plot title. Default
#'   set at 10.
#' @param plot_title_colour Colour of the plot title text. Default
#'   is Oxford Blue.
#' @param subtitle_family Font family to use for the plot subtitle. Default is
#'   `base_family`.
#' @param subtitle_face Font face ("plain", "italic", "bold", "bold.italic")
#'   for plot subtitle. Default is "plain".
#' @param subtitle_size Plot subtitle text size in pts. Default is 12.
#' @param subtitle_colour Colour of the subtitle text. Default is Oxford ash
#'   grey.
#' @param subtitle_margin Margin at the bottom of the plot subtitle. Default
#'   set at 15.
#' @param strip_text_family Font family to use for the facet label. Default is
#'   `base_family`.
#' @param strip_text_face Font face ("plain", "italic", "bold", "bold.italic")
#'   for facet label. Default is "plain".
#' @param strip_text_size Facet label text size in pts. Default is 10.
#' @param caption_family Font family to use for the caption text. Default is
#'   `base_family`.
#' @param caption_face Font face ("plain", "italic", "bold", "bold.italic") for
#'   caption text. Default is "plain".
#' @param caption_size Caption text size in pts. Default is 9.
#' @param caption_margin Margin at the top of the plot caption text. Default is
#'   set at 10.
#' @param caption_colour Colour of the caption text. Default is Oxford ash
#'   grey.
#' @param axis_title_family Font family to use for the axis title. Default is
#'   `subtitle_family`.
#' @param axis_title_face Font face ("plain", "italic", "bold", "bold.italic")
#'   for axis title. Default is "plain".
#' @param axis_title_size Axis title text size in pts. Default is 9.
#' @param axis_title_colour Colour of the axis title text. Default is Oxford
#'   ash grey.
#' @param axis_title_just Axis title font justification, one of
#'   "bl" (bottom-left), "m" (middle), "rt" (right-top). Default is "rt".
#' @param legend_title_family Font family to use for the legend title. Default
#'   is `subtitle_family`.
#' @param legend_title_colour Colour of the legend title text. Default is
#'   Oxford ash grey.
#' @param legend_text_family Font family to use for the legend text. Default
#'   is `subtitle_family`.
#' @param legend_text_colour Colour of the legend text. Default is Oxford ash
#'   grey.
#' @param plot_margin Plot margins (specify with `ggplot2::margin()`).
#' @param plot_background_fill Fill colour for the plot background. Default is
#'   NULL.
#' @param grid_col Grid colour. Default to Oxford umber.
#' @param axis_col Axis colours. Default to Oxford umber.
#' @param grid Panel grid. Either `TRUE`, `FALSE`, or a combination of
#'   `X` (major x grid), `x` (minor x grid), `Y` (major y grid), and/or
#'   `y` (minor y grid). Default is TRUE.
#' @param axis_text_size Axis text size in pts. Default is `base_size`.
#' @param axis Add x or y axes? `TRUE`, `FALSE`, "`xy`". Default is FALSE.
#' @param ticks Logical. Should ticks be added? Default is FALSE.
#'
#' @returns A [ggplot2] theme.
#'
#' @rdname oxford_theme
#' @export
#'
theme_oxford <- function(base_family = "Roboto",
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
                         strip_text_size = 10,
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
                         ticks = FALSE) {
  ## Set theme_minial ----
  design <- ggplot2::theme_minimal(
    base_family = base_family, base_size = base_size
  )

  ## Set plot background design ----
  if (is.null(plot_background_fill)) {
    design <- design +
      ggplot2::theme(
        plot.background = element_blank()
      )
  } else {
    design <- design +
      ggplot2::theme(
        plot.background = ggplot2::element_rect(fill = plot_background_fill)
      )
  }

  ## Set legend design ----
  design <- design +
    ggplot2::theme(
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.title = ggplot2::element_text(
        family = legend_title_family, colour = legend_title_colour
      ),
      legend.text = ggplot2::element_text(
        family = legend_text_family, colour = legend_text_colour
      )
    )

  ## Set grid design ----
  if (inherits(grid, "character") | grid == TRUE) {
    design <- design +
      ggplot2::theme(
        panel.grid = ggplot2::element_line(
          colour = grid_col, linewidth = 0.2
        )
      )

    design <- design +
      ggplot2::theme(
        panel.grid.major = ggplot2::element_line(
          colour = grid_col, linewidth = 0.2
        )
      )

    design <- design +
      ggplot2::theme(
        panel.grid.minor = ggplot2::element_line(
          colour = grid_col, linewidth = 0.05
        )
      )

    if (inherits(grid, "character")) {
      if (regexpr("X", grid)[1] < 0)
        design <- design +
          ggplot2::theme(panel.grid.major.x = ggplot2::element_blank())

      if (regexpr("Y", grid)[1] < 0)
        design <- design +
          ggplot2::theme(panel.grid.major.y = ggplot2::element_blank())

      if (regexpr("x", grid)[1] < 0)
        design <- design +
          ggplot2::theme(panel.grid.minor.x = ggplot2::element_blank())

      if (regexpr("y", grid)[1] < 0)
        design <- design +
          ggplot2::theme(panel.grid.minor.y = ggplot2::element_blank())
    }
  } else {
    design <- design +
      ggplot2::theme(panel.grid = ggplot2::element_blank())
  }

  ## Set axis design ----
  if (inherits(axis, "character") | axis == TRUE) {
    design <- design +
      ggplot2::theme(
        axis.line = ggplot2::element_line(
          colour = axis_col, linewidth = 0.15
        )
      )

    if (inherits(axis, "character")) {
      axis <- tolower(axis)

      if (regexpr("x", axis)[1] < 0) {
        design <- design +
          ggplot2::theme(axis.line.x = ggplot2::element_blank())
      } else {
        design <- design +
          ggplot2::theme(
            axis.line.x = ggplot2::element_line(
              colour = axis_col, linewidth = 0.15
            )
          )
      }

      if (regexpr("y", axis)[1] < 0) {
        design <- design +
          ggplot2::theme(axis.line.y = ggplot2::element_blank())
      } else {
        design <- design +
          ggplot2::theme(
            axis.line.y = ggplot2::element_line(
              colour = axis_col, linewidth = 0.15
            )
          )
      }
    } else {
      design <- design +
        ggplot2::theme(
          axis.line.x = ggplot2::element_line(
            colour = axis_col, linewidth = 0.15
          )
        )

      design <- design +
        ggplot2::theme(
          axis.line.y = ggplot2::element_line(
            colour = axis_col, linewidth = 0.15
          )
        )
    }
  } else {
    design <- design + ggplot2::theme(axis.line = ggplot2::element_blank())
  }

  ## Set ticks design ----
  if (!ticks) {
    design <- design + ggplot2::theme(axis.ticks = ggplot2::element_blank())
    design <- design + ggplot2::theme(axis.ticks.x = ggplot2::element_blank())
    design <- design + ggplot2::theme(axis.ticks.y = ggplot2::element_blank())
  } else {
    design <- design +
      ggplot2::theme(axis.ticks = ggplot2::element_line(linewidth = 0.15))
    design <- design +
      ggplot2::theme(axis.ticks.x = ggplot2::element_line(linewidth = 0.15))
    design <- design +
      ggplot2::theme(axis.ticks.y = ggplot2::element_line(linewidth = 0.15))
    design <- design +
      ggplot2::theme(axis.ticks.length = grid::unit(5, "pt"))
  }

  ## Set axis text design ----
  xj <- switch(
    tolower(substr(axis_title_just, 1, 1)),
    b = 0, l = 0, m = 0.5, c = 0.5, r = 1, t = 1
  )
  yj <- switch(
    tolower(substr(axis_title_just, 2, 2)),
    b = 0, l = 0, m = 0.5, c = 0.5, r = 1, t = 1
  )

  ### x-axis text ----
  design <- design +
    ggplot2::theme(
      axis.text.x = ggplot2::element_text(
        size = axis_text_size, margin = ggplot2::margin(t = 0)
      )
    )

  ### y-axis text ----
  design <- design +
    ggplot2::theme(
      axis.text.y = ggplot2::element_text(
        size = axis_text_size, margin = ggplot2::margin(r = 0)
      )
    )

  ### axis titles ----
  design <- design +
    ggplot2::theme(
      axis.title = ggplot2::element_text(
        size = axis_title_size, family = axis_title_family,
        colour = axis_title_colour
      )
    )

  ### axis title adjustment ----
  design <- design +
    ggplot2::theme(
      axis.title.x = ggplot2::element_text(
        hjust = xj, size = axis_title_size,
        family = axis_title_family, face = axis_title_face
      )
    )

  design <- design +
    ggplot2::theme(
      axis.title.y = ggplot2::element_text(
        hjust = yj, size = axis_title_size,
        family = axis_title_family, face = axis_title_face
      )
    )

  ### y-axis on the right ----
  design <- design +
    ggplot2::theme(
      axis.title.y.right = ggplot2::element_text(
        hjust = yj, size = axis_title_size, angle = 90,
        family = axis_title_family, face = axis_title_face
      )
    )

  ### Set facet label design ----
  design <- design +
    ggplot2::theme(
      strip.text = ggplot2::element_text(
        hjust = 0, size = strip_text_size,
        face = strip_text_face, family = strip_text_family
      )
    )

  ### Set facet design ----
  design <- design +
    ggplot2::theme(panel.spacing = grid::unit(2, "lines"))

  ### Set plot title design ----
  design <- design +
    ggplot2::theme(
      plot.title = ggplot2::element_text(
        hjust = 0, size = plot_title_size, colour = plot_title_colour,
        margin = ggplot2::margin(b = plot_title_margin),
        family = plot_title_family, face = plot_title_face)
    )

  ### Set plot subtitle design ----
  design <- design +
    ggplot2::theme(
      plot.subtitle = ggplot2::element_text(
        hjust = 0, size = subtitle_size, colour = subtitle_colour,
        margin = ggplot2::margin(b = subtitle_margin),
        family = subtitle_family, face = subtitle_face
      )
    )

  ### Set plot caption design ----
  design <- design +
    ggplot2::theme(
      plot.caption = ggplot2::element_text(
        hjust = 1, size = caption_size, colour = caption_colour,
        margin = ggplot2::margin(t = caption_margin),
        family = caption_family, face = caption_face
      )
    )

  ### Set plot margins ----
  design <- design + ggplot2::theme(plot.margin = plot_margin)

  ## return design ----
  design
}
