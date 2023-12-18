alpha <- 2
m <- 2

inverse_pareto_CDF <- function(x) {
  y <- m / (1 - x)^(1/alpha)
  return(y)
}

tno_observation <-15
randomnumbers <- runif(tno_observation)

pareto_samples <- inverse_pareto_CDF(randomnumbers)

print(pareto_samples)