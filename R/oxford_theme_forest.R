#'
#' Oxford theme for [forestploter] package
#'
#' @param base_size The size of text
#' @param base_family The font family to use for the text. Default to
#'   main Oxford font *Roboto*
#' @param ci_col Colour of the CI. A vector of colour should be provided for
#'   the grouped forest plot. Default set to *Oxford blue*
#' @param ci_fill Colour fill the point estimation. A vector of colour should be
#'   provided for the grouped forest plot. Default to value of `ci_col`.
#' @param refline_col Line colour for the reference line. Default set to
#'   *Oxford sienna*.
#' @param vertline_col Line colour for the extra vertical line. Default set to
#'   *Oxford sienna*.
#' @param summary_col Colour for borders of the summary diamond shape. Default
#'   set to *Oxford dusk*
#' @param summary_fill Colour for filling the summary diamond shape. Default set
#'   to value of `summary_col`.
#' @param footnote_cex Multiplier applied to font size for footnote.
#' @param footnote_fontface The font face for footnote.
#' @param footnote_col Colour of the footnote. Default set to
#'   *Oxford sage green*.
#' @param title_col Colour of title. Default set to *Oxford blue*
#' @param title_fontfamily Font family of title. Default set to value of
#'   `base_family`.
#' @param arrow_fill Filling colour of the arrow head. Default set to
#'   *Oxford blue*.
#' @param arrow_col Line and text colour of the arrow. Default set to value of
#'   `arrow_fill`.
#'
#' @returns A list of specified theme parameters.
#'
#' @examples
#' theme_oxford_forest()
#'
#' @rdname theme_forest
#' @export
#'
theme_oxford_forest <- function(base_size = 11,
                                base_family = "Roboto",
                                ci_col = get_oxford_colour("Oxford blue"),
                                ci_fill = ci_col,
                                refline_col = get_oxford_colour("red"),
                                vertline_col = get_oxford_colour("red"),
                                summary_col = get_oxford_colour("ash"),
                                summary_fill = summary_col,
                                footnote_cex = 0.7,
                                footnote_fontface = "bold",
                                footnote_col = get_oxford_colour("royal"),
                                title_col = get_oxford_colour("Oxford blue"),
                                title_fontfamily = base_family,
                                arrow_fill = get_oxford_colour("Oxford blue"),
                                arrow_col = arrow_fill) {
  forestploter::forest_theme(
    base_size = base_size,
    base_family = base_family,
    ci_col = ci_col,
    ci_fill = ci_fill,
    refline_lwd = 1.5,
    refline_col = refline_col,
    vertline_col = vertline_col,
    summary_col = summary_col,
    summary_fill = summary_fill,
    footnote_cex = footnote_cex,
    footnote_fontface = footnote_fontface,
    footnote_col = footnote_col,
    title_col = title_col,
    title_fontfamily = title_fontfamily,
    arrow_fill = arrow_fill,
    arrow_col = arrow_col,
    arrow_lwd = 1.25
  )
}

