#Activity 1.1
# The predictor vector.
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
# The response vector.
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
# Apply the lm() function.
relation <- lm(y~x)
print(relation)

#the lm(y~x) is the function that creates a linear regression model
#it finds the relationship between height(x) and weight (y)
#the output is intercept (constant value) and slope (how much y changes when x increases)
#it shows a +ve relationship (taller people -> heavier weight)

#Activity 1.2
print(summary(relation))

#it provide r squared (how well the model fits data) and pvalue (significance the model)
#if pvalue < 0.05 the model is statisically significant
#higher R^2 is better for prediction accuracy

#Activity 1.3
# Find weight of a person with height 170.
a <- data.frame(x = 170)
result <- predict(relation,a)
print(result)

#predict() estimates weight for a given height
#uses the regression eq
#Output is the predicted weight

#Activity 1.4
b <- data.frame(x=c(151, 174,170))
result <- predict(relation,b)
print(result)

#can predict multiple values at once
#more efficient than predicting one by one

#Activity 1.5
# Plot the chart.
plot(y,x,col = "blue",main = "Height & Weight Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab =
       "Height in cm")
# OR
scatter.smooth(y,x,col = "blue",main = "Height & Weight")

#plot() shows scatter point(data)
#abline() adds regression line
#scatter.smooth() shows trend clearly