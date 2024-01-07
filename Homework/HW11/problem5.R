# a)
# Revised observed frequencies
observed <- matrix(c(15, 10, 5, 10, 20, 15, 20, 10, 5), nrow = 3, byrow = TRUE)

# Calculate the expected frequencies assuming independence
expected <- chisq.test(observed)$expected

# Perform the chi-squared test
chi_square_result <- chisq.test(observed)

# Display the results
chi_square_result

# b)
# Significance level
alpha_01 <- 0.001

# Check if we can reject the null hypothesis at alpha = 0.1%
reject_null_01 <- chi_square_result$statistic > qchisq(1 - alpha_01, df = chi_square_result$parameter)

reject_null_01

# c)
# Double observed frequencies
observed_doubled <- observed * 2

# Perform the chi-squared test for doubled frequencies
chi_square_result_doubled <- chisq.test(observed_doubled)

# Check if we can reject the null hypothesis at alpha = 0.1% for doubled frequencies
reject_null_doubled <- chi_square_result_doubled$statistic > qchisq(1 - alpha_01, df = chi_square_result_doubled$parameter)

reject_null_doubled

