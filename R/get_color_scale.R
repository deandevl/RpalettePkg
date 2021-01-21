#' Create discrete/continuous color scaling for a ggplot2 aesthetic color variable.
#'
#' @description The function can return either a color scale for a discrete variable or a gradient color
#'  scale for a continuous numeric variable.
#'
#' @param palette_path A string that sets the file path for a palette list.
#' @param scale_title A string that sets the tile for the scale's legend. By default the title comes from the
#'  variable name assigned to the fill aesthetic.
#' @param scale_limits A numeric vector of length two that sets the limits of the non-discrete scale based on the variable
#'  assigned to the fill aesthetic.
#' @param discrete A logical that is TRUE the function returns a discrete color scale. If FALSE, a gradient
#'  color scale is returned.
#'
#' @return Returns a color scale object that can be attached to ggplot2 plot object for scaling the
#'  color aesthetic variable.
#'
#' @author Rick Dean
#'
#' @importFrom ggplot2 discrete_scale
#' @importFrom ggplot2 scale_color_gradientn
#'
#' @export
get_color_scale <- function(
  palette_path,
  scale_title = NULL,
  scale_limits = c(NA,NA),
  discrete = TRUE) {
  # get palette function
  pal_func <- RpalettePkg::read_palette(palette_path = palette_path)

  if(discrete){
    discrete_scale <- ggplot2::discrete_scale(
      aesthetics = "color",
      name = scale_title,
      scale_name = "RpalettePkg::get_color_scale-discrete",
      palette = pal_func)
    return(discrete_scale)
  }else{
    grad_scale <- ggplot2::scale_color_gradientn(
      limits = scale_limits,
      name = scale_title,
      colors = pal_func)
    return(grad_scale)
  }
}

