# Load the data
setwd("/Users/valentino/Documents/Studium/Statistik/R/HW9")
load("waitingtimes2.Rdata")
str(wt)

d1 <- wt[[1]]
d2 <- wt[[2]]
n1 <- length(d1)
n2 <- length(d2)

# a
plot_data <- function(data, text) {
  hist(data, main=text, xlab="time (sec)", ylab="frequency")
}

(par(mfrow=c(2,1)))
plot_data(d1, "receiver 1")
plot_data(d2, "receiver 2")
# The data is not bell-shaped

# b
sem1 <- sd(d1)^2/n1
sem2 <- sd(d2)^2/n2
m1 <- mean(d1)
m2 <- mean(d2)
t <- (m1 - m2)/sqrt(sem1+sem2)
p <- pnorm(-abs(t))*2


# c
t_test <- t.test(d1, d2, alternative = "two.sided")

# Display results
cat("Manual t-statistic:", t, "\n")
cat("Manual p-value:", p, "\n\n")

cat("t.test() t-statistic:", t_test$statistic, "\n")
cat("t.test() p-value:", t_test$p.value, "\n")

# (d) Interpret the results
alpha <- 0.01

if (t_test$p.value < alpha) {
  cat("Reject the null hypothesis. There is enough evidence to suggest that the mean transfer times are different for the two receivers.\n")
} else {
  cat("Do not reject the null hypothesis. There is not enough evidence to suggest that the mean transfer times are different for the two receivers.\n")
}

str(wt)