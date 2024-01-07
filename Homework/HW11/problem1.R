# Load the data
setwd("/Users/valentino/Documents/Studium/Semester 3/StatisticsAndProbabilityTheorie/Homework/HW11")
load("die.Rdata")

# Check the structure of the data
str(w)

# Calculate sample size (n) and number of sides (d)
n <- length(w)
d <- length(unique(w))

# Print the results
cat("Sample size (n):", n, "\n")
cat("Number of sides (d):", d, "\n")

#(b)
# Calculate relative frequencies
relative_frequencies <- table(w) / n


# Calculate standard error
standard_error <- sqrt(relative_frequencies * (1 - relative_frequencies) / n)


# Create a barplot
barplot(relative_frequencies, col = rainbow(d), ylim = c(0, 1), main = "Relative Frequencies of Die Rolls")

# Add standard error bars
arrows(1:d, relative_frequencies - standard_error, 1:d, relative_frequencies + standard_error, angle = 90, code = 3, length = 0.05, col = "black")


#(c)
# To assess the fairness of the die, visually inspect the barplot.
# If the bars are approximately the same height, it suggests fairness.
# If there are significant differences, further statistical analysis (e.g., chi-square test)
# may be needed for a formal assessment.
# The standard error bars provide an indication of the variability in the estimated relative frequencies.
