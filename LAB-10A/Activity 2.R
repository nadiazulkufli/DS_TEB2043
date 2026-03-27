#Activity 2.1
x=cars$speed
y=cars$dist
model1 <- lm(y~x)
print(model1)
print(summary(model1))
plot(y,x,main = "Distance & Speed",abline(lm(speed~dist,
                                             data=cars)),xlab = "Distance",ylab = "Speed")
scatter.smooth(y,x, main="Dist ~ Speed",xlab = "Distance",ylab =
                 "Speed")
# OR
model1 <- lm(speed~dist, data=cars)
print(model1)
print(summary(model1))
plot(y=cars$speed,x=cars$dist,main = "Distance & Speed",
     abline(lm(speed~dist, data=cars)),xlab = "Distance",ylab =
       "Speed")
scatter.smooth(y=cars$speed,x=cars$dist, main="Dist ~ Speed",xlab =
                 "Distance",ylab = "Speed")

#builds regression between speed and stopping distance
#faster speed have longer stopping distance

#Activity 2.2
x=cars$speed
y=cars$dist
model1 <- lm(y~x)
newspeed <- data.frame(x=c(26, 27,28))
result <- predict(model1,newspeed)
print(result)

#predict the stopping distance for new speeds
#useful for real world forecasting

#ACtivity 2.3
?lm
?predict

#?lm explains linear regression function
#?predict explains prediction function


