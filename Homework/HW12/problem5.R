setwd("/Users/valentino/Documents/Studium/Semester 3/StatisticsAndProbabilityTheorie/Homework/HW12")
load(Evaluation.Rdata)
# print(Evaluation.Rdata)

# a plot the points of exam against test points
x = Evaluation$Uebungspunkte
y = Evaluation$Klausurergebnis
plot(x, y)

# b compute the intercept b0 and b1 (without lm) and plot the regression line
# comment on the meaning of the slope
# b1 = s_y/s_x
# b0 = y_mean - b1 * x_mean
s_x = sd(x)
s_y = sd(y)
b1 = s_y/s_x
b0 = mean(y) - b1* mean(x)
print(b0)
print(b1)
abline(b0, b1, col='red')

# c now perform the analysis using the command lm, fit the data to the model by using lm
# plot the data points and regression line and discuss the plausibility of the model assumptions.
lm_model = lm(y~x)
intercept <- coef(lm_model)[1]
slope <- coef(lm_model)[2]
print(intercept)
print(slope)
abline(intercept, slope, col='blue')

# Which result would you predict for a student with 140 points in the excercise
# mark that prediction in the plot
# result depends on which model is used
abline(v=140, col='blue')
print(intercept + slope * 140)
# 75.46639