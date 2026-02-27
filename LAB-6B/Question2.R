student.data$grade <- c("B","A","A","A","B")

print(student.data)

#or

student.data <- cbind(student.data,
                      attendance = c(90,95,88,92,85))

print(student.data)
