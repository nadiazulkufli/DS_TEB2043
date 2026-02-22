student_records <- list(
  Robert = 59, Hemsworth = 71, Scarlett = 83, Evans = 68, Pratt = 65,
  Larson = 57, Holland = 62, Paul = 92, Simu = 92, Renner = 59
)
scores <- unlist(student_records)
highest_score <- max(scores)
lowest_score  <- min(scores)
average_score <- mean(scores)
student_highest <- names(student_records)[scores == highest_score]
student_lowest  <- names(student_records)[scores == lowest_score]
print(paste("Highest Score:", highest_score))
print(paste("Lowest Score:", lowest_score))
print(paste("Average Score:", average_score))
print(paste("Student with highest score:", paste(student_highest, collapse = ", ")))
print(paste("Student with lowest score:", paste(student_lowest, collapse = ", ")))
