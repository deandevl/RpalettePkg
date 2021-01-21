library(RpalettePkg)
library(here)

current_dir <- here()
palette_file_path <- file.path(current_dir,"demo/data/my_palette.rda")

color_scale <- RpalettePkg::get_color_scale(
  palette_path = palette_file_path,
  scale_title = "my_color_scale"
)
