# Let X~N(2,1) Y=(X-2)^2
n = 200
# a generate 200 realizations of random variable and plot the corresponding y value for each x value
x_values = rnorm(n, mean = 2)
y_values = (x_values - 2)^2
plot(x_values, y_values, xlab = 'X realizations', ylab = 'Y realizations')
abline(lm(y_values ~ x_values), col="red")
# b compute the empirical correlation
r = cor(x_values, y_values)
print(r)
# c, no the variables are not independent
# correlation only measures linear dependence, however as we can see in the graph the dependence is quadratic
# indepentend => cor = 0, however cor = 0 does not imply independence