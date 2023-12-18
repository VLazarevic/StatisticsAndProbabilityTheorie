data("trees")

h <- trees$Height
v <- trees$Volume

freq_table <- table(h)

summary_h <- summary(h)
factor_h <- factor(h)

mean_h <- mean(h)
var_h <- var(h)

mean_v <- mean(v)
var_v <- var(v)

plot(h, v, xlab = "Height", ylab = "Volume", main = "Plot Height vs. Volume")