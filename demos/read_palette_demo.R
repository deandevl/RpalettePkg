library(RpalettePkg)
library(here)

current_dir <- here()
palette_file_path <- file.path(current_dir,"demos/data/my_palette.rda")
palette_colors <- RpalettePkg::read_palette(palette_path = palette_file_path)
