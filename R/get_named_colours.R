#'
#' Get named Oxford colours vector
#'
#' @param pattern Optional. A character value or vector to use as a search term.
#'   Default is NULL in which case all the Oxford colours are returned.
#' @param type A character vector of colour type. Can be "rgb", "cmyk", "hex",
#'   or "pantone". Default is "hex".
#'
#' @return A named vector of Oxford colour/s
#'
#' @examples
#' get_oxford_colours()
#' get_oxford_colours(type = "rgb")
#' get_oxford_colours(pattern = "lilac")
#' get_oxford_colours(pattern = c("lilac", "sage green"))
#'
#' @rdname get_oxford_colour
#' @export
#'
get_oxford_colour <- function(pattern = NULL,
                              type = c("hex", "rgb", "cmyk", "pantone")){
  ## Get type ----
  type <- match.arg(type)

  ## Get df ----
  df <- oxfordtheme::oxford_colours

  ## Determine if there is something specific to search for ----
  if (!is.null(pattern)) {
    ## Get colours vector ----
    ox_cols <- df[stringr::str_detect(df$name, pattern = pattern), c("name", type)] |>
      (\(x)
       {
         cols <- x[[type]]
         names(cols) <- x[["name"]]
         cols
      }
      )()
  } else {
    ## Get colours vector ----
    ox_cols <- df[ , c("name", type)] |>
      (\(x)
       {
         cols <- x[[type]]
         names(cols) <- x[["name"]]
         cols
      }
      )()
  }

  ox_cols
}

#'
#' @rdname get_oxford_colour
#' @export
#'

get_oxford_colours <- function(pattern = NULL,
                               type = c("hex", "rgb", "cmyk", "pantone")) {
  ## Return all or just specific colours ----
  if (is.null(pattern)) {
    ox_cols <- get_oxford_colour(pattern = pattern, type = type)
  } else {
    ox_cols <- lapply(X = pattern, FUN = get_oxford_colour, type = type) |>
      unlist()
  }

  ## Return ox_cols ----
  ox_cols
}
