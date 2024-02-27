#'
#' Oxford theme palettes from visual identity guidelines
#'
#' @examples
#' oxford_theme_palettes()
#'
#' @rdname oxford_theme
#' @export
#'
oxford_theme_palettes <- function() {
  list(
    heritage = get_oxford_colours(
      pattern = c("sienna", "peach", "dusk", "sage green", "Oxford green")
    ),
    contemporary = get_oxford_colours(
      pattern = c("coral", "potters pink", "cool grey", "ocean grey", "aqua")
    ),
    celebratory = get_oxford_colours(
      pattern = c("viridian", "mauve", "ochre", "lavender", "plum")
    ),
    corporate = get_oxford_colours(
      pattern = c("orange", "sky blue", "lime green", "cerulean", "royal blue")
    )
  )
}


#'
#' Oxford base map palettes
#'
#' @examples
#' oxford_brewer_palettes()
#'
#' @rdname oxford_brewer_palette
#' @export
#'
oxford_brewer_palettes <- function() {
  list(
    blues  = get_oxford_colours(pattern = c("sky blue", "cerulean", "royal blue")),
    bugn   = get_oxford_colours(pattern = c("sky blue", "aqua", "viridian")),
    bupu   = get_oxford_colours(pattern = c("sky blue", "royal blue", "plum")),
    gnbu   = get_oxford_colours(pattern = c("ocean grey", "aqua", "cerulean")),
    greens = get_oxford_colours(pattern = c("sage", "lime", "Oxford green")),
    greys  = get_oxford_colours(pattern = c("shell", "umber", "ash")),
    pubu   = get_oxford_colours(pattern = c("lavender", "cerulean", "royal blue")),
    pubugn = get_oxford_colours(pattern = c("lavender", "cerulean", "aqua")),
    purd   = get_oxford_colours(pattern = c("lavender", "plum", "red")),
    rdpu   = get_oxford_colours(pattern = c("potters pink", "Oxford pink", "plum")),
    reds   = get_oxford_colours(pattern = c("potters", "coral", "red")),
    ylgn   = get_oxford_colours(pattern = c("lemon", "lime", "Oxford green")),
    ylgnbu = get_oxford_colours(pattern = c("lemon", "aqua", "royal blue")),
    ylorbr = get_oxford_colours(pattern = c("lemon", "orange", "sienna")),
    ylorrd = get_oxford_colours(pattern = c("lemon", "orange", "red")),
    brbg   = get_oxford_colours(pattern = c("sienna", "cool grey", "Oxford green")),
    piylgn = get_oxford_colours(pattern = c("Oxford pink", "cool grey", "Oxford green")),
    prgn   = get_oxford_colours(pattern = c("plum", "cool grey", "Oxford green")),
    puor   = get_oxford_colours(pattern = c("orange", "cool grey", "plum")),
    rdbu   = get_oxford_colours(pattern = c("red", "cool grey", "royal blue")),
    rdgy   = get_oxford_colours(pattern = c("red", "cool grey", "ash")),
    rdylbu = get_oxford_colours(pattern = c("red", "lemon", "royal blue")),
    rdylgn = get_oxford_colours(pattern = c("red", "lemon", "Oxford green")),
    pastel = get_oxford_colours(pattern = c("mauve", "peach", "lilac", "ocean grey", "ochre", "sky", "sage")),
    dark   = get_oxford_colours(pattern = c("lemon", "lime", "cerulean", "pink", "orange", "plum", "sienna", "umber"))
  )
}
