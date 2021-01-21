#' Function creates a color palette from a named vector of hexadecimal string values.
#'
#' @description The function creates a readable .rda file for persisting a list of hexadecimal strings for
#' defining a palette.
#'
#' @param palette_path A string that sets the file path for the .rda file.
#' @param palette_colors A named vector with a readable color name and its corresponding hexadecimal string value.
#'
#' @author Rick Dean
#'
#' @export
create_palette <- function(palette_path, palette_colors = NULL){
  palette_vec <- palette_colors
  save(palette_vec, file = palette_path)
}

