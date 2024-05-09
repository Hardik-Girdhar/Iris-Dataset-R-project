a<-read.csv(file.choose())
View(a)

library(readxl)
library(ggplot2)

# HISTOGRAM
ggplot(a, aes(x = Glucose)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Glucose Levels",
       x = "Glucose",
       y = "Frequency") +
  theme_minimal()

# SCATTER PLOT
ggplot(a, aes(x = Age, y = BMI)) +
  geom_point(color = "darkorange") +
  labs(title = "Scatter Plot of BMI vs Age", 
       x = "Age",
       y = "BMI") +
  theme_minimal()

# PIE CHART
outcome_counts <- table(a$Outcome)
pie(outcome_counts, labels = c("No Diabetes", "Diabetes"), 
    main = "Distribution of Diabetes Outcome",
    col = c("lightblue", "lightgreen"))

# BAR GRAPH
ggplot(a, aes(x = factor(Outcome))) +
  geom_bar(fill = "skyblue") +
  labs(title = "Frequency of Diabetes Outcome",
       x = "Outcome",
       y = "Frequency") +
  theme_minimal()

# BOX PLOT
ggplot(a, aes(x = factor(Outcome), y = BloodPressure, fill = factor(Outcome))) +
  geom_boxplot() +
  labs(title = "Boxplot of Blood Pressure by Outcome",
       x = "Outcome",
       y = "Blood Pressure") +
  scale_fill_manual(values = c("lightblue", "lightgreen")) +
  theme_minimal()