# Load required packages
library(tidyverse)

# Read Fazekas and Kosa CSV files
FK_basicranial_bones <- read.csv("data/FK_basicranial_bones_cleaned.csv",
                            stringsAsFactors = FALSE)

FK_facial_bones <- read.csv("data/FK_facial_bones_cleaned.csv",
                        stringsAsFactors = FALSE)

FK_vault_bones <- read.csv("data/FK_vault_bones_cleaned.csv",
                       stringsAsFactors = FALSE)

FK_extremity_dimensions <- read.csv("data/FK_Extremity_Dimensions_cleaned.csv",
                               stringsAsFactors = FALSE)

FK_ribs <- read.csv("data/FK_Ribs_cleaned.csv",
                 stringsAsFactors = FALSE)


FK_shoulder_pelvic <- read.csv("data/FK_Shoulder_pelvic_cleaned.csv",
                           stringsAsFactors = FALSE)

FK_small_bones <- read.csv("data/FK_small_bones_cleaned.csv",
                       stringsAsFactors = FALSE)

# Read Grzonkowska et al. CSV files
#order of cases saved as number of fetuses and no 'no. of cases' column
squamous_occipital <- read.csv("data/squamous_occipital_cleaned.csv",
                              stringsAsFactors = FALSE)

squamous_temporal <- read.csv("data/squamous_temporal_cleaned.csv",
                             stringsAsFactors = FALSE)

# Read Liverpool collection data
liverpool_fetal_LB_lengths <- read.csv("data/Liverpool_fetal_LB_lengths_cleaned.csv",
                                       stringsAsFactors = FALSE)

# Save as .rdata files
usethis::use_data(FK_basicranial_bones, overwrite = TRUE)
usethis::use_data(FK_facial_bones, overwrite = TRUE)
usethis::use_data(FK_vault_bones, overwrite = TRUE)
usethis::use_data(FK_extremity_dimensions, overwrite = TRUE)
usethis::use_data(FK_ribs, overwrite = TRUE)
usethis::use_data(FK_shoulder_pelvic, overwrite = TRUE)
usethis::use_data(FK_small_bones, overwrite = TRUE)
usethis::use_data(squamous_occipital, overwrite = TRUE)
usethis::use_data(squamous_temporal, overwrite = TRUE)
usethis::use_data(liverpool_fetal_LB_lengths, overwrite = TRUE)
