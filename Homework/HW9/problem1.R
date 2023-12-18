n <- 10
data <- rnorm(n, 0, 1)
m <- mean(data)
sd <- sd(data)

n2 <- 20
data2 <- rnorm(n2, 1, 1)
m2 <- mean(data2)
sd2 <- sd(data2)

alpha <- 0.05

# a
t <- (m-m2)/sqrt((sd^2)/n + (sd2^2)/n2)
t

# b
t_test <- t.test(data, data2)
t_test
# c
# Both previous calculate the same t value.
cat("Manual t-statistic:", t, "\n")
cat("t.test t-statistic:", t_test$statistic, "\n\n")

cat("Manual p-value:", 2 * pt(-abs(t), df = n + n2 - 2), "\n")
cat("t.test p-value:", t_test$p.value, "\n\n")

if (t_test$p.value < alpha) {
  cat("Reject the null hypothesis. There is enough evidence to suggest that the population means are different.\n")
} else {
  cat("Do not reject the null hypothesis. There is not enough evidence to suggest that the population means are different.\n")
}