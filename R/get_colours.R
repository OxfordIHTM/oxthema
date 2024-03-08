#'
#' Get named Oxford colours vector
#'
#' @param pattern Optional. A character value or vector to use as a search term.
#'   Default is NULL in which case all the Oxford colours are returned.
#' @param model A character vector of colour model. Can be "rgb", "cmyk", "hex",
#'   or "pantone". Default is "hex".
#' @param named Logical. Should the output be a named character value or
#'   vector? Default is FALSE.
#'
#' @returns A character value or vector of Oxford colour/s as per `model`
#'   specification. If `named` is TRUE, returns a named character value or
#'   vector.
#'
#' @examples
#' get_oxford_colours()
#' get_oxford_colours(model = "rgb")
#' get_oxford_colours(pattern = "lilac")
#' get_oxford_colours(pattern = c("lilac", "sage green"))
#'
#' @rdname get_oxford_colour
#' @export
#'
get_oxford_colour <- function(pattern = NULL,
                              model = c("hex", "rgb", "cmyk", "pantone"),
                              named = FALSE) {
  ## Get type ----
  model <- match.arg(model)

  ## Get df ----
  df <- oxfordtheme::oxford_colours

  ## Determine if there is something specific to search for ----
  if (!is.null(pattern)) {
    ## Get colours vector ----
    ox_cols <- df[c("name", model)][stringr::str_detect(df$name, pattern = pattern), ]

    if (named) {
      #ox_cols <- structure(ox_cols[[model]], names = ox_cols[["name"]])

      ox_cols <- ox_cols |>
        (\(x)
          {
            cols <- x[[model]]
            names(cols) <- x$name
            cols
          }
        )()
    } else {
      ox_cols <- ox_cols[[model]]
    }
  } else {
    ## Get colours vector ----
    ox_cols <- df[[model]]

    if (named) {
      names(ox_cols) <- df[["name"]]
    }
  }

  ox_cols
}

#'
#' @rdname get_oxford_colour
#' @export
#'

get_oxford_colours <- function(pattern = NULL,
                               model = c("hex", "rgb", "cmyk", "pantone"),
                               named = FALSE) {
  ## Return all or just specific colours ----
  if (is.null(pattern)) {
    ox_cols <- get_oxford_colour(pattern = pattern, model = model, named = named)
  } else {
    ox_cols <- lapply(
      X = pattern, FUN = get_oxford_colour, model = model, named = named
    ) |>
      unlist()
  }

  ## Return ox_cols ----
  ox_cols
}
