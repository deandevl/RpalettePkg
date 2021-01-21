library(here)
library(RpalettePkg)

current_dir <- here()
palette_file_path <- file.path(current_dir,"demos/data/my_palette.rda")

fill_scale <- RpalettePkg::get_fill_scale(
  palette_path = palette_file_path,
  scale_title = "my_fill_scale"
)
