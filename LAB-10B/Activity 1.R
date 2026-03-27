#Activity 1
# Load dataset
data(Theoph)

# Create model (Weight vs Dose)
model <- lm(Dose ~ Wt, data = Theoph)

# Show model
print(model)

# Summary
summary(model)

# Visualization
plot(Theoph$Wt, Theoph$Dose,
     main = "Dose vs Weight",
     xlab = "Weight (kg)",
     ylab = "Dose (mg/kg)",
     col = "blue", pch = 16)

abline(model, col = "red")

# Prediction
new_weight <- data.frame(Wt = c(90, 95, 100))
predict(model, new_weight)
