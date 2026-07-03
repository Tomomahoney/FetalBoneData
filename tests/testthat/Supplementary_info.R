library(dplyr)
library(knitr)
library(ggplot2)

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
summary_stats <- humerus_age %>%
  group_by(Dataset) %>%
  summarise(
    Count = sum(!is.na(Humerus_Length)),
    Mean = mean(Humerus_Length, na.rm = TRUE),
    SD = sd(Humerus_Length, na.rm = TRUE),
    Min = min(Humerus_Length, na.rm = TRUE),
    Q1 = quantile(Humerus_Length, 0.25, na.rm = TRUE),
    Median = median(Humerus_Length, na.rm = TRUE),
    Q3 = quantile(Humerus_Length, 0.75, na.rm = TRUE),
    Max = max(Humerus_Length, na.rm = TRUE)
  ) %>%
  mutate(across(where(is.numeric), round, 2))

# Display summary statistics
kable(summary_stats, caption = "Summary Statistics of Humerus Lengths")

# Normality testing
shapiro_df1 <- shapiro.test(DF1a$Humerus_Length)
shapiro_df2 <- shapiro.test(DF2a$Humerus_Length)

normal_df1 <- shapiro_df1$p.value > 0.05
normal_df2 <- shapiro_df2$p.value > 0.05

# Statistical comparison
if (normal_df1 & normal_df2) {
  test_result <- t.test(Humerus_Length ~ Dataset, data = humerus_age)
  test_name <- "T-test"
} else {
  test_result <- wilcox.test(Humerus_Length ~ Dataset, data = humerus_age)
  test_name <- "Wilcoxon test"
}

# Format test results
test_table <- data.frame(
  Test = test_name,
  Statistic = round(test_result$statistic, 3),
  P_value = round(test_result$p.value, 3),
  Normality_Fazekas_Kosa = round(shapiro_df1$p.value, 3),
  Normality_Liverpool_Collection = round(shapiro_df2$p.value, 3)
)

# Display test results
kable(test_table, caption = "Statistical Test Results")

# KS TEST BY GESTATIONAL AGE

ks_result <- ks.test(
  DF1a$Humerus_Length[!is.na(DF1a$Humerus_Length)],
  DF2a$Humerus_Length[!is.na(DF2a$Humerus_Length)]
)

# Format results
ks_table <- data.frame(
  Test = "Kolmogorov–Smirnov test",
  Statistic = round(ks_result$statistic, 3),
  P_value = signif(ks_result$p.value, 3)
)

# Display
kable(ks_table, caption = "KS Test Comparing Humerus Length Distributions")

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
