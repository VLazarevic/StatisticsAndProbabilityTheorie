# Observed frequencies
observed <- c(3, 11, 16, 14, 8, 3)

# Expected probabilities for a binomial distribution B(8, 0.5)
probabilities <- dbinom(0:5, size = 8, prob = 0.5)

# Expected frequencies
expected <- probabilities * sum(observed)
p = probabilities

# Chi-squared test
chi_square_result <- chisq.test(observed, p)

# Display the expected frequencies and chi-squared test result
cat("Expected frequencies:\n", expected, "\n\n")
cat("Chi-squared test result:\n")
print(chi_square_result)

