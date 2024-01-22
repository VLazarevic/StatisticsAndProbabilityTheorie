setwd("/Users/valentino/Documents/Studium/Semester 3/StatisticsAndProbabilityTheorie/Homework/HW12")
load("Evaluation.Rdata")

#a)
exercise_points <- Evaluation$Uebungspunkte
exam_result <- Evaluation$Klausurergebnis

# Plot the data
plot(exercise_points, exam_result, main="Exam Result vs. Exercise Points",
     xlab="Exercise Points", ylab="Exam Result (%)")

# There seems to exist a relation between the exercise_points and the exam results. However, as the points are quite scattered and
# not even close to a straight line, one could assume that the error is quite large.

#b)
# Compute mean and standard deviation of x and y
mean_x <- mean(exercise_points)
standard_deviation_of_points <- sd(exercise_points)
mean_y <- mean(exam_result)
standard_deviation_of_result <- sd(exam_result)


e_correlation <- cor(exercise_points, exam_result)

b1 <- e_correlation * (standard_deviation_of_points / standard_deviation_of_result) # formula from the slides
b0 <- mean_y - b1 * mean_x # formula from the slides

abline(b0, b1, col = "red") # plot the regression line

# Print the results
cat("Intercept (b0):", b0, "\n")
cat("Slope (b1):", b1, "\n")

#b) The positive value of the slope indicates a positive linear relationship
# between the two variables.

#c)
# Fit the data to the model using lm()
model <- lm(exam_result ~ exercise_points)
model

abline(model, col = "green")
# The green line is fitted using the lm() function, which performs a linear
# regression analysis
# to find the best-fitting line based on the method of least squares.

# Interpretation: The coefficients (b0 and b1) of the red line are based on direct
# calculations, while the coefficients of the green line are obtained through a
# statistical modeling process, providing more robust estimates.

# Extracting Coefficients:
b0 <- lm(exam_result~exercise_points)$coefficients[1]
b1 <- lm(exam_result~exercise_points)$coefficients[2]

# Making a Prediction: prediction is made for a student with 140 points in exercises.
prediction <- b0 + b1 * 140
prediction

points(140, prediction, pch = 16)

text(140, prediction, labels = paste("Prediction:", round(prediction, 2)), pos = 4, col = "green")
