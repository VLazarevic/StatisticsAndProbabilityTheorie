setwd("/Users/valentino/Documents/Studium/Semester 3/StatisticsAndProbabilityTheorie/Homework/HW8")


# Load the data
load("dist.Rdata")

# Plot histogram
hist(distanz, main="Distance in BMX Game", xlab="Distance (meters)", ylab="Frequency", col="skyblue", border="black" )

# Add lines for null hypothesis, mean, and mean ± SE
abline(v = 550, col="red", lty=2, lwd=2)  # Null hypothesis
abline(v = mean(distanz), col="blue", lty=2, lwd=2)  # Mean
abline(v = mean(distanz) + sd(distanz)/sqrt(length(distanz)), col="green", lty=2, lwd=2)  # Mean + SE
abline(v = mean(distanz) - sd(distanz)/sqrt(length(distanz)), col="green", lty=2, lwd=2)  # Mean - SE

# Add legend
legend("topright", legend=c("Null Hypothesis", "Mean", "Mean +- SE"), col=c("red", "blue", "green"), lty=2, lwd=2)

#(b)
# Calculate t-statistic
t_statistic <- (mean(distanz) - 550) / (sd(distanz) / sqrt(length(distanz)))
t_statistic

#(c)
# Calculate p-value
p_value <- 2 * pt(-abs(t_statistic), df = length(distanz) - 1)
p_value

# (d) Interpret your result.
alpha <- 0.05
if (p_value < alpha) {
  cat("reject H_0 at the 5% significance level")
} else {
  cat("do not reject H_0 at the 5% significance level")
}

#(e)
# Perform the two-sided t-test
t_test_result <- t.test(distanz, mu = 550)

# Print the result
t_test_result

