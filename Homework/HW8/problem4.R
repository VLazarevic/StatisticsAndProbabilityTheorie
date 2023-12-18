#(a)
#i -> True
#ii -> False
#iii -> False
#iv -> True
#v -> False

setwd("/Users/valentino/Documents/Studium/Semester 3/StatisticsAndProbabilityTheorie/Homework/HW8")

# Load the data
load("waitingtimes.Rdata")

hist(wz, main="Histogram of Transfer Times", xlab="Transfer Time (seconds)", col="blue")

mean_time <- mean(wz)
sd_time <- sd(wz)
n <- length(wz)

z_lower <- qnorm(0.005)
z_upper <- qnorm(0.995)

margin_error_lower <- z_lower * (sd_time / sqrt(n))
margin_error_upper <- z_upper * (sd_time / sqrt(n))

ci_lower <- mean_time + margin_error_lower
ci_upper <- mean_time + margin_error_upper

abline(v = ci_lower, col = "red", lwd = 2, lty = 2)
abline(v = ci_upper, col = "red", lwd = 2, lty = 2)

segments(ci_lower, 0, ci_upper, 0, col="red", lwd=2)


legend("topright", legend="99% confidence interval", col="red", lwd=2)


# (If the claim of 1.5 seconds falls within the confidence interval, it is compatible.)
if(ci_lower <= 1.5 && ci_upper >= 1.5) {
  cat("The engineer's claim is compatible with the measurements.\n")
} else {
  cat("The engineer's claim is not compatible with the measurements.\n")
}

cat("The 99% confidence interval for the mean transfer time is:", ci_lower, "to", ci_upper, "\n")