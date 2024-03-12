#'
#' Convert CMYK to RGB
#'
#' @param C An integer value for cyan
#' @param Y An integer value for yellow
#' @param M An integer value for magenta
#' @param K An integer value for key (black)
#'
#' @returns A named vector for R, G, and B for RGB
#'
#' @examples
#' cmyk2rgb(100, 80, 0, 60)
#'
#' @export
#'
cmyk2rgb <- function(C, M, Y, K) {
  C <- C / 100.0
  M <- M / 100.0
  Y <- Y / 100.0
  K <- K / 100.0

  n.c <- (C * (1 - K) + K)
  n.m <- (M * (1 - K) + K)
  n.y <- (Y * (1 - K) + K)

  r.col <- ceiling(255 * (1 - n.c))
  g.col <- ceiling(255 * (1 - n.m))
  b.col <- ceiling(255 * (1 - n.y))

  paste0(
    "#",
    stringr::str_pad(as.hexmode(r.col), width = 2, side = "left", pad = "0"),
    stringr::str_pad(as.hexmode(g.col), width = 2, side = "left", pad = "0"),
    stringr::str_pad(as.hexmode(b.col), width = 2, side = "left", pad = "0")
  ) |>
    grDevices::col2rgb() |>
    (\(x) c(R = x[1], G = x[2], B = x[3]))()
}


#'
#' Print a palette
#'
#' @param x A character value or a vector of values of class palette.
#' @param ... Other arguments
#'
#' @returns Shows image of a palette with the specified colours.
#'
#' @examples
#' \dontrun{
#'   pal <- oxford_theme_palettes()$heritage
#'   class(pal) <- palette
#' }
#'
#' @export
#'
print.palette <- function(x, ...) {
  n <- length(x)

  withr::with_par(
    new = list(mar = c(0.5, 0.5, 0.5, 0.5)),
    code = {
      image(1:n, 1, as.matrix(1:n), col = x,
            ylab = "", xaxt = "n", yaxt = "n", bty = "n")

      rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
      text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
    }
  )
}
