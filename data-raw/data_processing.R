# Load required packages
library(tidyverse)

# Read Fazekas and Kosa CSV files
FK_basicranial_bones <- read.csv("data-raw/Fazekas_Kosa_Basicranial_bones.csv", 
                            stringsAsFactors = FALSE)
FK_facial_bones <- read.csv("data-raw/Fazekas_Kosa_facial_bones.csv",
                        stringsAsFactors = FALSE)
FK_vault_bones <- read.csv("data-raw/Fazekas_Kosa_Vault.csv",
                       stringsAsFactors = FALSE)
FK_extremity_dimensions <- read.csv("data-raw/Fazekas_Kosa_Extremity_Dimensions.csv",
                               stringsAsFactors = FALSE)
FK_ribs <- read.csv("data-raw/Fazekas_Kosa_Ribs.csv",
                 stringsAsFactors = FALSE)
FK_shoulder_pelvic <- read.csv("data-raw/Fazekas_Kosa_Shoulder_pelvic_girdle.csv",
                           stringsAsFactors = FALSE)
FK_small_bones <- read.csv("data-raw/Fazekas_Kosa_Small_bones.csv",
                       stringsAsFactors = FALSE)

# Read Grzonkowska et al. CSV files
squamous_occipital <- read.csv("data-raw/Grzonkowska_et_al_squamous_occipital.csv",
                              stringsAsFactors = FALSE)
squamous_temporal <- read.csv("data-raw/Grzonkowska_et_al_squamous_temporal.csv",
                             stringsAsFactors = FALSE)

# Read Liverpool collection data
liverpool_fetal_LB_lengths <- read.csv("data-raw/TomO'M Liverpool collection LB lengthscleanednew.csv",
                            stringsAsFactors = FALSE)

# Save as .rdata files
usethis::use_data(basicranial_bones, overwrite = TRUE)
usethis::use_data(facial_bones, overwrite = TRUE)
usethis::use_data(vault_bones, overwrite = TRUE)
usethis::use_data(extremity_dimensions, overwrite = TRUE)
usethis::use_data(ribs, overwrite = TRUE)
usethis::use_data(shoulder_pelvic, overwrite = TRUE)
usethis::use_data(small_bones, overwrite = TRUE)
usethis::use_data(squamous_occipital, overwrite = TRUE)
usethis::use_data(squamous_temporal, overwrite = TRUE)
usethis::use_data(liverpool_lengths, overwrite = TRUE)