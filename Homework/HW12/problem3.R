library('MASS')
# use mvrnorm to create realizations with correlation
n = 150

x_mean = 3
x_sd = 1

y_mean = 2
y_sd = sqrt(4) # sd is 2

z_mean = 0
z_sd = 1

mean_vector = c(x_mean, y_mean)
sd_vector = c(x_sd, y_sd)
p = c(0, 0.8, -0.5, -1)
for (current_p in p) {
  correlation = current_p
  cov_matrix <- matrix(c(sd_vector[1]^2, correlation * sd_vector[1] * sd_vector[2],
                         correlation * sd_vector[1] * sd_vector[2], sd_vector[2]^2), 
                       nrow = 2, ncol = 2, byrow = TRUE)
  random_samples <- mvrnorm(n = n, mu = mean_vector, Sigma = cov_matrix)
  r = cor(random_samples[,1], random_samples[,2])
  plot(random_samples[,1], random_samples[,2], main='Correlation', sub = as.character(r), xlab='X values', ylab='Y values')
  b1 = y_sd * current_p / x_sd
  b0 = y_mean - b1*x_mean
  abline(a=b0, b=b1)
}
