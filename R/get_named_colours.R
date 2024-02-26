#'
#' Get named Oxford colours vector
#'
#' @param df The `oxford_colours` data.frame.
#' @param type A character vector of colour type. Can be "rgb", "cmyk", "hex",
#'   or "pantone". Default is "hex".
#' @param pattern Optional. A character value or vector to use as a search term.
#'   Default is NULL.
#'
#' @return A named vector of Oxford colour/s
#'
#' @examples
#' get_oxford_colours()
#' get_oxford_colours(type = "rgb")
#' get_oxford_colours(pattern = "lilac")
#'
#' @export
#'
get_oxford_colours <- function(pattern = NULL,
                               df = oxford_colours,
                               type = c("hex", "rgb", "cmyk", "pantone")){
  ## Get type ----
  type <- match.arg(type)

  ## Determine if there is something specific to search for ----
  if (!is.null(pattern)) {
    pattern <- paste(pattern, collapse = "|")
    ## Get colours vector ----
    ox_cols <- df[stringr::str_detect(df$name, pattern = pattern,), c("name", type)] |>
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
