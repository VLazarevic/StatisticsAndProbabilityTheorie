# Given data
observed_frequencies <- c(3, 11, 16, 14, 8, 3)
n_trials <- 55
expected_probabilities <- dbinom(-2:3, size = 8, prob = 0.5)
expected_frequencies <- round(expected_probabilities * n_trials)

# Compute chi-square statistic
chi_squared_statistic <- sum((observed_frequencies - expected_frequencies)^2 / expected_frequencies)

# Degrees of freedom (df)
df <- length(observed_frequencies) - 1

# P-value
p_value <- 1 - pchisq(chi_squared_statistic, df)

# Significance level
alpha <- 0.01

# Decision
cat("Chi-squared Statistic:", chi_squared_statistic, "\n")
cat("Degrees of Freedom:", df, "\n")
cat("P-value:", p_value, "\n")

if (p_value < alpha) {
  cat("Reject the null hypothesis (H0). The data is likely not from a binomial distribution B(8, 0.5).\n")
} else {
  cat("Fail to reject the null hypothesis (H0). There is not enough evidence to suggest a deviation from a binomial distribution B(8, 0.5).\n")
}
