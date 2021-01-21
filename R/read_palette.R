#' Function reads a color palette and returns a vector of hexadecimal strings.
#'
#' @description The function reads a readable .rda file created by
#'  \code{RpalettePkg::create_palette()} and returns a list of hexadecimal strings
#'  suitable for ggplot2 applications.
#'
#' @param palette_path A string that sets the file path for the .rda file to read.
#'
#' @return Function returns a vector of colors valued as hexadecimal strings.
#'
#' @author Rick Dean
#'
#' @export
read_palette <- function(palette_path = NULL){
  load(file = palette_path)
  return(palette_vec)
}

