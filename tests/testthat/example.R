library(dplyr)
library(ggplot2)
# Example: Compare the femur lengths from Fazekas and Kosa (FK) and Liverpool
# fetal collection.

combined_datasets <- bind_rows(
  liverpool_fetal_LB_lengths %>%
    # Combine left and right femur lengths into one column
    mutate(femur_length_mm = rowMeans(cbind(left_femur, right_femur), na.rm = TRUE)) %>%
    select(femur_length_mm) %>%
    mutate(dataset = "Liverpool"),

  FK_extremity_dimensions %>%
    transmute(femur_length_mm, dataset = "FK")
)

ggplot(combined_datasets, aes(x = dataset, y = femur_length_mm, fill = dataset)) +
  geom_violin(scale = "width", trim = FALSE, alpha = 0.7) +
  geom_boxplot(width = 0.15, alpha = 0.4) +
  theme_classic() +
  labs(x = NULL, y = "Femur length (mm)")
