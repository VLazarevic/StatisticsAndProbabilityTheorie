plot_data <- function(d, col){
  p <- c()
  for( i in 1:10000){
    x <- rnorm(20, 0, 1)
    y <-rnorm(20, d, 1)
    p <- c(p, t.test(x, y)$p.value)
  }
  hist(p, ylab="Density", xlab="p-value", main=sprintf("Distribution (d=%.2f)", d), col = col, prob=TRUE)
}

(par(mfrow=c(3,1)))

col = rainbow(3, alpha = 0.3)
plot_data(0, col[1])
plot_data(0.25, col[2])
plot_data(0.5, col[3])