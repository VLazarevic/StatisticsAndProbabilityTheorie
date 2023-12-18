plot_sim <- function(n, p) {
  hs<-c()
  inside <- 0
  q <- qnorm(0.025, mean=0, sd=1) *-1
  H <- p

  for (i in 1:10000) {
    ys <- rbinom(n, 1, p)
    h <- sum(ys)/n
    hs <- c(hs, h)
    seh <- sqrt((h*(1-h))/n)
    I <- c(h-q*seh,h+q*seh)
    if (H > I[1] && H < I[2]) {
      inside <- inside + 1
    }
  }
  hist(hs, main=sprintf("Histogram n=%d, p=%.2f",n, p), xlab="p-value",col="lightblue")
  inside/10000
}

# 6a)
# For that let n=45 and p=4/9.
# 6b)
# For that let n=10 and p=1/10.
# 6c)
# Visualize the simulated relative frequencies from (a) and (b) in a histogram
# each and comment on the simulated coverage probabilities.
(par(mfrow=c(2,1)))
plot_sim(45, 4/9)
plot_sim(10, 1/10)