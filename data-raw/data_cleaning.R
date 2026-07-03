utils::install.packages("janitor")
# Load required packages
library(utils)
library(magrittr)
library(tidyverse)
library(dplyr)
library(janitor)

# Read Fazekas and Kosa CSV files
FK_basicranial_bones <- utils::read.csv("~/FetalBoneData/data-raw/Fazekas_Kosa_basicranial_bones.csv",
                                 stringsAsFactors = FALSE)
FK_basicranial_bones <- FK_basicranial_bones %>%
  select(-No..of.cases, -Order) %>%
  rename(
    lunar_month = Lunar.month,
    sex = Sex,
    body_length_cm = Body.length..cm.,
    body_weight_g = Body.weight..g.,
    greater_wing_sphenoid_length_mm = Greater.wing.bone.of.sphenoid,
    greater_wing_sphenoid_width_mm = Greater.wing.bone.of.sphenoid.width.mm.,
    lesser_wing_sphenoid_length_mm = Lesser.wing.bone.of.sphenoid.length..mm.,
    lesser_wing_sphenoid_width_mm = Lesser.wing.bone.of.sphenoid.width..mm.,
    sphenoid_length_mm = Sphenoid.bone.length..mm.,
    sphenoid_width_mm = Sphenoid.bone.width..mm.,
    petrous_part_length_mm = Petrous.part.length..mm.,
    petrous_part_width_mm = Petrous.part.width..mm.,
    basal_occipital_length_mm = Basal.part.of.Occipatal.bone.length..mm.,
    basal_occipital_width_mm = Basal.part.of.Occipital.bone.width..mm.,
    lateral_occipital_length_mm = Lateral.part..of.occipital.bone.length..mm.,
    lateral_occipital_width_mm = Lateral.part..of.occipital.bone.width..mm.
  ) %>%
  mutate(dataset = "Fazekas and Kosa")
write_csv(FK_basicranial_bones, "data/FK_basicranial_bones_cleaned.csv")

FK_facial_bones <- read.csv("data-raw/Fazekas_Kosa_facial_bones.csv",
                            stringsAsFactors = FALSE)
FK_facial_bones <- FK_facial_bones %>%
  select(-No..of.cases, -Order.of.cases) %>%
  rename(
    lunar_month = Lunar.month,
    sex = Sex,
    body_length_mm = Body.length.mm.,
    body_weight_g = Body.weight..g.,
    nasal_bone_length_mm = Nasal.bone.length..mm.,
    nasal_bone_width_mm = Nasal.bone.width..mm.,
    palatine_bone_length_mm = Palatine.bone.length..mm.,
    vomer_length_mm = Vomer.length..mm.,
    infrnasal_concha_length_mm = Infnas..concha.length..mm.,
    zygomatic_bone_length_mm = Zygomatic.bone.length..mm.,
    zygomatic_bone_width_mm = Zygomatic.bone.width..mm.,
    maxilla_length_mm = Maxilla.length..mm.,
    maxilla_width_mm = Maxilla.width..mm.,
    maxilla_height_mm = Maxilla.height.mm.,
    maxilla_longest_oblique_dimension_mm = Maxilla.Longest.oblique.dimension..mm.,
    mandible_full_length_mm = Mandible.full.length..mm.,
    mandible_width_mm = Mandible.width..mm.,
    mandible_length_mm = Mandible.length..mm.
  )%>%
  mutate(dataset = "Fazekas and Kosa")
write_csv(FK_facial_bones, "data/FK_facial_bones_cleaned.csv")


FK_vault_bones <- read.csv("data-raw/Fazekas_Kosa_Vault.csv",
                           stringsAsFactors = FALSE)
