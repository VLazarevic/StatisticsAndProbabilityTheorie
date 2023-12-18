n <- 12
bobby <- 0.85
eliot <- 0.78

prob_bobby <- dbinom(0:n, n, bobby)
prob_eliot <- dbinom(0:n, n, eliot)
prob_win_eliot <- sum(prob_eliot * pbinom(0:n - 1, n, bobby))

prob_win_eliot # 0.2366104