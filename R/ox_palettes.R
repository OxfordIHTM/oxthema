#'
#' Complete list of Oxford colour palettes
#'
#' @examples
#' oxford_palettes()
#'
#' @export
#'
oxford_palettes <- function() {
  list(
    # blues = c("#4891DC", "#9ECEEB", "#44687D", "#5F9BAF", "#A1C4D0", "#007770", "#7BA296", "#BCD2C3"),
    # greens = c("#69913B", "#B9CF96", "#CEDBAF", "#AAB300", "#DBDE72", "#E3E597"),
    # oranges = c("#CF7A30", "#F5CF47", "#F3DE74"),
    # reds = c("#872434", "#BE0F34", "#EBC4CB"),
    # grays = c("#A79D96", "#C7C2BC", "#E0DED9"),
    heritage = get_oxford_colours(
      pattern = c(
        "sienna", "peach", "dusk", "sage green", "Oxford green", "Oxford blue"
      )
    ),
    contemporary = get_oxford_colours(
      pattern = c(
        "coral", "potters pink", "cool grey", "ocean grey", "aqua", "Oxford blue"
      )
    ),
    celebratory = get_oxford_colours(
      pattern = c(
        "viridian", "mauve", "ochre", "lavender", "plum", "Oxford blue"
      )
    ),
    corporate = get_oxford_colours(
      c("orange", "sky blue", "lime green", "cerulean", "royal blue", "Oxford blue")
    )
  )
}





