# 3a
mean <- 100
deviation <- 16

z_score_84 <- (84 - mean) / deviation
z_score_116 <- (116 - mean) / deviation

# Using pnorm to find the probability
prob <- pnorm(z_score_116) - pnorm(z_score_84)

prob # 0.6826895

# 3b
# Finding z-scores for 5th and 95th percentiles
z_score_5 <- qnorm(0.05)
z_score_95 <- qnorm(0.95)

# Finding the corresponding IQ values
cutoff_value_5 <- mean + z_score_5 * deviation
cutoff_value_95 <- mean + z_score_95 * deviation

cutoff_value_5 # 73.68234
cutoff_value_95 # 126.3177