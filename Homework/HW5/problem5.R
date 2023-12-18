lambda <- 50
k_values <- 54:62

# 5a
# Calculate the probability using the Poisson distribution
prob_poisson <- sum(dpois(k_values, lambda))

prob_poisson # 0.2616838

# 5b
# Calculate mean and standard deviation for the normal approximation
mu <- lambda
sigma <- sqrt(lambda)

# Calculate the z-scores for 53.5 and 62.5 (continuity correction)
z_score_53_5 <- (53.5 - mu) / sigma
z_score_62_5 <- (62.5 - mu) / sigma

# Use pnorm to find the probability within the adjusted range
prob_normal_approx <- pnorm(z_score_62_5) - pnorm(z_score_53_5)

prob_normal_approx # 0.271759