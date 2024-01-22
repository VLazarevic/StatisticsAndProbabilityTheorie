mu_x <- 3
sigma_x <- 1

mu_y <- 2
sigma_y <- 2

par(mfrow=c(2, 2))
rhoset <- c(0, 0.8, -0.5, -1)
for(i in 1:4){
  set.seed(1)

  rho <- rhoset[i]
  x <- rnorm(150, mu_x, sigma_x)
  b1 <- rho * sigma_y / sigma_x
  b0 <- mu_y - b1 * mu_x
  z <- rnorm(150)
  y <- b0 + b1 * x + (sqrt(1 - rho^2) * sigma_y) * z
  r <- cor(x, y)

  plot(x, y, pch=19, col="blue", cex=0.4)
  abline(b0, b1, col=2)
  mtext(paste("r = ", round(r, 3), sep=" "), cex=1.3, adj=1)
  mtext(paste("rho = ", rho, sep=" "), cex=1.3, adj=0)
}