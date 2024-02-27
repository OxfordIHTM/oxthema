#'
#' Complete list of Oxford colour palettes
#'
#' @examples
#' oxford_palettes()
#'
#' @rdname oxford_palette
#' @export
#'
oxford_palettes <- function() {
  list(
    blues = get_oxford_colours(pattern = c("sky blue", "cerulean", "royal blue")),
    bugn = get_oxford_colours(pattern = c("sky blue", "aqua", "viridian")),
    bupu = get_oxford_colours(pattern = c("sky blue", "royal blue", "plum")),
    gnbu = get_oxford_colours(pattern = c("ocean grey", "aqua", "cerulean")),
    greens = get_oxford_colours(pattern = c("sage", "lime", "Oxford green")),
    greys = get_oxford_colours(pattern = c("shell", "umber", "ash")),
    pubu = get_oxford_colours(pattern = c("lavender", "cerulean", "royal blue")),
    pubugn = get_oxford_colours(pattern = c("lavender", "cerulean", "aqua")),
    purd = get_oxford_colours(pattern = c("lavender", "plum", "red")),
    rdpu = get_oxford_colours(pattern = c("potters pink", "Oxford pink", "plum")),
    reds = get_oxford_colours(pattern = c("potters", "coral", "red")),
    ylgn = get_oxford_colours(pattern = c("lemon", "lime", "Oxford green")),
    ylgnbu = get_oxford_colours(pattern = c("lemon", "aqua", "royal blue")),
    ylorbr = get_oxford_colours(pattern = c("lemon", "orange", "sienna")),
    ylorrd = get_oxford_colours(pattern = c("lemon", "orange", "red")),
    brbg = get_oxford_colours(pattern = c("sienna", "cool grey", "Oxford green")),
    piylgn = get_oxford_colours(pattern = c("Oxford pink", "cool grey", "Oxford green")),
    prgn = get_oxford_colours(pattern = c("plum", "cool grey", "Oxford green")),
    puor = get_oxford_colours(pattern = c("orange", "cool grey", "plum")),
    rdbu = get_oxford_colours(pattern = c("red", "cool grey", "royal blue")),
    rdgy = get_oxford_colours(pattern = c("red", "cool grey", "ash")),
    rdylbu = get_oxford_colours(pattern = c("red", "lemon", "royal blue")),
    rdylgn = get_oxford_colours(pattern = c("red", "lemon", "Oxford green")),
    pastel = get_oxford_colours(pattern = c("mauve", "peach", "lilac", "ocean grey", "ochre", "sky", "sage")),
    dark = get_oxford_colours(pattern = c("lemon", "lime", "cerulean", "pink", "orange", "plum", "sienna", "umber")),
    heritage = get_oxford_colours(pattern = c("sienna", "peach", "dusk", "sage green", "Oxford green")),
    contemporary = get_oxford_colours(pattern = c("coral", "potters pink", "cool grey", "ocean grey", "aqua")),
    celebratory = get_oxford_colours(pattern = c("viridian", "mauve", "ochre", "lavender", "plum")),
    corporate = get_oxford_colours(c("orange", "sky blue", "lime green", "cerulean", "royal blue"))
  )
}



#'
#' Create palette based on Oxford palettes
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
#' create_palette_qualitative("heritage", 5)
#' create_oxford_palette("blues", 5)
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
  pal <- oxford_palettes()[[name]]

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
  pal <- oxford_palettes()[[name]]

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

  ## Check if number of colours is compatible with qualitative ----
  if (
    n > 5 & name %in% c("heritage", "contemporary", "celebratory", "corporate")
  ) {
    warning(
      paste(
        "The qualitative palette", name, "has maximum 5 colours. Returning 5 colours."
      )
    )
    n <- 5
  }

  ## Check if number of colours is compatible with pastel ----
  if (n > 8 & name == "pastel") {
    warning (
      paste(
        "The qualitative palette", name, "has maximum 8 colours. Returning 8 colours."
      )
    )
    n <- 8
  }

  ## Check if number of colours is compatible with dark ----
  if (n > 7 & name == "dark") {
    warning (
      paste(
        "The qualitative palette", name, "has maximum 7 colours. Returning 7 colours."
      )
    )
    n <- 7
  }

  ## Get base palette ----
  pal <- oxford_palettes()[[name]]

  ## Update palette to n ----
  pal <- grDevices::colorRampPalette(pal)(n)

  ## Return palette ----
  structure(pal, class = "palette", name = name)
}


#'
#' @rdname create_palette
#' @export
#'
create_oxford_palette <- function(name, n,
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

