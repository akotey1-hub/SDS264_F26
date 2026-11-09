
library(dplyr)
library(palmerpenguins)

#* Get penguin statistics by species
#* @param species Name of penguin species
#* @get /penguins
function(species = "Adelie") {
  
  penguins |>
    filter(.data$species == .env$species) |>
    summarise(
      n = n(),
      avg_mass = round(mean(body_mass_g, na.rm = TRUE), 1),
      avg_flipper = round(mean(flipper_length_mm, na.rm = TRUE), 1)
    )
}
