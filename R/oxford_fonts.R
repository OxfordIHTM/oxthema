#'
#' Oxford core and additional fonts
#'
#' @rdname oxford_font
#' @export
#'
oxford_fonts <- list(
  oxford_roboto = "Roboto",
  oxford_noto_serif = "Noto Serif",
  oxford_marcellus = "Marcellus",
  oxford_montserrat = "Montserrat",
  oxford_noto_serif_display = "Noto Serif Display",
  oxford_bebas_neue = "Bebas Neue",
  oxford_phudu = "Phudu"
)


#'
#' Check whether Oxford fonts (core and theme) are installed and available
#'
#' @returns A list of available and not available fonts and a message indicating
#'   availability status of Oxford fonts.
#'
#' @examples
#' check_oxford_fonts()
#'
#'
#' @rdname oxford_font
#' @export
#'
check_oxford_fonts <- function() {
  fonts <- systemfonts::system_fonts()

  available <- oxford_fonts[oxford_fonts %in% fonts$family] |> unlist()

  not_available <- oxford_fonts[!oxford_fonts %in% available]

  if (length(available) > 0) {
    if (length(available) == length(oxford_fonts)) {
      message("All Oxford fonts (core and theme) are installed in your system.")
    } else {
      if (!all(c("Roboto", "Noto Serif") %in% available)) {
        message(
          "None of the core Oxford fonts (Roboto or Noto Serif) is installed
           in your system. Please download and install at least one of them."
        )
      } else {
        message(
          paste0(
            "The following Oxford fonts are installed in your system: ",
            paste(available, collapse = ", "),
            ". The following Oxford fonts are not installed in your system: ",
            paste(not_available, collapse = ", ")
          )
        )
      }
    }
  } else {
    message(
      paste0(
        "None of the Oxford fonts (",
        paste(oxford_fonts |> unlist() , collapse = ", "),
        "are installed in your system. Please download and install at least one of them."
      )
    )
  }

  list(
    available_fonts = available,
    not_available_fonts = not_available
  )
}