FK_vault_bones <- FK_vault_bones %>%
  select(-No..of.cases, -Order.of.cases) %>%
  rename(
    lunar_month = Lunar.month,
    sex = Sex,
    body_length_cm = Body.length..cm.,
    body_weight_g = Body.weight..g.,
    frontal_squama_height_cord_mm = Frontal.squama.height.cord..mm.,
    frontal_squama_height_perimeter_mm = Frontal.squama.height.perimeter..mm.,
    frontal_squama_width_cord_mm = Frontal.squama.width.cord..mm.,
    frontal_squama_width_perimeter_mm = Frontal.squama.width.perimeter..mm.,
    temporal_squama_height_mm = Temporal.squama.height..mm.,
    temporal_squama_width_mm = Temporal.squama.width..mm.,
    temporal_squama_length_mm = Temporal.squama.length..mm.,
    annulus_tympanicus_diameter_mm = Annulus.tympanicus..diameter..mm.,
    parietal_bone_height_cord_mm = parietal.bone.height.cord..mm.,
    parietal_bone_height_perimeter_mm = parietal.bone.height.perimeter..mm.,
    parietal_bone_width_cord_mm = parietal.bone.width.cord..mm.,
    parietal_bone_width_perimeter_mm = parietal.bone.width.perimeter..mm.,
    occipital_squama_height_cord_mm = Occipatal.squama.height.cord..mm.,
    occipital_squama_height_perimeter_mm = Occipatal.squama.height.perimeter..mm.,
    occipital_squama_width_cord_mm = Occipatal.squama.width.cord..mm.,
    occipital_squama_width_perimeter_mm = Occipatal.squama.width.perimeter..mm.
  )%>%
  mutate(dataset = "Fazekas and Kosa")
write_csv(FK_vault_bones, "data/FK_vault_bones_cleaned.csv")


FK_extremity_dimensions <- read.csv("data-raw/Fazekas_Kosa_Extremity_Dimensions.csv",
                                    stringsAsFactors = FALSE)
FK_extremity_dimensions <- FK_extremity_dimensions %>%
  select(-No..of.cases, -Order.of.cases) %>%
  rename(
    lunar_month = lunarmonthold.fetuses,
    sex = Sex,
    body_length_cm = Body.length.cm.,
    body_weight_g = Body.weight..g.,
    humerus_length_mm = Humerus.Length..mm.,
    humerus_width_mm = Humerus.Width..mm.,
    radius_length_mm = Radius.length..mm.,
    ulna_length_mm = Ulna.length..mm.,
    femur_length_mm = Femur.Length..mm.,
    femur_width_mm = Femur.Width..mm.,
    tibia_length_mm = Tibia.length..mm.,
    fibula_length_mm = Fibula.length..mm.
  )%>%
  mutate(dataset = "Fazekas and Kosa")
write_csv(FK_extremity_dimensions, "data/FK_extremity_dimensions_cleaned.csv")

FK_ribs <- read.csv("data-raw/Fazekas_Kosa_Ribs.csv",
                    stringsAsFactors = FALSE)
FK_ribs <- FK_ribs %>%
  select(-No..of.cases, -Order.of.cases) %>%
  clean_names()%>%
  mutate(dataset = "Fazekas and Kosa")
write_csv(FK_ribs, "data/FK_ribs_cleaned.csv")

FK_shoulder_pelvic <- read.csv("data-raw/Fazekas_Kosa_Shoulder_pelvic_girdle.csv",
                               stringsAsFactors = FALSE)
FK_shoulder_pelvic <- FK_shoulder_pelvic %>%
  select(-No.of.cases, -Order.of.cases)%>%
  rename(
    lunar_month = Lunar.month,
    sex = sex,
    body_length_cm = Body.length.cm.,
    body_weight_g = Body.weight..g.,
    clavicle_length_mm = CIavicle.length..mm.,
    scapula_length_mm = Scapula.length..mm.,
    scapula_width_mm = Scapula.width..mm.,
    spina_scapula_length_mm = Length.of.spina.scapula..mm.,
    iliac_length_mm = Iliac.length..mm.,
    iliac_width_mm = Iliac.width..mm.,
    sciatic_length_mm = Sciatic.length..mm.,
    sciatic_width_mm = Sciatic.width..mm.,
    pubic_bone_length_mm = Pubic.bone.length.mm.
  ) %>%
  mutate(dataset = "Fazekas and Kosa")
write_csv(FK_shoulder_pelvic, "data/FK_shoulder_pelvic_cleaned.csv")

FK_small_bones <- read.csv("data-raw/Fazekas_Kosa_Small_bones.csv",
                           stringsAsFactors = FALSE)
FK_small_bones <- FK_small_bones %>%
  select(-No..of.cases, -Order.of.cases) %>%
  rename(
    lunar_month = Lunar.month,
    sex = Sex,
    body_length_mm = Body.length..mm.,
    body_width_mm = Body.width..mm.,
    atlas_length_mm = Atlas.length..mm.,
    axis_length_mm = Axis.length..mm.,
    metacarpus_i_length_mm = I..Metacarpus..length..mm.,
    metatarsus_i_width_mm = I..Metatarsus..width..mm.,
    malleus_length_mm = Malleus.length..mm.,
    incus_length_mm = Incus.length.mm.,
    incus_width_mm = Incus.width..mm.,
    stapes_length_mm = Stapes.length..mm.,
    stapes_width_mm = Stapes.width..mm.
  ) %>%
  mutate(dataset = "Fazekas and Kosa")
