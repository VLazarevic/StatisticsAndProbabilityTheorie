# Set working directory to the location of algorithms.Rdata
setwd("/Users/valentino/Documents/Studium/Semester 3/StatisticsAndProbabilityTheorie/Homework/HW6")

# Load the data
load("algorithms.Rdata")

# Create a boxplot
boxplot(A, B, names = c("Algorithm A", "Algorithm B"), col = c("lightblue", "lightgreen"),
        main = "Comparison of Running Times",
        xlab = "Algorithms", ylab = "Running Time (seconds)")

# Add a legend
legend("topright", legend = c("Algorithm A", "Algorithm B"), fill = c("lightblue", "lightgreen"))