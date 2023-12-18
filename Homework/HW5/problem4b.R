n <- 600
p <- 0.75

# Calculate mean and standard deviation for the normal approximation
mean <- n * p
sd <- sqrt(n * p * (1 - p))

# Calculate the z-scores for 430 and 450
z_score_430 <- (430 - mean) / sd
z_score_450 <- (450 - mean) / sd

# Use pnorm to find the probability within the range
prob_normal_no_correction <- pnorm(z_score_450) - pnorm(z_score_430)

prob_normal_no_correction # 0.4703268

# Adjust the range for continuity correction
z_score_430 <- (429.5 - mean) / sd
z_score_450 <- (450.5 - mean) / sd

# Use pnorm to find the probability within the adjusted range
prob_normal_correction <- pnorm(z_score_450) - pnorm(z_score_430)

prob_normal_correction # 0.4921664