write_csv(FK_small_bones, "data/FK_small_bones_cleaned.csv")

# Read Grzonkowska et al. CSV files
#order of cases saved as number of fetuses and no 'no. of cases' column
squamous_occipital <- read.csv("data-raw/Grzonkowska_et_al_squamous_occipital.csv",
                               stringsAsFactors = FALSE)
squamous_occipital <- squamous_occipital %>%
  select(-Number.of.fetuses) %>%
  rename(
    sex = sex,
    crown_rump_length_mm = Crown.rump.length..mm,
    gestational_age_weeks = Gestational.age..weeks.,
    right_vertical_diameter_mm = Right.vertical.diameter..mm.,
    left_vertical_diameter_mm = Left.vertical.diameter..mm.,
    interparietal_transverse_diameter_mm = Transverse.diameter.of.the.interparietal.part..mm.,
    supraoccipital_transverse_diameter_mm = Transverse.diameter.of.the.supraoccipital.part..mm.,
    projection_surface_area_mm2 = Projection.surface.area..mm2.,
    volume_mm3 = Volume..mm3.
  ) %>%
  mutate(
    lunar_month = round(gestational_age_weeks / 4.34524),
    dataset = "Grzonkowska"
    )%>%
  select(lunar_month, everything(), -gestational_age_weeks)
write_csv(squamous_occipital, "data/squamous_occipital_cleaned.csv")

squamous_temporal <- read.csv("data-raw/Grzonkowska_et_al_squamous_temporal.csv",
                              stringsAsFactors = FALSE)
squamous_temporal <- squamous_temporal %>%
  select(-Number.of.fetuses) %>%
  rename(
    sex = Sex,
    crown_rump_length_mm = Crown.rump.length..mm.,
    gestational_age_weeks = Gestational.age..weeks.,
    right_vertical_diameter_mm = Right.vertical.diameter..mm.,
    left_vertical_diameter_mm = Left.vertical.diameter..mm.,
    right_sagittal_diameter_mm = Right.sagittal.diameter..mm.,
    left_sagittal_diameter_mm = Left.sagittal.diameter..mm.,
    right_projection_surface_area_mm2 = Right.projection.surface.area..mm2.,
    left_projection_surface_area_mm2 = Left.projection.surface.area..mm2.,
    right_volume_mm3 = Rigt.volume..mm3.,
    left_volume_mm3 = Left.volume..mm3.
  ) %>%
  mutate(
    lunar_month = round(gestational_age_weeks / 4.34524),
    dataset = "Grzonkowska et al"
  ) %>%
  select(lunar_month, everything(), -gestational_age_weeks)
write_csv(squamous_temporal, "data/squamous_temporal_cleaned.csv")

# Read Liverpool collection data
liverpool_fetal_LB_lengths <- read.csv("data-raw/TomOM_Liverpool_collection_LB_lengths.csv",
                                       stringsAsFactors = FALSE)
liverpool_fetal_LB_lengths <- liverpool_fetal_LB_lengths %>%
  select(-Specimen.Numbr) %>%
  rename(
    gestational_age = Ag..gstational.,
    sex = Sx,
    left_humerus = L.Humrus,
    left_radius = L.Radius,
    left_ulna = L.Ulna,
    left_femur = L.Fmur,
    left_tibia = L.Tibia,
    left_fibula = L.Fibula,
    left_clavicle = L.Clavicl,
    right_humerus = R.Humrus,
    right_radius = R.Radius,
    right_ulna = R.Ulna,
    right_femur = R.Fmur,
    right_tibia = R.Tibia,
    right_fibula = R.Fibula,
    right_clavicle = R.Clavicl
  ) %>%
  mutate(
    lunar_month = round(gestational_age / 4.34524),
    dataset = "Tom O'Mahoney"
  ) %>%
  select(lunar_month, everything(), -gestational_age)
write_csv(liverpool_fetal_LB_lengths, "data/liverpool_fetal_LB_lengths_cleaned.csv")

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

