## Loading of humerus datasets

DF1a <- data.frame(
  Gestational_Age = liverpool_fetal_LB_lengths$lunar_month,
  Humerus_Length = liverpool_fetal_LB_lengths$left_humerus,
  Dataset = "Liverpool collection"
)

DF2a <- data.frame(
  Gestational_Age = FK_extremity_dimensions$lunar_month,
  Humerus_Length = FK_extremity_dimensions$humerus_length_mm,
  Dataset = "Fazekas and Kósa"
)

# Combine datasets
humerus_age <- rbind(DF1a, DF2a)

# Summary statistics
summary_statistics(humerus_age, Dataset, Humerus_Length)

# Violin plot
ggplot(humerus_age, aes(x = Dataset, y = Humerus_Length, fill = Dataset)) +
  geom_violin(trim = FALSE) +
  geom_boxplot(width = 0.1, fill = "white") +
  labs(title = "Comparison of Humerus Lengths",
       x = "Dataset Source",
       y = "Humerus Length (mm)") +
  theme_minimal()

## Scatter plot

ggplot(humerus_age, aes(x = Gestational_Age, y = Humerus_Length, color = Dataset)) +
  geom_point(aes(shape = Dataset), size = 1.5, stroke = 1, fill = "white") +
  geom_smooth(method = "lm", se = FALSE, linetype = "dotted", size = 1.2, fullrange = TRUE) +
  scale_shape_manual(values = c(1, 2)) +  # 1 = hollow circle, 2 = hollow triangle
  labs(
    title = "Humerus Length vs Gestational Age",
    x = "Gestational Age (weeks)",
    y = "Humerus Length (mm)"
  ) +
  theme_minimal()
