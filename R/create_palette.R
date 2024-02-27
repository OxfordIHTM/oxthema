#'
#' Create new palettes based on Oxford palettes
#'
#' These functions apply a similar approach used and demonstrated by
#' [ColorBrewer](https://colorbrewer2.org) and has been patterned after the
#' syntax of the [RColorBrewer](https://cran.r-project.org/web/packages/RColorBrewer/index.html)
#' package
#'
#' @param name Name of Oxford palette to use
#' @param n Number of colours desired/required. Oxford palettes have at least
#'   5 colours. All colour schemes are derived from the University of Oxford
#'   [visual identity guidelines](https://communications.web.ox.ac.uk/communications-resources/visual-identity/identity-guidelines).
#'   #If NULL (default), use all colours.
#' @param type A character value for type of palette to use. Can be either
#'   sequential, divergent, or qualitative.
#'
#' @return A character vector of desired/required colours with length equivalent
#'   to `n`
#'
#' @examples
#' create_palette_sequential("blues", 5)
#' create_palette_divergent("brbg", 10)
#' create_palette_qualitative("dark", 5)
#' create_brewer_palette("blues", 5)
#'
#' @rdname create_palette
#' @export
#'

create_palette_sequential <- function(name, n) {
  ## Check if specified palette is sequential ----
  if (
    !name %in% c(
      "blues", "bugn", "bupu", "gnbu", "greens", "greys",
      "pubu", "pubugn", "purd", "rdpu", "reds", "ylgn",
      "ylgnbu", "ylorbr", "ylorrd"
    )
  ) stop (
    "Selected palette is not a sequential palette. Please verify and try again."
  )

  ## Check if number of colours is compatible with sequential ----
  if (n < 3) {
    warning ("Sequential palettes have minimum 3 colours. Returning 3 colours.")
    n <- 3
  }

  if (n > 9) {
    warning ("Sequential palettes have maximum 9 colours. Returning 9 colours.")
    n <- 9
  }

  ## Get base palette ----
  pal <- oxford_brewer_palettes()[[name]]

  ## Update palette to n ----
  pal <- grDevices::colorRampPalette(pal)(n)

  ## Return palette ----
  structure(pal, class = "palette", name = name)
}


#'
#' @rdname create_palette
#' @export
#'
create_palette_divergent <- function(name, n) {
  ## Check if specified palette is divergent ----
  if (
    !name %in%
      c("brbg", "piylgn", "prgn", "puor", "rdbu", "rdgy","rdylbu", "rdylgn")
  ) stop (
    "Selected palette is not a divergent palette. Please verify and try again."
  )

  ## Check if number of colours is compatible with divergent ----
  if (n < 3) {
    warning ("Divergent palettes have minimum 3 colours. Returning 3 colours.")
    n <- 3
  }

  if (n > 9) {
    warning ("Divergent palettes have maximum 11 colours. Returning 11 colours.")
    n <- 9
  }

  ## Get base palette ----
  pal <- oxford_brewer_palettes()[[name]]

  ## Update palette to n ----
  pal <- grDevices::colorRampPalette(pal)(n)

  ## Return palette ----
  structure(pal, class = "palette", name = name)
}

#'
#' @rdname create_palette
#' @export
#'
create_palette_qualitative <- function(name, n) {
  ## Check if specified palette is qualitative ----
  if (
    !name %in%
    c("pastel", "dark", "heritage", "contemporary", "celebratory", "corporate")
  ) stop (
    "Selected palette is not a qualitative palette. Please verify and try again."
  )

  ## Check if number of colours is compatible with pastel ----
  if (n > 8 & name == "pastel") {
    warning (
      paste(
        "The pastel qualitative palette has maximum 8 colours. Returning 8 colours."
      )
    )
    n <- 8
  }

  ## Check if number of colours is compatible with dark ----
  if (n > 7 & name == "dark") {
    warning (
      paste(
        "The dark qualitative palette has maximum 7 colours. Returning 7 colours."
      )
    )
    n <- 7
  }

  ## Get base palette ----
  pal <- oxford_brewer_palettes()[[name]]

  ## Update palette to n ----
  pal <- grDevices::colorRampPalette(pal)(n)

  ## Return palette ----
  structure(pal, class = "palette", name = name)
}


#'
#' @rdname create_palette
#' @export
#'
create_brewer_palette <- function(name, n,
                                  type = c("sequential", "divergent", "qualitative")) {
  ## Determine type of palette ----
  type <- match.arg(type)

  ## Determine which palette to create ----
  if (type == "sequential") pal <- create_palette_sequential(name = name, n = n)

  if (type == "divergent") pal <- create_palette_divergent(name = name, n = n)

  if (type == "qualitative") pal <- create_palette_qualitative(name = name, n = n)

  ## Return palette ----
  pal
}

