setwd("/Users/valentino/Documents/Studium/Semester 3/StatisticsAndProbabilityTheorie/Homework/HW8")


# Load the original data
load("dist.Rdata")

# Repeat each sample 3 times
dist3x <- rep(distanz, each = 3)

# Perform t-test
t_test_result <- t.test(dist3x, mu = 550)

# Print the result
t_test_result

# Set up the plotting layout
par(mfrow=c(2,1))

# Plot histogram for dist.Rdata
hist(distanz, main="Distance BMX Game", xlab="Distance (meters)", ylab="Frequency", col="skyblue", border="black")
abline(v = mean(distanz), col="blue", lty=2, lwd=2)  # Mean
abline(v = mean(distanz) + sd(distanz)/sqrt(length(distanz)), col="green", lty=2, lwd=2)  # Mean + SE
abline(v = mean(distanz) - sd(distanz)/sqrt(length(distanz)), col="green", lty=2, lwd=2)  # Mean - SE
abline(v = 550, col="red", lty=2, lwd=2)  # Null hypothesis

# Add legend
legend("topright", legend=c("Null Hypothesis", "Mean", "Mean +- SE"), col=c("red", "blue", "green"), lty=2, lwd=2)

# Plot histogram for dist3x
hist(dist3x, main="Distance BMX Game (3x Sample Size)", xlab="Distance (meters)", ylab="Frequency", col="skyblue", border="black")
abline(v = mean(dist3x), col="blue", lty=2, lwd=2)  # Mean
abline(v = mean(dist3x) + sd(dist3x)/sqrt(length(dist3x)), col="green", lty=2, lwd=2)  # Mean + SE
abline(v = mean(dist3x) - sd(dist3x)/sqrt(length(dist3x)), col="green", lty=2, lwd=2)  # Mean - SE
abline(v = 550, col="red", lty=2, lwd=2)  # Null hypothesis

# Add legend
legend("topright", legend=c("Null Hypothesis", "Mean", "Mean +- SE"), col=c("red", "blue", "green"), lty=2, lwd=2)
