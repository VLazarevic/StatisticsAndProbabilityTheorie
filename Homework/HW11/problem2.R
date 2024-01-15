# Load the data
setwd("/Users/valentino/Documents/Studium/Semester 3/StatisticsAndProbabilityTheorie/Homework/HW11")
load("die.Rdata")

# a)
observed_frequencies <- table(w)
observed_frequencies

# Calculate sample size (n) and number of sides (d)
n <- length(w)
d <- length(unique(w))

# Print the results
cat("Sample size (n):", n, "\n")
cat("Number of sides (d):", d, "\n")

# b)
expected_frequencies <- rep(n/d, d)
expected_frequencies

# c)
chi_squared_statistic <- sum((observed_frequencies - expected_frequencies)^2 / expected_frequencies)
chi_squared_statistic

# d)
degrees_of_freedom <- d - 1

# e)
critical_value <- qchisq(0.95, df = degrees_of_freedom)  # Assuming a 5% significance level
p_value <- 1 - pchisq(chi_squared_statistic, df = degrees_of_freedom)

if (chi_squared_statistic > critical_value) {
  cat("Reject the null hypothesis. The die is likely not fair.\n")
} else {
  cat("Fail to reject the null hypothesis. The die may be fair.\n")
}

cat("Critical Value:", critical_value, "\n")
cat("P-value:", p_value, "\n")
cat("chi_squared", chi_squared_statistic )


# f) Interpretation:
# Compare the computed chi-square statistic to the critical value.
# If the chi-square statistic is greater than the critical value, you would reject the null hypothesis.
# Alternatively, if the p-value is less than the significance level (e.g., 0.05), you would reject the null hypothesis.

# Interpret the result in the context of the study.
# If you reject the null hypothesis, it suggests that the observed frequencies
# are significantly different from what would be expected under the assumption of a fair die.
# If you fail to reject the null hypothesis, it suggests that there is not enough evidence to claim that the die is unfair based on the observed data.
