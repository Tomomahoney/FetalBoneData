library(tidyverse)
library(usethis)

# Read the CSV files
basocranial_bones <- read.csv("data-raw/Fazekas_Kósa_Basocranial_bones.csv", na.strings = c("", "NA", "brokn"))
extremity_dimensions <- read.csv("data-raw/Fazekas_Kósa_Extremity_Dimensions.csv", na.strings = c("", "NA"))
facial_bones <- read.csv("data-raw/Fazekas_Kósa_facial_bones.csv", na.strings = c("", "NA"))
liverpool_bones <- read.csv("data-raw/TomO'M Liverpool collection LB lengths.csv", na.strings = c("", "NA", "brokn"))
ribs <- read.csv("data-raw/Fazekas_Kósa_Ribs.csv", na.strings = c("", "NA"))
shoulder_pelvic <- read.csv("data-raw/Fazekas_Kósa_Shoulder_pelvic_girdle.csv", na.strings = c("", "NA"))
small_bones <- read.csv("data-raw/Fazekas_Kósa_Small_bones.csv", na.strings = c("", "NA"))

# Clean column names
clean_names <- function(df) {
  names(df) <- names(df) %>%
    str_replace_all("[[:space:]]", "_") %>%
    str_replace_all("[[:punct:]]", "") %>%
    str_to_lower()
  return(df)
}

# Apply cleaning to all datasets
basocranial_bones <- clean_names(basocranial_bones)
extremity_dimensions <- clean_names(extremity_dimensions)
facial_bones <- clean_names(facial_bones)
liverpool_bones <- clean_names(liverpool_bones)
ribs <- clean_names(ribs)
shoulder_pelvic <- clean_names(shoulder_pelvic)
small_bones <- clean_names(small_bones)

# Save the cleaned datasets
usethis::use_data(basocranial_bones, overwrite = TRUE)
usethis::use_data(extremity_dimensions, overwrite = TRUE)
usethis::use_data(facial_bones, overwrite = TRUE)
usethis::use_data(liverpool_bones, overwrite = TRUE)
usethis::use_data(ribs, overwrite = TRUE)
usethis::use_data(shoulder_pelvic, overwrite = TRUE)
usethis::use_data(small_bones, overwrite = TRUE)