for(n in c(1,2,3,5,10,25,50,100, 250, 500, 1000, 2000)){
  result<-c()
  mu=1
  sigma=1
  for (i in 1:5000){
    X<-rexp(n, 1/mu)
    result[i] <- (mean(X)-mu)/sigma*sqrt(n)
  }
  hist<- hist(result, breaks=seq(min(result)-1, max(result)+1,by=0.25), plot=
    FALSE)
  ylim<-range(hist$density,dnorm(0))
  hist(result, breaks=seq(min(result)-1, max(result)+1,by=0.25), prob=TRUE,
       ylim=ylim, main=paste("n=",n),col="lightblue")
  x<-seq(-4,4,by=0.1)
  lines(x,dnorm(x),lty=1,lwd=2, col="lightpink")
  Sys.sleep(1.5)
}

"Outer Loop (for (n in c(...))): Iterates over different sample sizes (n).

Inner Loop (for (i in 1:5000)): Generates 5000 samples of size n from an exponential distribution with a rate parameter of 1
(rexp(n, 1/mu)), calculates the sample mean, standardizes it, and stores the result in the result vector.

Histogram (hist(...)): Creates a histogram of the standardized sample means (result).
The breaks are set to have a range from min(result) - 1 to max(result) + 1 with a bin width of 0.25.

ylim <- range(hist$density, dnorm(0)): Sets the y-axis limits based on the range of the histogram densities and the
standard normal density at 0.

Second Histogram (hist(...)): Plots the histogram of the standardized sample means with probability density (prob = TRUE) and
the previously set y-axis limits. The title of the plot includes the current sample size (main = paste(n=, n)) and sets
the color to light blue (col = lightblue).

Lines (lines(...)): Adds a line to the plot representing the standard normal density function (dnorm(x)) for comparison.
The line is colored light pink (col = lightpink).

Sys.sleep(1.5): Pauses the execution for 1.5 seconds to observe each plot.

This script generates a series of plots, each showing the distribution of standardized sample means
for increasing sample sizes (n). As the sample size increases, the distribution of the standardized sample means
approaches a standard normal distribution, as predicted by the Central Limit Theorem.
The normal curve (dnorm(x)) serves as a reference."