# Given data
calories <- c(186, 181, 176, 149, 184, 190, 158, 139, 175, 148, 152, 111, 141, 153, 190, 157, 131, 149, 135, 132)

# Calculate sample mean and standard deviation
sample_mean <- mean(calories)
sample_sd <- sd(calories)

# Number of observations
n <- length(calories)

# Degrees of freedom for the t-distribution
df <- n - 1

# Confidence level
confidence_level <- 0.9

# Calculate the standard error of the mean
standard_error <- sample_sd / sqrt(n)

# Calculate the margin of error
margin_of_error <- qt((1 - confidence_level) / 2, df, lower.tail = FALSE) * standard_error

# Calculate the confidence interval
lower_bound <- sample_mean - margin_of_error
upper_bound <- sample_mean + margin_of_error

# Print the results
cat("Sample Mean:", sample_mean, "\n")
cat("Margin of Error:", margin_of_error, "\n")
cat("90% Confidence Interval for µ: (", lower_bound, ",", upper_bound, ")\n")
