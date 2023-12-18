k <- 100
x <- rnorm(sample(k*(2*k), 1), runif(1, 0, k), rexp(1, k))

# Assuming the previous code to generate x has been executed

# Plot histogram
hist(x, main="Histogram of x", xlab="Values of x", col="lightblue", border="black")

# Add a vertical line at the mean (red)
mean_value <- mean(x)
abline(v=mean_value, col="red", lwd=2)

# Add a vertical line at the standard deviation (blue)
sd_value <- sd(x)
abline(v=sd_value, col="blue", lty=2, lwd=2)

# Add legend
legend("topright", legend=c("Mean", "Standard Deviation"), col=c("red", "blue"), lty=c(1,2), lwd=c(2,2))