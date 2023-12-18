# Given data
glaucoma <- c(488, 478, 480, 426, 440, 410, 458, 460, 468)
non_glaucoma <- c(484, 478, 492, 444, 436, 398, 464, 476, 420)

# Test H0: µ1 = µ2 against HA: µ1 < µ2 using alpha with 10%

# Perform a one-sided two-sample t-test
t_test <- t.test(glaucoma, non_glaucoma, alternative = "greater", conf.level = 0.90)
# greater since we want to do a right sided test, µ1 < µ2 acording to the slides

# Display the results
cat("t-statistic:", t_test$statistic, "\n")
cat("p-value:", t_test$p.value, "\n")
cat("90% Confidence Interval:", t_test$conf.int, "\n")

# Interpret the results
alpha <- 0.10

if (t_test$p.value < alpha) {
  cat("Reject the null hypothesis. There is enough evidence to suggest that the mean corneal thickness for eyes affected by glaucoma is less than the mean for eyes not affected.\n")
} else {
  cat("Do not reject the null hypothesis. There is not enough evidence to suggest that the mean corneal thickness for eyes affected by glaucoma is less than the mean for eyes not affected.\n")
}
