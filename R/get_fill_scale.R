#' Create discrete/continuous fill scaling for a ggplot2 aesthetic fill variable.
#'
#' @description The function can return either a fill scale for a discrete variable or a gradient fill
#'  scale for a continuous numeric variable.
#'
#' @param palette_path A string that sets the file path for a palette list. Argument is required.
#' @param scale_title A string that sets the tile for the scale's legend. By default the title comes from the
#'  variable name assigned to the fill aesthetic.
#' @param scale_limits A numeric vector of length two that sets the limits of the non-discrete scale based on the variable
#'  assigned to the fill aesthetic.
#' @param discrete A logical that if TRUE the function returns a discrete fill scale. If FALSE, a gradient
#'  fill scale is returned.
#'
#' @return Returns a fill scale object that can be attached to ggplot2 plot object for scaling the
#'  fill aesthetic variable.
#'
#' @author Rick Dean
#'
#' @importFrom ggplot2 discrete_scale
#' @importFrom ggplot2 scale_fill_gradientn
#'
#' @export
get_fill_scale <- function(
  palette_path,
  scale_title = NULL,
  scale_limits = c(NA,NA),
  discrete = TRUE) {
  # get palette function
  pal_func <- RpalettePkg::read_palette(palette_path = palette_path)

  if(discrete){
    discrete_scale <- ggplot2::discrete_scale(
      aesthetics = "fill",
      name = scale_title,
      scale_name = "RpalettePkg::get_fill_scale-discrete",
      palette = pal_func)
    return(discrete_scale)
  }else{
    grad_scale <- ggplot2::scale_fill_gradientn(
      limits = scale_limits,
      name = scale_title,
      colors = pal_func)
    return(grad_scale)
  }
}



