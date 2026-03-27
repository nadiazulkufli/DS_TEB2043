# Install & load libraries
library(caTools)
library(class)

# Load dataset
data(ChickWeight)

# Remove NA values
data_clean <- na.omit(ChickWeight)

# Convert Diet to factor
data_clean$Diet <- as.factor(data_clean$Diet)

# Split data
split <- sample.split(data_clean$Diet, SplitRatio = 0.7)
train <- subset(data_clean, split == TRUE)
test <- subset(data_clean, split == FALSE)

# Scale features (only numeric)
train_scale <- scale(train[, c("weight", "Time")])
test_scale <- scale(test[, c("weight", "Time")])

# Try different K values
k_values <- c(3,5,7,9,11)
for (k in k_values) {
  pred <- knn(train_scale, test_scale, cl = train$Diet, k = k)
  error <- mean(pred != test$Diet)
  print(paste("K =", k, "Accuracy =", 1 - error))
}

# Choose best K (example: k = 5)
classifier <- knn(train_scale, test_scale, cl = train$Diet, k = 5)

# Confusion Matrix
cm <- table(test$Diet, classifier)
print(cm)

# Accuracy
accuracy <- mean(classifier == test$Diet)
print(paste("Final Accuracy =", accuracy))
