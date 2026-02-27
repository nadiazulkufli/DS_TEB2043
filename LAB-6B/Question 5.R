# Structure
str(student.data)

# Summary
summary(student.data)

# Dimension
dim(student.data)

# Number of rows
nrow(student.data)

# Number of columns
ncol(student.data)

#Change column data type
# if marks are read as char convert to numeric
student.data$marks <- as.numeric(student.data$marks)

#if gender should be factor
student.data$gender <- as.factor(student.data$gender)
