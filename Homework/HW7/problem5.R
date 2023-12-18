mean <- 1/0.5
n <- 200
X <- rexp(n, 0.5)
cum_sum <- cumsum(X)
index <- c(1:n)
c_mean = cum_sum / index

result <- data.frame(index, c_mean)
plot(result, type="l")
abline(h=mean)
for (i in 1:19){
  X <- rexp(n, 0.5)
  cum_sum <- cumsum(X)
  index = c(1:n)
  c_mean = cum_sum / index
  result2 <- data.frame(index, c_mean)
  lines(result2)
}