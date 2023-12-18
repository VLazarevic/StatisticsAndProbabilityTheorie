#2a
x <- seq(-4, 4, length = 1000) * 24 + 188
plot(x, dnorm(x, 188, 24), type = "l")