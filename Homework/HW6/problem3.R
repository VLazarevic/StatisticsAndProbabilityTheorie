data("trees")

height_freq_table <- table(trees$Height)
print(height_freq_table)


mean_height <- mean(trees$Height)
var_height <- var(trees$Height)

mean_volume <- mean(trees$Volume)
var_volume <- var(trees$Volume)

print(paste("Mean Height:", mean_height))
print(paste("Variance Height:", var_height))
print(paste("Mean Volume:", mean_volume))
print(paste("Variance Volume:", var_volume))


covariance <- cov(trees$Height, trees$Volume)
correlation <- cor(trees$Height, trees$Volume)

print(paste("Covariance Height & Volume:", covariance))
print(paste("Correlation Height & Volume:", correlation))

qqplot(trees$Height, trees$Volume, main="Q-Q Plot", xlab="Height", ylab="Volume")



fivenum_height <- fivenum(trees$Height)
fivenum_volume <- fivenum(trees$Volume)

print("Fivenum Summary Height:")
print(fivenum_height)

print("Fivenum Summary Volume:")
print(fivenum_volume)

summary_height <- summary(trees$Height)
summary_volume <- summary(trees$Volume)

print("Summary for Height:")
print(summary_height)

print("Summary for Volume:")
print(summary_volume)