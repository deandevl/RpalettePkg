library(RpalettePkg)
library(here)

current_dir <- here()
palette_file_path <- file.path(current_dir,"demos/data/my_palette.rda")
pal_colors <- c(
  "dark_red" = "#d11141",
  "light_red" = "#fa646f",
  "dark_green" = "#03ab3e",
  "light_green" = "#25eb6a",
  "dark_blue" = "#0723f5",
  "light_blue" = "#4e65ec",
  "orange" = "#f37735",
  "yellow" = "#f4e408",
  "dark_grey" = "#8c8c8c",
  "light_grey" = "#cccccc",
  "gold" = "#ffd700",
  "dark_purple" = "#551A8B",
  "light_purple" = "#7453b7",
  "black" = "#000000"
)

RpalettePkg::create_palette(palette_path = palette_file_path, palette_colors = pal_colors)
